package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.tmobile.services.nameid.model.CategorySetting;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_CategorySettingRealmProxy.class */
public class com_tmobile_services_nameid_model_CategorySettingRealmProxy extends CategorySetting implements RealmObjectProxy, AbstractC2159x525a155d {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private CategorySettingColumnInfo columnInfo;
    private ProxyState<CategorySetting> proxyState;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_CategorySettingRealmProxy$CategorySettingColumnInfo.class */
    public static final class CategorySettingColumnInfo extends ColumnInfo {

        /* renamed from: e */
        long f20001e;

        /* renamed from: f */
        long f20002f;

        /* renamed from: g */
        long f20003g;

        /* renamed from: h */
        long f20004h;

        /* renamed from: i */
        long f20005i;

        CategorySettingColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(5);
            OsObjectSchemaInfo b = osSchemaInfo.m2701b("CategorySetting");
            this.f20001e = m2833a("bucketId", "bucketId", b);
            this.f20002f = m2833a("blocked", "blocked", b);
            this.f20003g = m2833a("eventType", "eventType", b);
            this.f20004h = m2833a("disposition", "disposition", b);
            this.f20005i = m2833a("pending", "pending", b);
        }

        @Override // io.realm.internal.ColumnInfo
        /* renamed from: b */
        protected final void mo2536b(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            CategorySettingColumnInfo categorySettingColumnInfo = (CategorySettingColumnInfo) columnInfo;
            CategorySettingColumnInfo categorySettingColumnInfo2 = (CategorySettingColumnInfo) columnInfo2;
            categorySettingColumnInfo2.f20001e = categorySettingColumnInfo.f20001e;
            categorySettingColumnInfo2.f20002f = categorySettingColumnInfo.f20002f;
            categorySettingColumnInfo2.f20003g = categorySettingColumnInfo.f20003g;
            categorySettingColumnInfo2.f20004h = categorySettingColumnInfo.f20004h;
            categorySettingColumnInfo2.f20005i = categorySettingColumnInfo.f20005i;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_CategorySettingRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_tmobile_services_nameid_model_CategorySettingRealmProxy() {
        this.proxyState.m3075n();
    }

    public static CategorySetting copy(Realm realm, CategorySettingColumnInfo categorySettingColumnInfo, CategorySetting categorySetting, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(categorySetting);
        if (realmObjectProxy != null) {
            return (CategorySetting) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(CategorySetting.class), set);
        osObjectBuilder.m2552d(categorySettingColumnInfo.f20001e, Integer.valueOf(categorySetting.realmGet$bucketId()));
        osObjectBuilder.m2554a(categorySettingColumnInfo.f20002f, Boolean.valueOf(categorySetting.realmGet$blocked()));
        osObjectBuilder.m2552d(categorySettingColumnInfo.f20003g, Integer.valueOf(categorySetting.realmGet$eventType()));
        osObjectBuilder.m2552d(categorySettingColumnInfo.f20004h, Integer.valueOf(categorySetting.realmGet$disposition()));
        osObjectBuilder.m2554a(categorySettingColumnInfo.f20005i, Boolean.valueOf(categorySetting.realmGet$pending()));
        com_tmobile_services_nameid_model_CategorySettingRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.m2549i());
        map.put(categorySetting, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tmobile.services.nameid.model.CategorySetting copyOrUpdate(io.realm.Realm r7, io.realm.com_tmobile_services_nameid_model_CategorySettingRealmProxy.CategorySettingColumnInfo r8, com.tmobile.services.nameid.model.CategorySetting r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_tmobile_services_nameid_model_CategorySettingRealmProxy.copyOrUpdate(io.realm.Realm, io.realm.com_tmobile_services_nameid_model_CategorySettingRealmProxy$CategorySettingColumnInfo, com.tmobile.services.nameid.model.CategorySetting, boolean, java.util.Map, java.util.Set):com.tmobile.services.nameid.model.CategorySetting");
    }

    public static CategorySettingColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new CategorySettingColumnInfo(osSchemaInfo);
    }

    public static CategorySetting createDetachedCopy(CategorySetting categorySetting, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        CategorySetting categorySetting2;
        if (i > i2 || categorySetting == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(categorySetting);
        if (cacheData == null) {
            CategorySetting categorySetting3 = new CategorySetting();
            map.put(categorySetting, new RealmObjectProxy.CacheData<>(i, categorySetting3));
            categorySetting2 = categorySetting3;
        } else if (i >= cacheData.f20174a) {
            return (CategorySetting) cacheData.f20175b;
        } else {
            categorySetting2 = (CategorySetting) cacheData.f20175b;
            cacheData.f20174a = i;
        }
        categorySetting2.realmSet$bucketId(categorySetting.realmGet$bucketId());
        categorySetting2.realmSet$blocked(categorySetting.realmGet$blocked());
        categorySetting2.realmSet$eventType(categorySetting.realmGet$eventType());
        categorySetting2.realmSet$disposition(categorySetting.realmGet$disposition());
        categorySetting2.realmSet$pending(categorySetting.realmGet$pending());
        return categorySetting2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder("CategorySetting", 5, 0);
        builder.m2747a("bucketId", RealmFieldType.INTEGER, true, true, true);
        builder.m2747a("blocked", RealmFieldType.BOOLEAN, false, false, true);
        builder.m2747a("eventType", RealmFieldType.INTEGER, false, false, true);
        builder.m2747a("disposition", RealmFieldType.INTEGER, false, false, true);
        builder.m2747a("pending", RealmFieldType.BOOLEAN, false, false, true);
        return builder.m2746b();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0172  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tmobile.services.nameid.model.CategorySetting createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_tmobile_services_nameid_model_CategorySettingRealmProxy.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):com.tmobile.services.nameid.model.CategorySetting");
    }

    @TargetApi(11)
    public static CategorySetting createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        CategorySetting categorySetting = new CategorySetting();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("bucketId")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    categorySetting.realmSet$bucketId(jsonReader.nextInt());
                    z = true;
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'bucketId' to null.");
                }
            } else if (nextName.equals("blocked")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    categorySetting.realmSet$blocked(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'blocked' to null.");
                }
            } else if (nextName.equals("eventType")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    categorySetting.realmSet$eventType(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'eventType' to null.");
                }
            } else if (nextName.equals("disposition")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    categorySetting.realmSet$disposition(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'disposition' to null.");
                }
            } else if (!nextName.equals("pending")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                categorySetting.realmSet$pending(jsonReader.nextBoolean());
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'pending' to null.");
            }
        }
        jsonReader.endObject();
        if (z) {
            return (CategorySetting) realm.m3046u0(categorySetting, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'bucketId'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "CategorySetting";
    }

    public static long insert(Realm realm, CategorySetting categorySetting, Map<RealmModel, Long> map) {
        if ((categorySetting instanceof RealmObjectProxy) && !RealmObject.isFrozen(categorySetting)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) categorySetting;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                return realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey();
            }
        }
        Table J0 = realm.m3061J0(CategorySetting.class);
        long nativePtr = J0.getNativePtr();
        CategorySettingColumnInfo categorySettingColumnInfo = (CategorySettingColumnInfo) realm.mo3059L().m2854g(CategorySetting.class);
        long j = categorySettingColumnInfo.f20001e;
        Integer valueOf = Integer.valueOf(categorySetting.realmGet$bucketId());
        if ((valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, categorySetting.realmGet$bucketId()) : -1L) == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(J0, j, Integer.valueOf(categorySetting.realmGet$bucketId()));
            map.put(categorySetting, Long.valueOf(createRowWithPrimaryKey));
            Table.nativeSetBoolean(nativePtr, categorySettingColumnInfo.f20002f, createRowWithPrimaryKey, categorySetting.realmGet$blocked(), false);
            Table.nativeSetLong(nativePtr, categorySettingColumnInfo.f20003g, createRowWithPrimaryKey, categorySetting.realmGet$eventType(), false);
            Table.nativeSetLong(nativePtr, categorySettingColumnInfo.f20004h, createRowWithPrimaryKey, categorySetting.realmGet$disposition(), false);
            Table.nativeSetBoolean(nativePtr, categorySettingColumnInfo.f20005i, createRowWithPrimaryKey, categorySetting.realmGet$pending(), false);
            return createRowWithPrimaryKey;
        }
        Table.m2656N(valueOf);
        throw null;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(CategorySetting.class);
        long nativePtr = J0.getNativePtr();
        CategorySettingColumnInfo categorySettingColumnInfo = (CategorySettingColumnInfo) realm.mo3059L().m2854g(CategorySetting.class);
        long j = categorySettingColumnInfo.f20001e;
        while (it.hasNext()) {
            CategorySetting categorySetting = (CategorySetting) it.next();
            if (!map.containsKey(categorySetting)) {
                if ((categorySetting instanceof RealmObjectProxy) && !RealmObject.isFrozen(categorySetting)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) categorySetting;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(categorySetting, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                Integer valueOf = Integer.valueOf(categorySetting.realmGet$bucketId());
                if ((valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, categorySetting.realmGet$bucketId()) : -1L) == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(J0, j, Integer.valueOf(categorySetting.realmGet$bucketId()));
                    map.put(categorySetting, Long.valueOf(createRowWithPrimaryKey));
                    Table.nativeSetBoolean(nativePtr, categorySettingColumnInfo.f20002f, createRowWithPrimaryKey, categorySetting.realmGet$blocked(), false);
                    Table.nativeSetLong(nativePtr, categorySettingColumnInfo.f20003g, createRowWithPrimaryKey, categorySetting.realmGet$eventType(), false);
                    Table.nativeSetLong(nativePtr, categorySettingColumnInfo.f20004h, createRowWithPrimaryKey, categorySetting.realmGet$disposition(), false);
                    Table.nativeSetBoolean(nativePtr, categorySettingColumnInfo.f20005i, createRowWithPrimaryKey, categorySetting.realmGet$pending(), false);
                } else {
                    Table.m2656N(valueOf);
                    throw null;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v0, types: [long] */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1, types: [long] */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long insertOrUpdate(io.realm.Realm r10, com.tmobile.services.nameid.model.CategorySetting r11, java.util.Map<io.realm.RealmModel, java.lang.Long> r12) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_tmobile_services_nameid_model_CategorySettingRealmProxy.insertOrUpdate(io.realm.Realm, com.tmobile.services.nameid.model.CategorySetting, java.util.Map):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.util.Map<io.realm.RealmModel, java.lang.Long>, java.util.Map] */
    /* JADX WARN: Type inference failed for: r21v0, types: [long] */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r23v0 */
    /* JADX WARN: Type inference failed for: r23v1, types: [long] */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void insertOrUpdate(io.realm.Realm r10, java.util.Iterator<? extends io.realm.RealmModel> r11, java.util.Map<io.realm.RealmModel, java.lang.Long> r12) {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_tmobile_services_nameid_model_CategorySettingRealmProxy.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    private static com_tmobile_services_nameid_model_CategorySettingRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.f19804n.get();
        realmObjectContext.m3137g(baseRealm, row, baseRealm.mo3059L().m2854g(CategorySetting.class), false, Collections.emptyList());
        com_tmobile_services_nameid_model_CategorySettingRealmProxy com_tmobile_services_nameid_model_categorysettingrealmproxy = new com_tmobile_services_nameid_model_CategorySettingRealmProxy();
        realmObjectContext.m3143a();
        return com_tmobile_services_nameid_model_categorysettingrealmproxy;
    }

    static CategorySetting update(Realm realm, CategorySettingColumnInfo categorySettingColumnInfo, CategorySetting categorySetting, CategorySetting categorySetting2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(CategorySetting.class), set);
        osObjectBuilder.m2552d(categorySettingColumnInfo.f20001e, Integer.valueOf(categorySetting2.realmGet$bucketId()));
        osObjectBuilder.m2554a(categorySettingColumnInfo.f20002f, Boolean.valueOf(categorySetting2.realmGet$blocked()));
        osObjectBuilder.m2552d(categorySettingColumnInfo.f20003g, Integer.valueOf(categorySetting2.realmGet$eventType()));
        osObjectBuilder.m2552d(categorySettingColumnInfo.f20004h, Integer.valueOf(categorySetting2.realmGet$disposition()));
        osObjectBuilder.m2554a(categorySettingColumnInfo.f20005i, Boolean.valueOf(categorySetting2.realmGet$pending()));
        osObjectBuilder.m2548k();
        return categorySetting;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_tmobile_services_nameid_model_CategorySettingRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_tmobile_services_nameid_model_CategorySettingRealmProxy com_tmobile_services_nameid_model_categorysettingrealmproxy = (com_tmobile_services_nameid_model_CategorySettingRealmProxy) obj;
        BaseRealm d = this.proxyState.m3085d();
        BaseRealm d2 = com_tmobile_services_nameid_model_categorysettingrealmproxy.proxyState.m3085d();
        String K = d.m3163K();
        String K2 = d2.m3163K();
        if (K != null) {
            if (!K.equals(K2)) {
                return false;
            }
        } else if (K2 != null) {
            return false;
        }
        if (d.m3160W() != d2.m3160W() || !d.f19809j.getVersionID().equals(d2.f19809j.getVersionID())) {
            return false;
        }
        String t = this.proxyState.m3084e().getTable().m2633t();
        String t2 = com_tmobile_services_nameid_model_categorysettingrealmproxy.proxyState.m3084e().getTable().m2633t();
        if (t != null) {
            if (!t.equals(t2)) {
                return false;
            }
        } else if (t2 != null) {
            return false;
        }
        return this.proxyState.m3084e().getObjectKey() == com_tmobile_services_nameid_model_categorysettingrealmproxy.proxyState.m3084e().getObjectKey();
    }

    public int hashCode() {
        String K = this.proxyState.m3085d().m3163K();
        String t = this.proxyState.m3084e().getTable().m2633t();
        long objectKey = this.proxyState.m3084e().getObjectKey();
        int i = 0;
        int hashCode = K != null ? K.hashCode() : 0;
        if (t != null) {
            i = t.hashCode();
        }
        return ((((527 + hashCode) * 31) + i) * 31) + ((int) ((objectKey >>> 32) ^ objectKey));
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState == null) {
            BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.f19804n.get();
            this.columnInfo = (CategorySettingColumnInfo) realmObjectContext.m3141c();
            ProxyState<CategorySetting> proxyState = new ProxyState<>(this);
            this.proxyState = proxyState;
            proxyState.m3073p(realmObjectContext.m3139e());
            this.proxyState.m3072q(realmObjectContext.m3138f());
            this.proxyState.m3076m(realmObjectContext.m3142b());
            this.proxyState.m3074o(realmObjectContext.m3140d());
        }
    }

    @Override // com.tmobile.services.nameid.model.CategorySetting, io.realm.AbstractC2159x525a155d
    public boolean realmGet$blocked() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f20002f);
    }

    @Override // com.tmobile.services.nameid.model.CategorySetting, io.realm.AbstractC2159x525a155d
    public int realmGet$bucketId() {
        this.proxyState.m3085d().m3151h();
        return (int) this.proxyState.m3084e().getLong(this.columnInfo.f20001e);
    }

    @Override // com.tmobile.services.nameid.model.CategorySetting, io.realm.AbstractC2159x525a155d
    public int realmGet$disposition() {
        this.proxyState.m3085d().m3151h();
        return (int) this.proxyState.m3084e().getLong(this.columnInfo.f20004h);
    }

    @Override // com.tmobile.services.nameid.model.CategorySetting, io.realm.AbstractC2159x525a155d
    public int realmGet$eventType() {
        this.proxyState.m3085d().m3151h();
        return (int) this.proxyState.m3084e().getLong(this.columnInfo.f20003g);
    }

    @Override // com.tmobile.services.nameid.model.CategorySetting, io.realm.AbstractC2159x525a155d
    public boolean realmGet$pending() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f20005i);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.tmobile.services.nameid.model.CategorySetting, io.realm.AbstractC2159x525a155d
    public void realmSet$blocked(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f20002f, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f20002f, e.getObjectKey(), z, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.CategorySetting, io.realm.AbstractC2159x525a155d
    public void realmSet$bucketId(int i) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            throw new RealmException("Primary key field 'bucketId' cannot be changed after object was created.");
        }
    }

    @Override // com.tmobile.services.nameid.model.CategorySetting, io.realm.AbstractC2159x525a155d
    public void realmSet$disposition(int i) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setLong(this.columnInfo.f20004h, i);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2660J(this.columnInfo.f20004h, e.getObjectKey(), i, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.CategorySetting, io.realm.AbstractC2159x525a155d
    public void realmSet$eventType(int i) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setLong(this.columnInfo.f20003g, i);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2660J(this.columnInfo.f20003g, e.getObjectKey(), i, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.CategorySetting, io.realm.AbstractC2159x525a155d
    public void realmSet$pending(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f20005i, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f20005i, e.getObjectKey(), z, true);
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        return "CategorySetting = proxy[{bucketId:" + realmGet$bucketId() + "},{blocked:" + realmGet$blocked() + "},{eventType:" + realmGet$eventType() + "},{disposition:" + realmGet$disposition() + "},{pending:" + realmGet$pending() + "}]";
    }
}
