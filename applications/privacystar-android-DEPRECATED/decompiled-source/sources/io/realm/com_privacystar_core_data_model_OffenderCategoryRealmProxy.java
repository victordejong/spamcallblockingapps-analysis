package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.OffenderCategory;
import io.realm.BaseRealm;
import io.realm.exceptions.RealmException;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_OffenderCategoryRealmProxy.class */
public class com_privacystar_core_data_model_OffenderCategoryRealmProxy extends OffenderCategory implements RealmObjectProxy, AbstractC1916xb999f5 {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private OffenderCategoryColumnInfo columnInfo;
    private ProxyState<OffenderCategory> proxyState;

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_OffenderCategoryRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "OffenderCategory";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_OffenderCategoryRealmProxy$OffenderCategoryColumnInfo.class */
    public static final class OffenderCategoryColumnInfo extends ColumnInfo {
        long categoryIdIndex;
        long categoryNameIndex;
        long maxColumnIndexValue;

        OffenderCategoryColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        OffenderCategoryColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(2);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.categoryIdIndex = addColumnDetails("categoryId", "categoryId", objectSchemaInfo);
            this.categoryNameIndex = addColumnDetails("categoryName", "categoryName", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new OffenderCategoryColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            OffenderCategoryColumnInfo offenderCategoryColumnInfo = (OffenderCategoryColumnInfo) columnInfo;
            OffenderCategoryColumnInfo offenderCategoryColumnInfo2 = (OffenderCategoryColumnInfo) columnInfo2;
            offenderCategoryColumnInfo2.categoryIdIndex = offenderCategoryColumnInfo.categoryIdIndex;
            offenderCategoryColumnInfo2.categoryNameIndex = offenderCategoryColumnInfo.categoryNameIndex;
            offenderCategoryColumnInfo2.maxColumnIndexValue = offenderCategoryColumnInfo.maxColumnIndexValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_OffenderCategoryRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static OffenderCategory copy(Realm realm, OffenderCategoryColumnInfo offenderCategoryColumnInfo, OffenderCategory offenderCategory, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(offenderCategory);
        if (realmObjectProxy != null) {
            return (OffenderCategory) realmObjectProxy;
        }
        OffenderCategory offenderCategory2 = offenderCategory;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(OffenderCategory.class), offenderCategoryColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(offenderCategoryColumnInfo.categoryIdIndex, offenderCategory2.realmGet$categoryId());
        osObjectBuilder.addString(offenderCategoryColumnInfo.categoryNameIndex, offenderCategory2.realmGet$categoryName());
        com_privacystar_core_data_model_OffenderCategoryRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(offenderCategory, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0118  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.OffenderCategory copyOrUpdate(io.realm.Realm r7, io.realm.com_privacystar_core_data_model_OffenderCategoryRealmProxy.OffenderCategoryColumnInfo r8, com.privacystar.core.data.model.OffenderCategory r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_OffenderCategoryRealmProxy.copyOrUpdate(io.realm.Realm, io.realm.com_privacystar_core_data_model_OffenderCategoryRealmProxy$OffenderCategoryColumnInfo, com.privacystar.core.data.model.OffenderCategory, boolean, java.util.Map, java.util.Set):com.privacystar.core.data.model.OffenderCategory");
    }

    public static OffenderCategoryColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new OffenderCategoryColumnInfo(osSchemaInfo);
    }

    public static OffenderCategory createDetachedCopy(OffenderCategory offenderCategory, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        OffenderCategory offenderCategory2;
        if (i > i2 || offenderCategory == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(offenderCategory);
        if (cacheData == null) {
            OffenderCategory offenderCategory3 = new OffenderCategory();
            map.put(offenderCategory, new RealmObjectProxy.CacheData<>(i, offenderCategory3));
            offenderCategory2 = offenderCategory3;
        } else if (i >= cacheData.minDepth) {
            return (OffenderCategory) cacheData.object;
        } else {
            offenderCategory2 = (OffenderCategory) cacheData.object;
            cacheData.minDepth = i;
        }
        OffenderCategory offenderCategory4 = offenderCategory2;
        OffenderCategory offenderCategory5 = offenderCategory;
        offenderCategory4.realmSet$categoryId(offenderCategory5.realmGet$categoryId());
        offenderCategory4.realmSet$categoryName(offenderCategory5.realmGet$categoryName());
        return offenderCategory2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 2, 0);
        builder.addPersistedProperty("categoryId", RealmFieldType.INTEGER, true, true, false);
        builder.addPersistedProperty("categoryName", RealmFieldType.STRING, false, false, false);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ee  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.OffenderCategory createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_OffenderCategoryRealmProxy.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):com.privacystar.core.data.model.OffenderCategory");
    }

    @TargetApi(11)
    public static OffenderCategory createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        OffenderCategory offenderCategory = new OffenderCategory();
        OffenderCategory offenderCategory2 = offenderCategory;
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("categoryId")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    offenderCategory2.realmSet$categoryId(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    offenderCategory2.realmSet$categoryId(null);
                }
                z = true;
            } else if (!nextName.equals("categoryName")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                offenderCategory2.realmSet$categoryName(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                offenderCategory2.realmSet$categoryName(null);
            }
        }
        jsonReader.endObject();
        if (z) {
            return (OffenderCategory) realm.copyToRealm((Realm) offenderCategory, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'categoryId'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, OffenderCategory offenderCategory, Map<RealmModel, Long> map) {
        if (offenderCategory instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) offenderCategory;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(OffenderCategory.class);
        long nativePtr = table.getNativePtr();
        OffenderCategoryColumnInfo offenderCategoryColumnInfo = (OffenderCategoryColumnInfo) realm.getSchema().getColumnInfo(OffenderCategory.class);
        long j = offenderCategoryColumnInfo.categoryIdIndex;
        OffenderCategory offenderCategory2 = offenderCategory;
        Integer realmGet$categoryId = offenderCategory2.realmGet$categoryId();
        long nativeFindFirstNull = realmGet$categoryId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstInt(nativePtr, j, offenderCategory2.realmGet$categoryId().intValue());
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, offenderCategory2.realmGet$categoryId());
        } else {
            Table.throwDuplicatePrimaryKeyException(realmGet$categoryId);
        }
        map.put(offenderCategory, Long.valueOf(nativeFindFirstNull));
        String realmGet$categoryName = offenderCategory2.realmGet$categoryName();
        if (realmGet$categoryName != null) {
            Table.nativeSetString(nativePtr, offenderCategoryColumnInfo.categoryNameIndex, nativeFindFirstNull, realmGet$categoryName, false);
        }
        return nativeFindFirstNull;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(OffenderCategory.class);
        long nativePtr = table.getNativePtr();
        OffenderCategoryColumnInfo offenderCategoryColumnInfo = (OffenderCategoryColumnInfo) realm.getSchema().getColumnInfo(OffenderCategory.class);
        long j = offenderCategoryColumnInfo.categoryIdIndex;
        while (it.hasNext()) {
            OffenderCategory offenderCategory = (OffenderCategory) it.next();
            if (!map.containsKey(offenderCategory)) {
                if (offenderCategory instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) offenderCategory;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(offenderCategory, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                OffenderCategory offenderCategory2 = offenderCategory;
                Integer realmGet$categoryId = offenderCategory2.realmGet$categoryId();
                long nativeFindFirstNull = realmGet$categoryId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstInt(nativePtr, j, offenderCategory2.realmGet$categoryId().intValue());
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, offenderCategory2.realmGet$categoryId());
                } else {
                    Table.throwDuplicatePrimaryKeyException(realmGet$categoryId);
                }
                map.put(offenderCategory, Long.valueOf(nativeFindFirstNull));
                String realmGet$categoryName = offenderCategory2.realmGet$categoryName();
                if (realmGet$categoryName != null) {
                    Table.nativeSetString(nativePtr, offenderCategoryColumnInfo.categoryNameIndex, nativeFindFirstNull, realmGet$categoryName, false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, OffenderCategory offenderCategory, Map<RealmModel, Long> map) {
        if (offenderCategory instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) offenderCategory;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(OffenderCategory.class);
        long nativePtr = table.getNativePtr();
        OffenderCategoryColumnInfo offenderCategoryColumnInfo = (OffenderCategoryColumnInfo) realm.getSchema().getColumnInfo(OffenderCategory.class);
        long j = offenderCategoryColumnInfo.categoryIdIndex;
        OffenderCategory offenderCategory2 = offenderCategory;
        long nativeFindFirstNull = offenderCategory2.realmGet$categoryId() == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstInt(nativePtr, j, offenderCategory2.realmGet$categoryId().intValue());
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, offenderCategory2.realmGet$categoryId());
        }
        map.put(offenderCategory, Long.valueOf(nativeFindFirstNull));
        String realmGet$categoryName = offenderCategory2.realmGet$categoryName();
        if (realmGet$categoryName != null) {
            Table.nativeSetString(nativePtr, offenderCategoryColumnInfo.categoryNameIndex, nativeFindFirstNull, realmGet$categoryName, false);
        } else {
            Table.nativeSetNull(nativePtr, offenderCategoryColumnInfo.categoryNameIndex, nativeFindFirstNull, false);
        }
        return nativeFindFirstNull;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r20v0, types: [long] */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r20v4 */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1, types: [long] */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void insertOrUpdate(io.realm.Realm r9, java.util.Iterator<? extends io.realm.RealmModel> r10, java.util.Map<io.realm.RealmModel, java.lang.Long> r11) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_OffenderCategoryRealmProxy.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    private static com_privacystar_core_data_model_OffenderCategoryRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(OffenderCategory.class), false, Collections.emptyList());
        com_privacystar_core_data_model_OffenderCategoryRealmProxy com_privacystar_core_data_model_offendercategoryrealmproxy = new com_privacystar_core_data_model_OffenderCategoryRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_offendercategoryrealmproxy;
    }

    static OffenderCategory update(Realm realm, OffenderCategoryColumnInfo offenderCategoryColumnInfo, OffenderCategory offenderCategory, OffenderCategory offenderCategory2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OffenderCategory offenderCategory3 = offenderCategory2;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(OffenderCategory.class), offenderCategoryColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(offenderCategoryColumnInfo.categoryIdIndex, offenderCategory3.realmGet$categoryId());
        osObjectBuilder.addString(offenderCategoryColumnInfo.categoryNameIndex, offenderCategory3.realmGet$categoryName());
        osObjectBuilder.updateExistingObject();
        return offenderCategory;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_privacystar_core_data_model_OffenderCategoryRealmProxy com_privacystar_core_data_model_offendercategoryrealmproxy = (com_privacystar_core_data_model_OffenderCategoryRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_offendercategoryrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_offendercategoryrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_offendercategoryrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (OffenderCategoryColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.OffenderCategory, io.realm.AbstractC1916xb999f5
    public Integer realmGet$categoryId() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.categoryIdIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo.categoryIdIndex));
    }

    @Override // com.privacystar.core.data.model.OffenderCategory, io.realm.AbstractC1916xb999f5
    public String realmGet$categoryName() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.categoryNameIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.OffenderCategory, io.realm.AbstractC1916xb999f5
    public void realmSet$categoryId(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'categoryId' cannot be changed after object was created.");
        }
    }

    @Override // com.privacystar.core.data.model.OffenderCategory, io.realm.AbstractC1916xb999f5
    public void realmSet$categoryName(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.categoryNameIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.categoryNameIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.categoryNameIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.categoryNameIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("OffenderCategory = proxy[");
        sb.append("{categoryId:");
        sb.append(realmGet$categoryId() != null ? realmGet$categoryId() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{categoryName:");
        sb.append(realmGet$categoryName() != null ? realmGet$categoryName() : "null");
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
