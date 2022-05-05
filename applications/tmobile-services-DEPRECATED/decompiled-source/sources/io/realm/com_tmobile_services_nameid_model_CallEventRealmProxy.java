package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.tmobile.services.nameid.model.CallEvent;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_CallEventRealmProxy.class */
public class com_tmobile_services_nameid_model_CallEventRealmProxy extends CallEvent implements RealmObjectProxy, com_tmobile_services_nameid_model_CallEventRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private CallEventColumnInfo columnInfo;
    private ProxyState<CallEvent> proxyState;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_CallEventRealmProxy$CallEventColumnInfo.class */
    public static final class CallEventColumnInfo extends ColumnInfo {

        /* renamed from: e */
        long f19981e;

        /* renamed from: f */
        long f19982f;

        /* renamed from: g */
        long f19983g;

        /* renamed from: h */
        long f19984h;

        CallEventColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(4);
            OsObjectSchemaInfo b = osSchemaInfo.m2701b("CallEvent");
            this.f19981e = m2833a("ringDate", "ringDate", b);
            this.f19982f = m2833a("answerDate", "answerDate", b);
            this.f19983g = m2833a("numberAsReceived", "numberAsReceived", b);
            this.f19984h = m2833a("answered", "answered", b);
        }

        @Override // io.realm.internal.ColumnInfo
        /* renamed from: b */
        protected final void mo2536b(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            CallEventColumnInfo callEventColumnInfo = (CallEventColumnInfo) columnInfo;
            CallEventColumnInfo callEventColumnInfo2 = (CallEventColumnInfo) columnInfo2;
            callEventColumnInfo2.f19981e = callEventColumnInfo.f19981e;
            callEventColumnInfo2.f19982f = callEventColumnInfo.f19982f;
            callEventColumnInfo2.f19983g = callEventColumnInfo.f19983g;
            callEventColumnInfo2.f19984h = callEventColumnInfo.f19984h;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_CallEventRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_tmobile_services_nameid_model_CallEventRealmProxy() {
        this.proxyState.m3075n();
    }

    public static CallEvent copy(Realm realm, CallEventColumnInfo callEventColumnInfo, CallEvent callEvent, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(callEvent);
        if (realmObjectProxy != null) {
            return (CallEvent) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(CallEvent.class), set);
        osObjectBuilder.m2553b(callEventColumnInfo.f19981e, callEvent.realmGet$ringDate());
        osObjectBuilder.m2553b(callEventColumnInfo.f19982f, callEvent.realmGet$answerDate());
        osObjectBuilder.m2550h(callEventColumnInfo.f19983g, callEvent.realmGet$numberAsReceived());
        osObjectBuilder.m2554a(callEventColumnInfo.f19984h, Boolean.valueOf(callEvent.realmGet$answered()));
        com_tmobile_services_nameid_model_CallEventRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.m2549i());
        map.put(callEvent, newProxyInstance);
        return newProxyInstance;
    }

    public static CallEvent copyOrUpdate(Realm realm, CallEventColumnInfo callEventColumnInfo, CallEvent callEvent, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if ((callEvent instanceof RealmObjectProxy) && !RealmObject.isFrozen(callEvent)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) callEvent;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null) {
                BaseRealm d = realmObjectProxy.realmGet$proxyState().m3085d();
                if (d.f19806g != realm.f19806g) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (d.m3163K().equals(realm.m3163K())) {
                    return callEvent;
                }
            }
        }
        BaseRealm.f19804n.get();
        RealmObjectProxy realmObjectProxy2 = map.get(callEvent);
        return realmObjectProxy2 != null ? (CallEvent) realmObjectProxy2 : copy(realm, callEventColumnInfo, callEvent, z, map, set);
    }

    public static CallEventColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new CallEventColumnInfo(osSchemaInfo);
    }

    public static CallEvent createDetachedCopy(CallEvent callEvent, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        CallEvent callEvent2;
        if (i > i2 || callEvent == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(callEvent);
        if (cacheData == null) {
            CallEvent callEvent3 = new CallEvent();
            map.put(callEvent, new RealmObjectProxy.CacheData<>(i, callEvent3));
            callEvent2 = callEvent3;
        } else if (i >= cacheData.f20174a) {
            return (CallEvent) cacheData.f20175b;
        } else {
            callEvent2 = (CallEvent) cacheData.f20175b;
            cacheData.f20174a = i;
        }
        callEvent2.realmSet$ringDate(callEvent.realmGet$ringDate());
        callEvent2.realmSet$answerDate(callEvent.realmGet$answerDate());
        callEvent2.realmSet$numberAsReceived(callEvent.realmGet$numberAsReceived());
        callEvent2.realmSet$answered(callEvent.realmGet$answered());
        return callEvent2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder("CallEvent", 4, 0);
        builder.m2747a("ringDate", RealmFieldType.DATE, false, false, false);
        builder.m2747a("answerDate", RealmFieldType.DATE, false, false, false);
        builder.m2747a("numberAsReceived", RealmFieldType.STRING, false, false, false);
        builder.m2747a("answered", RealmFieldType.BOOLEAN, false, false, true);
        return builder.m2746b();
    }

    public static CallEvent createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        CallEvent callEvent = (CallEvent) realm.m3069B0(CallEvent.class, true, Collections.emptyList());
        if (jSONObject.has("ringDate")) {
            if (jSONObject.isNull("ringDate")) {
                callEvent.realmSet$ringDate(null);
            } else {
                Object obj = jSONObject.get("ringDate");
                if (obj instanceof String) {
                    callEvent.realmSet$ringDate(JsonUtils.m2586a((String) obj));
                } else {
                    callEvent.realmSet$ringDate(new Date(jSONObject.getLong("ringDate")));
                }
            }
        }
        if (jSONObject.has("answerDate")) {
            if (jSONObject.isNull("answerDate")) {
                callEvent.realmSet$answerDate(null);
            } else {
                Object obj2 = jSONObject.get("answerDate");
                if (obj2 instanceof String) {
                    callEvent.realmSet$answerDate(JsonUtils.m2586a((String) obj2));
                } else {
                    callEvent.realmSet$answerDate(new Date(jSONObject.getLong("answerDate")));
                }
            }
        }
        if (jSONObject.has("numberAsReceived")) {
            if (jSONObject.isNull("numberAsReceived")) {
                callEvent.realmSet$numberAsReceived(null);
            } else {
                callEvent.realmSet$numberAsReceived(jSONObject.getString("numberAsReceived"));
            }
        }
        if (jSONObject.has("answered")) {
            if (!jSONObject.isNull("answered")) {
                callEvent.realmSet$answered(jSONObject.getBoolean("answered"));
            } else {
                throw new IllegalArgumentException("Trying to set non-nullable field 'answered' to null.");
            }
        }
        return callEvent;
    }

    @TargetApi(11)
    public static CallEvent createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        CallEvent callEvent = new CallEvent();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("ringDate")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    callEvent.realmSet$ringDate(null);
                } else if (jsonReader.peek() == JsonToken.NUMBER) {
                    long nextLong = jsonReader.nextLong();
                    if (nextLong > -1) {
                        callEvent.realmSet$ringDate(new Date(nextLong));
                    }
                } else {
                    callEvent.realmSet$ringDate(JsonUtils.m2586a(jsonReader.nextString()));
                }
            } else if (nextName.equals("answerDate")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    callEvent.realmSet$answerDate(null);
                } else if (jsonReader.peek() == JsonToken.NUMBER) {
                    long nextLong2 = jsonReader.nextLong();
                    if (nextLong2 > -1) {
                        callEvent.realmSet$answerDate(new Date(nextLong2));
                    }
                } else {
                    callEvent.realmSet$answerDate(JsonUtils.m2586a(jsonReader.nextString()));
                }
            } else if (nextName.equals("numberAsReceived")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    callEvent.realmSet$numberAsReceived(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    callEvent.realmSet$numberAsReceived(null);
                }
            } else if (!nextName.equals("answered")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                callEvent.realmSet$answered(jsonReader.nextBoolean());
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'answered' to null.");
            }
        }
        jsonReader.endObject();
        return (CallEvent) realm.m3046u0(callEvent, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "CallEvent";
    }

    public static long insert(Realm realm, CallEvent callEvent, Map<RealmModel, Long> map) {
        if ((callEvent instanceof RealmObjectProxy) && !RealmObject.isFrozen(callEvent)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) callEvent;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                return realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey();
            }
        }
        Table J0 = realm.m3061J0(CallEvent.class);
        long nativePtr = J0.getNativePtr();
        CallEventColumnInfo callEventColumnInfo = (CallEventColumnInfo) realm.mo3059L().m2854g(CallEvent.class);
        long createRow = OsObject.createRow(J0);
        map.put(callEvent, Long.valueOf(createRow));
        Date realmGet$ringDate = callEvent.realmGet$ringDate();
        if (realmGet$ringDate != null) {
            Table.nativeSetTimestamp(nativePtr, callEventColumnInfo.f19981e, createRow, realmGet$ringDate.getTime(), false);
        }
        Date realmGet$answerDate = callEvent.realmGet$answerDate();
        if (realmGet$answerDate != null) {
            Table.nativeSetTimestamp(nativePtr, callEventColumnInfo.f19982f, createRow, realmGet$answerDate.getTime(), false);
        }
        String realmGet$numberAsReceived = callEvent.realmGet$numberAsReceived();
        if (realmGet$numberAsReceived != null) {
            Table.nativeSetString(nativePtr, callEventColumnInfo.f19983g, createRow, realmGet$numberAsReceived, false);
        }
        Table.nativeSetBoolean(nativePtr, callEventColumnInfo.f19984h, createRow, callEvent.realmGet$answered(), false);
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(CallEvent.class);
        long nativePtr = J0.getNativePtr();
        CallEventColumnInfo callEventColumnInfo = (CallEventColumnInfo) realm.mo3059L().m2854g(CallEvent.class);
        while (it.hasNext()) {
            CallEvent callEvent = (CallEvent) it.next();
            if (!map.containsKey(callEvent)) {
                if ((callEvent instanceof RealmObjectProxy) && !RealmObject.isFrozen(callEvent)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) callEvent;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(callEvent, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                long createRow = OsObject.createRow(J0);
                map.put(callEvent, Long.valueOf(createRow));
                Date realmGet$ringDate = callEvent.realmGet$ringDate();
                if (realmGet$ringDate != null) {
                    Table.nativeSetTimestamp(nativePtr, callEventColumnInfo.f19981e, createRow, realmGet$ringDate.getTime(), false);
                }
                Date realmGet$answerDate = callEvent.realmGet$answerDate();
                if (realmGet$answerDate != null) {
                    Table.nativeSetTimestamp(nativePtr, callEventColumnInfo.f19982f, createRow, realmGet$answerDate.getTime(), false);
                }
                String realmGet$numberAsReceived = callEvent.realmGet$numberAsReceived();
                if (realmGet$numberAsReceived != null) {
                    Table.nativeSetString(nativePtr, callEventColumnInfo.f19983g, createRow, realmGet$numberAsReceived, false);
                }
                Table.nativeSetBoolean(nativePtr, callEventColumnInfo.f19984h, createRow, callEvent.realmGet$answered(), false);
            }
        }
    }

    public static long insertOrUpdate(Realm realm, CallEvent callEvent, Map<RealmModel, Long> map) {
        if ((callEvent instanceof RealmObjectProxy) && !RealmObject.isFrozen(callEvent)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) callEvent;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                return realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey();
            }
        }
        Table J0 = realm.m3061J0(CallEvent.class);
        long nativePtr = J0.getNativePtr();
        CallEventColumnInfo callEventColumnInfo = (CallEventColumnInfo) realm.mo3059L().m2854g(CallEvent.class);
        long createRow = OsObject.createRow(J0);
        map.put(callEvent, Long.valueOf(createRow));
        Date realmGet$ringDate = callEvent.realmGet$ringDate();
        if (realmGet$ringDate != null) {
            Table.nativeSetTimestamp(nativePtr, callEventColumnInfo.f19981e, createRow, realmGet$ringDate.getTime(), false);
        } else {
            Table.nativeSetNull(nativePtr, callEventColumnInfo.f19981e, createRow, false);
        }
        Date realmGet$answerDate = callEvent.realmGet$answerDate();
        if (realmGet$answerDate != null) {
            Table.nativeSetTimestamp(nativePtr, callEventColumnInfo.f19982f, createRow, realmGet$answerDate.getTime(), false);
        } else {
            Table.nativeSetNull(nativePtr, callEventColumnInfo.f19982f, createRow, false);
        }
        String realmGet$numberAsReceived = callEvent.realmGet$numberAsReceived();
        if (realmGet$numberAsReceived != null) {
            Table.nativeSetString(nativePtr, callEventColumnInfo.f19983g, createRow, realmGet$numberAsReceived, false);
        } else {
            Table.nativeSetNull(nativePtr, callEventColumnInfo.f19983g, createRow, false);
        }
        Table.nativeSetBoolean(nativePtr, callEventColumnInfo.f19984h, createRow, callEvent.realmGet$answered(), false);
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(CallEvent.class);
        long nativePtr = J0.getNativePtr();
        CallEventColumnInfo callEventColumnInfo = (CallEventColumnInfo) realm.mo3059L().m2854g(CallEvent.class);
        while (it.hasNext()) {
            CallEvent callEvent = (CallEvent) it.next();
            if (!map.containsKey(callEvent)) {
                if ((callEvent instanceof RealmObjectProxy) && !RealmObject.isFrozen(callEvent)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) callEvent;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(callEvent, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                long createRow = OsObject.createRow(J0);
                map.put(callEvent, Long.valueOf(createRow));
                Date realmGet$ringDate = callEvent.realmGet$ringDate();
                if (realmGet$ringDate != null) {
                    Table.nativeSetTimestamp(nativePtr, callEventColumnInfo.f19981e, createRow, realmGet$ringDate.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, callEventColumnInfo.f19981e, createRow, false);
                }
                Date realmGet$answerDate = callEvent.realmGet$answerDate();
                if (realmGet$answerDate != null) {
                    Table.nativeSetTimestamp(nativePtr, callEventColumnInfo.f19982f, createRow, realmGet$answerDate.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, callEventColumnInfo.f19982f, createRow, false);
                }
                String realmGet$numberAsReceived = callEvent.realmGet$numberAsReceived();
                if (realmGet$numberAsReceived != null) {
                    Table.nativeSetString(nativePtr, callEventColumnInfo.f19983g, createRow, realmGet$numberAsReceived, false);
                } else {
                    Table.nativeSetNull(nativePtr, callEventColumnInfo.f19983g, createRow, false);
                }
                Table.nativeSetBoolean(nativePtr, callEventColumnInfo.f19984h, createRow, callEvent.realmGet$answered(), false);
            }
        }
    }

    private static com_tmobile_services_nameid_model_CallEventRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.f19804n.get();
        realmObjectContext.m3137g(baseRealm, row, baseRealm.mo3059L().m2854g(CallEvent.class), false, Collections.emptyList());
        com_tmobile_services_nameid_model_CallEventRealmProxy com_tmobile_services_nameid_model_calleventrealmproxy = new com_tmobile_services_nameid_model_CallEventRealmProxy();
        realmObjectContext.m3143a();
        return com_tmobile_services_nameid_model_calleventrealmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_tmobile_services_nameid_model_CallEventRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_tmobile_services_nameid_model_CallEventRealmProxy com_tmobile_services_nameid_model_calleventrealmproxy = (com_tmobile_services_nameid_model_CallEventRealmProxy) obj;
        BaseRealm d = this.proxyState.m3085d();
        BaseRealm d2 = com_tmobile_services_nameid_model_calleventrealmproxy.proxyState.m3085d();
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
        String t2 = com_tmobile_services_nameid_model_calleventrealmproxy.proxyState.m3084e().getTable().m2633t();
        if (t != null) {
            if (!t.equals(t2)) {
                return false;
            }
        } else if (t2 != null) {
            return false;
        }
        return this.proxyState.m3084e().getObjectKey() == com_tmobile_services_nameid_model_calleventrealmproxy.proxyState.m3084e().getObjectKey();
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
            this.columnInfo = (CallEventColumnInfo) realmObjectContext.m3141c();
            ProxyState<CallEvent> proxyState = new ProxyState<>(this);
            this.proxyState = proxyState;
            proxyState.m3073p(realmObjectContext.m3139e());
            this.proxyState.m3072q(realmObjectContext.m3138f());
            this.proxyState.m3076m(realmObjectContext.m3142b());
            this.proxyState.m3074o(realmObjectContext.m3140d());
        }
    }

    @Override // com.tmobile.services.nameid.model.CallEvent, io.realm.com_tmobile_services_nameid_model_CallEventRealmProxyInterface
    public Date realmGet$answerDate() {
        this.proxyState.m3085d().m3151h();
        if (this.proxyState.m3084e().isNull(this.columnInfo.f19982f)) {
            return null;
        }
        return this.proxyState.m3084e().getDate(this.columnInfo.f19982f);
    }

    @Override // com.tmobile.services.nameid.model.CallEvent, io.realm.com_tmobile_services_nameid_model_CallEventRealmProxyInterface
    public boolean realmGet$answered() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f19984h);
    }

    @Override // com.tmobile.services.nameid.model.CallEvent, io.realm.com_tmobile_services_nameid_model_CallEventRealmProxyInterface
    public String realmGet$numberAsReceived() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f19983g);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.tmobile.services.nameid.model.CallEvent, io.realm.com_tmobile_services_nameid_model_CallEventRealmProxyInterface
    public Date realmGet$ringDate() {
        this.proxyState.m3085d().m3151h();
        if (this.proxyState.m3084e().isNull(this.columnInfo.f19981e)) {
            return null;
        }
        return this.proxyState.m3084e().getDate(this.columnInfo.f19981e);
    }

    @Override // com.tmobile.services.nameid.model.CallEvent, io.realm.com_tmobile_services_nameid_model_CallEventRealmProxyInterface
    public void realmSet$answerDate(Date date) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (date == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f19982f);
            } else {
                this.proxyState.m3084e().setDate(this.columnInfo.f19982f, date);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (date == null) {
                e.getTable().m2659K(this.columnInfo.f19982f, e.getObjectKey(), true);
            } else {
                e.getTable().m2661I(this.columnInfo.f19982f, e.getObjectKey(), date, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.CallEvent, io.realm.com_tmobile_services_nameid_model_CallEventRealmProxyInterface
    public void realmSet$answered(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f19984h, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f19984h, e.getObjectKey(), z, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.CallEvent, io.realm.com_tmobile_services_nameid_model_CallEventRealmProxyInterface
    public void realmSet$numberAsReceived(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f19983g);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f19983g, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f19983g, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f19983g, e.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.CallEvent, io.realm.com_tmobile_services_nameid_model_CallEventRealmProxyInterface
    public void realmSet$ringDate(Date date) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (date == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f19981e);
            } else {
                this.proxyState.m3084e().setDate(this.columnInfo.f19981e, date);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (date == null) {
                e.getTable().m2659K(this.columnInfo.f19981e, e.getObjectKey(), true);
            } else {
                e.getTable().m2661I(this.columnInfo.f19981e, e.getObjectKey(), date, true);
            }
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("CallEvent = proxy[");
        sb.append("{ringDate:");
        String str = "null";
        sb.append(realmGet$ringDate() != null ? realmGet$ringDate() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{answerDate:");
        sb.append(realmGet$answerDate() != null ? realmGet$answerDate() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{numberAsReceived:");
        if (realmGet$numberAsReceived() != null) {
            str = realmGet$numberAsReceived();
        }
        sb.append(str);
        sb.append("}");
        sb.append(",");
        sb.append("{answered:");
        sb.append(realmGet$answered());
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
