package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.tmobile.services.nameid.model.LogUtilItem;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_LogUtilItemRealmProxy.class */
public class com_tmobile_services_nameid_model_LogUtilItemRealmProxy extends LogUtilItem implements RealmObjectProxy, com_tmobile_services_nameid_model_LogUtilItemRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private LogUtilItemColumnInfo columnInfo;
    private ProxyState<LogUtilItem> proxyState;

    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_LogUtilItemRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_LogUtilItemRealmProxy$LogUtilItemColumnInfo.class */
    public static final class LogUtilItemColumnInfo extends ColumnInfo {

        /* renamed from: e */
        long f20019e;

        /* renamed from: f */
        long f20020f;

        LogUtilItemColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(2);
            OsObjectSchemaInfo b = osSchemaInfo.m2701b("LogUtilItem");
            this.f20019e = m2833a("date", "date", b);
            this.f20020f = m2833a("logText", "logText", b);
        }

        @Override // io.realm.internal.ColumnInfo
        /* renamed from: b */
        protected final void mo2536b(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            LogUtilItemColumnInfo logUtilItemColumnInfo = (LogUtilItemColumnInfo) columnInfo;
            LogUtilItemColumnInfo logUtilItemColumnInfo2 = (LogUtilItemColumnInfo) columnInfo2;
            logUtilItemColumnInfo2.f20019e = logUtilItemColumnInfo.f20019e;
            logUtilItemColumnInfo2.f20020f = logUtilItemColumnInfo.f20020f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_tmobile_services_nameid_model_LogUtilItemRealmProxy() {
        this.proxyState.m3075n();
    }

    public static LogUtilItem copy(Realm realm, LogUtilItemColumnInfo logUtilItemColumnInfo, LogUtilItem logUtilItem, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(logUtilItem);
        if (realmObjectProxy != null) {
            return (LogUtilItem) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(LogUtilItem.class), set);
        osObjectBuilder.m2553b(logUtilItemColumnInfo.f20019e, logUtilItem.realmGet$date());
        osObjectBuilder.m2550h(logUtilItemColumnInfo.f20020f, logUtilItem.realmGet$logText());
        com_tmobile_services_nameid_model_LogUtilItemRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.m2549i());
        map.put(logUtilItem, newProxyInstance);
        return newProxyInstance;
    }

    public static LogUtilItem copyOrUpdate(Realm realm, LogUtilItemColumnInfo logUtilItemColumnInfo, LogUtilItem logUtilItem, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if ((logUtilItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(logUtilItem)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) logUtilItem;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null) {
                BaseRealm d = realmObjectProxy.realmGet$proxyState().m3085d();
                if (d.f19806g != realm.f19806g) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (d.m3163K().equals(realm.m3163K())) {
                    return logUtilItem;
                }
            }
        }
        BaseRealm.f19804n.get();
        RealmObjectProxy realmObjectProxy2 = map.get(logUtilItem);
        return realmObjectProxy2 != null ? (LogUtilItem) realmObjectProxy2 : copy(realm, logUtilItemColumnInfo, logUtilItem, z, map, set);
    }

    public static LogUtilItemColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new LogUtilItemColumnInfo(osSchemaInfo);
    }

    public static LogUtilItem createDetachedCopy(LogUtilItem logUtilItem, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        LogUtilItem logUtilItem2;
        if (i > i2 || logUtilItem == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(logUtilItem);
        if (cacheData == null) {
            LogUtilItem logUtilItem3 = new LogUtilItem();
            map.put(logUtilItem, new RealmObjectProxy.CacheData<>(i, logUtilItem3));
            logUtilItem2 = logUtilItem3;
        } else if (i >= cacheData.f20174a) {
            return (LogUtilItem) cacheData.f20175b;
        } else {
            logUtilItem2 = (LogUtilItem) cacheData.f20175b;
            cacheData.f20174a = i;
        }
        logUtilItem2.realmSet$date(logUtilItem.realmGet$date());
        logUtilItem2.realmSet$logText(logUtilItem.realmGet$logText());
        return logUtilItem2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder("LogUtilItem", 2, 0);
        builder.m2747a("date", RealmFieldType.DATE, false, false, false);
        builder.m2747a("logText", RealmFieldType.STRING, false, false, false);
        return builder.m2746b();
    }

    public static LogUtilItem createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        LogUtilItem logUtilItem = (LogUtilItem) realm.m3069B0(LogUtilItem.class, true, Collections.emptyList());
        if (jSONObject.has("date")) {
            if (jSONObject.isNull("date")) {
                logUtilItem.realmSet$date(null);
            } else {
                Object obj = jSONObject.get("date");
                if (obj instanceof String) {
                    logUtilItem.realmSet$date(JsonUtils.m2586a((String) obj));
                } else {
                    logUtilItem.realmSet$date(new Date(jSONObject.getLong("date")));
                }
            }
        }
        if (jSONObject.has("logText")) {
            if (jSONObject.isNull("logText")) {
                logUtilItem.realmSet$logText(null);
            } else {
                logUtilItem.realmSet$logText(jSONObject.getString("logText"));
            }
        }
        return logUtilItem;
    }

    @TargetApi(11)
    public static LogUtilItem createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        LogUtilItem logUtilItem = new LogUtilItem();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("date")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    logUtilItem.realmSet$date(null);
                } else if (jsonReader.peek() == JsonToken.NUMBER) {
                    long nextLong = jsonReader.nextLong();
                    if (nextLong > -1) {
                        logUtilItem.realmSet$date(new Date(nextLong));
                    }
                } else {
                    logUtilItem.realmSet$date(JsonUtils.m2586a(jsonReader.nextString()));
                }
            } else if (!nextName.equals("logText")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                logUtilItem.realmSet$logText(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                logUtilItem.realmSet$logText(null);
            }
        }
        jsonReader.endObject();
        return (LogUtilItem) realm.m3046u0(logUtilItem, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "LogUtilItem";
    }

    public static long insert(Realm realm, LogUtilItem logUtilItem, Map<RealmModel, Long> map) {
        if ((logUtilItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(logUtilItem)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) logUtilItem;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                return realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey();
            }
        }
        Table J0 = realm.m3061J0(LogUtilItem.class);
        long nativePtr = J0.getNativePtr();
        LogUtilItemColumnInfo logUtilItemColumnInfo = (LogUtilItemColumnInfo) realm.mo3059L().m2854g(LogUtilItem.class);
        long createRow = OsObject.createRow(J0);
        map.put(logUtilItem, Long.valueOf(createRow));
        Date realmGet$date = logUtilItem.realmGet$date();
        if (realmGet$date != null) {
            Table.nativeSetTimestamp(nativePtr, logUtilItemColumnInfo.f20019e, createRow, realmGet$date.getTime(), false);
        }
        String realmGet$logText = logUtilItem.realmGet$logText();
        if (realmGet$logText != null) {
            Table.nativeSetString(nativePtr, logUtilItemColumnInfo.f20020f, createRow, realmGet$logText, false);
        }
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(LogUtilItem.class);
        long nativePtr = J0.getNativePtr();
        LogUtilItemColumnInfo logUtilItemColumnInfo = (LogUtilItemColumnInfo) realm.mo3059L().m2854g(LogUtilItem.class);
        while (it.hasNext()) {
            LogUtilItem logUtilItem = (LogUtilItem) it.next();
            if (!map.containsKey(logUtilItem)) {
                if ((logUtilItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(logUtilItem)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) logUtilItem;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(logUtilItem, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                long createRow = OsObject.createRow(J0);
                map.put(logUtilItem, Long.valueOf(createRow));
                Date realmGet$date = logUtilItem.realmGet$date();
                if (realmGet$date != null) {
                    Table.nativeSetTimestamp(nativePtr, logUtilItemColumnInfo.f20019e, createRow, realmGet$date.getTime(), false);
                }
                String realmGet$logText = logUtilItem.realmGet$logText();
                if (realmGet$logText != null) {
                    Table.nativeSetString(nativePtr, logUtilItemColumnInfo.f20020f, createRow, realmGet$logText, false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, LogUtilItem logUtilItem, Map<RealmModel, Long> map) {
        if ((logUtilItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(logUtilItem)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) logUtilItem;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                return realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey();
            }
        }
        Table J0 = realm.m3061J0(LogUtilItem.class);
        long nativePtr = J0.getNativePtr();
        LogUtilItemColumnInfo logUtilItemColumnInfo = (LogUtilItemColumnInfo) realm.mo3059L().m2854g(LogUtilItem.class);
        long createRow = OsObject.createRow(J0);
        map.put(logUtilItem, Long.valueOf(createRow));
        Date realmGet$date = logUtilItem.realmGet$date();
        if (realmGet$date != null) {
            Table.nativeSetTimestamp(nativePtr, logUtilItemColumnInfo.f20019e, createRow, realmGet$date.getTime(), false);
        } else {
            Table.nativeSetNull(nativePtr, logUtilItemColumnInfo.f20019e, createRow, false);
        }
        String realmGet$logText = logUtilItem.realmGet$logText();
        if (realmGet$logText != null) {
            Table.nativeSetString(nativePtr, logUtilItemColumnInfo.f20020f, createRow, realmGet$logText, false);
        } else {
            Table.nativeSetNull(nativePtr, logUtilItemColumnInfo.f20020f, createRow, false);
        }
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(LogUtilItem.class);
        long nativePtr = J0.getNativePtr();
        LogUtilItemColumnInfo logUtilItemColumnInfo = (LogUtilItemColumnInfo) realm.mo3059L().m2854g(LogUtilItem.class);
        while (it.hasNext()) {
            LogUtilItem logUtilItem = (LogUtilItem) it.next();
            if (!map.containsKey(logUtilItem)) {
                if ((logUtilItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(logUtilItem)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) logUtilItem;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(logUtilItem, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                long createRow = OsObject.createRow(J0);
                map.put(logUtilItem, Long.valueOf(createRow));
                Date realmGet$date = logUtilItem.realmGet$date();
                if (realmGet$date != null) {
                    Table.nativeSetTimestamp(nativePtr, logUtilItemColumnInfo.f20019e, createRow, realmGet$date.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, logUtilItemColumnInfo.f20019e, createRow, false);
                }
                String realmGet$logText = logUtilItem.realmGet$logText();
                if (realmGet$logText != null) {
                    Table.nativeSetString(nativePtr, logUtilItemColumnInfo.f20020f, createRow, realmGet$logText, false);
                } else {
                    Table.nativeSetNull(nativePtr, logUtilItemColumnInfo.f20020f, createRow, false);
                }
            }
        }
    }

    private static com_tmobile_services_nameid_model_LogUtilItemRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.f19804n.get();
        realmObjectContext.m3137g(baseRealm, row, baseRealm.mo3059L().m2854g(LogUtilItem.class), false, Collections.emptyList());
        com_tmobile_services_nameid_model_LogUtilItemRealmProxy com_tmobile_services_nameid_model_logutilitemrealmproxy = new com_tmobile_services_nameid_model_LogUtilItemRealmProxy();
        realmObjectContext.m3143a();
        return com_tmobile_services_nameid_model_logutilitemrealmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_tmobile_services_nameid_model_LogUtilItemRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_tmobile_services_nameid_model_LogUtilItemRealmProxy com_tmobile_services_nameid_model_logutilitemrealmproxy = (com_tmobile_services_nameid_model_LogUtilItemRealmProxy) obj;
        BaseRealm d = this.proxyState.m3085d();
        BaseRealm d2 = com_tmobile_services_nameid_model_logutilitemrealmproxy.proxyState.m3085d();
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
        String t2 = com_tmobile_services_nameid_model_logutilitemrealmproxy.proxyState.m3084e().getTable().m2633t();
        if (t != null) {
            if (!t.equals(t2)) {
                return false;
            }
        } else if (t2 != null) {
            return false;
        }
        return this.proxyState.m3084e().getObjectKey() == com_tmobile_services_nameid_model_logutilitemrealmproxy.proxyState.m3084e().getObjectKey();
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
            this.columnInfo = (LogUtilItemColumnInfo) realmObjectContext.m3141c();
            ProxyState<LogUtilItem> proxyState = new ProxyState<>(this);
            this.proxyState = proxyState;
            proxyState.m3073p(realmObjectContext.m3139e());
            this.proxyState.m3072q(realmObjectContext.m3138f());
            this.proxyState.m3076m(realmObjectContext.m3142b());
            this.proxyState.m3074o(realmObjectContext.m3140d());
        }
    }

    @Override // com.tmobile.services.nameid.model.LogUtilItem, io.realm.com_tmobile_services_nameid_model_LogUtilItemRealmProxyInterface
    public Date realmGet$date() {
        this.proxyState.m3085d().m3151h();
        if (this.proxyState.m3084e().isNull(this.columnInfo.f20019e)) {
            return null;
        }
        return this.proxyState.m3084e().getDate(this.columnInfo.f20019e);
    }

    @Override // com.tmobile.services.nameid.model.LogUtilItem, io.realm.com_tmobile_services_nameid_model_LogUtilItemRealmProxyInterface
    public String realmGet$logText() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20020f);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.tmobile.services.nameid.model.LogUtilItem, io.realm.com_tmobile_services_nameid_model_LogUtilItemRealmProxyInterface
    public void realmSet$date(Date date) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (date == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20019e);
            } else {
                this.proxyState.m3084e().setDate(this.columnInfo.f20019e, date);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (date == null) {
                e.getTable().m2659K(this.columnInfo.f20019e, e.getObjectKey(), true);
            } else {
                e.getTable().m2661I(this.columnInfo.f20019e, e.getObjectKey(), date, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.LogUtilItem, io.realm.com_tmobile_services_nameid_model_LogUtilItemRealmProxyInterface
    public void realmSet$logText(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20020f);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f20020f, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f20020f, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f20020f, e.getObjectKey(), str, true);
            }
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("LogUtilItem = proxy[");
        sb.append("{date:");
        String str = "null";
        sb.append(realmGet$date() != null ? realmGet$date() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{logText:");
        if (realmGet$logText() != null) {
            str = realmGet$logText();
        }
        sb.append(str);
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
