package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.LookupHistory;
import io.realm.BaseRealm;
import io.realm.exceptions.RealmException;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_LookupHistoryRealmProxy.class */
public class com_privacystar_core_data_model_LookupHistoryRealmProxy extends LookupHistory implements RealmObjectProxy, com_privacystar_core_data_model_LookupHistoryRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private LookupHistoryColumnInfo columnInfo;
    private ProxyState<LookupHistory> proxyState;

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_LookupHistoryRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "LookupHistory";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_LookupHistoryRealmProxy$LookupHistoryColumnInfo.class */
    public static final class LookupHistoryColumnInfo extends ColumnInfo {
        long addedIndex;
        long maxColumnIndexValue;
        long numberIndex;

        LookupHistoryColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        LookupHistoryColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(2);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.numberIndex = addColumnDetails("number", "number", objectSchemaInfo);
            this.addedIndex = addColumnDetails("added", "added", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new LookupHistoryColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            LookupHistoryColumnInfo lookupHistoryColumnInfo = (LookupHistoryColumnInfo) columnInfo;
            LookupHistoryColumnInfo lookupHistoryColumnInfo2 = (LookupHistoryColumnInfo) columnInfo2;
            lookupHistoryColumnInfo2.numberIndex = lookupHistoryColumnInfo.numberIndex;
            lookupHistoryColumnInfo2.addedIndex = lookupHistoryColumnInfo.addedIndex;
            lookupHistoryColumnInfo2.maxColumnIndexValue = lookupHistoryColumnInfo.maxColumnIndexValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_LookupHistoryRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static LookupHistory copy(Realm realm, LookupHistoryColumnInfo lookupHistoryColumnInfo, LookupHistory lookupHistory, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(lookupHistory);
        if (realmObjectProxy != null) {
            return (LookupHistory) realmObjectProxy;
        }
        LookupHistory lookupHistory2 = lookupHistory;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(LookupHistory.class), lookupHistoryColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(lookupHistoryColumnInfo.numberIndex, lookupHistory2.realmGet$number());
        osObjectBuilder.addDate(lookupHistoryColumnInfo.addedIndex, lookupHistory2.realmGet$added());
        com_privacystar_core_data_model_LookupHistoryRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(lookupHistory, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0115  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.LookupHistory copyOrUpdate(io.realm.Realm r7, io.realm.com_privacystar_core_data_model_LookupHistoryRealmProxy.LookupHistoryColumnInfo r8, com.privacystar.core.data.model.LookupHistory r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_LookupHistoryRealmProxy.copyOrUpdate(io.realm.Realm, io.realm.com_privacystar_core_data_model_LookupHistoryRealmProxy$LookupHistoryColumnInfo, com.privacystar.core.data.model.LookupHistory, boolean, java.util.Map, java.util.Set):com.privacystar.core.data.model.LookupHistory");
    }

    public static LookupHistoryColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new LookupHistoryColumnInfo(osSchemaInfo);
    }

    public static LookupHistory createDetachedCopy(LookupHistory lookupHistory, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        LookupHistory lookupHistory2;
        if (i > i2 || lookupHistory == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(lookupHistory);
        if (cacheData == null) {
            LookupHistory lookupHistory3 = new LookupHistory();
            map.put(lookupHistory, new RealmObjectProxy.CacheData<>(i, lookupHistory3));
            lookupHistory2 = lookupHistory3;
        } else if (i >= cacheData.minDepth) {
            return (LookupHistory) cacheData.object;
        } else {
            lookupHistory2 = (LookupHistory) cacheData.object;
            cacheData.minDepth = i;
        }
        LookupHistory lookupHistory4 = lookupHistory2;
        LookupHistory lookupHistory5 = lookupHistory;
        lookupHistory4.realmSet$number(lookupHistory5.realmGet$number());
        lookupHistory4.realmSet$added(lookupHistory5.realmGet$added());
        return lookupHistory2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 2, 0);
        builder.addPersistedProperty("number", RealmFieldType.STRING, true, true, false);
        builder.addPersistedProperty("added", RealmFieldType.DATE, false, false, false);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.LookupHistory createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_LookupHistoryRealmProxy.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):com.privacystar.core.data.model.LookupHistory");
    }

    @TargetApi(11)
    public static LookupHistory createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        LookupHistory lookupHistory = new LookupHistory();
        LookupHistory lookupHistory2 = lookupHistory;
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    lookupHistory2.realmSet$number(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    lookupHistory2.realmSet$number(null);
                }
                z = true;
            } else if (!nextName.equals("added")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.skipValue();
                lookupHistory2.realmSet$added(null);
            } else if (jsonReader.peek() == JsonToken.NUMBER) {
                long nextLong = jsonReader.nextLong();
                if (nextLong > -1) {
                    lookupHistory2.realmSet$added(new Date(nextLong));
                }
            } else {
                lookupHistory2.realmSet$added(JsonUtils.stringToDate(jsonReader.nextString()));
            }
        }
        jsonReader.endObject();
        if (z) {
            return (LookupHistory) realm.copyToRealm((Realm) lookupHistory, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'number'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, LookupHistory lookupHistory, Map<RealmModel, Long> map) {
        if (lookupHistory instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) lookupHistory;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(LookupHistory.class);
        long nativePtr = table.getNativePtr();
        LookupHistoryColumnInfo lookupHistoryColumnInfo = (LookupHistoryColumnInfo) realm.getSchema().getColumnInfo(LookupHistory.class);
        long j = lookupHistoryColumnInfo.numberIndex;
        LookupHistory lookupHistory2 = lookupHistory;
        String realmGet$number = lookupHistory2.realmGet$number();
        long nativeFindFirstNull = realmGet$number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$number);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$number);
        } else {
            Table.throwDuplicatePrimaryKeyException(realmGet$number);
        }
        map.put(lookupHistory, Long.valueOf(nativeFindFirstNull));
        Date realmGet$added = lookupHistory2.realmGet$added();
        if (realmGet$added != null) {
            Table.nativeSetTimestamp(nativePtr, lookupHistoryColumnInfo.addedIndex, nativeFindFirstNull, realmGet$added.getTime(), false);
        }
        return nativeFindFirstNull;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(LookupHistory.class);
        long nativePtr = table.getNativePtr();
        LookupHistoryColumnInfo lookupHistoryColumnInfo = (LookupHistoryColumnInfo) realm.getSchema().getColumnInfo(LookupHistory.class);
        long j = lookupHistoryColumnInfo.numberIndex;
        while (it.hasNext()) {
            LookupHistory lookupHistory = (LookupHistory) it.next();
            if (!map.containsKey(lookupHistory)) {
                if (lookupHistory instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) lookupHistory;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(lookupHistory, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                LookupHistory lookupHistory2 = lookupHistory;
                String realmGet$number = lookupHistory2.realmGet$number();
                long nativeFindFirstNull = realmGet$number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$number);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$number);
                } else {
                    Table.throwDuplicatePrimaryKeyException(realmGet$number);
                }
                map.put(lookupHistory, Long.valueOf(nativeFindFirstNull));
                Date realmGet$added = lookupHistory2.realmGet$added();
                if (realmGet$added != null) {
                    Table.nativeSetTimestamp(nativePtr, lookupHistoryColumnInfo.addedIndex, nativeFindFirstNull, realmGet$added.getTime(), false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, LookupHistory lookupHistory, Map<RealmModel, Long> map) {
        if (lookupHistory instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) lookupHistory;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(LookupHistory.class);
        long nativePtr = table.getNativePtr();
        LookupHistoryColumnInfo lookupHistoryColumnInfo = (LookupHistoryColumnInfo) realm.getSchema().getColumnInfo(LookupHistory.class);
        long j = lookupHistoryColumnInfo.numberIndex;
        LookupHistory lookupHistory2 = lookupHistory;
        String realmGet$number = lookupHistory2.realmGet$number();
        long nativeFindFirstNull = realmGet$number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$number);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$number);
        }
        map.put(lookupHistory, Long.valueOf(nativeFindFirstNull));
        Date realmGet$added = lookupHistory2.realmGet$added();
        if (realmGet$added != null) {
            Table.nativeSetTimestamp(nativePtr, lookupHistoryColumnInfo.addedIndex, nativeFindFirstNull, realmGet$added.getTime(), false);
        } else {
            Table.nativeSetNull(nativePtr, lookupHistoryColumnInfo.addedIndex, nativeFindFirstNull, false);
        }
        return nativeFindFirstNull;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(LookupHistory.class);
        long nativePtr = table.getNativePtr();
        LookupHistoryColumnInfo lookupHistoryColumnInfo = (LookupHistoryColumnInfo) realm.getSchema().getColumnInfo(LookupHistory.class);
        long j = lookupHistoryColumnInfo.numberIndex;
        while (it.hasNext()) {
            LookupHistory lookupHistory = (LookupHistory) it.next();
            if (!map.containsKey(lookupHistory)) {
                if (lookupHistory instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) lookupHistory;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(lookupHistory, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                LookupHistory lookupHistory2 = lookupHistory;
                String realmGet$number = lookupHistory2.realmGet$number();
                long nativeFindFirstNull = realmGet$number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$number);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$number);
                }
                map.put(lookupHistory, Long.valueOf(nativeFindFirstNull));
                Date realmGet$added = lookupHistory2.realmGet$added();
                if (realmGet$added != null) {
                    Table.nativeSetTimestamp(nativePtr, lookupHistoryColumnInfo.addedIndex, nativeFindFirstNull, realmGet$added.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, lookupHistoryColumnInfo.addedIndex, nativeFindFirstNull, false);
                }
            }
        }
    }

    private static com_privacystar_core_data_model_LookupHistoryRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(LookupHistory.class), false, Collections.emptyList());
        com_privacystar_core_data_model_LookupHistoryRealmProxy com_privacystar_core_data_model_lookuphistoryrealmproxy = new com_privacystar_core_data_model_LookupHistoryRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_lookuphistoryrealmproxy;
    }

    static LookupHistory update(Realm realm, LookupHistoryColumnInfo lookupHistoryColumnInfo, LookupHistory lookupHistory, LookupHistory lookupHistory2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        LookupHistory lookupHistory3 = lookupHistory2;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(LookupHistory.class), lookupHistoryColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(lookupHistoryColumnInfo.numberIndex, lookupHistory3.realmGet$number());
        osObjectBuilder.addDate(lookupHistoryColumnInfo.addedIndex, lookupHistory3.realmGet$added());
        osObjectBuilder.updateExistingObject();
        return lookupHistory;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_privacystar_core_data_model_LookupHistoryRealmProxy com_privacystar_core_data_model_lookuphistoryrealmproxy = (com_privacystar_core_data_model_LookupHistoryRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_lookuphistoryrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_lookuphistoryrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_lookuphistoryrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (LookupHistoryColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.LookupHistory, io.realm.com_privacystar_core_data_model_LookupHistoryRealmProxyInterface
    public Date realmGet$added() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.addedIndex)) {
            return null;
        }
        return this.proxyState.getRow$realm().getDate(this.columnInfo.addedIndex);
    }

    @Override // com.privacystar.core.data.model.LookupHistory, io.realm.com_privacystar_core_data_model_LookupHistoryRealmProxyInterface
    public String realmGet$number() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.numberIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.LookupHistory, io.realm.com_privacystar_core_data_model_LookupHistoryRealmProxyInterface
    public void realmSet$added(Date date) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (date == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.addedIndex);
            } else {
                this.proxyState.getRow$realm().setDate(this.columnInfo.addedIndex, date);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (date == null) {
                row$realm.getTable().setNull(this.columnInfo.addedIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setDate(this.columnInfo.addedIndex, row$realm.getIndex(), date, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.LookupHistory, io.realm.com_privacystar_core_data_model_LookupHistoryRealmProxyInterface
    public void realmSet$number(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'number' cannot be changed after object was created.");
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("LookupHistory = proxy[");
        sb.append("{number:");
        sb.append(realmGet$number() != null ? realmGet$number() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{added:");
        sb.append(realmGet$added() != null ? realmGet$added() : "null");
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
