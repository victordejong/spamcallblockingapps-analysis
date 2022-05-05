package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.RequestQueue;
import com.privacystar.core.data.model.RequestQueueFields;
import io.realm.BaseRealm;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.Table;
import io.realm.internal.objectstore.OsObjectBuilder;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_RequestQueueRealmProxy.class */
public class com_privacystar_core_data_model_RequestQueueRealmProxy extends RequestQueue implements RealmObjectProxy, com_privacystar_core_data_model_RequestQueueRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private RequestQueueColumnInfo columnInfo;
    private ProxyState<RequestQueue> proxyState;

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_RequestQueueRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "RequestQueue";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_RequestQueueRealmProxy$RequestQueueColumnInfo.class */
    public static final class RequestQueueColumnInfo extends ColumnInfo {
        long callBackIndex;
        long dependencyIndex;
        long executionIndex;
        long maxColumnIndexValue;
        long optionsIndex;

        RequestQueueColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        RequestQueueColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(4);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.executionIndex = addColumnDetails(RequestQueueFields.EXECUTION, RequestQueueFields.EXECUTION, objectSchemaInfo);
            this.optionsIndex = addColumnDetails(RequestQueueFields.OPTIONS, RequestQueueFields.OPTIONS, objectSchemaInfo);
            this.callBackIndex = addColumnDetails(RequestQueueFields.CALL_BACK, RequestQueueFields.CALL_BACK, objectSchemaInfo);
            this.dependencyIndex = addColumnDetails(RequestQueueFields.DEPENDENCY, RequestQueueFields.DEPENDENCY, objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new RequestQueueColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            RequestQueueColumnInfo requestQueueColumnInfo = (RequestQueueColumnInfo) columnInfo;
            RequestQueueColumnInfo requestQueueColumnInfo2 = (RequestQueueColumnInfo) columnInfo2;
            requestQueueColumnInfo2.executionIndex = requestQueueColumnInfo.executionIndex;
            requestQueueColumnInfo2.optionsIndex = requestQueueColumnInfo.optionsIndex;
            requestQueueColumnInfo2.callBackIndex = requestQueueColumnInfo.callBackIndex;
            requestQueueColumnInfo2.dependencyIndex = requestQueueColumnInfo.dependencyIndex;
            requestQueueColumnInfo2.maxColumnIndexValue = requestQueueColumnInfo.maxColumnIndexValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_RequestQueueRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static RequestQueue copy(Realm realm, RequestQueueColumnInfo requestQueueColumnInfo, RequestQueue requestQueue, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(requestQueue);
        if (realmObjectProxy != null) {
            return (RequestQueue) realmObjectProxy;
        }
        RequestQueue requestQueue2 = requestQueue;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(RequestQueue.class), requestQueueColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(requestQueueColumnInfo.executionIndex, requestQueue2.realmGet$execution());
        osObjectBuilder.addString(requestQueueColumnInfo.optionsIndex, requestQueue2.realmGet$options());
        osObjectBuilder.addString(requestQueueColumnInfo.callBackIndex, requestQueue2.realmGet$callBack());
        osObjectBuilder.addString(requestQueueColumnInfo.dependencyIndex, requestQueue2.realmGet$dependency());
        com_privacystar_core_data_model_RequestQueueRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(requestQueue, newProxyInstance);
        return newProxyInstance;
    }

    public static RequestQueue copyOrUpdate(Realm realm, RequestQueueColumnInfo requestQueueColumnInfo, RequestQueue requestQueue, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if (requestQueue instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) requestQueue;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
                if (realm$realm.threadId != realm.threadId) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (realm$realm.getPath().equals(realm.getPath())) {
                    return requestQueue;
                }
            }
        }
        BaseRealm.objectContext.get();
        RealmObjectProxy realmObjectProxy2 = map.get(requestQueue);
        return realmObjectProxy2 != null ? (RequestQueue) realmObjectProxy2 : copy(realm, requestQueueColumnInfo, requestQueue, z, map, set);
    }

    public static RequestQueueColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new RequestQueueColumnInfo(osSchemaInfo);
    }

    public static RequestQueue createDetachedCopy(RequestQueue requestQueue, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        RequestQueue requestQueue2;
        if (i > i2 || requestQueue == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(requestQueue);
        if (cacheData == null) {
            RequestQueue requestQueue3 = new RequestQueue();
            map.put(requestQueue, new RealmObjectProxy.CacheData<>(i, requestQueue3));
            requestQueue2 = requestQueue3;
        } else if (i >= cacheData.minDepth) {
            return (RequestQueue) cacheData.object;
        } else {
            requestQueue2 = (RequestQueue) cacheData.object;
            cacheData.minDepth = i;
        }
        RequestQueue requestQueue4 = requestQueue2;
        RequestQueue requestQueue5 = requestQueue;
        requestQueue4.realmSet$execution(requestQueue5.realmGet$execution());
        requestQueue4.realmSet$options(requestQueue5.realmGet$options());
        requestQueue4.realmSet$callBack(requestQueue5.realmGet$callBack());
        requestQueue4.realmSet$dependency(requestQueue5.realmGet$dependency());
        return requestQueue2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 4, 0);
        builder.addPersistedProperty(RequestQueueFields.EXECUTION, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(RequestQueueFields.OPTIONS, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(RequestQueueFields.CALL_BACK, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(RequestQueueFields.DEPENDENCY, RealmFieldType.STRING, false, false, false);
        return builder.build();
    }

    public static RequestQueue createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        RequestQueue requestQueue = (RequestQueue) realm.createObjectInternal(RequestQueue.class, true, Collections.emptyList());
        RequestQueue requestQueue2 = requestQueue;
        if (jSONObject.has(RequestQueueFields.EXECUTION)) {
            if (jSONObject.isNull(RequestQueueFields.EXECUTION)) {
                requestQueue2.realmSet$execution(null);
            } else {
                requestQueue2.realmSet$execution(jSONObject.getString(RequestQueueFields.EXECUTION));
            }
        }
        if (jSONObject.has(RequestQueueFields.OPTIONS)) {
            if (jSONObject.isNull(RequestQueueFields.OPTIONS)) {
                requestQueue2.realmSet$options(null);
            } else {
                requestQueue2.realmSet$options(jSONObject.getString(RequestQueueFields.OPTIONS));
            }
        }
        if (jSONObject.has(RequestQueueFields.CALL_BACK)) {
            if (jSONObject.isNull(RequestQueueFields.CALL_BACK)) {
                requestQueue2.realmSet$callBack(null);
            } else {
                requestQueue2.realmSet$callBack(jSONObject.getString(RequestQueueFields.CALL_BACK));
            }
        }
        if (jSONObject.has(RequestQueueFields.DEPENDENCY)) {
            if (jSONObject.isNull(RequestQueueFields.DEPENDENCY)) {
                requestQueue2.realmSet$dependency(null);
            } else {
                requestQueue2.realmSet$dependency(jSONObject.getString(RequestQueueFields.DEPENDENCY));
            }
        }
        return requestQueue;
    }

    @TargetApi(11)
    public static RequestQueue createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        RequestQueue requestQueue = new RequestQueue();
        RequestQueue requestQueue2 = requestQueue;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(RequestQueueFields.EXECUTION)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    requestQueue2.realmSet$execution(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    requestQueue2.realmSet$execution(null);
                }
            } else if (nextName.equals(RequestQueueFields.OPTIONS)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    requestQueue2.realmSet$options(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    requestQueue2.realmSet$options(null);
                }
            } else if (nextName.equals(RequestQueueFields.CALL_BACK)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    requestQueue2.realmSet$callBack(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    requestQueue2.realmSet$callBack(null);
                }
            } else if (!nextName.equals(RequestQueueFields.DEPENDENCY)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                requestQueue2.realmSet$dependency(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                requestQueue2.realmSet$dependency(null);
            }
        }
        jsonReader.endObject();
        return (RequestQueue) realm.copyToRealm((Realm) requestQueue, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, RequestQueue requestQueue, Map<RealmModel, Long> map) {
        if (requestQueue instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) requestQueue;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(RequestQueue.class);
        long nativePtr = table.getNativePtr();
        RequestQueueColumnInfo requestQueueColumnInfo = (RequestQueueColumnInfo) realm.getSchema().getColumnInfo(RequestQueue.class);
        long createRow = OsObject.createRow(table);
        map.put(requestQueue, Long.valueOf(createRow));
        RequestQueue requestQueue2 = requestQueue;
        String realmGet$execution = requestQueue2.realmGet$execution();
        if (realmGet$execution != null) {
            Table.nativeSetString(nativePtr, requestQueueColumnInfo.executionIndex, createRow, realmGet$execution, false);
        }
        String realmGet$options = requestQueue2.realmGet$options();
        if (realmGet$options != null) {
            Table.nativeSetString(nativePtr, requestQueueColumnInfo.optionsIndex, createRow, realmGet$options, false);
        }
        String realmGet$callBack = requestQueue2.realmGet$callBack();
        if (realmGet$callBack != null) {
            Table.nativeSetString(nativePtr, requestQueueColumnInfo.callBackIndex, createRow, realmGet$callBack, false);
        }
        String realmGet$dependency = requestQueue2.realmGet$dependency();
        if (realmGet$dependency != null) {
            Table.nativeSetString(nativePtr, requestQueueColumnInfo.dependencyIndex, createRow, realmGet$dependency, false);
        }
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(RequestQueue.class);
        long nativePtr = table.getNativePtr();
        RequestQueueColumnInfo requestQueueColumnInfo = (RequestQueueColumnInfo) realm.getSchema().getColumnInfo(RequestQueue.class);
        while (it.hasNext()) {
            RequestQueue requestQueue = (RequestQueue) it.next();
            if (!map.containsKey(requestQueue)) {
                if (requestQueue instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) requestQueue;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(requestQueue, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(requestQueue, Long.valueOf(createRow));
                RequestQueue requestQueue2 = requestQueue;
                String realmGet$execution = requestQueue2.realmGet$execution();
                if (realmGet$execution != null) {
                    Table.nativeSetString(nativePtr, requestQueueColumnInfo.executionIndex, createRow, realmGet$execution, false);
                }
                String realmGet$options = requestQueue2.realmGet$options();
                if (realmGet$options != null) {
                    Table.nativeSetString(nativePtr, requestQueueColumnInfo.optionsIndex, createRow, realmGet$options, false);
                }
                String realmGet$callBack = requestQueue2.realmGet$callBack();
                if (realmGet$callBack != null) {
                    Table.nativeSetString(nativePtr, requestQueueColumnInfo.callBackIndex, createRow, realmGet$callBack, false);
                }
                String realmGet$dependency = requestQueue2.realmGet$dependency();
                if (realmGet$dependency != null) {
                    Table.nativeSetString(nativePtr, requestQueueColumnInfo.dependencyIndex, createRow, realmGet$dependency, false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, RequestQueue requestQueue, Map<RealmModel, Long> map) {
        if (requestQueue instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) requestQueue;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(RequestQueue.class);
        long nativePtr = table.getNativePtr();
        RequestQueueColumnInfo requestQueueColumnInfo = (RequestQueueColumnInfo) realm.getSchema().getColumnInfo(RequestQueue.class);
        long createRow = OsObject.createRow(table);
        map.put(requestQueue, Long.valueOf(createRow));
        RequestQueue requestQueue2 = requestQueue;
        String realmGet$execution = requestQueue2.realmGet$execution();
        if (realmGet$execution != null) {
            Table.nativeSetString(nativePtr, requestQueueColumnInfo.executionIndex, createRow, realmGet$execution, false);
        } else {
            Table.nativeSetNull(nativePtr, requestQueueColumnInfo.executionIndex, createRow, false);
        }
        String realmGet$options = requestQueue2.realmGet$options();
        if (realmGet$options != null) {
            Table.nativeSetString(nativePtr, requestQueueColumnInfo.optionsIndex, createRow, realmGet$options, false);
        } else {
            Table.nativeSetNull(nativePtr, requestQueueColumnInfo.optionsIndex, createRow, false);
        }
        String realmGet$callBack = requestQueue2.realmGet$callBack();
        if (realmGet$callBack != null) {
            Table.nativeSetString(nativePtr, requestQueueColumnInfo.callBackIndex, createRow, realmGet$callBack, false);
        } else {
            Table.nativeSetNull(nativePtr, requestQueueColumnInfo.callBackIndex, createRow, false);
        }
        String realmGet$dependency = requestQueue2.realmGet$dependency();
        if (realmGet$dependency != null) {
            Table.nativeSetString(nativePtr, requestQueueColumnInfo.dependencyIndex, createRow, realmGet$dependency, false);
        } else {
            Table.nativeSetNull(nativePtr, requestQueueColumnInfo.dependencyIndex, createRow, false);
        }
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(RequestQueue.class);
        long nativePtr = table.getNativePtr();
        RequestQueueColumnInfo requestQueueColumnInfo = (RequestQueueColumnInfo) realm.getSchema().getColumnInfo(RequestQueue.class);
        while (it.hasNext()) {
            RequestQueue requestQueue = (RequestQueue) it.next();
            if (!map.containsKey(requestQueue)) {
                if (requestQueue instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) requestQueue;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(requestQueue, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(requestQueue, Long.valueOf(createRow));
                RequestQueue requestQueue2 = requestQueue;
                String realmGet$execution = requestQueue2.realmGet$execution();
                if (realmGet$execution != null) {
                    Table.nativeSetString(nativePtr, requestQueueColumnInfo.executionIndex, createRow, realmGet$execution, false);
                } else {
                    Table.nativeSetNull(nativePtr, requestQueueColumnInfo.executionIndex, createRow, false);
                }
                String realmGet$options = requestQueue2.realmGet$options();
                if (realmGet$options != null) {
                    Table.nativeSetString(nativePtr, requestQueueColumnInfo.optionsIndex, createRow, realmGet$options, false);
                } else {
                    Table.nativeSetNull(nativePtr, requestQueueColumnInfo.optionsIndex, createRow, false);
                }
                String realmGet$callBack = requestQueue2.realmGet$callBack();
                if (realmGet$callBack != null) {
                    Table.nativeSetString(nativePtr, requestQueueColumnInfo.callBackIndex, createRow, realmGet$callBack, false);
                } else {
                    Table.nativeSetNull(nativePtr, requestQueueColumnInfo.callBackIndex, createRow, false);
                }
                String realmGet$dependency = requestQueue2.realmGet$dependency();
                if (realmGet$dependency != null) {
                    Table.nativeSetString(nativePtr, requestQueueColumnInfo.dependencyIndex, createRow, realmGet$dependency, false);
                } else {
                    Table.nativeSetNull(nativePtr, requestQueueColumnInfo.dependencyIndex, createRow, false);
                }
            }
        }
    }

    private static com_privacystar_core_data_model_RequestQueueRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(RequestQueue.class), false, Collections.emptyList());
        com_privacystar_core_data_model_RequestQueueRealmProxy com_privacystar_core_data_model_requestqueuerealmproxy = new com_privacystar_core_data_model_RequestQueueRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_requestqueuerealmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_privacystar_core_data_model_RequestQueueRealmProxy com_privacystar_core_data_model_requestqueuerealmproxy = (com_privacystar_core_data_model_RequestQueueRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_requestqueuerealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_requestqueuerealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_requestqueuerealmproxy.proxyState.getRow$realm().getIndex();
    }

    public int hashCode() {
        String path = this.proxyState.getRealm$realm().getPath();
        String name = this.proxyState.getRow$realm().getTable().getName();
        long index = this.proxyState.getRow$realm().getIndex();
        int i = 0;
        int hashCode = path != null ? path.hashCode() : 0;
        if (name != null) {
            i = name.hashCode();
        }
        return ((((527 + hashCode) * 31) + i) * 31) + ((int) ((index >>> 32) ^ index));
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState == null) {
            BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
            this.columnInfo = (RequestQueueColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.RequestQueue, io.realm.com_privacystar_core_data_model_RequestQueueRealmProxyInterface
    public String realmGet$callBack() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.callBackIndex);
    }

    @Override // com.privacystar.core.data.model.RequestQueue, io.realm.com_privacystar_core_data_model_RequestQueueRealmProxyInterface
    public String realmGet$dependency() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.dependencyIndex);
    }

    @Override // com.privacystar.core.data.model.RequestQueue, io.realm.com_privacystar_core_data_model_RequestQueueRealmProxyInterface
    public String realmGet$execution() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.executionIndex);
    }

    @Override // com.privacystar.core.data.model.RequestQueue, io.realm.com_privacystar_core_data_model_RequestQueueRealmProxyInterface
    public String realmGet$options() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.optionsIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.RequestQueue, io.realm.com_privacystar_core_data_model_RequestQueueRealmProxyInterface
    public void realmSet$callBack(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.callBackIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.callBackIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.callBackIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.callBackIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.RequestQueue, io.realm.com_privacystar_core_data_model_RequestQueueRealmProxyInterface
    public void realmSet$dependency(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.dependencyIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.dependencyIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.dependencyIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.dependencyIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.RequestQueue, io.realm.com_privacystar_core_data_model_RequestQueueRealmProxyInterface
    public void realmSet$execution(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.executionIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.executionIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.executionIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.executionIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.RequestQueue, io.realm.com_privacystar_core_data_model_RequestQueueRealmProxyInterface
    public void realmSet$options(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.optionsIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.optionsIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.optionsIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.optionsIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("RequestQueue = proxy[");
        sb.append("{execution:");
        sb.append(realmGet$execution() != null ? realmGet$execution() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{options:");
        sb.append(realmGet$options() != null ? realmGet$options() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{callBack:");
        sb.append(realmGet$callBack() != null ? realmGet$callBack() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{dependency:");
        sb.append(realmGet$dependency() != null ? realmGet$dependency() : "null");
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
