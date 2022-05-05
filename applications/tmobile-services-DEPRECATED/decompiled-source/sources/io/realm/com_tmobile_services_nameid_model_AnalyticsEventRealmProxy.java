package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.tmobile.services.nameid.model.AnalyticsEvent;
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
import org.simpleframework.xml.strategy.Name;
/* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_AnalyticsEventRealmProxy.class */
public class com_tmobile_services_nameid_model_AnalyticsEventRealmProxy extends AnalyticsEvent implements RealmObjectProxy, AbstractC2157xf6af7191 {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private AnalyticsEventColumnInfo columnInfo;
    private ProxyState<AnalyticsEvent> proxyState;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_AnalyticsEventRealmProxy$AnalyticsEventColumnInfo.class */
    public static final class AnalyticsEventColumnInfo extends ColumnInfo {

        /* renamed from: e */
        long f19976e;

        /* renamed from: f */
        long f19977f;

        /* renamed from: g */
        long f19978g;

        /* renamed from: h */
        long f19979h;

        /* renamed from: i */
        long f19980i;

        AnalyticsEventColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(5);
            OsObjectSchemaInfo b = osSchemaInfo.m2701b("AnalyticsEvent");
            this.f19976e = m2833a(Name.MARK, Name.MARK, b);
            this.f19977f = m2833a("eventType", "eventType", b);
            this.f19978g = m2833a("eventBody", "eventBody", b);
            this.f19979h = m2833a("time", "time", b);
            this.f19980i = m2833a("sending", "sending", b);
        }

        @Override // io.realm.internal.ColumnInfo
        /* renamed from: b */
        protected final void mo2536b(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            AnalyticsEventColumnInfo analyticsEventColumnInfo = (AnalyticsEventColumnInfo) columnInfo;
            AnalyticsEventColumnInfo analyticsEventColumnInfo2 = (AnalyticsEventColumnInfo) columnInfo2;
            analyticsEventColumnInfo2.f19976e = analyticsEventColumnInfo.f19976e;
            analyticsEventColumnInfo2.f19977f = analyticsEventColumnInfo.f19977f;
            analyticsEventColumnInfo2.f19978g = analyticsEventColumnInfo.f19978g;
            analyticsEventColumnInfo2.f19979h = analyticsEventColumnInfo.f19979h;
            analyticsEventColumnInfo2.f19980i = analyticsEventColumnInfo.f19980i;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_AnalyticsEventRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_tmobile_services_nameid_model_AnalyticsEventRealmProxy() {
        this.proxyState.m3075n();
    }

    public static AnalyticsEvent copy(Realm realm, AnalyticsEventColumnInfo analyticsEventColumnInfo, AnalyticsEvent analyticsEvent, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(analyticsEvent);
        if (realmObjectProxy != null) {
            return (AnalyticsEvent) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(AnalyticsEvent.class), set);
        osObjectBuilder.m2552d(analyticsEventColumnInfo.f19976e, Integer.valueOf(analyticsEvent.realmGet$id()));
        osObjectBuilder.m2552d(analyticsEventColumnInfo.f19977f, Integer.valueOf(analyticsEvent.realmGet$eventType()));
        osObjectBuilder.m2550h(analyticsEventColumnInfo.f19978g, analyticsEvent.realmGet$eventBody());
        osObjectBuilder.m2551e(analyticsEventColumnInfo.f19979h, Long.valueOf(analyticsEvent.realmGet$time()));
        osObjectBuilder.m2554a(analyticsEventColumnInfo.f19980i, Boolean.valueOf(analyticsEvent.realmGet$sending()));
        com_tmobile_services_nameid_model_AnalyticsEventRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.m2549i());
        map.put(analyticsEvent, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tmobile.services.nameid.model.AnalyticsEvent copyOrUpdate(io.realm.Realm r7, io.realm.com_tmobile_services_nameid_model_AnalyticsEventRealmProxy.AnalyticsEventColumnInfo r8, com.tmobile.services.nameid.model.AnalyticsEvent r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_tmobile_services_nameid_model_AnalyticsEventRealmProxy.copyOrUpdate(io.realm.Realm, io.realm.com_tmobile_services_nameid_model_AnalyticsEventRealmProxy$AnalyticsEventColumnInfo, com.tmobile.services.nameid.model.AnalyticsEvent, boolean, java.util.Map, java.util.Set):com.tmobile.services.nameid.model.AnalyticsEvent");
    }

    public static AnalyticsEventColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new AnalyticsEventColumnInfo(osSchemaInfo);
    }

    public static AnalyticsEvent createDetachedCopy(AnalyticsEvent analyticsEvent, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        AnalyticsEvent analyticsEvent2;
        if (i > i2 || analyticsEvent == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(analyticsEvent);
        if (cacheData == null) {
            AnalyticsEvent analyticsEvent3 = new AnalyticsEvent();
            map.put(analyticsEvent, new RealmObjectProxy.CacheData<>(i, analyticsEvent3));
            analyticsEvent2 = analyticsEvent3;
        } else if (i >= cacheData.f20174a) {
            return (AnalyticsEvent) cacheData.f20175b;
        } else {
            analyticsEvent2 = (AnalyticsEvent) cacheData.f20175b;
            cacheData.f20174a = i;
        }
        analyticsEvent2.realmSet$id(analyticsEvent.realmGet$id());
        analyticsEvent2.realmSet$eventType(analyticsEvent.realmGet$eventType());
        analyticsEvent2.realmSet$eventBody(analyticsEvent.realmGet$eventBody());
        analyticsEvent2.realmSet$time(analyticsEvent.realmGet$time());
        analyticsEvent2.realmSet$sending(analyticsEvent.realmGet$sending());
        return analyticsEvent2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder("AnalyticsEvent", 5, 0);
        builder.m2747a(Name.MARK, RealmFieldType.INTEGER, true, true, true);
        builder.m2747a("eventType", RealmFieldType.INTEGER, false, false, true);
        builder.m2747a("eventBody", RealmFieldType.STRING, false, false, false);
        builder.m2747a("time", RealmFieldType.INTEGER, false, false, true);
        builder.m2747a("sending", RealmFieldType.BOOLEAN, false, false, true);
        return builder.m2746b();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0177  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tmobile.services.nameid.model.AnalyticsEvent createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 416
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_tmobile_services_nameid_model_AnalyticsEventRealmProxy.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):com.tmobile.services.nameid.model.AnalyticsEvent");
    }

    @TargetApi(11)
    public static AnalyticsEvent createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        AnalyticsEvent analyticsEvent = new AnalyticsEvent();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(Name.MARK)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    analyticsEvent.realmSet$id(jsonReader.nextInt());
                    z = true;
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
                }
            } else if (nextName.equals("eventType")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    analyticsEvent.realmSet$eventType(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'eventType' to null.");
                }
            } else if (nextName.equals("eventBody")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    analyticsEvent.realmSet$eventBody(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    analyticsEvent.realmSet$eventBody(null);
                }
            } else if (nextName.equals("time")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    analyticsEvent.realmSet$time(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'time' to null.");
                }
            } else if (!nextName.equals("sending")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                analyticsEvent.realmSet$sending(jsonReader.nextBoolean());
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'sending' to null.");
            }
        }
        jsonReader.endObject();
        if (z) {
            return (AnalyticsEvent) realm.m3046u0(analyticsEvent, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "AnalyticsEvent";
    }

    public static long insert(Realm realm, AnalyticsEvent analyticsEvent, Map<RealmModel, Long> map) {
        if ((analyticsEvent instanceof RealmObjectProxy) && !RealmObject.isFrozen(analyticsEvent)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) analyticsEvent;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                return realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey();
            }
        }
        Table J0 = realm.m3061J0(AnalyticsEvent.class);
        long nativePtr = J0.getNativePtr();
        AnalyticsEventColumnInfo analyticsEventColumnInfo = (AnalyticsEventColumnInfo) realm.mo3059L().m2854g(AnalyticsEvent.class);
        long j = analyticsEventColumnInfo.f19976e;
        Integer valueOf = Integer.valueOf(analyticsEvent.realmGet$id());
        if ((valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, analyticsEvent.realmGet$id()) : -1L) == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(J0, j, Integer.valueOf(analyticsEvent.realmGet$id()));
            map.put(analyticsEvent, Long.valueOf(createRowWithPrimaryKey));
            Table.nativeSetLong(nativePtr, analyticsEventColumnInfo.f19977f, createRowWithPrimaryKey, analyticsEvent.realmGet$eventType(), false);
            String realmGet$eventBody = analyticsEvent.realmGet$eventBody();
            if (realmGet$eventBody != null) {
                Table.nativeSetString(nativePtr, analyticsEventColumnInfo.f19978g, createRowWithPrimaryKey, realmGet$eventBody, false);
            }
            Table.nativeSetLong(nativePtr, analyticsEventColumnInfo.f19979h, createRowWithPrimaryKey, analyticsEvent.realmGet$time(), false);
            Table.nativeSetBoolean(nativePtr, analyticsEventColumnInfo.f19980i, createRowWithPrimaryKey, analyticsEvent.realmGet$sending(), false);
            return createRowWithPrimaryKey;
        }
        Table.m2656N(valueOf);
        throw null;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(AnalyticsEvent.class);
        long nativePtr = J0.getNativePtr();
        AnalyticsEventColumnInfo analyticsEventColumnInfo = (AnalyticsEventColumnInfo) realm.mo3059L().m2854g(AnalyticsEvent.class);
        long j = analyticsEventColumnInfo.f19976e;
        while (it.hasNext()) {
            AnalyticsEvent analyticsEvent = (AnalyticsEvent) it.next();
            if (!map.containsKey(analyticsEvent)) {
                if ((analyticsEvent instanceof RealmObjectProxy) && !RealmObject.isFrozen(analyticsEvent)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) analyticsEvent;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(analyticsEvent, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                Integer valueOf = Integer.valueOf(analyticsEvent.realmGet$id());
                if ((valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, analyticsEvent.realmGet$id()) : -1L) == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(J0, j, Integer.valueOf(analyticsEvent.realmGet$id()));
                    map.put(analyticsEvent, Long.valueOf(createRowWithPrimaryKey));
                    Table.nativeSetLong(nativePtr, analyticsEventColumnInfo.f19977f, createRowWithPrimaryKey, analyticsEvent.realmGet$eventType(), false);
                    String realmGet$eventBody = analyticsEvent.realmGet$eventBody();
                    if (realmGet$eventBody != null) {
                        Table.nativeSetString(nativePtr, analyticsEventColumnInfo.f19978g, createRowWithPrimaryKey, realmGet$eventBody, false);
                    }
                    Table.nativeSetLong(nativePtr, analyticsEventColumnInfo.f19979h, createRowWithPrimaryKey, analyticsEvent.realmGet$time(), false);
                    Table.nativeSetBoolean(nativePtr, analyticsEventColumnInfo.f19980i, createRowWithPrimaryKey, analyticsEvent.realmGet$sending(), false);
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
    public static long insertOrUpdate(io.realm.Realm r10, com.tmobile.services.nameid.model.AnalyticsEvent r11, java.util.Map<io.realm.RealmModel, java.lang.Long> r12) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_tmobile_services_nameid_model_AnalyticsEventRealmProxy.insertOrUpdate(io.realm.Realm, com.tmobile.services.nameid.model.AnalyticsEvent, java.util.Map):long");
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
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_tmobile_services_nameid_model_AnalyticsEventRealmProxy.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    private static com_tmobile_services_nameid_model_AnalyticsEventRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.f19804n.get();
        realmObjectContext.m3137g(baseRealm, row, baseRealm.mo3059L().m2854g(AnalyticsEvent.class), false, Collections.emptyList());
        com_tmobile_services_nameid_model_AnalyticsEventRealmProxy com_tmobile_services_nameid_model_analyticseventrealmproxy = new com_tmobile_services_nameid_model_AnalyticsEventRealmProxy();
        realmObjectContext.m3143a();
        return com_tmobile_services_nameid_model_analyticseventrealmproxy;
    }

    static AnalyticsEvent update(Realm realm, AnalyticsEventColumnInfo analyticsEventColumnInfo, AnalyticsEvent analyticsEvent, AnalyticsEvent analyticsEvent2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(AnalyticsEvent.class), set);
        osObjectBuilder.m2552d(analyticsEventColumnInfo.f19976e, Integer.valueOf(analyticsEvent2.realmGet$id()));
        osObjectBuilder.m2552d(analyticsEventColumnInfo.f19977f, Integer.valueOf(analyticsEvent2.realmGet$eventType()));
        osObjectBuilder.m2550h(analyticsEventColumnInfo.f19978g, analyticsEvent2.realmGet$eventBody());
        osObjectBuilder.m2551e(analyticsEventColumnInfo.f19979h, Long.valueOf(analyticsEvent2.realmGet$time()));
        osObjectBuilder.m2554a(analyticsEventColumnInfo.f19980i, Boolean.valueOf(analyticsEvent2.realmGet$sending()));
        osObjectBuilder.m2548k();
        return analyticsEvent;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_tmobile_services_nameid_model_AnalyticsEventRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_tmobile_services_nameid_model_AnalyticsEventRealmProxy com_tmobile_services_nameid_model_analyticseventrealmproxy = (com_tmobile_services_nameid_model_AnalyticsEventRealmProxy) obj;
        BaseRealm d = this.proxyState.m3085d();
        BaseRealm d2 = com_tmobile_services_nameid_model_analyticseventrealmproxy.proxyState.m3085d();
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
        String t2 = com_tmobile_services_nameid_model_analyticseventrealmproxy.proxyState.m3084e().getTable().m2633t();
        if (t != null) {
            if (!t.equals(t2)) {
                return false;
            }
        } else if (t2 != null) {
            return false;
        }
        return this.proxyState.m3084e().getObjectKey() == com_tmobile_services_nameid_model_analyticseventrealmproxy.proxyState.m3084e().getObjectKey();
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
            this.columnInfo = (AnalyticsEventColumnInfo) realmObjectContext.m3141c();
            ProxyState<AnalyticsEvent> proxyState = new ProxyState<>(this);
            this.proxyState = proxyState;
            proxyState.m3073p(realmObjectContext.m3139e());
            this.proxyState.m3072q(realmObjectContext.m3138f());
            this.proxyState.m3076m(realmObjectContext.m3142b());
            this.proxyState.m3074o(realmObjectContext.m3140d());
        }
    }

    @Override // com.tmobile.services.nameid.model.AnalyticsEvent, io.realm.AbstractC2157xf6af7191
    public String realmGet$eventBody() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f19978g);
    }

    @Override // com.tmobile.services.nameid.model.AnalyticsEvent, io.realm.AbstractC2157xf6af7191
    public int realmGet$eventType() {
        this.proxyState.m3085d().m3151h();
        return (int) this.proxyState.m3084e().getLong(this.columnInfo.f19977f);
    }

    @Override // com.tmobile.services.nameid.model.AnalyticsEvent, io.realm.AbstractC2157xf6af7191
    public int realmGet$id() {
        this.proxyState.m3085d().m3151h();
        return (int) this.proxyState.m3084e().getLong(this.columnInfo.f19976e);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.tmobile.services.nameid.model.AnalyticsEvent, io.realm.AbstractC2157xf6af7191
    public boolean realmGet$sending() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f19980i);
    }

    @Override // com.tmobile.services.nameid.model.AnalyticsEvent, io.realm.AbstractC2157xf6af7191
    public long realmGet$time() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getLong(this.columnInfo.f19979h);
    }

    @Override // com.tmobile.services.nameid.model.AnalyticsEvent, io.realm.AbstractC2157xf6af7191
    public void realmSet$eventBody(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f19978g);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f19978g, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f19978g, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f19978g, e.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.AnalyticsEvent, io.realm.AbstractC2157xf6af7191
    public void realmSet$eventType(int i) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setLong(this.columnInfo.f19977f, i);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2660J(this.columnInfo.f19977f, e.getObjectKey(), i, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.AnalyticsEvent, io.realm.AbstractC2157xf6af7191
    public void realmSet$id(int i) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
        }
    }

    @Override // com.tmobile.services.nameid.model.AnalyticsEvent, io.realm.AbstractC2157xf6af7191
    public void realmSet$sending(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f19980i, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f19980i, e.getObjectKey(), z, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.AnalyticsEvent, io.realm.AbstractC2157xf6af7191
    public void realmSet$time(long j) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setLong(this.columnInfo.f19979h, j);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2660J(this.columnInfo.f19979h, e.getObjectKey(), j, true);
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("AnalyticsEvent = proxy[");
        sb.append("{id:");
        sb.append(realmGet$id());
        sb.append("}");
        sb.append(",");
        sb.append("{eventType:");
        sb.append(realmGet$eventType());
        sb.append("}");
        sb.append(",");
        sb.append("{eventBody:");
        sb.append(realmGet$eventBody() != null ? realmGet$eventBody() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{time:");
        sb.append(realmGet$time());
        sb.append("}");
        sb.append(",");
        sb.append("{sending:");
        sb.append(realmGet$sending());
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
