package com.facebook.stetho.inspector;

import com.facebook.stetho.common.LogRedirector;
import com.facebook.stetho.common.Util;
import com.facebook.stetho.inspector.jsonrpc.JsonRpcException;
import com.facebook.stetho.inspector.jsonrpc.JsonRpcPeer;
import com.facebook.stetho.inspector.jsonrpc.PendingRequest;
import com.facebook.stetho.inspector.jsonrpc.PendingRequestCallback;
import com.facebook.stetho.inspector.jsonrpc.protocol.JsonRpcError;
import com.facebook.stetho.inspector.jsonrpc.protocol.JsonRpcRequest;
import com.facebook.stetho.inspector.jsonrpc.protocol.JsonRpcResponse;
import com.facebook.stetho.inspector.protocol.ChromeDevtoolsDomain;
import com.facebook.stetho.json.ObjectMapper;
import com.facebook.stetho.websocket.CloseCodes;
import com.facebook.stetho.websocket.SimpleEndpoint;
import com.facebook.stetho.websocket.SimpleSession;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/ChromeDevtoolsServer.class */
public class ChromeDevtoolsServer implements SimpleEndpoint {
    public static final String PATH = "/inspector";
    private static final String TAG = "ChromeDevtoolsServer";
    private final MethodDispatcher mMethodDispatcher;
    private final ObjectMapper mObjectMapper;
    private final Map<SimpleSession, JsonRpcPeer> mPeers = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.stetho.inspector.ChromeDevtoolsServer$1 */
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/ChromeDevtoolsServer$1.class */
    public static /* synthetic */ class C09341 {

        /* renamed from: $SwitchMap$com$facebook$stetho$inspector$jsonrpc$protocol$JsonRpcError$ErrorCode */
        static final /* synthetic */ int[] f6469x978b462;

        static {
            int[] iArr = new int[JsonRpcError.ErrorCode.values().length];
            f6469x978b462 = iArr;
            try {
                iArr[JsonRpcError.ErrorCode.METHOD_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    public ChromeDevtoolsServer(Iterable<ChromeDevtoolsDomain> iterable) {
        ObjectMapper objectMapper = new ObjectMapper();
        this.mObjectMapper = objectMapper;
        this.mMethodDispatcher = new MethodDispatcher(objectMapper, iterable);
    }

    private void closeSafely(SimpleSession simpleSession, int i, String str) {
        simpleSession.close(i, str);
    }

    private void handleRemoteMessage(JsonRpcPeer jsonRpcPeer, String str) throws IOException, MessageHandlingException, JSONException {
        JSONObject jSONObject = new JSONObject(str);
        if (jSONObject.has(FirebaseAnalytics.Param.METHOD)) {
            handleRemoteRequest(jsonRpcPeer, jSONObject);
        } else if (jSONObject.has("result")) {
            handleRemoteResponse(jsonRpcPeer, jSONObject);
        } else {
            throw new MessageHandlingException("Improper JSON-RPC message: " + str);
        }
    }

    private void handleRemoteRequest(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) throws MessageHandlingException {
        JSONObject jSONObject2;
        JSONObject jSONObject3;
        String str;
        JsonRpcRequest jsonRpcRequest = (JsonRpcRequest) this.mObjectMapper.convertValue(jSONObject, JsonRpcRequest.class);
        try {
            jSONObject2 = this.mMethodDispatcher.dispatch(jsonRpcPeer, jsonRpcRequest.method, jsonRpcRequest.params);
            jSONObject3 = null;
        } catch (JsonRpcException e) {
            logDispatchException(e);
            jSONObject3 = (JSONObject) this.mObjectMapper.convertValue(e.getErrorMessage(), JSONObject.class);
            jSONObject2 = null;
        }
        if (jsonRpcRequest.f6470id != null) {
            JsonRpcResponse jsonRpcResponse = new JsonRpcResponse();
            jsonRpcResponse.f6471id = jsonRpcRequest.f6470id.longValue();
            jsonRpcResponse.result = jSONObject2;
            jsonRpcResponse.error = jSONObject3;
            try {
                str = ((JSONObject) this.mObjectMapper.convertValue(jsonRpcResponse, JSONObject.class)).toString();
            } catch (OutOfMemoryError e2) {
                jsonRpcResponse.result = null;
                jsonRpcResponse.error = (JSONObject) this.mObjectMapper.convertValue(e2.getMessage(), JSONObject.class);
                str = ((JSONObject) this.mObjectMapper.convertValue(jsonRpcResponse, JSONObject.class)).toString();
            }
            jsonRpcPeer.getWebSocket().sendText(str);
        }
    }

    private void handleRemoteResponse(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) throws MismatchedResponseException {
        JsonRpcResponse jsonRpcResponse = (JsonRpcResponse) this.mObjectMapper.convertValue(jSONObject, JsonRpcResponse.class);
        PendingRequest andRemovePendingRequest = jsonRpcPeer.getAndRemovePendingRequest(jsonRpcResponse.f6471id);
        if (andRemovePendingRequest != null) {
            PendingRequestCallback pendingRequestCallback = andRemovePendingRequest.callback;
            if (pendingRequestCallback != null) {
                pendingRequestCallback.onResponse(jsonRpcPeer, jsonRpcResponse);
                return;
            }
            return;
        }
        throw new MismatchedResponseException(jsonRpcResponse.f6471id);
    }

    private static void logDispatchException(JsonRpcException jsonRpcException) {
        JsonRpcError errorMessage = jsonRpcException.getErrorMessage();
        if (C09341.f6469x978b462[errorMessage.code.ordinal()] != 1) {
            LogRedirector.m15621w(TAG, "Error processing remote message", jsonRpcException);
            return;
        }
        LogRedirector.m15630d(TAG, "Method not implemented: " + errorMessage.message);
    }

    @Override // com.facebook.stetho.websocket.SimpleEndpoint
    public void onClose(SimpleSession simpleSession, int i, String str) {
        LogRedirector.m15630d(TAG, "onClose: reason=" + i + " " + str);
        JsonRpcPeer remove = this.mPeers.remove(simpleSession);
        if (remove != null) {
            remove.invokeDisconnectReceivers();
        }
    }

    @Override // com.facebook.stetho.websocket.SimpleEndpoint
    public void onError(SimpleSession simpleSession, Throwable th) {
        LogRedirector.m15628e(TAG, "onError: ex=" + th.toString());
    }

    @Override // com.facebook.stetho.websocket.SimpleEndpoint
    public void onMessage(SimpleSession simpleSession, String str) {
        if (LogRedirector.isLoggable(TAG, 2)) {
            LogRedirector.m15624v(TAG, "onMessage: message=" + str);
        }
        try {
            JsonRpcPeer jsonRpcPeer = this.mPeers.get(simpleSession);
            Util.throwIfNull(jsonRpcPeer);
            handleRemoteMessage(jsonRpcPeer, str);
        } catch (MessageHandlingException e) {
            LogRedirector.m15626i(TAG, "Message could not be processed by implementation: " + e);
            closeSafely(simpleSession, CloseCodes.UNEXPECTED_CONDITION, e.getClass().getSimpleName());
        } catch (IOException e2) {
            if (LogRedirector.isLoggable(TAG, 2)) {
                LogRedirector.m15624v(TAG, "Unexpected I/O exception processing message: " + e2);
            }
            closeSafely(simpleSession, CloseCodes.UNEXPECTED_CONDITION, e2.getClass().getSimpleName());
        } catch (JSONException e3) {
            LogRedirector.m15623v(TAG, "Unexpected JSON exception processing message", e3);
            closeSafely(simpleSession, CloseCodes.UNEXPECTED_CONDITION, e3.getClass().getSimpleName());
        }
    }

    @Override // com.facebook.stetho.websocket.SimpleEndpoint
    public void onMessage(SimpleSession simpleSession, byte[] bArr, int i) {
        LogRedirector.m15630d(TAG, "Ignoring binary message of length " + i);
    }

    @Override // com.facebook.stetho.websocket.SimpleEndpoint
    public void onOpen(SimpleSession simpleSession) {
        LogRedirector.m15630d(TAG, "onOpen");
        this.mPeers.put(simpleSession, new JsonRpcPeer(this.mObjectMapper, simpleSession));
    }
}
