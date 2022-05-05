package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.PendingBulkLookup;
import com.privacystar.core.data.model.PendingBulkLookupFields;
import com.privacystar.core.data.model.PendingBulkLookupNumber;
import io.realm.BaseRealm;
import io.realm.C1917x8e2c557d;
import io.realm.exceptions.RealmException;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsList;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_PendingBulkLookupRealmProxy.class */
public class com_privacystar_core_data_model_PendingBulkLookupRealmProxy extends PendingBulkLookup implements RealmObjectProxy, AbstractC1919x2e9a9285 {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private PendingBulkLookupColumnInfo columnInfo;
    private ProxyState<PendingBulkLookup> proxyState;
    private RealmList<PendingBulkLookupNumber> queriedNumbersRealmList;

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_PendingBulkLookupRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "PendingBulkLookup";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_PendingBulkLookupRealmProxy$PendingBulkLookupColumnInfo.class */
    public static final class PendingBulkLookupColumnInfo extends ColumnInfo {
        long maxColumnIndexValue;
        long queriedNumbersIndex;
        long statusIdIndex;

        PendingBulkLookupColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        PendingBulkLookupColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(2);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.statusIdIndex = addColumnDetails(PendingBulkLookupFields.STATUS_ID, PendingBulkLookupFields.STATUS_ID, objectSchemaInfo);
            this.queriedNumbersIndex = addColumnDetails(PendingBulkLookupFields.QUERIED_NUMBERS.f259$, PendingBulkLookupFields.QUERIED_NUMBERS.f259$, objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new PendingBulkLookupColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            PendingBulkLookupColumnInfo pendingBulkLookupColumnInfo = (PendingBulkLookupColumnInfo) columnInfo;
            PendingBulkLookupColumnInfo pendingBulkLookupColumnInfo2 = (PendingBulkLookupColumnInfo) columnInfo2;
            pendingBulkLookupColumnInfo2.statusIdIndex = pendingBulkLookupColumnInfo.statusIdIndex;
            pendingBulkLookupColumnInfo2.queriedNumbersIndex = pendingBulkLookupColumnInfo.queriedNumbersIndex;
            pendingBulkLookupColumnInfo2.maxColumnIndexValue = pendingBulkLookupColumnInfo.maxColumnIndexValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_PendingBulkLookupRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static PendingBulkLookup copy(Realm realm, PendingBulkLookupColumnInfo pendingBulkLookupColumnInfo, PendingBulkLookup pendingBulkLookup, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(pendingBulkLookup);
        if (realmObjectProxy != null) {
            return (PendingBulkLookup) realmObjectProxy;
        }
        PendingBulkLookup pendingBulkLookup2 = pendingBulkLookup;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(PendingBulkLookup.class), pendingBulkLookupColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(pendingBulkLookupColumnInfo.statusIdIndex, pendingBulkLookup2.realmGet$statusId());
        com_privacystar_core_data_model_PendingBulkLookupRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(pendingBulkLookup, newProxyInstance);
        RealmList<PendingBulkLookupNumber> realmGet$queriedNumbers = pendingBulkLookup2.realmGet$queriedNumbers();
        if (realmGet$queriedNumbers != null) {
            RealmList<PendingBulkLookupNumber> realmGet$queriedNumbers2 = newProxyInstance.realmGet$queriedNumbers();
            realmGet$queriedNumbers2.clear();
            for (int i = 0; i < realmGet$queriedNumbers.size(); i++) {
                PendingBulkLookupNumber pendingBulkLookupNumber = realmGet$queriedNumbers.get(i);
                PendingBulkLookupNumber pendingBulkLookupNumber2 = (PendingBulkLookupNumber) map.get(pendingBulkLookupNumber);
                if (pendingBulkLookupNumber2 != null) {
                    realmGet$queriedNumbers2.add(pendingBulkLookupNumber2);
                } else {
                    realmGet$queriedNumbers2.add(C1917x8e2c557d.copyOrUpdate(realm, (C1917x8e2c557d.PendingBulkLookupNumberColumnInfo) realm.getSchema().getColumnInfo(PendingBulkLookupNumber.class), pendingBulkLookupNumber, z, map, set));
                }
            }
        }
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0115  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.PendingBulkLookup copyOrUpdate(io.realm.Realm r7, io.realm.com_privacystar_core_data_model_PendingBulkLookupRealmProxy.PendingBulkLookupColumnInfo r8, com.privacystar.core.data.model.PendingBulkLookup r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_PendingBulkLookupRealmProxy.copyOrUpdate(io.realm.Realm, io.realm.com_privacystar_core_data_model_PendingBulkLookupRealmProxy$PendingBulkLookupColumnInfo, com.privacystar.core.data.model.PendingBulkLookup, boolean, java.util.Map, java.util.Set):com.privacystar.core.data.model.PendingBulkLookup");
    }

    public static PendingBulkLookupColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new PendingBulkLookupColumnInfo(osSchemaInfo);
    }

    public static PendingBulkLookup createDetachedCopy(PendingBulkLookup pendingBulkLookup, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        PendingBulkLookup pendingBulkLookup2;
        if (i > i2 || pendingBulkLookup == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(pendingBulkLookup);
        if (cacheData == null) {
            pendingBulkLookup2 = new PendingBulkLookup();
            map.put(pendingBulkLookup, new RealmObjectProxy.CacheData<>(i, pendingBulkLookup2));
        } else if (i >= cacheData.minDepth) {
            return (PendingBulkLookup) cacheData.object;
        } else {
            pendingBulkLookup2 = (PendingBulkLookup) cacheData.object;
            cacheData.minDepth = i;
        }
        PendingBulkLookup pendingBulkLookup3 = pendingBulkLookup2;
        PendingBulkLookup pendingBulkLookup4 = pendingBulkLookup;
        pendingBulkLookup3.realmSet$statusId(pendingBulkLookup4.realmGet$statusId());
        if (i == i2) {
            pendingBulkLookup3.realmSet$queriedNumbers(null);
        } else {
            RealmList<PendingBulkLookupNumber> realmGet$queriedNumbers = pendingBulkLookup4.realmGet$queriedNumbers();
            RealmList<PendingBulkLookupNumber> realmList = new RealmList<>();
            pendingBulkLookup3.realmSet$queriedNumbers(realmList);
            int size = realmGet$queriedNumbers.size();
            for (int i3 = 0; i3 < size; i3++) {
                realmList.add(C1917x8e2c557d.createDetachedCopy(realmGet$queriedNumbers.get(i3), i + 1, i2, map));
            }
        }
        return pendingBulkLookup2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 2, 0);
        builder.addPersistedProperty(PendingBulkLookupFields.STATUS_ID, RealmFieldType.STRING, true, true, false);
        builder.addPersistedLinkProperty(PendingBulkLookupFields.QUERIED_NUMBERS.f259$, RealmFieldType.LIST, C1917x8e2c557d.ClassNameHelper.INTERNAL_CLASS_NAME);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0106  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.PendingBulkLookup createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_PendingBulkLookupRealmProxy.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):com.privacystar.core.data.model.PendingBulkLookup");
    }

    @TargetApi(11)
    public static PendingBulkLookup createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        PendingBulkLookup pendingBulkLookup = new PendingBulkLookup();
        PendingBulkLookup pendingBulkLookup2 = pendingBulkLookup;
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(PendingBulkLookupFields.STATUS_ID)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    pendingBulkLookup2.realmSet$statusId(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    pendingBulkLookup2.realmSet$statusId(null);
                }
                z = true;
            } else if (!nextName.equals(PendingBulkLookupFields.QUERIED_NUMBERS.f259$)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.skipValue();
                pendingBulkLookup2.realmSet$queriedNumbers(null);
            } else {
                pendingBulkLookup2.realmSet$queriedNumbers(new RealmList<>());
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    pendingBulkLookup2.realmGet$queriedNumbers().add(C1917x8e2c557d.createUsingJsonStream(realm, jsonReader));
                }
                jsonReader.endArray();
            }
        }
        jsonReader.endObject();
        if (z) {
            return (PendingBulkLookup) realm.copyToRealm((Realm) pendingBulkLookup, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'statusId'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, PendingBulkLookup pendingBulkLookup, Map<RealmModel, Long> map) {
        if (pendingBulkLookup instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) pendingBulkLookup;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(PendingBulkLookup.class);
        long nativePtr = table.getNativePtr();
        PendingBulkLookupColumnInfo pendingBulkLookupColumnInfo = (PendingBulkLookupColumnInfo) realm.getSchema().getColumnInfo(PendingBulkLookup.class);
        long j = pendingBulkLookupColumnInfo.statusIdIndex;
        PendingBulkLookup pendingBulkLookup2 = pendingBulkLookup;
        String realmGet$statusId = pendingBulkLookup2.realmGet$statusId();
        long nativeFindFirstNull = realmGet$statusId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$statusId);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$statusId);
        } else {
            Table.throwDuplicatePrimaryKeyException(realmGet$statusId);
        }
        map.put(pendingBulkLookup, Long.valueOf(nativeFindFirstNull));
        RealmList<PendingBulkLookupNumber> realmGet$queriedNumbers = pendingBulkLookup2.realmGet$queriedNumbers();
        if (realmGet$queriedNumbers != null) {
            OsList osList = new OsList(table.getUncheckedRow(nativeFindFirstNull), pendingBulkLookupColumnInfo.queriedNumbersIndex);
            Iterator<PendingBulkLookupNumber> it = realmGet$queriedNumbers.iterator();
            while (it.hasNext()) {
                PendingBulkLookupNumber next = it.next();
                Long l = map.get(next);
                Long l2 = l;
                if (l == null) {
                    l2 = Long.valueOf(C1917x8e2c557d.insert(realm, next, map));
                }
                osList.addRow(l2.longValue());
            }
        }
        return nativeFindFirstNull;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(PendingBulkLookup.class);
        long nativePtr = table.getNativePtr();
        PendingBulkLookupColumnInfo pendingBulkLookupColumnInfo = (PendingBulkLookupColumnInfo) realm.getSchema().getColumnInfo(PendingBulkLookup.class);
        long j = pendingBulkLookupColumnInfo.statusIdIndex;
        while (it.hasNext()) {
            PendingBulkLookup pendingBulkLookup = (PendingBulkLookup) it.next();
            if (!map.containsKey(pendingBulkLookup)) {
                if (pendingBulkLookup instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) pendingBulkLookup;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(pendingBulkLookup, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                PendingBulkLookup pendingBulkLookup2 = pendingBulkLookup;
                String realmGet$statusId = pendingBulkLookup2.realmGet$statusId();
                long nativeFindFirstNull = realmGet$statusId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$statusId);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$statusId);
                } else {
                    Table.throwDuplicatePrimaryKeyException(realmGet$statusId);
                }
                map.put(pendingBulkLookup, Long.valueOf(nativeFindFirstNull));
                RealmList<PendingBulkLookupNumber> realmGet$queriedNumbers = pendingBulkLookup2.realmGet$queriedNumbers();
                if (realmGet$queriedNumbers != null) {
                    OsList osList = new OsList(table.getUncheckedRow(nativeFindFirstNull), pendingBulkLookupColumnInfo.queriedNumbersIndex);
                    Iterator<PendingBulkLookupNumber> it2 = realmGet$queriedNumbers.iterator();
                    while (it2.hasNext()) {
                        PendingBulkLookupNumber next = it2.next();
                        Long l = map.get(next);
                        Long l2 = l;
                        if (l == null) {
                            l2 = Long.valueOf(C1917x8e2c557d.insert(realm, next, map));
                        }
                        osList.addRow(l2.longValue());
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long insertOrUpdate(io.realm.Realm r6, com.privacystar.core.data.model.PendingBulkLookup r7, java.util.Map<io.realm.RealmModel, java.lang.Long> r8) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_PendingBulkLookupRealmProxy.insertOrUpdate(io.realm.Realm, com.privacystar.core.data.model.PendingBulkLookup, java.util.Map):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v0, types: [long] */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1, types: [long] */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void insertOrUpdate(io.realm.Realm r6, java.util.Iterator<? extends io.realm.RealmModel> r7, java.util.Map<io.realm.RealmModel, java.lang.Long> r8) {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_PendingBulkLookupRealmProxy.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    private static com_privacystar_core_data_model_PendingBulkLookupRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(PendingBulkLookup.class), false, Collections.emptyList());
        com_privacystar_core_data_model_PendingBulkLookupRealmProxy com_privacystar_core_data_model_pendingbulklookuprealmproxy = new com_privacystar_core_data_model_PendingBulkLookupRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_pendingbulklookuprealmproxy;
    }

    static PendingBulkLookup update(Realm realm, PendingBulkLookupColumnInfo pendingBulkLookupColumnInfo, PendingBulkLookup pendingBulkLookup, PendingBulkLookup pendingBulkLookup2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        PendingBulkLookup pendingBulkLookup3 = pendingBulkLookup2;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(PendingBulkLookup.class), pendingBulkLookupColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(pendingBulkLookupColumnInfo.statusIdIndex, pendingBulkLookup3.realmGet$statusId());
        RealmList<PendingBulkLookupNumber> realmGet$queriedNumbers = pendingBulkLookup3.realmGet$queriedNumbers();
        if (realmGet$queriedNumbers != null) {
            RealmList realmList = new RealmList();
            for (int i = 0; i < realmGet$queriedNumbers.size(); i++) {
                PendingBulkLookupNumber pendingBulkLookupNumber = realmGet$queriedNumbers.get(i);
                PendingBulkLookupNumber pendingBulkLookupNumber2 = (PendingBulkLookupNumber) map.get(pendingBulkLookupNumber);
                if (pendingBulkLookupNumber2 != null) {
                    realmList.add(pendingBulkLookupNumber2);
                } else {
                    realmList.add(C1917x8e2c557d.copyOrUpdate(realm, (C1917x8e2c557d.PendingBulkLookupNumberColumnInfo) realm.getSchema().getColumnInfo(PendingBulkLookupNumber.class), pendingBulkLookupNumber, true, map, set));
                }
            }
            osObjectBuilder.addObjectList(pendingBulkLookupColumnInfo.queriedNumbersIndex, realmList);
        } else {
            osObjectBuilder.addObjectList(pendingBulkLookupColumnInfo.queriedNumbersIndex, new RealmList());
        }
        osObjectBuilder.updateExistingObject();
        return pendingBulkLookup;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_privacystar_core_data_model_PendingBulkLookupRealmProxy com_privacystar_core_data_model_pendingbulklookuprealmproxy = (com_privacystar_core_data_model_PendingBulkLookupRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_pendingbulklookuprealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_pendingbulklookuprealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_pendingbulklookuprealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (PendingBulkLookupColumnInfo) realmObjectContext.getColumnInfo();
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

    @Override // com.privacystar.core.data.model.PendingBulkLookup, io.realm.AbstractC1919x2e9a9285
    public RealmList<PendingBulkLookupNumber> realmGet$queriedNumbers() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.queriedNumbersRealmList != null) {
            return this.queriedNumbersRealmList;
        }
        this.queriedNumbersRealmList = new RealmList<>(PendingBulkLookupNumber.class, this.proxyState.getRow$realm().getModelList(this.columnInfo.queriedNumbersIndex), this.proxyState.getRealm$realm());
        return this.queriedNumbersRealmList;
    }

    @Override // com.privacystar.core.data.model.PendingBulkLookup, io.realm.AbstractC1919x2e9a9285
    public String realmGet$statusId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.statusIdIndex);
    }

    /* JADX WARN: Type inference failed for: r1v22, types: [io.realm.RealmModel, java.lang.Object] */
    @Override // com.privacystar.core.data.model.PendingBulkLookup, io.realm.AbstractC1919x2e9a9285
    public void realmSet$queriedNumbers(RealmList<PendingBulkLookupNumber> realmList) {
        RealmList<PendingBulkLookupNumber> realmList2 = realmList;
        if (this.proxyState.isUnderConstruction()) {
            if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains(PendingBulkLookupFields.QUERIED_NUMBERS.f259$)) {
                realmList2 = realmList;
                if (realmList != null) {
                    realmList2 = realmList;
                    if (!realmList.isManaged()) {
                        Realm realm = (Realm) this.proxyState.getRealm$realm();
                        realmList2 = new RealmList<>();
                        Iterator<PendingBulkLookupNumber> it = realmList.iterator();
                        while (it.hasNext()) {
                            PendingBulkLookupNumber next = it.next();
                            if (next == null || RealmObject.isManaged(next)) {
                                realmList2.add(next);
                            } else {
                                realmList2.add(realm.copyToRealm((Realm) next, new ImportFlag[0]));
                            }
                        }
                    }
                }
            } else {
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        OsList modelList = this.proxyState.getRow$realm().getModelList(this.columnInfo.queriedNumbersIndex);
        if (realmList2 == null || realmList2.size() != modelList.size()) {
            modelList.removeAll();
            if (realmList2 != null) {
                int size = realmList2.size();
                for (int i = 0; i < size; i++) {
                    PendingBulkLookupNumber pendingBulkLookupNumber = realmList2.get(i);
                    this.proxyState.checkValidObject(pendingBulkLookupNumber);
                    modelList.addRow(((RealmObjectProxy) pendingBulkLookupNumber).realmGet$proxyState().getRow$realm().getIndex());
                }
                return;
            }
            return;
        }
        int size2 = realmList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            PendingBulkLookupNumber pendingBulkLookupNumber2 = realmList2.get(i2);
            this.proxyState.checkValidObject(pendingBulkLookupNumber2);
            modelList.setRow(i2, ((RealmObjectProxy) pendingBulkLookupNumber2).realmGet$proxyState().getRow$realm().getIndex());
        }
    }

    @Override // com.privacystar.core.data.model.PendingBulkLookup, io.realm.AbstractC1919x2e9a9285
    public void realmSet$statusId(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'statusId' cannot be changed after object was created.");
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("PendingBulkLookup = proxy[");
        sb.append("{statusId:");
        sb.append(realmGet$statusId() != null ? realmGet$statusId() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{queriedNumbers:");
        sb.append("RealmList<PendingBulkLookupNumber>[");
        sb.append(realmGet$queriedNumbers().size());
        sb.append("]");
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
