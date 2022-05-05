package com.facebook.stetho.inspector.protocol.module;

import android.content.Context;
import com.facebook.stetho.common.LogUtil;
import com.facebook.stetho.inspector.console.RuntimeRepl;
import com.facebook.stetho.inspector.console.RuntimeReplFactory;
import com.facebook.stetho.inspector.helper.ObjectIdMapper;
import com.facebook.stetho.inspector.jsonrpc.DisconnectReceiver;
import com.facebook.stetho.inspector.jsonrpc.JsonRpcException;
import com.facebook.stetho.inspector.jsonrpc.JsonRpcPeer;
import com.facebook.stetho.inspector.jsonrpc.JsonRpcResult;
import com.facebook.stetho.inspector.jsonrpc.protocol.JsonRpcError;
import com.facebook.stetho.inspector.protocol.ChromeDevtoolsDomain;
import com.facebook.stetho.inspector.protocol.ChromeDevtoolsMethod;
import com.facebook.stetho.inspector.runtime.RhinoDetectingRuntimeReplFactory;
import com.facebook.stetho.json.ObjectMapper;
import com.facebook.stetho.json.annotation.JsonProperty;
import com.facebook.stetho.json.annotation.JsonValue;
import com.privacystar.core.data.model.LogItemFields;
import com.privacystar.core.service.googleplay.IABConstants;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Runtime.class */
public class Runtime implements ChromeDevtoolsDomain {
    private static final Map<JsonRpcPeer, Session> sSessions = Collections.synchronizedMap(new HashMap());
    private final ObjectMapper mObjectMapper;
    private final RuntimeReplFactory mReplFactory;

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Runtime$CallArgument.class */
    private static class CallArgument {
        @JsonProperty(required = false)
        public String objectId;
        @JsonProperty(required = false)
        public ObjectType type;
        @JsonProperty(required = false)
        public Object value;

        private CallArgument() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Runtime$CallFunctionOnRequest.class */
    private static class CallFunctionOnRequest {
        @JsonProperty
        public List<CallArgument> arguments;
        @JsonProperty(required = false)
        public Boolean doNotPauseOnExceptionsAndMuteConsole;
        @JsonProperty
        public String functionDeclaration;
        @JsonProperty(required = false)
        public Boolean generatePreview;
        @JsonProperty
        public String objectId;
        @JsonProperty(required = false)
        public Boolean returnByValue;

        private CallFunctionOnRequest() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Runtime$CallFunctionOnResponse.class */
    private static class CallFunctionOnResponse implements JsonRpcResult {
        @JsonProperty
        public RemoteObject result;
        @JsonProperty(required = false)
        public Boolean wasThrown;

        private CallFunctionOnResponse() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Runtime$EvaluateRequest.class */
    public static class EvaluateRequest implements JsonRpcResult {
        @JsonProperty(required = true)
        public String expression;
        @JsonProperty(required = true)
        public String objectGroup;

        private EvaluateRequest() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Runtime$EvaluateResponse.class */
    public static class EvaluateResponse implements JsonRpcResult {
        @JsonProperty
        public ExceptionDetails exceptionDetails;
        @JsonProperty(required = true)
        public RemoteObject result;
        @JsonProperty(required = true)
        public boolean wasThrown;

        private EvaluateResponse() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Runtime$ExceptionDetails.class */
    public static class ExceptionDetails {
        @JsonProperty(required = true)
        public String text;

        private ExceptionDetails() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Runtime$GetPropertiesRequest.class */
    public static class GetPropertiesRequest implements JsonRpcResult {
        @JsonProperty(required = true)
        public String objectId;
        @JsonProperty(required = true)
        public boolean ownProperties;

        private GetPropertiesRequest() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Runtime$GetPropertiesResponse.class */
    public static class GetPropertiesResponse implements JsonRpcResult {
        @JsonProperty(required = true)
        public List<PropertyDescriptor> result;

        private GetPropertiesResponse() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Runtime$ObjectProtoContainer.class */
    public static class ObjectProtoContainer {
        public final Object object;

        public ObjectProtoContainer(Object obj) {
            this.object = obj;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Runtime$ObjectSubType.class */
    public enum ObjectSubType {
        ARRAY("array"),
        NULL("null"),
        NODE("node"),
        REGEXP("regexp"),
        DATE(LogItemFields.DATE),
        MAP("map"),
        SET("set"),
        ITERATOR("iterator"),
        GENERATOR("generator"),
        ERROR(IABConstants.EXTRA_ERROR);
        
        private final String mProtocolValue;

        ObjectSubType(String str) {
            this.mProtocolValue = str;
        }

        @JsonValue
        public String getProtocolValue() {
            return this.mProtocolValue;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Runtime$ObjectType.class */
    public enum ObjectType {
        OBJECT("object"),
        FUNCTION("function"),
        UNDEFINED("undefined"),
        STRING("string"),
        NUMBER("number"),
        BOOLEAN("boolean"),
        SYMBOL("symbol");
        
        private final String mProtocolValue;

        ObjectType(String str) {
            this.mProtocolValue = str;
        }

        @JsonValue
        public String getProtocolValue() {
            return this.mProtocolValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Runtime$PropertyDescriptor.class */
    public static class PropertyDescriptor {
        @JsonProperty(required = true)
        public final boolean configurable;
        @JsonProperty(required = true)
        public final boolean enumerable;
        @JsonProperty(required = true)
        public final boolean isOwn;
        @JsonProperty(required = true)
        public String name;
        @JsonProperty(required = true)
        public RemoteObject value;
        @JsonProperty(required = true)
        public final boolean writable;

        private PropertyDescriptor() {
            this.isOwn = true;
            this.configurable = false;
            this.enumerable = true;
            this.writable = false;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Runtime$RemoteObject.class */
    public static class RemoteObject {
        @JsonProperty
        public String className;
        @JsonProperty
        public String description;
        @JsonProperty
        public String objectId;
        @JsonProperty
        public ObjectSubType subtype;
        @JsonProperty(required = true)
        public ObjectType type;
        @JsonProperty
        public Object value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Runtime$Session.class */
    public static class Session {
        private final ObjectMapper mObjectMapper;
        private final ObjectIdMapper mObjects;
        @Nullable
        private RuntimeRepl mRepl;

        private Session() {
            this.mObjects = new ObjectIdMapper();
            this.mObjectMapper = new ObjectMapper();
        }

        private List<?> arrayToList(Object obj) {
            Class<?> cls = obj.getClass();
            if (!cls.isArray()) {
                throw new IllegalArgumentException("Argument must be an array.  Was " + cls);
            } else if (!cls.getComponentType().isPrimitive()) {
                return Arrays.asList((Object[]) obj);
            } else {
                int length = Array.getLength(obj);
                ArrayList arrayList = new ArrayList(length);
                for (int i = 0; i < length; i++) {
                    arrayList.add(Array.get(obj, i));
                }
                return arrayList;
            }
        }

        private EvaluateResponse buildExceptionResponse(Object obj) {
            EvaluateResponse evaluateResponse = new EvaluateResponse();
            evaluateResponse.wasThrown = true;
            evaluateResponse.result = objectForRemote(obj);
            evaluateResponse.exceptionDetails = new ExceptionDetails();
            evaluateResponse.exceptionDetails.text = obj.toString();
            return evaluateResponse;
        }

        private EvaluateResponse buildNormalResponse(Object obj) {
            EvaluateResponse evaluateResponse = new EvaluateResponse();
            evaluateResponse.wasThrown = false;
            evaluateResponse.result = objectForRemote(obj);
            return evaluateResponse;
        }

        private GetPropertiesResponse getPropertiesForIterable(Iterable<?> iterable, boolean z) {
            String str;
            GetPropertiesResponse getPropertiesResponse = new GetPropertiesResponse();
            ArrayList arrayList = new ArrayList();
            int i = 0;
            for (Object obj : iterable) {
                PropertyDescriptor propertyDescriptor = new PropertyDescriptor();
                if (z) {
                    i++;
                    str = String.valueOf(i);
                } else {
                    str = null;
                }
                propertyDescriptor.name = str;
                propertyDescriptor.value = objectForRemote(obj);
                arrayList.add(propertyDescriptor);
            }
            getPropertiesResponse.result = arrayList;
            return getPropertiesResponse;
        }

        private GetPropertiesResponse getPropertiesForMap(Object obj) {
            GetPropertiesResponse getPropertiesResponse = new GetPropertiesResponse();
            ArrayList arrayList = new ArrayList();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                PropertyDescriptor propertyDescriptor = new PropertyDescriptor();
                propertyDescriptor.name = String.valueOf(entry.getKey());
                propertyDescriptor.value = objectForRemote(entry.getValue());
                arrayList.add(propertyDescriptor);
            }
            getPropertiesResponse.result = arrayList;
            return getPropertiesResponse;
        }

        private GetPropertiesResponse getPropertiesForObject(Object obj) {
            GetPropertiesResponse getPropertiesResponse = new GetPropertiesResponse();
            ArrayList arrayList = new ArrayList();
            for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
                ArrayList<Field> arrayList2 = new ArrayList(Arrays.asList(cls.getDeclaredFields()));
                Collections.reverse(arrayList2);
                String str = cls == obj.getClass() ? "" : cls.getSimpleName() + ".";
                for (Field field : arrayList2) {
                    if (!Modifier.isStatic(field.getModifiers())) {
                        field.setAccessible(true);
                        try {
                            Object obj2 = field.get(obj);
                            PropertyDescriptor propertyDescriptor = new PropertyDescriptor();
                            propertyDescriptor.name = str + field.getName();
                            propertyDescriptor.value = objectForRemote(obj2);
                            arrayList.add(propertyDescriptor);
                        } catch (IllegalAccessException e) {
                            throw new RuntimeException(e);
                        }
                    }
                }
            }
            Collections.reverse(arrayList);
            getPropertiesResponse.result = arrayList;
            return getPropertiesResponse;
        }

        private GetPropertiesResponse getPropertiesForProtoContainer(ObjectProtoContainer objectProtoContainer) {
            Object obj = objectProtoContainer.object;
            RemoteObject remoteObject = new RemoteObject();
            remoteObject.type = ObjectType.OBJECT;
            remoteObject.subtype = ObjectSubType.NODE;
            remoteObject.className = obj.getClass().getName();
            remoteObject.description = Runtime.getPropertyClassName(obj);
            remoteObject.objectId = String.valueOf(this.mObjects.putObject(obj));
            PropertyDescriptor propertyDescriptor = new PropertyDescriptor();
            propertyDescriptor.name = "1";
            propertyDescriptor.value = remoteObject;
            GetPropertiesResponse getPropertiesResponse = new GetPropertiesResponse();
            getPropertiesResponse.result = new ArrayList(1);
            getPropertiesResponse.result.add(propertyDescriptor);
            return getPropertiesResponse;
        }

        @Nonnull
        private RuntimeRepl getRepl(RuntimeReplFactory runtimeReplFactory) {
            RuntimeRepl runtimeRepl;
            synchronized (this) {
                if (this.mRepl == null) {
                    this.mRepl = runtimeReplFactory.newInstance();
                }
                runtimeRepl = this.mRepl;
            }
            return runtimeRepl;
        }

        public EvaluateResponse evaluate(RuntimeReplFactory runtimeReplFactory, JSONObject jSONObject) {
            EvaluateRequest evaluateRequest = (EvaluateRequest) this.mObjectMapper.convertValue(jSONObject, EvaluateRequest.class);
            try {
                return !evaluateRequest.objectGroup.equals("console") ? buildExceptionResponse("Not supported by FAB") : buildNormalResponse(getRepl(runtimeReplFactory).evaluate(evaluateRequest.expression));
            } catch (Throwable th) {
                return buildExceptionResponse(th);
            }
        }

        public Object getObjectOrThrow(String str) throws JsonRpcException {
            Object objectForId = getObjects().getObjectForId(Integer.parseInt(str));
            if (objectForId != null) {
                return objectForId;
            }
            JsonRpcError.ErrorCode errorCode = JsonRpcError.ErrorCode.INVALID_REQUEST;
            throw new JsonRpcException(new JsonRpcError(errorCode, "No object found for " + str, null));
        }

        public ObjectIdMapper getObjects() {
            return this.mObjects;
        }

        public GetPropertiesResponse getProperties(JSONObject jSONObject) throws JsonRpcException {
            GetPropertiesRequest getPropertiesRequest = (GetPropertiesRequest) this.mObjectMapper.convertValue(jSONObject, GetPropertiesRequest.class);
            if (!getPropertiesRequest.ownProperties) {
                GetPropertiesResponse getPropertiesResponse = new GetPropertiesResponse();
                getPropertiesResponse.result = new ArrayList();
                return getPropertiesResponse;
            }
            Object objectOrThrow = getObjectOrThrow(getPropertiesRequest.objectId);
            Object obj = objectOrThrow;
            if (objectOrThrow.getClass().isArray()) {
                obj = arrayToList(objectOrThrow);
            }
            return obj instanceof ObjectProtoContainer ? getPropertiesForProtoContainer((ObjectProtoContainer) obj) : obj instanceof List ? getPropertiesForIterable((List) obj, true) : obj instanceof Set ? getPropertiesForIterable((Set) obj, false) : obj instanceof Map ? getPropertiesForMap(obj) : getPropertiesForObject(obj);
        }

        public RemoteObject objectForRemote(Object obj) {
            RemoteObject remoteObject = new RemoteObject();
            if (obj == null) {
                remoteObject.type = ObjectType.OBJECT;
                remoteObject.subtype = ObjectSubType.NULL;
                remoteObject.value = JSONObject.NULL;
            } else if (obj instanceof Boolean) {
                remoteObject.type = ObjectType.BOOLEAN;
                remoteObject.value = obj;
            } else if (obj instanceof Number) {
                remoteObject.type = ObjectType.NUMBER;
                remoteObject.value = obj;
            } else if (obj instanceof Character) {
                remoteObject.type = ObjectType.NUMBER;
                remoteObject.value = Integer.valueOf(((Character) obj).charValue());
            } else if (obj instanceof String) {
                remoteObject.type = ObjectType.STRING;
                remoteObject.value = String.valueOf(obj);
            } else {
                remoteObject.type = ObjectType.OBJECT;
                remoteObject.className = "What??";
                remoteObject.objectId = String.valueOf(this.mObjects.putObject(obj));
                if (obj.getClass().isArray()) {
                    remoteObject.description = "array";
                } else if (obj instanceof List) {
                    remoteObject.description = "List";
                } else if (obj instanceof Set) {
                    remoteObject.description = "Set";
                } else if (obj instanceof Map) {
                    remoteObject.description = "Map";
                } else {
                    remoteObject.description = Runtime.getPropertyClassName(obj);
                }
            }
            return remoteObject;
        }
    }

    @Deprecated
    public Runtime() {
        this(new RuntimeReplFactory() { // from class: com.facebook.stetho.inspector.protocol.module.Runtime.1
            @Override // com.facebook.stetho.inspector.console.RuntimeReplFactory
            public RuntimeRepl newInstance() {
                return new RuntimeRepl() { // from class: com.facebook.stetho.inspector.protocol.module.Runtime.1.1
                    @Override // com.facebook.stetho.inspector.console.RuntimeRepl
                    public Object evaluate(String str) throws Throwable {
                        return "Not supported with legacy Runtime module";
                    }
                };
            }
        });
    }

    public Runtime(Context context) {
        this(new RhinoDetectingRuntimeReplFactory(context));
    }

    public Runtime(RuntimeReplFactory runtimeReplFactory) {
        this.mObjectMapper = new ObjectMapper();
        this.mReplFactory = runtimeReplFactory;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r0.length() == 0) goto L_0x0015;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getPropertyClassName(java.lang.Object r2) {
        /*
            r0 = r2
            java.lang.Class r0 = r0.getClass()
            java.lang.String r0 = r0.getSimpleName()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0015
            r0 = r3
            r4 = r0
            r0 = r3
            int r0 = r0.length()
            if (r0 != 0) goto L_0x001d
        L_0x0015:
            r0 = r2
            java.lang.Class r0 = r0.getClass()
            java.lang.String r0 = r0.getName()
            r4 = r0
        L_0x001d:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.stetho.inspector.protocol.module.Runtime.getPropertyClassName(java.lang.Object):java.lang.String");
    }

    @Nonnull
    private static Session getSession(final JsonRpcPeer jsonRpcPeer) {
        Session session;
        synchronized (Runtime.class) {
            try {
                Session session2 = sSessions.get(jsonRpcPeer);
                session = session2;
                if (session2 == null) {
                    session = new Session();
                    sSessions.put(jsonRpcPeer, session);
                    jsonRpcPeer.registerDisconnectReceiver(new DisconnectReceiver() { // from class: com.facebook.stetho.inspector.protocol.module.Runtime.2
                        @Override // com.facebook.stetho.inspector.jsonrpc.DisconnectReceiver
                        public void onDisconnect() {
                            Runtime.sSessions.remove(JsonRpcPeer.this);
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return session;
    }

    public static int mapObject(JsonRpcPeer jsonRpcPeer, Object obj) {
        return getSession(jsonRpcPeer).getObjects().putObject(obj);
    }

    @ChromeDevtoolsMethod
    public CallFunctionOnResponse callFunctionOn(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) throws JsonRpcException {
        CallFunctionOnRequest callFunctionOnRequest = (CallFunctionOnRequest) this.mObjectMapper.convertValue(jSONObject, CallFunctionOnRequest.class);
        Session session = getSession(jsonRpcPeer);
        Object objectOrThrow = session.getObjectOrThrow(callFunctionOnRequest.objectId);
        if (!callFunctionOnRequest.functionDeclaration.startsWith("function protoList(")) {
            JsonRpcError.ErrorCode errorCode = JsonRpcError.ErrorCode.INTERNAL_ERROR;
            throw new JsonRpcException(new JsonRpcError(errorCode, "Expected protoList, got: " + callFunctionOnRequest.functionDeclaration, null));
        }
        ObjectProtoContainer objectProtoContainer = new ObjectProtoContainer(objectOrThrow);
        RemoteObject remoteObject = new RemoteObject();
        remoteObject.type = ObjectType.OBJECT;
        remoteObject.subtype = ObjectSubType.NODE;
        remoteObject.className = objectOrThrow.getClass().getName();
        remoteObject.description = getPropertyClassName(objectOrThrow);
        remoteObject.objectId = String.valueOf(session.getObjects().putObject(objectProtoContainer));
        CallFunctionOnResponse callFunctionOnResponse = new CallFunctionOnResponse();
        callFunctionOnResponse.result = remoteObject;
        callFunctionOnResponse.wasThrown = false;
        return callFunctionOnResponse;
    }

    @ChromeDevtoolsMethod
    public JsonRpcResult evaluate(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        return getSession(jsonRpcPeer).evaluate(this.mReplFactory, jSONObject);
    }

    @ChromeDevtoolsMethod
    public JsonRpcResult getProperties(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) throws JsonRpcException {
        return getSession(jsonRpcPeer).getProperties(jSONObject);
    }

    @ChromeDevtoolsMethod
    public void releaseObject(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) throws JSONException {
        getSession(jsonRpcPeer).getObjects().removeObjectById(Integer.parseInt(jSONObject.getString("objectId")));
    }

    @ChromeDevtoolsMethod
    public void releaseObjectGroup(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        LogUtil.m361w("Ignoring request to releaseObjectGroup: " + jSONObject);
    }
}
