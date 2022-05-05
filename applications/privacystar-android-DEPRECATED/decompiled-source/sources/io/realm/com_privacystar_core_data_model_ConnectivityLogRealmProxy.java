package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.ConnectivityLog;
import com.privacystar.core.data.model.ConnectivityLogFields;
import io.realm.BaseRealm;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.Table;
import io.realm.internal.android.JsonUtils;
import io.realm.internal.objectstore.OsObjectBuilder;
import java.io.IOException;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_ConnectivityLogRealmProxy.class */
public class com_privacystar_core_data_model_ConnectivityLogRealmProxy extends ConnectivityLog implements RealmObjectProxy, AbstractC1913xaf6395db {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private ConnectivityLogColumnInfo columnInfo;
    private ProxyState<ConnectivityLog> proxyState;

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_ConnectivityLogRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "ConnectivityLog";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_ConnectivityLogRealmProxy$ConnectivityLogColumnInfo.class */
    public static final class ConnectivityLogColumnInfo extends ColumnInfo {
        long maxColumnIndexValue;
        long requestPayloadIndex;
        long requestTimeIndex;
        long requestUrlIndex;
        long responseExtrasIndex;
        long responseTimeIndex;

        ConnectivityLogColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        ConnectivityLogColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(5);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.requestTimeIndex = addColumnDetails(ConnectivityLogFields.REQUEST_TIME, ConnectivityLogFields.REQUEST_TIME, objectSchemaInfo);
            this.responseTimeIndex = addColumnDetails(ConnectivityLogFields.RESPONSE_TIME, ConnectivityLogFields.RESPONSE_TIME, objectSchemaInfo);
            this.requestUrlIndex = addColumnDetails(ConnectivityLogFields.REQUEST_URL, ConnectivityLogFields.REQUEST_URL, objectSchemaInfo);
            this.requestPayloadIndex = addColumnDetails(ConnectivityLogFields.REQUEST_PAYLOAD, ConnectivityLogFields.REQUEST_PAYLOAD, objectSchemaInfo);
            this.responseExtrasIndex = addColumnDetails(ConnectivityLogFields.RESPONSE_EXTRAS, ConnectivityLogFields.RESPONSE_EXTRAS, objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new ConnectivityLogColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            ConnectivityLogColumnInfo connectivityLogColumnInfo = (ConnectivityLogColumnInfo) columnInfo;
            ConnectivityLogColumnInfo connectivityLogColumnInfo2 = (ConnectivityLogColumnInfo) columnInfo2;
            connectivityLogColumnInfo2.requestTimeIndex = connectivityLogColumnInfo.requestTimeIndex;
            connectivityLogColumnInfo2.responseTimeIndex = connectivityLogColumnInfo.responseTimeIndex;
            connectivityLogColumnInfo2.requestUrlIndex = connectivityLogColumnInfo.requestUrlIndex;
            connectivityLogColumnInfo2.requestPayloadIndex = connectivityLogColumnInfo.requestPayloadIndex;
            connectivityLogColumnInfo2.responseExtrasIndex = connectivityLogColumnInfo.responseExtrasIndex;
            connectivityLogColumnInfo2.maxColumnIndexValue = connectivityLogColumnInfo.maxColumnIndexValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_ConnectivityLogRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static ConnectivityLog copy(Realm realm, ConnectivityLogColumnInfo connectivityLogColumnInfo, ConnectivityLog connectivityLog, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(connectivityLog);
        if (realmObjectProxy != null) {
            return (ConnectivityLog) realmObjectProxy;
        }
        ConnectivityLog connectivityLog2 = connectivityLog;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(ConnectivityLog.class), connectivityLogColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addDate(connectivityLogColumnInfo.requestTimeIndex, connectivityLog2.realmGet$requestTime());
        osObjectBuilder.addDate(connectivityLogColumnInfo.responseTimeIndex, connectivityLog2.realmGet$responseTime());
        osObjectBuilder.addString(connectivityLogColumnInfo.requestUrlIndex, connectivityLog2.realmGet$requestUrl());
        osObjectBuilder.addString(connectivityLogColumnInfo.requestPayloadIndex, connectivityLog2.realmGet$requestPayload());
        osObjectBuilder.addString(connectivityLogColumnInfo.responseExtrasIndex, connectivityLog2.realmGet$responseExtras());
        com_privacystar_core_data_model_ConnectivityLogRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(connectivityLog, newProxyInstance);
        return newProxyInstance;
    }

    public static ConnectivityLog copyOrUpdate(Realm realm, ConnectivityLogColumnInfo connectivityLogColumnInfo, ConnectivityLog connectivityLog, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if (connectivityLog instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) connectivityLog;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
                if (realm$realm.threadId != realm.threadId) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (realm$realm.getPath().equals(realm.getPath())) {
                    return connectivityLog;
                }
            }
        }
        BaseRealm.objectContext.get();
        RealmObjectProxy realmObjectProxy2 = map.get(connectivityLog);
        return realmObjectProxy2 != null ? (ConnectivityLog) realmObjectProxy2 : copy(realm, connectivityLogColumnInfo, connectivityLog, z, map, set);
    }

    public static ConnectivityLogColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new ConnectivityLogColumnInfo(osSchemaInfo);
    }

    public static ConnectivityLog createDetachedCopy(ConnectivityLog connectivityLog, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        ConnectivityLog connectivityLog2;
        if (i > i2 || connectivityLog == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(connectivityLog);
        if (cacheData == null) {
            ConnectivityLog connectivityLog3 = new ConnectivityLog();
            map.put(connectivityLog, new RealmObjectProxy.CacheData<>(i, connectivityLog3));
            connectivityLog2 = connectivityLog3;
        } else if (i >= cacheData.minDepth) {
            return (ConnectivityLog) cacheData.object;
        } else {
            connectivityLog2 = (ConnectivityLog) cacheData.object;
            cacheData.minDepth = i;
        }
        ConnectivityLog connectivityLog4 = connectivityLog2;
        ConnectivityLog connectivityLog5 = connectivityLog;
        connectivityLog4.realmSet$requestTime(connectivityLog5.realmGet$requestTime());
        connectivityLog4.realmSet$responseTime(connectivityLog5.realmGet$responseTime());
        connectivityLog4.realmSet$requestUrl(connectivityLog5.realmGet$requestUrl());
        connectivityLog4.realmSet$requestPayload(connectivityLog5.realmGet$requestPayload());
        connectivityLog4.realmSet$responseExtras(connectivityLog5.realmGet$responseExtras());
        return connectivityLog2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 5, 0);
        builder.addPersistedProperty(ConnectivityLogFields.REQUEST_TIME, RealmFieldType.DATE, false, false, false);
        builder.addPersistedProperty(ConnectivityLogFields.RESPONSE_TIME, RealmFieldType.DATE, false, false, false);
        builder.addPersistedProperty(ConnectivityLogFields.REQUEST_URL, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(ConnectivityLogFields.REQUEST_PAYLOAD, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(ConnectivityLogFields.RESPONSE_EXTRAS, RealmFieldType.STRING, false, false, false);
        return builder.build();
    }

    public static ConnectivityLog createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        ConnectivityLog connectivityLog = (ConnectivityLog) realm.createObjectInternal(ConnectivityLog.class, true, Collections.emptyList());
        ConnectivityLog connectivityLog2 = connectivityLog;
        if (jSONObject.has(ConnectivityLogFields.REQUEST_TIME)) {
            if (jSONObject.isNull(ConnectivityLogFields.REQUEST_TIME)) {
                connectivityLog2.realmSet$requestTime(null);
            } else {
                Object obj = jSONObject.get(ConnectivityLogFields.REQUEST_TIME);
                if (obj instanceof String) {
                    connectivityLog2.realmSet$requestTime(JsonUtils.stringToDate((String) obj));
                } else {
                    connectivityLog2.realmSet$requestTime(new Date(jSONObject.getLong(ConnectivityLogFields.REQUEST_TIME)));
                }
            }
        }
        if (jSONObject.has(ConnectivityLogFields.RESPONSE_TIME)) {
            if (jSONObject.isNull(ConnectivityLogFields.RESPONSE_TIME)) {
                connectivityLog2.realmSet$responseTime(null);
            } else {
                Object obj2 = jSONObject.get(ConnectivityLogFields.RESPONSE_TIME);
                if (obj2 instanceof String) {
                    connectivityLog2.realmSet$responseTime(JsonUtils.stringToDate((String) obj2));
                } else {
                    connectivityLog2.realmSet$responseTime(new Date(jSONObject.getLong(ConnectivityLogFields.RESPONSE_TIME)));
                }
            }
        }
        if (jSONObject.has(ConnectivityLogFields.REQUEST_URL)) {
            if (jSONObject.isNull(ConnectivityLogFields.REQUEST_URL)) {
                connectivityLog2.realmSet$requestUrl(null);
            } else {
                connectivityLog2.realmSet$requestUrl(jSONObject.getString(ConnectivityLogFields.REQUEST_URL));
            }
        }
        if (jSONObject.has(ConnectivityLogFields.REQUEST_PAYLOAD)) {
            if (jSONObject.isNull(ConnectivityLogFields.REQUEST_PAYLOAD)) {
                connectivityLog2.realmSet$requestPayload(null);
            } else {
                connectivityLog2.realmSet$requestPayload(jSONObject.getString(ConnectivityLogFields.REQUEST_PAYLOAD));
            }
        }
        if (jSONObject.has(ConnectivityLogFields.RESPONSE_EXTRAS)) {
            if (jSONObject.isNull(ConnectivityLogFields.RESPONSE_EXTRAS)) {
                connectivityLog2.realmSet$responseExtras(null);
            } else {
                connectivityLog2.realmSet$responseExtras(jSONObject.getString(ConnectivityLogFields.RESPONSE_EXTRAS));
            }
        }
        return connectivityLog;
    }

    @TargetApi(11)
    public static ConnectivityLog createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        ConnectivityLog connectivityLog = new ConnectivityLog();
        ConnectivityLog connectivityLog2 = connectivityLog;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(ConnectivityLogFields.REQUEST_TIME)) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    connectivityLog2.realmSet$requestTime(null);
                } else if (jsonReader.peek() == JsonToken.NUMBER) {
                    long nextLong = jsonReader.nextLong();
                    if (nextLong > -1) {
                        connectivityLog2.realmSet$requestTime(new Date(nextLong));
                    }
                } else {
                    connectivityLog2.realmSet$requestTime(JsonUtils.stringToDate(jsonReader.nextString()));
                }
            } else if (nextName.equals(ConnectivityLogFields.RESPONSE_TIME)) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    connectivityLog2.realmSet$responseTime(null);
                } else if (jsonReader.peek() == JsonToken.NUMBER) {
                    long nextLong2 = jsonReader.nextLong();
                    if (nextLong2 > -1) {
                        connectivityLog2.realmSet$responseTime(new Date(nextLong2));
                    }
                } else {
                    connectivityLog2.realmSet$responseTime(JsonUtils.stringToDate(jsonReader.nextString()));
                }
            } else if (nextName.equals(ConnectivityLogFields.REQUEST_URL)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    connectivityLog2.realmSet$requestUrl(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    connectivityLog2.realmSet$requestUrl(null);
                }
            } else if (nextName.equals(ConnectivityLogFields.REQUEST_PAYLOAD)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    connectivityLog2.realmSet$requestPayload(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    connectivityLog2.realmSet$requestPayload(null);
                }
            } else if (!nextName.equals(ConnectivityLogFields.RESPONSE_EXTRAS)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                connectivityLog2.realmSet$responseExtras(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                connectivityLog2.realmSet$responseExtras(null);
            }
        }
        jsonReader.endObject();
        return (ConnectivityLog) realm.copyToRealm((Realm) connectivityLog, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, ConnectivityLog connectivityLog, Map<RealmModel, Long> map) {
        if (connectivityLog instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) connectivityLog;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(ConnectivityLog.class);
        long nativePtr = table.getNativePtr();
        ConnectivityLogColumnInfo connectivityLogColumnInfo = (ConnectivityLogColumnInfo) realm.getSchema().getColumnInfo(ConnectivityLog.class);
        long createRow = OsObject.createRow(table);
        map.put(connectivityLog, Long.valueOf(createRow));
        ConnectivityLog connectivityLog2 = connectivityLog;
        Date realmGet$requestTime = connectivityLog2.realmGet$requestTime();
        if (realmGet$requestTime != null) {
            Table.nativeSetTimestamp(nativePtr, connectivityLogColumnInfo.requestTimeIndex, createRow, realmGet$requestTime.getTime(), false);
        }
        Date realmGet$responseTime = connectivityLog2.realmGet$responseTime();
        if (realmGet$responseTime != null) {
            Table.nativeSetTimestamp(nativePtr, connectivityLogColumnInfo.responseTimeIndex, createRow, realmGet$responseTime.getTime(), false);
        }
        String realmGet$requestUrl = connectivityLog2.realmGet$requestUrl();
        if (realmGet$requestUrl != null) {
            Table.nativeSetString(nativePtr, connectivityLogColumnInfo.requestUrlIndex, createRow, realmGet$requestUrl, false);
        }
        String realmGet$requestPayload = connectivityLog2.realmGet$requestPayload();
        if (realmGet$requestPayload != null) {
            Table.nativeSetString(nativePtr, connectivityLogColumnInfo.requestPayloadIndex, createRow, realmGet$requestPayload, false);
        }
        String realmGet$responseExtras = connectivityLog2.realmGet$responseExtras();
        if (realmGet$responseExtras != null) {
            Table.nativeSetString(nativePtr, connectivityLogColumnInfo.responseExtrasIndex, createRow, realmGet$responseExtras, false);
        }
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(ConnectivityLog.class);
        long nativePtr = table.getNativePtr();
        ConnectivityLogColumnInfo connectivityLogColumnInfo = (ConnectivityLogColumnInfo) realm.getSchema().getColumnInfo(ConnectivityLog.class);
        while (it.hasNext()) {
            ConnectivityLog connectivityLog = (ConnectivityLog) it.next();
            if (!map.containsKey(connectivityLog)) {
                if (connectivityLog instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) connectivityLog;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(connectivityLog, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(connectivityLog, Long.valueOf(createRow));
                ConnectivityLog connectivityLog2 = connectivityLog;
                Date realmGet$requestTime = connectivityLog2.realmGet$requestTime();
                if (realmGet$requestTime != null) {
                    Table.nativeSetTimestamp(nativePtr, connectivityLogColumnInfo.requestTimeIndex, createRow, realmGet$requestTime.getTime(), false);
                }
                Date realmGet$responseTime = connectivityLog2.realmGet$responseTime();
                if (realmGet$responseTime != null) {
                    Table.nativeSetTimestamp(nativePtr, connectivityLogColumnInfo.responseTimeIndex, createRow, realmGet$responseTime.getTime(), false);
                }
                String realmGet$requestUrl = connectivityLog2.realmGet$requestUrl();
                if (realmGet$requestUrl != null) {
                    Table.nativeSetString(nativePtr, connectivityLogColumnInfo.requestUrlIndex, createRow, realmGet$requestUrl, false);
                }
                String realmGet$requestPayload = connectivityLog2.realmGet$requestPayload();
                if (realmGet$requestPayload != null) {
                    Table.nativeSetString(nativePtr, connectivityLogColumnInfo.requestPayloadIndex, createRow, realmGet$requestPayload, false);
                }
                String realmGet$responseExtras = connectivityLog2.realmGet$responseExtras();
                if (realmGet$responseExtras != null) {
                    Table.nativeSetString(nativePtr, connectivityLogColumnInfo.responseExtrasIndex, createRow, realmGet$responseExtras, false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, ConnectivityLog connectivityLog, Map<RealmModel, Long> map) {
        if (connectivityLog instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) connectivityLog;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(ConnectivityLog.class);
        long nativePtr = table.getNativePtr();
        ConnectivityLogColumnInfo connectivityLogColumnInfo = (ConnectivityLogColumnInfo) realm.getSchema().getColumnInfo(ConnectivityLog.class);
        long createRow = OsObject.createRow(table);
        map.put(connectivityLog, Long.valueOf(createRow));
        ConnectivityLog connectivityLog2 = connectivityLog;
        Date realmGet$requestTime = connectivityLog2.realmGet$requestTime();
        if (realmGet$requestTime != null) {
            Table.nativeSetTimestamp(nativePtr, connectivityLogColumnInfo.requestTimeIndex, createRow, realmGet$requestTime.getTime(), false);
        } else {
            Table.nativeSetNull(nativePtr, connectivityLogColumnInfo.requestTimeIndex, createRow, false);
        }
        Date realmGet$responseTime = connectivityLog2.realmGet$responseTime();
        if (realmGet$responseTime != null) {
            Table.nativeSetTimestamp(nativePtr, connectivityLogColumnInfo.responseTimeIndex, createRow, realmGet$responseTime.getTime(), false);
        } else {
            Table.nativeSetNull(nativePtr, connectivityLogColumnInfo.responseTimeIndex, createRow, false);
        }
        String realmGet$requestUrl = connectivityLog2.realmGet$requestUrl();
        if (realmGet$requestUrl != null) {
            Table.nativeSetString(nativePtr, connectivityLogColumnInfo.requestUrlIndex, createRow, realmGet$requestUrl, false);
        } else {
            Table.nativeSetNull(nativePtr, connectivityLogColumnInfo.requestUrlIndex, createRow, false);
        }
        String realmGet$requestPayload = connectivityLog2.realmGet$requestPayload();
        if (realmGet$requestPayload != null) {
            Table.nativeSetString(nativePtr, connectivityLogColumnInfo.requestPayloadIndex, createRow, realmGet$requestPayload, false);
        } else {
            Table.nativeSetNull(nativePtr, connectivityLogColumnInfo.requestPayloadIndex, createRow, false);
        }
        String realmGet$responseExtras = connectivityLog2.realmGet$responseExtras();
        if (realmGet$responseExtras != null) {
            Table.nativeSetString(nativePtr, connectivityLogColumnInfo.responseExtrasIndex, createRow, realmGet$responseExtras, false);
        } else {
            Table.nativeSetNull(nativePtr, connectivityLogColumnInfo.responseExtrasIndex, createRow, false);
        }
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(ConnectivityLog.class);
        long nativePtr = table.getNativePtr();
        ConnectivityLogColumnInfo connectivityLogColumnInfo = (ConnectivityLogColumnInfo) realm.getSchema().getColumnInfo(ConnectivityLog.class);
        while (it.hasNext()) {
            ConnectivityLog connectivityLog = (ConnectivityLog) it.next();
            if (!map.containsKey(connectivityLog)) {
                if (connectivityLog instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) connectivityLog;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(connectivityLog, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(connectivityLog, Long.valueOf(createRow));
                ConnectivityLog connectivityLog2 = connectivityLog;
                Date realmGet$requestTime = connectivityLog2.realmGet$requestTime();
                if (realmGet$requestTime != null) {
                    Table.nativeSetTimestamp(nativePtr, connectivityLogColumnInfo.requestTimeIndex, createRow, realmGet$requestTime.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, connectivityLogColumnInfo.requestTimeIndex, createRow, false);
                }
                Date realmGet$responseTime = connectivityLog2.realmGet$responseTime();
                if (realmGet$responseTime != null) {
                    Table.nativeSetTimestamp(nativePtr, connectivityLogColumnInfo.responseTimeIndex, createRow, realmGet$responseTime.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, connectivityLogColumnInfo.responseTimeIndex, createRow, false);
                }
                String realmGet$requestUrl = connectivityLog2.realmGet$requestUrl();
                if (realmGet$requestUrl != null) {
                    Table.nativeSetString(nativePtr, connectivityLogColumnInfo.requestUrlIndex, createRow, realmGet$requestUrl, false);
                } else {
                    Table.nativeSetNull(nativePtr, connectivityLogColumnInfo.requestUrlIndex, createRow, false);
                }
                String realmGet$requestPayload = connectivityLog2.realmGet$requestPayload();
                if (realmGet$requestPayload != null) {
                    Table.nativeSetString(nativePtr, connectivityLogColumnInfo.requestPayloadIndex, createRow, realmGet$requestPayload, false);
                } else {
                    Table.nativeSetNull(nativePtr, connectivityLogColumnInfo.requestPayloadIndex, createRow, false);
                }
                String realmGet$responseExtras = connectivityLog2.realmGet$responseExtras();
                if (realmGet$responseExtras != null) {
                    Table.nativeSetString(nativePtr, connectivityLogColumnInfo.responseExtrasIndex, createRow, realmGet$responseExtras, false);
                } else {
                    Table.nativeSetNull(nativePtr, connectivityLogColumnInfo.responseExtrasIndex, createRow, false);
                }
            }
        }
    }

    private static com_privacystar_core_data_model_ConnectivityLogRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(ConnectivityLog.class), false, Collections.emptyList());
        com_privacystar_core_data_model_ConnectivityLogRealmProxy com_privacystar_core_data_model_connectivitylogrealmproxy = new com_privacystar_core_data_model_ConnectivityLogRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_connectivitylogrealmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_privacystar_core_data_model_ConnectivityLogRealmProxy com_privacystar_core_data_model_connectivitylogrealmproxy = (com_privacystar_core_data_model_ConnectivityLogRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_connectivitylogrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_connectivitylogrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_connectivitylogrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (ConnectivityLogColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.ConnectivityLog, io.realm.AbstractC1913xaf6395db
    public String realmGet$requestPayload() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.requestPayloadIndex);
    }

    @Override // com.privacystar.core.data.model.ConnectivityLog, io.realm.AbstractC1913xaf6395db
    public Date realmGet$requestTime() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.requestTimeIndex)) {
            return null;
        }
        return this.proxyState.getRow$realm().getDate(this.columnInfo.requestTimeIndex);
    }

    @Override // com.privacystar.core.data.model.ConnectivityLog, io.realm.AbstractC1913xaf6395db
    public String realmGet$requestUrl() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.requestUrlIndex);
    }

    @Override // com.privacystar.core.data.model.ConnectivityLog, io.realm.AbstractC1913xaf6395db
    public String realmGet$responseExtras() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.responseExtrasIndex);
    }

    @Override // com.privacystar.core.data.model.ConnectivityLog, io.realm.AbstractC1913xaf6395db
    public Date realmGet$responseTime() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.responseTimeIndex)) {
            return null;
        }
        return this.proxyState.getRow$realm().getDate(this.columnInfo.responseTimeIndex);
    }

    @Override // com.privacystar.core.data.model.ConnectivityLog, io.realm.AbstractC1913xaf6395db
    public void realmSet$requestPayload(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.requestPayloadIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.requestPayloadIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.requestPayloadIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.requestPayloadIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.ConnectivityLog, io.realm.AbstractC1913xaf6395db
    public void realmSet$requestTime(Date date) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (date == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.requestTimeIndex);
            } else {
                this.proxyState.getRow$realm().setDate(this.columnInfo.requestTimeIndex, date);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (date == null) {
                row$realm.getTable().setNull(this.columnInfo.requestTimeIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setDate(this.columnInfo.requestTimeIndex, row$realm.getIndex(), date, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.ConnectivityLog, io.realm.AbstractC1913xaf6395db
    public void realmSet$requestUrl(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.requestUrlIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.requestUrlIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.requestUrlIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.requestUrlIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.ConnectivityLog, io.realm.AbstractC1913xaf6395db
    public void realmSet$responseExtras(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.responseExtrasIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.responseExtrasIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.responseExtrasIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.responseExtrasIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.ConnectivityLog, io.realm.AbstractC1913xaf6395db
    public void realmSet$responseTime(Date date) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (date == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.responseTimeIndex);
            } else {
                this.proxyState.getRow$realm().setDate(this.columnInfo.responseTimeIndex, date);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (date == null) {
                row$realm.getTable().setNull(this.columnInfo.responseTimeIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setDate(this.columnInfo.responseTimeIndex, row$realm.getIndex(), date, true);
            }
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("ConnectivityLog = proxy[");
        sb.append("{requestTime:");
        sb.append(realmGet$requestTime() != null ? realmGet$requestTime() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{responseTime:");
        sb.append(realmGet$responseTime() != null ? realmGet$responseTime() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{requestUrl:");
        sb.append(realmGet$requestUrl() != null ? realmGet$requestUrl() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{requestPayload:");
        sb.append(realmGet$requestPayload() != null ? realmGet$requestPayload() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{responseExtras:");
        sb.append(realmGet$responseExtras() != null ? realmGet$responseExtras() : "null");
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
