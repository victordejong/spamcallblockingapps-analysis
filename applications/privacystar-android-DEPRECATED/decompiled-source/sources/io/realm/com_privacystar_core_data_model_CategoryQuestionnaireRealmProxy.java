package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.CategoryQuestionnaire;
import com.privacystar.core.data.model.CategoryQuestionnaireFields;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy.class */
public class com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy extends CategoryQuestionnaire implements RealmObjectProxy, AbstractC1912x6f796d23 {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private CategoryQuestionnaireColumnInfo columnInfo;
    private ProxyState<CategoryQuestionnaire> proxyState;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy$CategoryQuestionnaireColumnInfo.class */
    public static final class CategoryQuestionnaireColumnInfo extends ColumnInfo {
        long categorySelectedIndex;
        long maxColumnIndexValue;
        long phoneNumberIndex;

        CategoryQuestionnaireColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        CategoryQuestionnaireColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(2);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.phoneNumberIndex = addColumnDetails("phoneNumber", "phoneNumber", objectSchemaInfo);
            this.categorySelectedIndex = addColumnDetails(CategoryQuestionnaireFields.CATEGORY_SELECTED, CategoryQuestionnaireFields.CATEGORY_SELECTED, objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new CategoryQuestionnaireColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            CategoryQuestionnaireColumnInfo categoryQuestionnaireColumnInfo = (CategoryQuestionnaireColumnInfo) columnInfo;
            CategoryQuestionnaireColumnInfo categoryQuestionnaireColumnInfo2 = (CategoryQuestionnaireColumnInfo) columnInfo2;
            categoryQuestionnaireColumnInfo2.phoneNumberIndex = categoryQuestionnaireColumnInfo.phoneNumberIndex;
            categoryQuestionnaireColumnInfo2.categorySelectedIndex = categoryQuestionnaireColumnInfo.categorySelectedIndex;
            categoryQuestionnaireColumnInfo2.maxColumnIndexValue = categoryQuestionnaireColumnInfo.maxColumnIndexValue;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "CategoryQuestionnaire";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static CategoryQuestionnaire copy(Realm realm, CategoryQuestionnaireColumnInfo categoryQuestionnaireColumnInfo, CategoryQuestionnaire categoryQuestionnaire, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(categoryQuestionnaire);
        if (realmObjectProxy != null) {
            return (CategoryQuestionnaire) realmObjectProxy;
        }
        CategoryQuestionnaire categoryQuestionnaire2 = categoryQuestionnaire;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(CategoryQuestionnaire.class), categoryQuestionnaireColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(categoryQuestionnaireColumnInfo.phoneNumberIndex, categoryQuestionnaire2.realmGet$phoneNumber());
        osObjectBuilder.addString(categoryQuestionnaireColumnInfo.categorySelectedIndex, categoryQuestionnaire2.realmGet$categorySelected());
        com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(categoryQuestionnaire, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0115  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.CategoryQuestionnaire copyOrUpdate(io.realm.Realm r7, io.realm.com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy.CategoryQuestionnaireColumnInfo r8, com.privacystar.core.data.model.CategoryQuestionnaire r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy.copyOrUpdate(io.realm.Realm, io.realm.com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy$CategoryQuestionnaireColumnInfo, com.privacystar.core.data.model.CategoryQuestionnaire, boolean, java.util.Map, java.util.Set):com.privacystar.core.data.model.CategoryQuestionnaire");
    }

    public static CategoryQuestionnaireColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new CategoryQuestionnaireColumnInfo(osSchemaInfo);
    }

    public static CategoryQuestionnaire createDetachedCopy(CategoryQuestionnaire categoryQuestionnaire, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        CategoryQuestionnaire categoryQuestionnaire2;
        if (i > i2 || categoryQuestionnaire == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(categoryQuestionnaire);
        if (cacheData == null) {
            CategoryQuestionnaire categoryQuestionnaire3 = new CategoryQuestionnaire();
            map.put(categoryQuestionnaire, new RealmObjectProxy.CacheData<>(i, categoryQuestionnaire3));
            categoryQuestionnaire2 = categoryQuestionnaire3;
        } else if (i >= cacheData.minDepth) {
            return (CategoryQuestionnaire) cacheData.object;
        } else {
            categoryQuestionnaire2 = (CategoryQuestionnaire) cacheData.object;
            cacheData.minDepth = i;
        }
        CategoryQuestionnaire categoryQuestionnaire4 = categoryQuestionnaire2;
        CategoryQuestionnaire categoryQuestionnaire5 = categoryQuestionnaire;
        categoryQuestionnaire4.realmSet$phoneNumber(categoryQuestionnaire5.realmGet$phoneNumber());
        categoryQuestionnaire4.realmSet$categorySelected(categoryQuestionnaire5.realmGet$categorySelected());
        return categoryQuestionnaire2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 2, 0);
        builder.addPersistedProperty("phoneNumber", RealmFieldType.STRING, true, true, false);
        builder.addPersistedProperty(CategoryQuestionnaireFields.CATEGORY_SELECTED, RealmFieldType.STRING, false, false, false);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.CategoryQuestionnaire createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):com.privacystar.core.data.model.CategoryQuestionnaire");
    }

    @TargetApi(11)
    public static CategoryQuestionnaire createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        CategoryQuestionnaire categoryQuestionnaire = new CategoryQuestionnaire();
        CategoryQuestionnaire categoryQuestionnaire2 = categoryQuestionnaire;
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("phoneNumber")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    categoryQuestionnaire2.realmSet$phoneNumber(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    categoryQuestionnaire2.realmSet$phoneNumber(null);
                }
                z = true;
            } else if (!nextName.equals(CategoryQuestionnaireFields.CATEGORY_SELECTED)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                categoryQuestionnaire2.realmSet$categorySelected(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                categoryQuestionnaire2.realmSet$categorySelected(null);
            }
        }
        jsonReader.endObject();
        if (z) {
            return (CategoryQuestionnaire) realm.copyToRealm((Realm) categoryQuestionnaire, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'phoneNumber'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, CategoryQuestionnaire categoryQuestionnaire, Map<RealmModel, Long> map) {
        if (categoryQuestionnaire instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) categoryQuestionnaire;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(CategoryQuestionnaire.class);
        long nativePtr = table.getNativePtr();
        CategoryQuestionnaireColumnInfo categoryQuestionnaireColumnInfo = (CategoryQuestionnaireColumnInfo) realm.getSchema().getColumnInfo(CategoryQuestionnaire.class);
        long j = categoryQuestionnaireColumnInfo.phoneNumberIndex;
        CategoryQuestionnaire categoryQuestionnaire2 = categoryQuestionnaire;
        String realmGet$phoneNumber = categoryQuestionnaire2.realmGet$phoneNumber();
        long nativeFindFirstNull = realmGet$phoneNumber == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$phoneNumber);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$phoneNumber);
        } else {
            Table.throwDuplicatePrimaryKeyException(realmGet$phoneNumber);
        }
        map.put(categoryQuestionnaire, Long.valueOf(nativeFindFirstNull));
        String realmGet$categorySelected = categoryQuestionnaire2.realmGet$categorySelected();
        if (realmGet$categorySelected != null) {
            Table.nativeSetString(nativePtr, categoryQuestionnaireColumnInfo.categorySelectedIndex, nativeFindFirstNull, realmGet$categorySelected, false);
        }
        return nativeFindFirstNull;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(CategoryQuestionnaire.class);
        long nativePtr = table.getNativePtr();
        CategoryQuestionnaireColumnInfo categoryQuestionnaireColumnInfo = (CategoryQuestionnaireColumnInfo) realm.getSchema().getColumnInfo(CategoryQuestionnaire.class);
        long j = categoryQuestionnaireColumnInfo.phoneNumberIndex;
        while (it.hasNext()) {
            CategoryQuestionnaire categoryQuestionnaire = (CategoryQuestionnaire) it.next();
            if (!map.containsKey(categoryQuestionnaire)) {
                if (categoryQuestionnaire instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) categoryQuestionnaire;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(categoryQuestionnaire, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                CategoryQuestionnaire categoryQuestionnaire2 = categoryQuestionnaire;
                String realmGet$phoneNumber = categoryQuestionnaire2.realmGet$phoneNumber();
                long nativeFindFirstNull = realmGet$phoneNumber == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$phoneNumber);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$phoneNumber);
                } else {
                    Table.throwDuplicatePrimaryKeyException(realmGet$phoneNumber);
                }
                map.put(categoryQuestionnaire, Long.valueOf(nativeFindFirstNull));
                String realmGet$categorySelected = categoryQuestionnaire2.realmGet$categorySelected();
                if (realmGet$categorySelected != null) {
                    Table.nativeSetString(nativePtr, categoryQuestionnaireColumnInfo.categorySelectedIndex, nativeFindFirstNull, realmGet$categorySelected, false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, CategoryQuestionnaire categoryQuestionnaire, Map<RealmModel, Long> map) {
        if (categoryQuestionnaire instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) categoryQuestionnaire;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(CategoryQuestionnaire.class);
        long nativePtr = table.getNativePtr();
        CategoryQuestionnaireColumnInfo categoryQuestionnaireColumnInfo = (CategoryQuestionnaireColumnInfo) realm.getSchema().getColumnInfo(CategoryQuestionnaire.class);
        long j = categoryQuestionnaireColumnInfo.phoneNumberIndex;
        CategoryQuestionnaire categoryQuestionnaire2 = categoryQuestionnaire;
        String realmGet$phoneNumber = categoryQuestionnaire2.realmGet$phoneNumber();
        long nativeFindFirstNull = realmGet$phoneNumber == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$phoneNumber);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$phoneNumber);
        }
        map.put(categoryQuestionnaire, Long.valueOf(nativeFindFirstNull));
        String realmGet$categorySelected = categoryQuestionnaire2.realmGet$categorySelected();
        if (realmGet$categorySelected != null) {
            Table.nativeSetString(nativePtr, categoryQuestionnaireColumnInfo.categorySelectedIndex, nativeFindFirstNull, realmGet$categorySelected, false);
        } else {
            Table.nativeSetNull(nativePtr, categoryQuestionnaireColumnInfo.categorySelectedIndex, nativeFindFirstNull, false);
        }
        return nativeFindFirstNull;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(CategoryQuestionnaire.class);
        long nativePtr = table.getNativePtr();
        CategoryQuestionnaireColumnInfo categoryQuestionnaireColumnInfo = (CategoryQuestionnaireColumnInfo) realm.getSchema().getColumnInfo(CategoryQuestionnaire.class);
        long j = categoryQuestionnaireColumnInfo.phoneNumberIndex;
        while (it.hasNext()) {
            CategoryQuestionnaire categoryQuestionnaire = (CategoryQuestionnaire) it.next();
            if (!map.containsKey(categoryQuestionnaire)) {
                if (categoryQuestionnaire instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) categoryQuestionnaire;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(categoryQuestionnaire, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                CategoryQuestionnaire categoryQuestionnaire2 = categoryQuestionnaire;
                String realmGet$phoneNumber = categoryQuestionnaire2.realmGet$phoneNumber();
                long nativeFindFirstNull = realmGet$phoneNumber == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$phoneNumber);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$phoneNumber);
                }
                map.put(categoryQuestionnaire, Long.valueOf(nativeFindFirstNull));
                String realmGet$categorySelected = categoryQuestionnaire2.realmGet$categorySelected();
                if (realmGet$categorySelected != null) {
                    Table.nativeSetString(nativePtr, categoryQuestionnaireColumnInfo.categorySelectedIndex, nativeFindFirstNull, realmGet$categorySelected, false);
                } else {
                    Table.nativeSetNull(nativePtr, categoryQuestionnaireColumnInfo.categorySelectedIndex, nativeFindFirstNull, false);
                }
            }
        }
    }

    private static com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(CategoryQuestionnaire.class), false, Collections.emptyList());
        com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy com_privacystar_core_data_model_categoryquestionnairerealmproxy = new com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_categoryquestionnairerealmproxy;
    }

    static CategoryQuestionnaire update(Realm realm, CategoryQuestionnaireColumnInfo categoryQuestionnaireColumnInfo, CategoryQuestionnaire categoryQuestionnaire, CategoryQuestionnaire categoryQuestionnaire2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        CategoryQuestionnaire categoryQuestionnaire3 = categoryQuestionnaire2;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(CategoryQuestionnaire.class), categoryQuestionnaireColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(categoryQuestionnaireColumnInfo.phoneNumberIndex, categoryQuestionnaire3.realmGet$phoneNumber());
        osObjectBuilder.addString(categoryQuestionnaireColumnInfo.categorySelectedIndex, categoryQuestionnaire3.realmGet$categorySelected());
        osObjectBuilder.updateExistingObject();
        return categoryQuestionnaire;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy com_privacystar_core_data_model_categoryquestionnairerealmproxy = (com_privacystar_core_data_model_CategoryQuestionnaireRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_categoryquestionnairerealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_categoryquestionnairerealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_categoryquestionnairerealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (CategoryQuestionnaireColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.CategoryQuestionnaire, io.realm.AbstractC1912x6f796d23
    public String realmGet$categorySelected() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.categorySelectedIndex);
    }

    @Override // com.privacystar.core.data.model.CategoryQuestionnaire, io.realm.AbstractC1912x6f796d23
    public String realmGet$phoneNumber() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.phoneNumberIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.CategoryQuestionnaire, io.realm.AbstractC1912x6f796d23
    public void realmSet$categorySelected(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.categorySelectedIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.categorySelectedIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.categorySelectedIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.categorySelectedIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.CategoryQuestionnaire, io.realm.AbstractC1912x6f796d23
    public void realmSet$phoneNumber(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'phoneNumber' cannot be changed after object was created.");
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("CategoryQuestionnaire = proxy[");
        sb.append("{phoneNumber:");
        sb.append(realmGet$phoneNumber() != null ? realmGet$phoneNumber() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{categorySelected:");
        sb.append(realmGet$categorySelected() != null ? realmGet$categorySelected() : "null");
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
