package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.ApprovedList;
import com.privacystar.core.data.model.ApprovedListFields;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_ApprovedListRealmProxy.class */
public class com_privacystar_core_data_model_ApprovedListRealmProxy extends ApprovedList implements RealmObjectProxy, com_privacystar_core_data_model_ApprovedListRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private ApprovedListColumnInfo columnInfo;
    private ProxyState<ApprovedList> proxyState;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_ApprovedListRealmProxy$ApprovedListColumnInfo.class */
    public static final class ApprovedListColumnInfo extends ColumnInfo {
        long addedIndex;
        long maxColumnIndexValue;
        long numberIndex;
        long numberLastCachedIndex;
        long updateTriggerIndex;

        ApprovedListColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        ApprovedListColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(4);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.numberIndex = addColumnDetails("number", "number", objectSchemaInfo);
            this.addedIndex = addColumnDetails("added", "added", objectSchemaInfo);
            this.numberLastCachedIndex = addColumnDetails(ApprovedListFields.NUMBER_LAST_CACHED, ApprovedListFields.NUMBER_LAST_CACHED, objectSchemaInfo);
            this.updateTriggerIndex = addColumnDetails(ApprovedListFields.UPDATE_TRIGGER, ApprovedListFields.UPDATE_TRIGGER, objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new ApprovedListColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            ApprovedListColumnInfo approvedListColumnInfo = (ApprovedListColumnInfo) columnInfo;
            ApprovedListColumnInfo approvedListColumnInfo2 = (ApprovedListColumnInfo) columnInfo2;
            approvedListColumnInfo2.numberIndex = approvedListColumnInfo.numberIndex;
            approvedListColumnInfo2.addedIndex = approvedListColumnInfo.addedIndex;
            approvedListColumnInfo2.numberLastCachedIndex = approvedListColumnInfo.numberLastCachedIndex;
            approvedListColumnInfo2.updateTriggerIndex = approvedListColumnInfo.updateTriggerIndex;
            approvedListColumnInfo2.maxColumnIndexValue = approvedListColumnInfo.maxColumnIndexValue;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_ApprovedListRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "ApprovedList";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_ApprovedListRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static ApprovedList copy(Realm realm, ApprovedListColumnInfo approvedListColumnInfo, ApprovedList approvedList, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(approvedList);
        if (realmObjectProxy != null) {
            return (ApprovedList) realmObjectProxy;
        }
        ApprovedList approvedList2 = approvedList;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(ApprovedList.class), approvedListColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(approvedListColumnInfo.numberIndex, approvedList2.realmGet$number());
        osObjectBuilder.addDate(approvedListColumnInfo.addedIndex, approvedList2.realmGet$added());
        osObjectBuilder.addDate(approvedListColumnInfo.numberLastCachedIndex, approvedList2.realmGet$numberLastCached());
        osObjectBuilder.addInteger(approvedListColumnInfo.updateTriggerIndex, Long.valueOf(approvedList2.realmGet$updateTrigger()));
        com_privacystar_core_data_model_ApprovedListRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(approvedList, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0115  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.ApprovedList copyOrUpdate(io.realm.Realm r7, io.realm.com_privacystar_core_data_model_ApprovedListRealmProxy.ApprovedListColumnInfo r8, com.privacystar.core.data.model.ApprovedList r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_ApprovedListRealmProxy.copyOrUpdate(io.realm.Realm, io.realm.com_privacystar_core_data_model_ApprovedListRealmProxy$ApprovedListColumnInfo, com.privacystar.core.data.model.ApprovedList, boolean, java.util.Map, java.util.Set):com.privacystar.core.data.model.ApprovedList");
    }

    public static ApprovedListColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new ApprovedListColumnInfo(osSchemaInfo);
    }

    public static ApprovedList createDetachedCopy(ApprovedList approvedList, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        ApprovedList approvedList2;
        if (i > i2 || approvedList == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(approvedList);
        if (cacheData == null) {
            ApprovedList approvedList3 = new ApprovedList();
            map.put(approvedList, new RealmObjectProxy.CacheData<>(i, approvedList3));
            approvedList2 = approvedList3;
        } else if (i >= cacheData.minDepth) {
            return (ApprovedList) cacheData.object;
        } else {
            approvedList2 = (ApprovedList) cacheData.object;
            cacheData.minDepth = i;
        }
        ApprovedList approvedList4 = approvedList2;
        ApprovedList approvedList5 = approvedList;
        approvedList4.realmSet$number(approvedList5.realmGet$number());
        approvedList4.realmSet$added(approvedList5.realmGet$added());
        approvedList4.realmSet$numberLastCached(approvedList5.realmGet$numberLastCached());
        approvedList4.realmSet$updateTrigger(approvedList5.realmGet$updateTrigger());
        return approvedList2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 4, 0);
        builder.addPersistedProperty("number", RealmFieldType.STRING, true, true, false);
        builder.addPersistedProperty("added", RealmFieldType.DATE, false, false, true);
        builder.addPersistedProperty(ApprovedListFields.NUMBER_LAST_CACHED, RealmFieldType.DATE, false, false, true);
        builder.addPersistedProperty(ApprovedListFields.UPDATE_TRIGGER, RealmFieldType.INTEGER, false, false, true);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0194  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.ApprovedList createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 441
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_ApprovedListRealmProxy.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):com.privacystar.core.data.model.ApprovedList");
    }

    @TargetApi(11)
    public static ApprovedList createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        ApprovedList approvedList = new ApprovedList();
        ApprovedList approvedList2 = approvedList;
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    approvedList2.realmSet$number(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    approvedList2.realmSet$number(null);
                }
                z = true;
            } else if (nextName.equals("added")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    approvedList2.realmSet$added(null);
                } else if (jsonReader.peek() == JsonToken.NUMBER) {
                    long nextLong = jsonReader.nextLong();
                    if (nextLong > -1) {
                        approvedList2.realmSet$added(new Date(nextLong));
                    }
                } else {
                    approvedList2.realmSet$added(JsonUtils.stringToDate(jsonReader.nextString()));
                }
            } else if (nextName.equals(ApprovedListFields.NUMBER_LAST_CACHED)) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    approvedList2.realmSet$numberLastCached(null);
                } else if (jsonReader.peek() == JsonToken.NUMBER) {
                    long nextLong2 = jsonReader.nextLong();
                    if (nextLong2 > -1) {
                        approvedList2.realmSet$numberLastCached(new Date(nextLong2));
                    }
                } else {
                    approvedList2.realmSet$numberLastCached(JsonUtils.stringToDate(jsonReader.nextString()));
                }
            } else if (!nextName.equals(ApprovedListFields.UPDATE_TRIGGER)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                approvedList2.realmSet$updateTrigger(jsonReader.nextLong());
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'updateTrigger' to null.");
            }
        }
        jsonReader.endObject();
        if (z) {
            return (ApprovedList) realm.copyToRealm((Realm) approvedList, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'number'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, ApprovedList approvedList, Map<RealmModel, Long> map) {
        if (approvedList instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) approvedList;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(ApprovedList.class);
        long nativePtr = table.getNativePtr();
        ApprovedListColumnInfo approvedListColumnInfo = (ApprovedListColumnInfo) realm.getSchema().getColumnInfo(ApprovedList.class);
        long j = approvedListColumnInfo.numberIndex;
        ApprovedList approvedList2 = approvedList;
        String realmGet$number = approvedList2.realmGet$number();
        long nativeFindFirstNull = realmGet$number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$number);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$number);
        } else {
            Table.throwDuplicatePrimaryKeyException(realmGet$number);
        }
        map.put(approvedList, Long.valueOf(nativeFindFirstNull));
        Date realmGet$added = approvedList2.realmGet$added();
        if (realmGet$added != null) {
            Table.nativeSetTimestamp(nativePtr, approvedListColumnInfo.addedIndex, nativeFindFirstNull, realmGet$added.getTime(), false);
        }
        Date realmGet$numberLastCached = approvedList2.realmGet$numberLastCached();
        if (realmGet$numberLastCached != null) {
            Table.nativeSetTimestamp(nativePtr, approvedListColumnInfo.numberLastCachedIndex, nativeFindFirstNull, realmGet$numberLastCached.getTime(), false);
        }
        Table.nativeSetLong(nativePtr, approvedListColumnInfo.updateTriggerIndex, nativeFindFirstNull, approvedList2.realmGet$updateTrigger(), false);
        return nativeFindFirstNull;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(ApprovedList.class);
        long nativePtr = table.getNativePtr();
        ApprovedListColumnInfo approvedListColumnInfo = (ApprovedListColumnInfo) realm.getSchema().getColumnInfo(ApprovedList.class);
        long j = approvedListColumnInfo.numberIndex;
        while (it.hasNext()) {
            ApprovedList approvedList = (ApprovedList) it.next();
            if (!map.containsKey(approvedList)) {
                if (approvedList instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) approvedList;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(approvedList, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                ApprovedList approvedList2 = approvedList;
                String realmGet$number = approvedList2.realmGet$number();
                long nativeFindFirstNull = realmGet$number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$number);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$number);
                } else {
                    Table.throwDuplicatePrimaryKeyException(realmGet$number);
                }
                map.put(approvedList, Long.valueOf(nativeFindFirstNull));
                Date realmGet$added = approvedList2.realmGet$added();
                if (realmGet$added != null) {
                    Table.nativeSetTimestamp(nativePtr, approvedListColumnInfo.addedIndex, nativeFindFirstNull, realmGet$added.getTime(), false);
                }
                Date realmGet$numberLastCached = approvedList2.realmGet$numberLastCached();
                if (realmGet$numberLastCached != null) {
                    Table.nativeSetTimestamp(nativePtr, approvedListColumnInfo.numberLastCachedIndex, nativeFindFirstNull, realmGet$numberLastCached.getTime(), false);
                }
                Table.nativeSetLong(nativePtr, approvedListColumnInfo.updateTriggerIndex, nativeFindFirstNull, approvedList2.realmGet$updateTrigger(), false);
            }
        }
    }

    public static long insertOrUpdate(Realm realm, ApprovedList approvedList, Map<RealmModel, Long> map) {
        if (approvedList instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) approvedList;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(ApprovedList.class);
        long nativePtr = table.getNativePtr();
        ApprovedListColumnInfo approvedListColumnInfo = (ApprovedListColumnInfo) realm.getSchema().getColumnInfo(ApprovedList.class);
        long j = approvedListColumnInfo.numberIndex;
        ApprovedList approvedList2 = approvedList;
        String realmGet$number = approvedList2.realmGet$number();
        long nativeFindFirstNull = realmGet$number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$number);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$number);
        }
        map.put(approvedList, Long.valueOf(nativeFindFirstNull));
        Date realmGet$added = approvedList2.realmGet$added();
        if (realmGet$added != null) {
            Table.nativeSetTimestamp(nativePtr, approvedListColumnInfo.addedIndex, nativeFindFirstNull, realmGet$added.getTime(), false);
        } else {
            Table.nativeSetNull(nativePtr, approvedListColumnInfo.addedIndex, nativeFindFirstNull, false);
        }
        Date realmGet$numberLastCached = approvedList2.realmGet$numberLastCached();
        if (realmGet$numberLastCached != null) {
            Table.nativeSetTimestamp(nativePtr, approvedListColumnInfo.numberLastCachedIndex, nativeFindFirstNull, realmGet$numberLastCached.getTime(), false);
        } else {
            Table.nativeSetNull(nativePtr, approvedListColumnInfo.numberLastCachedIndex, nativeFindFirstNull, false);
        }
        Table.nativeSetLong(nativePtr, approvedListColumnInfo.updateTriggerIndex, nativeFindFirstNull, approvedList2.realmGet$updateTrigger(), false);
        return nativeFindFirstNull;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(ApprovedList.class);
        long nativePtr = table.getNativePtr();
        ApprovedListColumnInfo approvedListColumnInfo = (ApprovedListColumnInfo) realm.getSchema().getColumnInfo(ApprovedList.class);
        long j = approvedListColumnInfo.numberIndex;
        while (it.hasNext()) {
            ApprovedList approvedList = (ApprovedList) it.next();
            if (!map.containsKey(approvedList)) {
                if (approvedList instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) approvedList;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(approvedList, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                ApprovedList approvedList2 = approvedList;
                String realmGet$number = approvedList2.realmGet$number();
                long nativeFindFirstNull = realmGet$number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$number);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$number);
                }
                map.put(approvedList, Long.valueOf(nativeFindFirstNull));
                Date realmGet$added = approvedList2.realmGet$added();
                if (realmGet$added != null) {
                    Table.nativeSetTimestamp(nativePtr, approvedListColumnInfo.addedIndex, nativeFindFirstNull, realmGet$added.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, approvedListColumnInfo.addedIndex, nativeFindFirstNull, false);
                }
                Date realmGet$numberLastCached = approvedList2.realmGet$numberLastCached();
                if (realmGet$numberLastCached != null) {
                    Table.nativeSetTimestamp(nativePtr, approvedListColumnInfo.numberLastCachedIndex, nativeFindFirstNull, realmGet$numberLastCached.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, approvedListColumnInfo.numberLastCachedIndex, nativeFindFirstNull, false);
                }
                Table.nativeSetLong(nativePtr, approvedListColumnInfo.updateTriggerIndex, nativeFindFirstNull, approvedList2.realmGet$updateTrigger(), false);
            }
        }
    }

    private static com_privacystar_core_data_model_ApprovedListRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(ApprovedList.class), false, Collections.emptyList());
        com_privacystar_core_data_model_ApprovedListRealmProxy com_privacystar_core_data_model_approvedlistrealmproxy = new com_privacystar_core_data_model_ApprovedListRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_approvedlistrealmproxy;
    }

    static ApprovedList update(Realm realm, ApprovedListColumnInfo approvedListColumnInfo, ApprovedList approvedList, ApprovedList approvedList2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        ApprovedList approvedList3 = approvedList2;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(ApprovedList.class), approvedListColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(approvedListColumnInfo.numberIndex, approvedList3.realmGet$number());
        osObjectBuilder.addDate(approvedListColumnInfo.addedIndex, approvedList3.realmGet$added());
        osObjectBuilder.addDate(approvedListColumnInfo.numberLastCachedIndex, approvedList3.realmGet$numberLastCached());
        osObjectBuilder.addInteger(approvedListColumnInfo.updateTriggerIndex, Long.valueOf(approvedList3.realmGet$updateTrigger()));
        osObjectBuilder.updateExistingObject();
        return approvedList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_privacystar_core_data_model_ApprovedListRealmProxy com_privacystar_core_data_model_approvedlistrealmproxy = (com_privacystar_core_data_model_ApprovedListRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_approvedlistrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_approvedlistrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_approvedlistrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (ApprovedListColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.ApprovedList, io.realm.com_privacystar_core_data_model_ApprovedListRealmProxyInterface
    public Date realmGet$added() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getDate(this.columnInfo.addedIndex);
    }

    @Override // com.privacystar.core.data.model.ApprovedList, io.realm.com_privacystar_core_data_model_ApprovedListRealmProxyInterface
    public String realmGet$number() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.numberIndex);
    }

    @Override // com.privacystar.core.data.model.ApprovedList, io.realm.com_privacystar_core_data_model_ApprovedListRealmProxyInterface
    public Date realmGet$numberLastCached() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getDate(this.columnInfo.numberLastCachedIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.ApprovedList, io.realm.com_privacystar_core_data_model_ApprovedListRealmProxyInterface
    public long realmGet$updateTrigger() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.updateTriggerIndex);
    }

    @Override // com.privacystar.core.data.model.ApprovedList, io.realm.com_privacystar_core_data_model_ApprovedListRealmProxyInterface
    public void realmSet$added(Date date) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (date == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'added' to null.");
            }
            this.proxyState.getRow$realm().setDate(this.columnInfo.addedIndex, date);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (date == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'added' to null.");
            }
            row$realm.getTable().setDate(this.columnInfo.addedIndex, row$realm.getIndex(), date, true);
        }
    }

    @Override // com.privacystar.core.data.model.ApprovedList, io.realm.com_privacystar_core_data_model_ApprovedListRealmProxyInterface
    public void realmSet$number(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'number' cannot be changed after object was created.");
        }
    }

    @Override // com.privacystar.core.data.model.ApprovedList, io.realm.com_privacystar_core_data_model_ApprovedListRealmProxyInterface
    public void realmSet$numberLastCached(Date date) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (date == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'numberLastCached' to null.");
            }
            this.proxyState.getRow$realm().setDate(this.columnInfo.numberLastCachedIndex, date);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (date == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'numberLastCached' to null.");
            }
            row$realm.getTable().setDate(this.columnInfo.numberLastCachedIndex, row$realm.getIndex(), date, true);
        }
    }

    @Override // com.privacystar.core.data.model.ApprovedList, io.realm.com_privacystar_core_data_model_ApprovedListRealmProxyInterface
    public void realmSet$updateTrigger(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.updateTriggerIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.updateTriggerIndex, row$realm.getIndex(), j, true);
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("ApprovedList = proxy[");
        sb.append("{number:");
        sb.append(realmGet$number() != null ? realmGet$number() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{added:");
        sb.append(realmGet$added());
        sb.append("}");
        sb.append(",");
        sb.append("{numberLastCached:");
        sb.append(realmGet$numberLastCached());
        sb.append("}");
        sb.append(",");
        sb.append("{updateTrigger:");
        sb.append(realmGet$updateTrigger());
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
