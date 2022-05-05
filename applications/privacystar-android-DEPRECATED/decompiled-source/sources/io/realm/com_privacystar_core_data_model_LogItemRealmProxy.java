package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.LogItem;
import com.privacystar.core.data.model.LogItemFields;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_LogItemRealmProxy.class */
public class com_privacystar_core_data_model_LogItemRealmProxy extends LogItem implements RealmObjectProxy, com_privacystar_core_data_model_LogItemRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private LogItemColumnInfo columnInfo;
    private ProxyState<LogItem> proxyState;

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_LogItemRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "LogItem";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_LogItemRealmProxy$LogItemColumnInfo.class */
    public static final class LogItemColumnInfo extends ColumnInfo {
        long dateIndex;
        long logIndex;
        long maxColumnIndexValue;

        LogItemColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        LogItemColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(2);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.logIndex = addColumnDetails(LogItemFields.LOG, LogItemFields.LOG, objectSchemaInfo);
            this.dateIndex = addColumnDetails(LogItemFields.DATE, LogItemFields.DATE, objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new LogItemColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            LogItemColumnInfo logItemColumnInfo = (LogItemColumnInfo) columnInfo;
            LogItemColumnInfo logItemColumnInfo2 = (LogItemColumnInfo) columnInfo2;
            logItemColumnInfo2.logIndex = logItemColumnInfo.logIndex;
            logItemColumnInfo2.dateIndex = logItemColumnInfo.dateIndex;
            logItemColumnInfo2.maxColumnIndexValue = logItemColumnInfo.maxColumnIndexValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_LogItemRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static LogItem copy(Realm realm, LogItemColumnInfo logItemColumnInfo, LogItem logItem, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(logItem);
        if (realmObjectProxy != null) {
            return (LogItem) realmObjectProxy;
        }
        LogItem logItem2 = logItem;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(LogItem.class), logItemColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(logItemColumnInfo.logIndex, logItem2.realmGet$log());
        osObjectBuilder.addDate(logItemColumnInfo.dateIndex, logItem2.realmGet$date());
        com_privacystar_core_data_model_LogItemRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(logItem, newProxyInstance);
        return newProxyInstance;
    }

    public static LogItem copyOrUpdate(Realm realm, LogItemColumnInfo logItemColumnInfo, LogItem logItem, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if (logItem instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) logItem;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
                if (realm$realm.threadId != realm.threadId) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (realm$realm.getPath().equals(realm.getPath())) {
                    return logItem;
                }
            }
        }
        BaseRealm.objectContext.get();
        RealmObjectProxy realmObjectProxy2 = map.get(logItem);
        return realmObjectProxy2 != null ? (LogItem) realmObjectProxy2 : copy(realm, logItemColumnInfo, logItem, z, map, set);
    }

    public static LogItemColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new LogItemColumnInfo(osSchemaInfo);
    }

    public static LogItem createDetachedCopy(LogItem logItem, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        LogItem logItem2;
        if (i > i2 || logItem == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(logItem);
        if (cacheData == null) {
            LogItem logItem3 = new LogItem();
            map.put(logItem, new RealmObjectProxy.CacheData<>(i, logItem3));
            logItem2 = logItem3;
        } else if (i >= cacheData.minDepth) {
            return (LogItem) cacheData.object;
        } else {
            logItem2 = (LogItem) cacheData.object;
            cacheData.minDepth = i;
        }
        LogItem logItem4 = logItem2;
        LogItem logItem5 = logItem;
        logItem4.realmSet$log(logItem5.realmGet$log());
        logItem4.realmSet$date(logItem5.realmGet$date());
        return logItem2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 2, 0);
        builder.addPersistedProperty(LogItemFields.LOG, RealmFieldType.STRING, false, false, true);
        builder.addPersistedProperty(LogItemFields.DATE, RealmFieldType.DATE, false, false, true);
        return builder.build();
    }

    public static LogItem createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        LogItem logItem = (LogItem) realm.createObjectInternal(LogItem.class, true, Collections.emptyList());
        LogItem logItem2 = logItem;
        if (jSONObject.has(LogItemFields.LOG)) {
            if (jSONObject.isNull(LogItemFields.LOG)) {
                logItem2.realmSet$log(null);
            } else {
                logItem2.realmSet$log(jSONObject.getString(LogItemFields.LOG));
            }
        }
        if (jSONObject.has(LogItemFields.DATE)) {
            if (jSONObject.isNull(LogItemFields.DATE)) {
                logItem2.realmSet$date(null);
            } else {
                Object obj = jSONObject.get(LogItemFields.DATE);
                if (obj instanceof String) {
                    logItem2.realmSet$date(JsonUtils.stringToDate((String) obj));
                } else {
                    logItem2.realmSet$date(new Date(jSONObject.getLong(LogItemFields.DATE)));
                }
            }
        }
        return logItem;
    }

    @TargetApi(11)
    public static LogItem createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        LogItem logItem = new LogItem();
        LogItem logItem2 = logItem;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(LogItemFields.LOG)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    logItem2.realmSet$log(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    logItem2.realmSet$log(null);
                }
            } else if (!nextName.equals(LogItemFields.DATE)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.skipValue();
                logItem2.realmSet$date(null);
            } else if (jsonReader.peek() == JsonToken.NUMBER) {
                long nextLong = jsonReader.nextLong();
                if (nextLong > -1) {
                    logItem2.realmSet$date(new Date(nextLong));
                }
            } else {
                logItem2.realmSet$date(JsonUtils.stringToDate(jsonReader.nextString()));
            }
        }
        jsonReader.endObject();
        return (LogItem) realm.copyToRealm((Realm) logItem, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, LogItem logItem, Map<RealmModel, Long> map) {
        if (logItem instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) logItem;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(LogItem.class);
        long nativePtr = table.getNativePtr();
        LogItemColumnInfo logItemColumnInfo = (LogItemColumnInfo) realm.getSchema().getColumnInfo(LogItem.class);
        long createRow = OsObject.createRow(table);
        map.put(logItem, Long.valueOf(createRow));
        LogItem logItem2 = logItem;
        String realmGet$log = logItem2.realmGet$log();
        if (realmGet$log != null) {
            Table.nativeSetString(nativePtr, logItemColumnInfo.logIndex, createRow, realmGet$log, false);
        }
        Date realmGet$date = logItem2.realmGet$date();
        if (realmGet$date != null) {
            Table.nativeSetTimestamp(nativePtr, logItemColumnInfo.dateIndex, createRow, realmGet$date.getTime(), false);
        }
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(LogItem.class);
        long nativePtr = table.getNativePtr();
        LogItemColumnInfo logItemColumnInfo = (LogItemColumnInfo) realm.getSchema().getColumnInfo(LogItem.class);
        while (it.hasNext()) {
            LogItem logItem = (LogItem) it.next();
            if (!map.containsKey(logItem)) {
                if (logItem instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) logItem;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(logItem, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(logItem, Long.valueOf(createRow));
                LogItem logItem2 = logItem;
                String realmGet$log = logItem2.realmGet$log();
                if (realmGet$log != null) {
                    Table.nativeSetString(nativePtr, logItemColumnInfo.logIndex, createRow, realmGet$log, false);
                }
                Date realmGet$date = logItem2.realmGet$date();
                if (realmGet$date != null) {
                    Table.nativeSetTimestamp(nativePtr, logItemColumnInfo.dateIndex, createRow, realmGet$date.getTime(), false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, LogItem logItem, Map<RealmModel, Long> map) {
        if (logItem instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) logItem;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(LogItem.class);
        long nativePtr = table.getNativePtr();
        LogItemColumnInfo logItemColumnInfo = (LogItemColumnInfo) realm.getSchema().getColumnInfo(LogItem.class);
        long createRow = OsObject.createRow(table);
        map.put(logItem, Long.valueOf(createRow));
        LogItem logItem2 = logItem;
        String realmGet$log = logItem2.realmGet$log();
        if (realmGet$log != null) {
            Table.nativeSetString(nativePtr, logItemColumnInfo.logIndex, createRow, realmGet$log, false);
        } else {
            Table.nativeSetNull(nativePtr, logItemColumnInfo.logIndex, createRow, false);
        }
        Date realmGet$date = logItem2.realmGet$date();
        if (realmGet$date != null) {
            Table.nativeSetTimestamp(nativePtr, logItemColumnInfo.dateIndex, createRow, realmGet$date.getTime(), false);
        } else {
            Table.nativeSetNull(nativePtr, logItemColumnInfo.dateIndex, createRow, false);
        }
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(LogItem.class);
        long nativePtr = table.getNativePtr();
        LogItemColumnInfo logItemColumnInfo = (LogItemColumnInfo) realm.getSchema().getColumnInfo(LogItem.class);
        while (it.hasNext()) {
            LogItem logItem = (LogItem) it.next();
            if (!map.containsKey(logItem)) {
                if (logItem instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) logItem;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(logItem, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(logItem, Long.valueOf(createRow));
                LogItem logItem2 = logItem;
                String realmGet$log = logItem2.realmGet$log();
                if (realmGet$log != null) {
                    Table.nativeSetString(nativePtr, logItemColumnInfo.logIndex, createRow, realmGet$log, false);
                } else {
                    Table.nativeSetNull(nativePtr, logItemColumnInfo.logIndex, createRow, false);
                }
                Date realmGet$date = logItem2.realmGet$date();
                if (realmGet$date != null) {
                    Table.nativeSetTimestamp(nativePtr, logItemColumnInfo.dateIndex, createRow, realmGet$date.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, logItemColumnInfo.dateIndex, createRow, false);
                }
            }
        }
    }

    private static com_privacystar_core_data_model_LogItemRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(LogItem.class), false, Collections.emptyList());
        com_privacystar_core_data_model_LogItemRealmProxy com_privacystar_core_data_model_logitemrealmproxy = new com_privacystar_core_data_model_LogItemRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_logitemrealmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_privacystar_core_data_model_LogItemRealmProxy com_privacystar_core_data_model_logitemrealmproxy = (com_privacystar_core_data_model_LogItemRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_logitemrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_logitemrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_logitemrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (LogItemColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.LogItem, io.realm.com_privacystar_core_data_model_LogItemRealmProxyInterface
    public Date realmGet$date() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getDate(this.columnInfo.dateIndex);
    }

    @Override // com.privacystar.core.data.model.LogItem, io.realm.com_privacystar_core_data_model_LogItemRealmProxyInterface
    public String realmGet$log() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.logIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.LogItem, io.realm.com_privacystar_core_data_model_LogItemRealmProxyInterface
    public void realmSet$date(Date date) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (date == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'date' to null.");
            }
            this.proxyState.getRow$realm().setDate(this.columnInfo.dateIndex, date);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (date == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'date' to null.");
            }
            row$realm.getTable().setDate(this.columnInfo.dateIndex, row$realm.getIndex(), date, true);
        }
    }

    @Override // com.privacystar.core.data.model.LogItem, io.realm.com_privacystar_core_data_model_LogItemRealmProxyInterface
    public void realmSet$log(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'log' to null.");
            }
            this.proxyState.getRow$realm().setString(this.columnInfo.logIndex, str);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'log' to null.");
            }
            row$realm.getTable().setString(this.columnInfo.logIndex, row$realm.getIndex(), str, true);
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        return "LogItem = proxy[{log:" + realmGet$log() + "},{date:" + realmGet$date() + "}]";
    }
}
