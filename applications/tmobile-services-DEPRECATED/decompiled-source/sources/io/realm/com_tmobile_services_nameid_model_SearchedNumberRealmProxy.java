package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.tmobile.services.nameid.model.SearchedNumber;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_SearchedNumberRealmProxy.class */
public class com_tmobile_services_nameid_model_SearchedNumberRealmProxy extends SearchedNumber implements RealmObjectProxy, AbstractC2163x57b4c55 {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private SearchedNumberColumnInfo columnInfo;
    private ProxyState<SearchedNumber> proxyState;

    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_SearchedNumberRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_SearchedNumberRealmProxy$SearchedNumberColumnInfo.class */
    public static final class SearchedNumberColumnInfo extends ColumnInfo {

        /* renamed from: e */
        long f20032e;

        SearchedNumberColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(1);
            this.f20032e = m2833a("e164Number", "e164Number", osSchemaInfo.m2701b("SearchedNumber"));
        }

        @Override // io.realm.internal.ColumnInfo
        /* renamed from: b */
        protected final void mo2536b(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            ((SearchedNumberColumnInfo) columnInfo2).f20032e = ((SearchedNumberColumnInfo) columnInfo).f20032e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_tmobile_services_nameid_model_SearchedNumberRealmProxy() {
        this.proxyState.m3075n();
    }

    public static SearchedNumber copy(Realm realm, SearchedNumberColumnInfo searchedNumberColumnInfo, SearchedNumber searchedNumber, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(searchedNumber);
        if (realmObjectProxy != null) {
            return (SearchedNumber) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(SearchedNumber.class), set);
        osObjectBuilder.m2550h(searchedNumberColumnInfo.f20032e, searchedNumber.realmGet$e164Number());
        com_tmobile_services_nameid_model_SearchedNumberRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.m2549i());
        map.put(searchedNumber, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0116  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tmobile.services.nameid.model.SearchedNumber copyOrUpdate(io.realm.Realm r7, io.realm.com_tmobile_services_nameid_model_SearchedNumberRealmProxy.SearchedNumberColumnInfo r8, com.tmobile.services.nameid.model.SearchedNumber r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_tmobile_services_nameid_model_SearchedNumberRealmProxy.copyOrUpdate(io.realm.Realm, io.realm.com_tmobile_services_nameid_model_SearchedNumberRealmProxy$SearchedNumberColumnInfo, com.tmobile.services.nameid.model.SearchedNumber, boolean, java.util.Map, java.util.Set):com.tmobile.services.nameid.model.SearchedNumber");
    }

    public static SearchedNumberColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new SearchedNumberColumnInfo(osSchemaInfo);
    }

    public static SearchedNumber createDetachedCopy(SearchedNumber searchedNumber, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        SearchedNumber searchedNumber2;
        if (i > i2 || searchedNumber == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(searchedNumber);
        if (cacheData == null) {
            SearchedNumber searchedNumber3 = new SearchedNumber();
            map.put(searchedNumber, new RealmObjectProxy.CacheData<>(i, searchedNumber3));
            searchedNumber2 = searchedNumber3;
        } else if (i >= cacheData.f20174a) {
            return (SearchedNumber) cacheData.f20175b;
        } else {
            searchedNumber2 = (SearchedNumber) cacheData.f20175b;
            cacheData.f20174a = i;
        }
        searchedNumber2.realmSet$e164Number(searchedNumber.realmGet$e164Number());
        return searchedNumber2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder("SearchedNumber", 1, 0);
        builder.m2747a("e164Number", RealmFieldType.STRING, true, false, false);
        return builder.m2746b();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0098  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tmobile.services.nameid.model.SearchedNumber createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_tmobile_services_nameid_model_SearchedNumberRealmProxy.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):com.tmobile.services.nameid.model.SearchedNumber");
    }

    @TargetApi(11)
    public static SearchedNumber createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        SearchedNumber searchedNumber = new SearchedNumber();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            if (jsonReader.nextName().equals("e164Number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    searchedNumber.realmSet$e164Number(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    searchedNumber.realmSet$e164Number(null);
                }
                z = true;
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        if (z) {
            return (SearchedNumber) realm.m3046u0(searchedNumber, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'e164Number'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "SearchedNumber";
    }

    public static long insert(Realm realm, SearchedNumber searchedNumber, Map<RealmModel, Long> map) {
        if ((searchedNumber instanceof RealmObjectProxy) && !RealmObject.isFrozen(searchedNumber)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) searchedNumber;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                return realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey();
            }
        }
        Table J0 = realm.m3061J0(SearchedNumber.class);
        long nativePtr = J0.getNativePtr();
        long j = ((SearchedNumberColumnInfo) realm.mo3059L().m2854g(SearchedNumber.class)).f20032e;
        String realmGet$e164Number = searchedNumber.realmGet$e164Number();
        if ((realmGet$e164Number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$e164Number)) == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(J0, j, realmGet$e164Number);
            map.put(searchedNumber, Long.valueOf(createRowWithPrimaryKey));
            return createRowWithPrimaryKey;
        }
        Table.m2656N(realmGet$e164Number);
        throw null;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(SearchedNumber.class);
        long nativePtr = J0.getNativePtr();
        long j = ((SearchedNumberColumnInfo) realm.mo3059L().m2854g(SearchedNumber.class)).f20032e;
        while (it.hasNext()) {
            SearchedNumber searchedNumber = (SearchedNumber) it.next();
            if (!map.containsKey(searchedNumber)) {
                if ((searchedNumber instanceof RealmObjectProxy) && !RealmObject.isFrozen(searchedNumber)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) searchedNumber;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(searchedNumber, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                String realmGet$e164Number = searchedNumber.realmGet$e164Number();
                if ((realmGet$e164Number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$e164Number)) == -1) {
                    map.put(searchedNumber, Long.valueOf(OsObject.createRowWithPrimaryKey(J0, j, realmGet$e164Number)));
                } else {
                    Table.m2656N(realmGet$e164Number);
                    throw null;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long insertOrUpdate(io.realm.Realm r6, com.tmobile.services.nameid.model.SearchedNumber r7, java.util.Map<io.realm.RealmModel, java.lang.Long> r8) {
        /*
            r0 = r7
            boolean r0 = r0 instanceof io.realm.internal.RealmObjectProxy
            if (r0 == 0) goto L_0x0044
            r0 = r7
            boolean r0 = io.realm.RealmObject.isFrozen(r0)
            if (r0 != 0) goto L_0x0044
            r0 = r7
            io.realm.internal.RealmObjectProxy r0 = (io.realm.internal.RealmObjectProxy) r0
            r9 = r0
            r0 = r9
            io.realm.ProxyState r0 = r0.realmGet$proxyState()
            io.realm.BaseRealm r0 = r0.m3085d()
            if (r0 == 0) goto L_0x0044
            r0 = r9
            io.realm.ProxyState r0 = r0.realmGet$proxyState()
            io.realm.BaseRealm r0 = r0.m3085d()
            java.lang.String r0 = r0.m3163K()
            r1 = r6
            java.lang.String r1 = r1.m3163K()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0044
            r0 = r9
            io.realm.ProxyState r0 = r0.realmGet$proxyState()
            io.realm.internal.Row r0 = r0.m3084e()
            long r0 = r0.getObjectKey()
            return r0
        L_0x0044:
            r0 = r6
            java.lang.Class<com.tmobile.services.nameid.model.SearchedNumber> r1 = com.tmobile.services.nameid.model.SearchedNumber.class
            io.realm.internal.Table r0 = r0.m3061J0(r1)
            r9 = r0
            r0 = r9
            long r0 = r0.getNativePtr()
            r10 = r0
            r0 = r6
            io.realm.RealmSchema r0 = r0.mo3059L()
            java.lang.Class<com.tmobile.services.nameid.model.SearchedNumber> r1 = com.tmobile.services.nameid.model.SearchedNumber.class
            io.realm.internal.ColumnInfo r0 = r0.m2854g(r1)
            io.realm.com_tmobile_services_nameid_model_SearchedNumberRealmProxy$SearchedNumberColumnInfo r0 = (io.realm.com_tmobile_services_nameid_model_SearchedNumberRealmProxy.SearchedNumberColumnInfo) r0
            long r0 = r0.f20032e
            r12 = r0
            r0 = r7
            java.lang.String r0 = r0.realmGet$e164Number()
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0079
            r0 = r10
            r1 = r12
            long r0 = io.realm.internal.Table.nativeFindFirstNull(r0, r1)
            r10 = r0
            goto L_0x0083
        L_0x0079:
            r0 = r10
            r1 = r12
            r2 = r6
            long r0 = io.realm.internal.Table.nativeFindFirstString(r0, r1, r2)
            r10 = r0
        L_0x0083:
            r0 = r10
            r14 = r0
            r0 = r10
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0099
            r0 = r9
            r1 = r12
            r2 = r6
            long r0 = io.realm.internal.OsObject.createRowWithPrimaryKey(r0, r1, r2)
            r14 = r0
        L_0x0099:
            r0 = r8
            r1 = r7
            r2 = r14
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r14
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_tmobile_services_nameid_model_SearchedNumberRealmProxy.insertOrUpdate(io.realm.Realm, com.tmobile.services.nameid.model.SearchedNumber, java.util.Map):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0, types: [long] */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1, types: [long] */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.util.Map<io.realm.RealmModel, java.lang.Long>, java.util.Map] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void insertOrUpdate(io.realm.Realm r6, java.util.Iterator<? extends io.realm.RealmModel> r7, java.util.Map<io.realm.RealmModel, java.lang.Long> r8) {
        /*
            r0 = r6
            java.lang.Class<com.tmobile.services.nameid.model.SearchedNumber> r1 = com.tmobile.services.nameid.model.SearchedNumber.class
            io.realm.internal.Table r0 = r0.m3061J0(r1)
            r9 = r0
            r0 = r9
            long r0 = r0.getNativePtr()
            r10 = r0
            r0 = r6
            io.realm.RealmSchema r0 = r0.mo3059L()
            java.lang.Class<com.tmobile.services.nameid.model.SearchedNumber> r1 = com.tmobile.services.nameid.model.SearchedNumber.class
            io.realm.internal.ColumnInfo r0 = r0.m2854g(r1)
            io.realm.com_tmobile_services_nameid_model_SearchedNumberRealmProxy$SearchedNumberColumnInfo r0 = (io.realm.com_tmobile_services_nameid_model_SearchedNumberRealmProxy.SearchedNumberColumnInfo) r0
            long r0 = r0.f20032e
            r12 = r0
        L_0x001e:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x00e6
            r0 = r7
            java.lang.Object r0 = r0.next()
            com.tmobile.services.nameid.model.SearchedNumber r0 = (com.tmobile.services.nameid.model.SearchedNumber) r0
            r14 = r0
            r0 = r8
            r1 = r14
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L_0x0040
            goto L_0x001e
        L_0x0040:
            r0 = r14
            boolean r0 = r0 instanceof io.realm.internal.RealmObjectProxy
            if (r0 == 0) goto L_0x0099
            r0 = r14
            boolean r0 = io.realm.RealmObject.isFrozen(r0)
            if (r0 != 0) goto L_0x0099
            r0 = r14
            io.realm.internal.RealmObjectProxy r0 = (io.realm.internal.RealmObjectProxy) r0
            r15 = r0
            r0 = r15
            io.realm.ProxyState r0 = r0.realmGet$proxyState()
            io.realm.BaseRealm r0 = r0.m3085d()
            if (r0 == 0) goto L_0x0099
            r0 = r15
            io.realm.ProxyState r0 = r0.realmGet$proxyState()
            io.realm.BaseRealm r0 = r0.m3085d()
            java.lang.String r0 = r0.m3163K()
            r1 = r6
            java.lang.String r1 = r1.m3163K()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0099
            r0 = r8
            r1 = r14
            r2 = r15
            io.realm.ProxyState r2 = r2.realmGet$proxyState()
            io.realm.internal.Row r2 = r2.m3084e()
            long r2 = r2.getObjectKey()
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            java.lang.Object r0 = r0.put(r1, r2)
            goto L_0x001e
        L_0x0099:
            r0 = r14
            java.lang.String r0 = r0.realmGet$e164Number()
            r15 = r0
            r0 = r15
            if (r0 != 0) goto L_0x00b3
            r0 = r10
            r1 = r12
            long r0 = io.realm.internal.Table.nativeFindFirstNull(r0, r1)
            r16 = r0
            goto L_0x00be
        L_0x00b3:
            r0 = r10
            r1 = r12
            r2 = r15
            long r0 = io.realm.internal.Table.nativeFindFirstString(r0, r1, r2)
            r16 = r0
        L_0x00be:
            r0 = r16
            r18 = r0
            r0 = r16
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x00d5
            r0 = r9
            r1 = r12
            r2 = r15
            long r0 = io.realm.internal.OsObject.createRowWithPrimaryKey(r0, r1, r2)
            r18 = r0
        L_0x00d5:
            r0 = r8
            r1 = r14
            r2 = r18
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            java.lang.Object r0 = r0.put(r1, r2)
            goto L_0x001e
        L_0x00e6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_tmobile_services_nameid_model_SearchedNumberRealmProxy.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    private static com_tmobile_services_nameid_model_SearchedNumberRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.f19804n.get();
        realmObjectContext.m3137g(baseRealm, row, baseRealm.mo3059L().m2854g(SearchedNumber.class), false, Collections.emptyList());
        com_tmobile_services_nameid_model_SearchedNumberRealmProxy com_tmobile_services_nameid_model_searchednumberrealmproxy = new com_tmobile_services_nameid_model_SearchedNumberRealmProxy();
        realmObjectContext.m3143a();
        return com_tmobile_services_nameid_model_searchednumberrealmproxy;
    }

    static SearchedNumber update(Realm realm, SearchedNumberColumnInfo searchedNumberColumnInfo, SearchedNumber searchedNumber, SearchedNumber searchedNumber2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(SearchedNumber.class), set);
        osObjectBuilder.m2550h(searchedNumberColumnInfo.f20032e, searchedNumber2.realmGet$e164Number());
        osObjectBuilder.m2548k();
        return searchedNumber;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_tmobile_services_nameid_model_SearchedNumberRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_tmobile_services_nameid_model_SearchedNumberRealmProxy com_tmobile_services_nameid_model_searchednumberrealmproxy = (com_tmobile_services_nameid_model_SearchedNumberRealmProxy) obj;
        BaseRealm d = this.proxyState.m3085d();
        BaseRealm d2 = com_tmobile_services_nameid_model_searchednumberrealmproxy.proxyState.m3085d();
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
        String t2 = com_tmobile_services_nameid_model_searchednumberrealmproxy.proxyState.m3084e().getTable().m2633t();
        if (t != null) {
            if (!t.equals(t2)) {
                return false;
            }
        } else if (t2 != null) {
            return false;
        }
        return this.proxyState.m3084e().getObjectKey() == com_tmobile_services_nameid_model_searchednumberrealmproxy.proxyState.m3084e().getObjectKey();
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
            this.columnInfo = (SearchedNumberColumnInfo) realmObjectContext.m3141c();
            ProxyState<SearchedNumber> proxyState = new ProxyState<>(this);
            this.proxyState = proxyState;
            proxyState.m3073p(realmObjectContext.m3139e());
            this.proxyState.m3072q(realmObjectContext.m3138f());
            this.proxyState.m3076m(realmObjectContext.m3142b());
            this.proxyState.m3074o(realmObjectContext.m3140d());
        }
    }

    @Override // com.tmobile.services.nameid.model.SearchedNumber, io.realm.AbstractC2163x57b4c55
    public String realmGet$e164Number() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20032e);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.tmobile.services.nameid.model.SearchedNumber, io.realm.AbstractC2163x57b4c55
    public void realmSet$e164Number(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            throw new RealmException("Primary key field 'e164Number' cannot be changed after object was created.");
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("SearchedNumber = proxy[");
        sb.append("{e164Number:");
        sb.append(realmGet$e164Number() != null ? realmGet$e164Number() : "null");
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
