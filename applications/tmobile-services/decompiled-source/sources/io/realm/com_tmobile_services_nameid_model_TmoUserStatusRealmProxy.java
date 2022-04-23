package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.tmobile.services.nameid.model.TmoUserStatus;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_TmoUserStatusRealmProxy.class */
public class com_tmobile_services_nameid_model_TmoUserStatusRealmProxy extends TmoUserStatus implements RealmObjectProxy, AbstractC2164x6fb2031c {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private TmoUserStatusColumnInfo columnInfo;
    private ProxyState<TmoUserStatus> proxyState;

    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_TmoUserStatusRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_TmoUserStatusRealmProxy$TmoUserStatusColumnInfo.class */
    public static final class TmoUserStatusColumnInfo extends ColumnInfo {

        /* renamed from: e */
        long f20033e;

        /* renamed from: f */
        long f20034f;

        /* renamed from: g */
        long f20035g;

        /* renamed from: h */
        long f20036h;

        /* renamed from: i */
        long f20037i;

        /* renamed from: j */
        long f20038j;

        /* renamed from: k */
        long f20039k;

        /* renamed from: l */
        long f20040l;

        /* renamed from: m */
        long f20041m;

        /* renamed from: n */
        long f20042n;

        /* renamed from: o */
        long f20043o;

        /* renamed from: p */
        long f20044p;

        /* renamed from: q */
        long f20045q;

        /* renamed from: r */
        long f20046r;

        /* renamed from: s */
        long f20047s;

        /* renamed from: t */
        long f20048t;

        /* renamed from: u */
        long f20049u;

        /* renamed from: v */
        long f20050v;

        TmoUserStatusColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(18);
            OsObjectSchemaInfo b = osSchemaInfo.m2701b("TmoUserStatus");
            this.f20033e = m2833a("scamId", "scamId", b);
            this.f20034f = m2833a("typeLetter", "typeLetter", b);
            this.f20035g = m2833a("statusText", "statusText", b);
            this.f20036h = m2833a("eligible", "eligible", b);
            this.f20037i = m2833a("daysLeft", "daysLeft", b);
            this.f20038j = m2833a("updatedAt", "updatedAt", b);
            this.f20039k = m2833a("errorText", "errorText", b);
            this.f20040l = m2833a("scamBlock", "scamBlock", b);
            this.f20041m = m2833a("pending", "pending", b);
            this.f20042n = m2833a("pendingCheckError", "pendingCheckError", b);
            this.f20043o = m2833a("bundled", "bundled", b);
            this.f20044p = m2833a("novm", "novm", b);
            this.f20045q = m2833a("CNAMON", "CNAMON", b);
            this.f20046r = m2833a("CNAMEligible", "CNAMEligible", b);
            this.f20047s = m2833a("VMTTOFF", "VMTTOFF", b);
            this.f20048t = m2833a("customerType", "customerType", b);
            this.f20049u = m2833a("pnb", "pnb", b);
            this.f20050v = m2833a("vmtt", "vmtt", b);
        }

        @Override // io.realm.internal.ColumnInfo
        /* renamed from: b */
        protected final void mo2536b(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            TmoUserStatusColumnInfo tmoUserStatusColumnInfo = (TmoUserStatusColumnInfo) columnInfo;
            TmoUserStatusColumnInfo tmoUserStatusColumnInfo2 = (TmoUserStatusColumnInfo) columnInfo2;
            tmoUserStatusColumnInfo2.f20033e = tmoUserStatusColumnInfo.f20033e;
            tmoUserStatusColumnInfo2.f20034f = tmoUserStatusColumnInfo.f20034f;
            tmoUserStatusColumnInfo2.f20035g = tmoUserStatusColumnInfo.f20035g;
            tmoUserStatusColumnInfo2.f20036h = tmoUserStatusColumnInfo.f20036h;
            tmoUserStatusColumnInfo2.f20037i = tmoUserStatusColumnInfo.f20037i;
            tmoUserStatusColumnInfo2.f20038j = tmoUserStatusColumnInfo.f20038j;
            tmoUserStatusColumnInfo2.f20039k = tmoUserStatusColumnInfo.f20039k;
            tmoUserStatusColumnInfo2.f20040l = tmoUserStatusColumnInfo.f20040l;
            tmoUserStatusColumnInfo2.f20041m = tmoUserStatusColumnInfo.f20041m;
            tmoUserStatusColumnInfo2.f20042n = tmoUserStatusColumnInfo.f20042n;
            tmoUserStatusColumnInfo2.f20043o = tmoUserStatusColumnInfo.f20043o;
            tmoUserStatusColumnInfo2.f20044p = tmoUserStatusColumnInfo.f20044p;
            tmoUserStatusColumnInfo2.f20045q = tmoUserStatusColumnInfo.f20045q;
            tmoUserStatusColumnInfo2.f20046r = tmoUserStatusColumnInfo.f20046r;
            tmoUserStatusColumnInfo2.f20047s = tmoUserStatusColumnInfo.f20047s;
            tmoUserStatusColumnInfo2.f20048t = tmoUserStatusColumnInfo.f20048t;
            tmoUserStatusColumnInfo2.f20049u = tmoUserStatusColumnInfo.f20049u;
            tmoUserStatusColumnInfo2.f20050v = tmoUserStatusColumnInfo.f20050v;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_tmobile_services_nameid_model_TmoUserStatusRealmProxy() {
        this.proxyState.m3075n();
    }

    public static TmoUserStatus copy(Realm realm, TmoUserStatusColumnInfo tmoUserStatusColumnInfo, TmoUserStatus tmoUserStatus, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(tmoUserStatus);
        if (realmObjectProxy != null) {
            return (TmoUserStatus) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(TmoUserStatus.class), set);
        osObjectBuilder.m2554a(tmoUserStatusColumnInfo.f20033e, tmoUserStatus.realmGet$scamId());
        osObjectBuilder.m2550h(tmoUserStatusColumnInfo.f20034f, tmoUserStatus.realmGet$typeLetter());
        osObjectBuilder.m2550h(tmoUserStatusColumnInfo.f20035g, tmoUserStatus.realmGet$statusText());
        osObjectBuilder.m2554a(tmoUserStatusColumnInfo.f20036h, Boolean.valueOf(tmoUserStatus.realmGet$eligible()));
        osObjectBuilder.m2552d(tmoUserStatusColumnInfo.f20037i, Integer.valueOf(tmoUserStatus.realmGet$daysLeft()));
        osObjectBuilder.m2553b(tmoUserStatusColumnInfo.f20038j, tmoUserStatus.realmGet$updatedAt());
        osObjectBuilder.m2550h(tmoUserStatusColumnInfo.f20039k, tmoUserStatus.realmGet$errorText());
        osObjectBuilder.m2554a(tmoUserStatusColumnInfo.f20040l, tmoUserStatus.realmGet$scamBlock());
        osObjectBuilder.m2554a(tmoUserStatusColumnInfo.f20041m, Boolean.valueOf(tmoUserStatus.realmGet$pending()));
        osObjectBuilder.m2554a(tmoUserStatusColumnInfo.f20042n, Boolean.valueOf(tmoUserStatus.realmGet$pendingCheckError()));
        osObjectBuilder.m2554a(tmoUserStatusColumnInfo.f20043o, Boolean.valueOf(tmoUserStatus.realmGet$bundled()));
        osObjectBuilder.m2554a(tmoUserStatusColumnInfo.f20044p, Boolean.valueOf(tmoUserStatus.realmGet$novm()));
        osObjectBuilder.m2554a(tmoUserStatusColumnInfo.f20045q, Boolean.valueOf(tmoUserStatus.realmGet$CNAMON()));
        osObjectBuilder.m2554a(tmoUserStatusColumnInfo.f20046r, Boolean.valueOf(tmoUserStatus.realmGet$CNAMEligible()));
        osObjectBuilder.m2554a(tmoUserStatusColumnInfo.f20047s, Boolean.valueOf(tmoUserStatus.realmGet$VMTTOFF()));
        osObjectBuilder.m2550h(tmoUserStatusColumnInfo.f20048t, tmoUserStatus.realmGet$customerType());
        osObjectBuilder.m2550h(tmoUserStatusColumnInfo.f20049u, tmoUserStatus.realmGet$pnb());
        osObjectBuilder.m2550h(tmoUserStatusColumnInfo.f20050v, tmoUserStatus.realmGet$vmtt());
        com_tmobile_services_nameid_model_TmoUserStatusRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.m2549i());
        map.put(tmoUserStatus, newProxyInstance);
        return newProxyInstance;
    }

    public static TmoUserStatus copyOrUpdate(Realm realm, TmoUserStatusColumnInfo tmoUserStatusColumnInfo, TmoUserStatus tmoUserStatus, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if ((tmoUserStatus instanceof RealmObjectProxy) && !RealmObject.isFrozen(tmoUserStatus)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) tmoUserStatus;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null) {
                BaseRealm d = realmObjectProxy.realmGet$proxyState().m3085d();
                if (d.f19806g != realm.f19806g) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (d.m3163K().equals(realm.m3163K())) {
                    return tmoUserStatus;
                }
            }
        }
        BaseRealm.f19804n.get();
        RealmObjectProxy realmObjectProxy2 = map.get(tmoUserStatus);
        return realmObjectProxy2 != null ? (TmoUserStatus) realmObjectProxy2 : copy(realm, tmoUserStatusColumnInfo, tmoUserStatus, z, map, set);
    }

    public static TmoUserStatusColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new TmoUserStatusColumnInfo(osSchemaInfo);
    }

    public static TmoUserStatus createDetachedCopy(TmoUserStatus tmoUserStatus, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        TmoUserStatus tmoUserStatus2;
        if (i > i2 || tmoUserStatus == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(tmoUserStatus);
        if (cacheData == null) {
            TmoUserStatus tmoUserStatus3 = new TmoUserStatus();
            map.put(tmoUserStatus, new RealmObjectProxy.CacheData<>(i, tmoUserStatus3));
            tmoUserStatus2 = tmoUserStatus3;
        } else if (i >= cacheData.f20174a) {
            return (TmoUserStatus) cacheData.f20175b;
        } else {
            tmoUserStatus2 = (TmoUserStatus) cacheData.f20175b;
            cacheData.f20174a = i;
        }
        tmoUserStatus2.realmSet$scamId(tmoUserStatus.realmGet$scamId());
        tmoUserStatus2.realmSet$typeLetter(tmoUserStatus.realmGet$typeLetter());
        tmoUserStatus2.realmSet$statusText(tmoUserStatus.realmGet$statusText());
        tmoUserStatus2.realmSet$eligible(tmoUserStatus.realmGet$eligible());
        tmoUserStatus2.realmSet$daysLeft(tmoUserStatus.realmGet$daysLeft());
        tmoUserStatus2.realmSet$updatedAt(tmoUserStatus.realmGet$updatedAt());
        tmoUserStatus2.realmSet$errorText(tmoUserStatus.realmGet$errorText());
        tmoUserStatus2.realmSet$scamBlock(tmoUserStatus.realmGet$scamBlock());
        tmoUserStatus2.realmSet$pending(tmoUserStatus.realmGet$pending());
        tmoUserStatus2.realmSet$pendingCheckError(tmoUserStatus.realmGet$pendingCheckError());
        tmoUserStatus2.realmSet$bundled(tmoUserStatus.realmGet$bundled());
        tmoUserStatus2.realmSet$novm(tmoUserStatus.realmGet$novm());
        tmoUserStatus2.realmSet$CNAMON(tmoUserStatus.realmGet$CNAMON());
        tmoUserStatus2.realmSet$CNAMEligible(tmoUserStatus.realmGet$CNAMEligible());
        tmoUserStatus2.realmSet$VMTTOFF(tmoUserStatus.realmGet$VMTTOFF());
        tmoUserStatus2.realmSet$customerType(tmoUserStatus.realmGet$customerType());
        tmoUserStatus2.realmSet$pnb(tmoUserStatus.realmGet$pnb());
        tmoUserStatus2.realmSet$vmtt(tmoUserStatus.realmGet$vmtt());
        return tmoUserStatus2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder("TmoUserStatus", 18, 0);
        builder.m2747a("scamId", RealmFieldType.BOOLEAN, false, false, false);
        builder.m2747a("typeLetter", RealmFieldType.STRING, false, false, false);
        builder.m2747a("statusText", RealmFieldType.STRING, false, false, false);
        builder.m2747a("eligible", RealmFieldType.BOOLEAN, false, false, true);
        builder.m2747a("daysLeft", RealmFieldType.INTEGER, false, false, true);
        builder.m2747a("updatedAt", RealmFieldType.DATE, false, false, false);
        builder.m2747a("errorText", RealmFieldType.STRING, false, false, false);
        builder.m2747a("scamBlock", RealmFieldType.BOOLEAN, false, false, false);
        builder.m2747a("pending", RealmFieldType.BOOLEAN, false, false, true);
        builder.m2747a("pendingCheckError", RealmFieldType.BOOLEAN, false, false, true);
        builder.m2747a("bundled", RealmFieldType.BOOLEAN, false, false, true);
        builder.m2747a("novm", RealmFieldType.BOOLEAN, false, false, true);
        builder.m2747a("CNAMON", RealmFieldType.BOOLEAN, false, false, true);
        builder.m2747a("CNAMEligible", RealmFieldType.BOOLEAN, false, false, true);
        builder.m2747a("VMTTOFF", RealmFieldType.BOOLEAN, false, false, true);
        builder.m2747a("customerType", RealmFieldType.STRING, false, false, false);
        builder.m2747a("pnb", RealmFieldType.STRING, false, false, false);
        builder.m2747a("vmtt", RealmFieldType.STRING, false, false, false);
        return builder.m2746b();
    }

    public static TmoUserStatus createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        TmoUserStatus tmoUserStatus = (TmoUserStatus) realm.m3069B0(TmoUserStatus.class, true, Collections.emptyList());
        if (jSONObject.has("scamId")) {
            if (jSONObject.isNull("scamId")) {
                tmoUserStatus.realmSet$scamId(null);
            } else {
                tmoUserStatus.realmSet$scamId(Boolean.valueOf(jSONObject.getBoolean("scamId")));
            }
        }
        if (jSONObject.has("typeLetter")) {
            if (jSONObject.isNull("typeLetter")) {
                tmoUserStatus.realmSet$typeLetter(null);
            } else {
                tmoUserStatus.realmSet$typeLetter(jSONObject.getString("typeLetter"));
            }
        }
        if (jSONObject.has("statusText")) {
            if (jSONObject.isNull("statusText")) {
                tmoUserStatus.realmSet$statusText(null);
            } else {
                tmoUserStatus.realmSet$statusText(jSONObject.getString("statusText"));
            }
        }
        if (jSONObject.has("eligible")) {
            if (!jSONObject.isNull("eligible")) {
                tmoUserStatus.realmSet$eligible(jSONObject.getBoolean("eligible"));
            } else {
                throw new IllegalArgumentException("Trying to set non-nullable field 'eligible' to null.");
            }
        }
        if (jSONObject.has("daysLeft")) {
            if (!jSONObject.isNull("daysLeft")) {
                tmoUserStatus.realmSet$daysLeft(jSONObject.getInt("daysLeft"));
            } else {
                throw new IllegalArgumentException("Trying to set non-nullable field 'daysLeft' to null.");
            }
        }
        if (jSONObject.has("updatedAt")) {
            if (jSONObject.isNull("updatedAt")) {
                tmoUserStatus.realmSet$updatedAt(null);
            } else {
                Object obj = jSONObject.get("updatedAt");
                if (obj instanceof String) {
                    tmoUserStatus.realmSet$updatedAt(JsonUtils.m2586a((String) obj));
                } else {
                    tmoUserStatus.realmSet$updatedAt(new Date(jSONObject.getLong("updatedAt")));
                }
            }
        }
        if (jSONObject.has("errorText")) {
            if (jSONObject.isNull("errorText")) {
                tmoUserStatus.realmSet$errorText(null);
            } else {
                tmoUserStatus.realmSet$errorText(jSONObject.getString("errorText"));
            }
        }
        if (jSONObject.has("scamBlock")) {
            if (jSONObject.isNull("scamBlock")) {
                tmoUserStatus.realmSet$scamBlock(null);
            } else {
                tmoUserStatus.realmSet$scamBlock(Boolean.valueOf(jSONObject.getBoolean("scamBlock")));
            }
        }
        if (jSONObject.has("pending")) {
            if (!jSONObject.isNull("pending")) {
                tmoUserStatus.realmSet$pending(jSONObject.getBoolean("pending"));
            } else {
                throw new IllegalArgumentException("Trying to set non-nullable field 'pending' to null.");
            }
        }
        if (jSONObject.has("pendingCheckError")) {
            if (!jSONObject.isNull("pendingCheckError")) {
                tmoUserStatus.realmSet$pendingCheckError(jSONObject.getBoolean("pendingCheckError"));
            } else {
                throw new IllegalArgumentException("Trying to set non-nullable field 'pendingCheckError' to null.");
            }
        }
        if (jSONObject.has("bundled")) {
            if (!jSONObject.isNull("bundled")) {
                tmoUserStatus.realmSet$bundled(jSONObject.getBoolean("bundled"));
            } else {
                throw new IllegalArgumentException("Trying to set non-nullable field 'bundled' to null.");
            }
        }
        if (jSONObject.has("novm")) {
            if (!jSONObject.isNull("novm")) {
                tmoUserStatus.realmSet$novm(jSONObject.getBoolean("novm"));
            } else {
                throw new IllegalArgumentException("Trying to set non-nullable field 'novm' to null.");
            }
        }
        if (jSONObject.has("CNAMON")) {
            if (!jSONObject.isNull("CNAMON")) {
                tmoUserStatus.realmSet$CNAMON(jSONObject.getBoolean("CNAMON"));
            } else {
                throw new IllegalArgumentException("Trying to set non-nullable field 'CNAMON' to null.");
            }
        }
        if (jSONObject.has("CNAMEligible")) {
            if (!jSONObject.isNull("CNAMEligible")) {
                tmoUserStatus.realmSet$CNAMEligible(jSONObject.getBoolean("CNAMEligible"));
            } else {
                throw new IllegalArgumentException("Trying to set non-nullable field 'CNAMEligible' to null.");
            }
        }
        if (jSONObject.has("VMTTOFF")) {
            if (!jSONObject.isNull("VMTTOFF")) {
                tmoUserStatus.realmSet$VMTTOFF(jSONObject.getBoolean("VMTTOFF"));
            } else {
                throw new IllegalArgumentException("Trying to set non-nullable field 'VMTTOFF' to null.");
            }
        }
        if (jSONObject.has("customerType")) {
            if (jSONObject.isNull("customerType")) {
                tmoUserStatus.realmSet$customerType(null);
            } else {
                tmoUserStatus.realmSet$customerType(jSONObject.getString("customerType"));
            }
        }
        if (jSONObject.has("pnb")) {
            if (jSONObject.isNull("pnb")) {
                tmoUserStatus.realmSet$pnb(null);
            } else {
                tmoUserStatus.realmSet$pnb(jSONObject.getString("pnb"));
            }
        }
        if (jSONObject.has("vmtt")) {
            if (jSONObject.isNull("vmtt")) {
                tmoUserStatus.realmSet$vmtt(null);
            } else {
                tmoUserStatus.realmSet$vmtt(jSONObject.getString("vmtt"));
            }
        }
        return tmoUserStatus;
    }

    @TargetApi(11)
    public static TmoUserStatus createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        TmoUserStatus tmoUserStatus = new TmoUserStatus();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("scamId")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tmoUserStatus.realmSet$scamId(Boolean.valueOf(jsonReader.nextBoolean()));
                } else {
                    jsonReader.skipValue();
                    tmoUserStatus.realmSet$scamId(null);
                }
            } else if (nextName.equals("typeLetter")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tmoUserStatus.realmSet$typeLetter(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    tmoUserStatus.realmSet$typeLetter(null);
                }
            } else if (nextName.equals("statusText")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tmoUserStatus.realmSet$statusText(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    tmoUserStatus.realmSet$statusText(null);
                }
            } else if (nextName.equals("eligible")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tmoUserStatus.realmSet$eligible(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'eligible' to null.");
                }
            } else if (nextName.equals("daysLeft")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tmoUserStatus.realmSet$daysLeft(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'daysLeft' to null.");
                }
            } else if (nextName.equals("updatedAt")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    tmoUserStatus.realmSet$updatedAt(null);
                } else if (jsonReader.peek() == JsonToken.NUMBER) {
                    long nextLong = jsonReader.nextLong();
                    if (nextLong > -1) {
                        tmoUserStatus.realmSet$updatedAt(new Date(nextLong));
                    }
                } else {
                    tmoUserStatus.realmSet$updatedAt(JsonUtils.m2586a(jsonReader.nextString()));
                }
            } else if (nextName.equals("errorText")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tmoUserStatus.realmSet$errorText(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    tmoUserStatus.realmSet$errorText(null);
                }
            } else if (nextName.equals("scamBlock")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tmoUserStatus.realmSet$scamBlock(Boolean.valueOf(jsonReader.nextBoolean()));
                } else {
                    jsonReader.skipValue();
                    tmoUserStatus.realmSet$scamBlock(null);
                }
            } else if (nextName.equals("pending")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tmoUserStatus.realmSet$pending(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'pending' to null.");
                }
            } else if (nextName.equals("pendingCheckError")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tmoUserStatus.realmSet$pendingCheckError(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'pendingCheckError' to null.");
                }
            } else if (nextName.equals("bundled")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tmoUserStatus.realmSet$bundled(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'bundled' to null.");
                }
            } else if (nextName.equals("novm")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tmoUserStatus.realmSet$novm(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'novm' to null.");
                }
            } else if (nextName.equals("CNAMON")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tmoUserStatus.realmSet$CNAMON(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'CNAMON' to null.");
                }
            } else if (nextName.equals("CNAMEligible")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tmoUserStatus.realmSet$CNAMEligible(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'CNAMEligible' to null.");
                }
            } else if (nextName.equals("VMTTOFF")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tmoUserStatus.realmSet$VMTTOFF(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'VMTTOFF' to null.");
                }
            } else if (nextName.equals("customerType")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tmoUserStatus.realmSet$customerType(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    tmoUserStatus.realmSet$customerType(null);
                }
            } else if (nextName.equals("pnb")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    tmoUserStatus.realmSet$pnb(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    tmoUserStatus.realmSet$pnb(null);
                }
            } else if (!nextName.equals("vmtt")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                tmoUserStatus.realmSet$vmtt(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                tmoUserStatus.realmSet$vmtt(null);
            }
        }
        jsonReader.endObject();
        return (TmoUserStatus) realm.m3046u0(tmoUserStatus, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "TmoUserStatus";
    }

    public static long insert(Realm realm, TmoUserStatus tmoUserStatus, Map<RealmModel, Long> map) {
        if ((tmoUserStatus instanceof RealmObjectProxy) && !RealmObject.isFrozen(tmoUserStatus)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) tmoUserStatus;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                return realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey();
            }
        }
        Table J0 = realm.m3061J0(TmoUserStatus.class);
        long nativePtr = J0.getNativePtr();
        TmoUserStatusColumnInfo tmoUserStatusColumnInfo = (TmoUserStatusColumnInfo) realm.mo3059L().m2854g(TmoUserStatus.class);
        long createRow = OsObject.createRow(J0);
        map.put(tmoUserStatus, Long.valueOf(createRow));
        Boolean realmGet$scamId = tmoUserStatus.realmGet$scamId();
        if (realmGet$scamId != null) {
            Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20033e, createRow, realmGet$scamId.booleanValue(), false);
        }
        String realmGet$typeLetter = tmoUserStatus.realmGet$typeLetter();
        if (realmGet$typeLetter != null) {
            Table.nativeSetString(nativePtr, tmoUserStatusColumnInfo.f20034f, createRow, realmGet$typeLetter, false);
        }
        String realmGet$statusText = tmoUserStatus.realmGet$statusText();
        if (realmGet$statusText != null) {
            Table.nativeSetString(nativePtr, tmoUserStatusColumnInfo.f20035g, createRow, realmGet$statusText, false);
        }
        Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20036h, createRow, tmoUserStatus.realmGet$eligible(), false);
        Table.nativeSetLong(nativePtr, tmoUserStatusColumnInfo.f20037i, createRow, tmoUserStatus.realmGet$daysLeft(), false);
        Date realmGet$updatedAt = tmoUserStatus.realmGet$updatedAt();
        if (realmGet$updatedAt != null) {
            Table.nativeSetTimestamp(nativePtr, tmoUserStatusColumnInfo.f20038j, createRow, realmGet$updatedAt.getTime(), false);
        }
        String realmGet$errorText = tmoUserStatus.realmGet$errorText();
        if (realmGet$errorText != null) {
            Table.nativeSetString(nativePtr, tmoUserStatusColumnInfo.f20039k, createRow, realmGet$errorText, false);
        }
        Boolean realmGet$scamBlock = tmoUserStatus.realmGet$scamBlock();
        if (realmGet$scamBlock != null) {
            Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20040l, createRow, realmGet$scamBlock.booleanValue(), false);
        }
        Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20041m, createRow, tmoUserStatus.realmGet$pending(), false);
        Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20042n, createRow, tmoUserStatus.realmGet$pendingCheckError(), false);
        Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20043o, createRow, tmoUserStatus.realmGet$bundled(), false);
        Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20044p, createRow, tmoUserStatus.realmGet$novm(), false);
        Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20045q, createRow, tmoUserStatus.realmGet$CNAMON(), false);
        Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20046r, createRow, tmoUserStatus.realmGet$CNAMEligible(), false);
        Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20047s, createRow, tmoUserStatus.realmGet$VMTTOFF(), false);
        String realmGet$customerType = tmoUserStatus.realmGet$customerType();
        if (realmGet$customerType != null) {
            Table.nativeSetString(nativePtr, tmoUserStatusColumnInfo.f20048t, createRow, realmGet$customerType, false);
        }
        String realmGet$pnb = tmoUserStatus.realmGet$pnb();
        if (realmGet$pnb != null) {
            Table.nativeSetString(nativePtr, tmoUserStatusColumnInfo.f20049u, createRow, realmGet$pnb, false);
        }
        String realmGet$vmtt = tmoUserStatus.realmGet$vmtt();
        if (realmGet$vmtt != null) {
            Table.nativeSetString(nativePtr, tmoUserStatusColumnInfo.f20050v, createRow, realmGet$vmtt, false);
        }
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(TmoUserStatus.class);
        long nativePtr = J0.getNativePtr();
        TmoUserStatusColumnInfo tmoUserStatusColumnInfo = (TmoUserStatusColumnInfo) realm.mo3059L().m2854g(TmoUserStatus.class);
        while (it.hasNext()) {
            TmoUserStatus tmoUserStatus = (TmoUserStatus) it.next();
            if (!map.containsKey(tmoUserStatus)) {
                if ((tmoUserStatus instanceof RealmObjectProxy) && !RealmObject.isFrozen(tmoUserStatus)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) tmoUserStatus;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(tmoUserStatus, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                long createRow = OsObject.createRow(J0);
                map.put(tmoUserStatus, Long.valueOf(createRow));
                Boolean realmGet$scamId = tmoUserStatus.realmGet$scamId();
                if (realmGet$scamId != null) {
                    Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20033e, createRow, realmGet$scamId.booleanValue(), false);
                }
                String realmGet$typeLetter = tmoUserStatus.realmGet$typeLetter();
                if (realmGet$typeLetter != null) {
                    Table.nativeSetString(nativePtr, tmoUserStatusColumnInfo.f20034f, createRow, realmGet$typeLetter, false);
                }
                String realmGet$statusText = tmoUserStatus.realmGet$statusText();
                if (realmGet$statusText != null) {
                    Table.nativeSetString(nativePtr, tmoUserStatusColumnInfo.f20035g, createRow, realmGet$statusText, false);
                }
                Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20036h, createRow, tmoUserStatus.realmGet$eligible(), false);
                Table.nativeSetLong(nativePtr, tmoUserStatusColumnInfo.f20037i, createRow, tmoUserStatus.realmGet$daysLeft(), false);
                Date realmGet$updatedAt = tmoUserStatus.realmGet$updatedAt();
                if (realmGet$updatedAt != null) {
                    Table.nativeSetTimestamp(nativePtr, tmoUserStatusColumnInfo.f20038j, createRow, realmGet$updatedAt.getTime(), false);
                }
                String realmGet$errorText = tmoUserStatus.realmGet$errorText();
                if (realmGet$errorText != null) {
                    Table.nativeSetString(nativePtr, tmoUserStatusColumnInfo.f20039k, createRow, realmGet$errorText, false);
                }
                Boolean realmGet$scamBlock = tmoUserStatus.realmGet$scamBlock();
                if (realmGet$scamBlock != null) {
                    Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20040l, createRow, realmGet$scamBlock.booleanValue(), false);
                }
                Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20041m, createRow, tmoUserStatus.realmGet$pending(), false);
                Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20042n, createRow, tmoUserStatus.realmGet$pendingCheckError(), false);
                Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20043o, createRow, tmoUserStatus.realmGet$bundled(), false);
                Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20044p, createRow, tmoUserStatus.realmGet$novm(), false);
                Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20045q, createRow, tmoUserStatus.realmGet$CNAMON(), false);
                Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20046r, createRow, tmoUserStatus.realmGet$CNAMEligible(), false);
                Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20047s, createRow, tmoUserStatus.realmGet$VMTTOFF(), false);
                String realmGet$customerType = tmoUserStatus.realmGet$customerType();
                if (realmGet$customerType != null) {
                    Table.nativeSetString(nativePtr, tmoUserStatusColumnInfo.f20048t, createRow, realmGet$customerType, false);
                }
                String realmGet$pnb = tmoUserStatus.realmGet$pnb();
                if (realmGet$pnb != null) {
                    Table.nativeSetString(nativePtr, tmoUserStatusColumnInfo.f20049u, createRow, realmGet$pnb, false);
                }
                String realmGet$vmtt = tmoUserStatus.realmGet$vmtt();
                if (realmGet$vmtt != null) {
                    Table.nativeSetString(nativePtr, tmoUserStatusColumnInfo.f20050v, createRow, realmGet$vmtt, false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, TmoUserStatus tmoUserStatus, Map<RealmModel, Long> map) {
        if ((tmoUserStatus instanceof RealmObjectProxy) && !RealmObject.isFrozen(tmoUserStatus)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) tmoUserStatus;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                return realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey();
            }
        }
        Table J0 = realm.m3061J0(TmoUserStatus.class);
        long nativePtr = J0.getNativePtr();
        TmoUserStatusColumnInfo tmoUserStatusColumnInfo = (TmoUserStatusColumnInfo) realm.mo3059L().m2854g(TmoUserStatus.class);
        long createRow = OsObject.createRow(J0);
        map.put(tmoUserStatus, Long.valueOf(createRow));
        Boolean realmGet$scamId = tmoUserStatus.realmGet$scamId();
        if (realmGet$scamId != null) {
            Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20033e, createRow, realmGet$scamId.booleanValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, tmoUserStatusColumnInfo.f20033e, createRow, false);
        }
        String realmGet$typeLetter = tmoUserStatus.realmGet$typeLetter();
        if (realmGet$typeLetter != null) {
            Table.nativeSetString(nativePtr, tmoUserStatusColumnInfo.f20034f, createRow, realmGet$typeLetter, false);
        } else {
            Table.nativeSetNull(nativePtr, tmoUserStatusColumnInfo.f20034f, createRow, false);
        }
        String realmGet$statusText = tmoUserStatus.realmGet$statusText();
        if (realmGet$statusText != null) {
            Table.nativeSetString(nativePtr, tmoUserStatusColumnInfo.f20035g, createRow, realmGet$statusText, false);
        } else {
            Table.nativeSetNull(nativePtr, tmoUserStatusColumnInfo.f20035g, createRow, false);
        }
        Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20036h, createRow, tmoUserStatus.realmGet$eligible(), false);
        Table.nativeSetLong(nativePtr, tmoUserStatusColumnInfo.f20037i, createRow, tmoUserStatus.realmGet$daysLeft(), false);
        Date realmGet$updatedAt = tmoUserStatus.realmGet$updatedAt();
        if (realmGet$updatedAt != null) {
            Table.nativeSetTimestamp(nativePtr, tmoUserStatusColumnInfo.f20038j, createRow, realmGet$updatedAt.getTime(), false);
        } else {
            Table.nativeSetNull(nativePtr, tmoUserStatusColumnInfo.f20038j, createRow, false);
        }
        String realmGet$errorText = tmoUserStatus.realmGet$errorText();
        if (realmGet$errorText != null) {
            Table.nativeSetString(nativePtr, tmoUserStatusColumnInfo.f20039k, createRow, realmGet$errorText, false);
        } else {
            Table.nativeSetNull(nativePtr, tmoUserStatusColumnInfo.f20039k, createRow, false);
        }
        Boolean realmGet$scamBlock = tmoUserStatus.realmGet$scamBlock();
        if (realmGet$scamBlock != null) {
            Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20040l, createRow, realmGet$scamBlock.booleanValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, tmoUserStatusColumnInfo.f20040l, createRow, false);
        }
        Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20041m, createRow, tmoUserStatus.realmGet$pending(), false);
        Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20042n, createRow, tmoUserStatus.realmGet$pendingCheckError(), false);
        Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20043o, createRow, tmoUserStatus.realmGet$bundled(), false);
        Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20044p, createRow, tmoUserStatus.realmGet$novm(), false);
        Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20045q, createRow, tmoUserStatus.realmGet$CNAMON(), false);
        Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20046r, createRow, tmoUserStatus.realmGet$CNAMEligible(), false);
        Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20047s, createRow, tmoUserStatus.realmGet$VMTTOFF(), false);
        String realmGet$customerType = tmoUserStatus.realmGet$customerType();
        if (realmGet$customerType != null) {
            Table.nativeSetString(nativePtr, tmoUserStatusColumnInfo.f20048t, createRow, realmGet$customerType, false);
        } else {
            Table.nativeSetNull(nativePtr, tmoUserStatusColumnInfo.f20048t, createRow, false);
        }
        String realmGet$pnb = tmoUserStatus.realmGet$pnb();
        if (realmGet$pnb != null) {
            Table.nativeSetString(nativePtr, tmoUserStatusColumnInfo.f20049u, createRow, realmGet$pnb, false);
        } else {
            Table.nativeSetNull(nativePtr, tmoUserStatusColumnInfo.f20049u, createRow, false);
        }
        String realmGet$vmtt = tmoUserStatus.realmGet$vmtt();
        if (realmGet$vmtt != null) {
            Table.nativeSetString(nativePtr, tmoUserStatusColumnInfo.f20050v, createRow, realmGet$vmtt, false);
        } else {
            Table.nativeSetNull(nativePtr, tmoUserStatusColumnInfo.f20050v, createRow, false);
        }
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(TmoUserStatus.class);
        long nativePtr = J0.getNativePtr();
        TmoUserStatusColumnInfo tmoUserStatusColumnInfo = (TmoUserStatusColumnInfo) realm.mo3059L().m2854g(TmoUserStatus.class);
        while (it.hasNext()) {
            TmoUserStatus tmoUserStatus = (TmoUserStatus) it.next();
            if (!map.containsKey(tmoUserStatus)) {
                if ((tmoUserStatus instanceof RealmObjectProxy) && !RealmObject.isFrozen(tmoUserStatus)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) tmoUserStatus;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(tmoUserStatus, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                long createRow = OsObject.createRow(J0);
                map.put(tmoUserStatus, Long.valueOf(createRow));
                Boolean realmGet$scamId = tmoUserStatus.realmGet$scamId();
                if (realmGet$scamId != null) {
                    Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20033e, createRow, realmGet$scamId.booleanValue(), false);
                } else {
                    Table.nativeSetNull(nativePtr, tmoUserStatusColumnInfo.f20033e, createRow, false);
                }
                String realmGet$typeLetter = tmoUserStatus.realmGet$typeLetter();
                if (realmGet$typeLetter != null) {
                    Table.nativeSetString(nativePtr, tmoUserStatusColumnInfo.f20034f, createRow, realmGet$typeLetter, false);
                } else {
                    Table.nativeSetNull(nativePtr, tmoUserStatusColumnInfo.f20034f, createRow, false);
                }
                String realmGet$statusText = tmoUserStatus.realmGet$statusText();
                if (realmGet$statusText != null) {
                    Table.nativeSetString(nativePtr, tmoUserStatusColumnInfo.f20035g, createRow, realmGet$statusText, false);
                } else {
                    Table.nativeSetNull(nativePtr, tmoUserStatusColumnInfo.f20035g, createRow, false);
                }
                Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20036h, createRow, tmoUserStatus.realmGet$eligible(), false);
                Table.nativeSetLong(nativePtr, tmoUserStatusColumnInfo.f20037i, createRow, tmoUserStatus.realmGet$daysLeft(), false);
                Date realmGet$updatedAt = tmoUserStatus.realmGet$updatedAt();
                if (realmGet$updatedAt != null) {
                    Table.nativeSetTimestamp(nativePtr, tmoUserStatusColumnInfo.f20038j, createRow, realmGet$updatedAt.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, tmoUserStatusColumnInfo.f20038j, createRow, false);
                }
                String realmGet$errorText = tmoUserStatus.realmGet$errorText();
                if (realmGet$errorText != null) {
                    Table.nativeSetString(nativePtr, tmoUserStatusColumnInfo.f20039k, createRow, realmGet$errorText, false);
                } else {
                    Table.nativeSetNull(nativePtr, tmoUserStatusColumnInfo.f20039k, createRow, false);
                }
                Boolean realmGet$scamBlock = tmoUserStatus.realmGet$scamBlock();
                if (realmGet$scamBlock != null) {
                    Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20040l, createRow, realmGet$scamBlock.booleanValue(), false);
                } else {
                    Table.nativeSetNull(nativePtr, tmoUserStatusColumnInfo.f20040l, createRow, false);
                }
                Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20041m, createRow, tmoUserStatus.realmGet$pending(), false);
                Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20042n, createRow, tmoUserStatus.realmGet$pendingCheckError(), false);
                Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20043o, createRow, tmoUserStatus.realmGet$bundled(), false);
                Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20044p, createRow, tmoUserStatus.realmGet$novm(), false);
                Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20045q, createRow, tmoUserStatus.realmGet$CNAMON(), false);
                Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20046r, createRow, tmoUserStatus.realmGet$CNAMEligible(), false);
                Table.nativeSetBoolean(nativePtr, tmoUserStatusColumnInfo.f20047s, createRow, tmoUserStatus.realmGet$VMTTOFF(), false);
                String realmGet$customerType = tmoUserStatus.realmGet$customerType();
                if (realmGet$customerType != null) {
                    Table.nativeSetString(nativePtr, tmoUserStatusColumnInfo.f20048t, createRow, realmGet$customerType, false);
                } else {
                    Table.nativeSetNull(nativePtr, tmoUserStatusColumnInfo.f20048t, createRow, false);
                }
                String realmGet$pnb = tmoUserStatus.realmGet$pnb();
                if (realmGet$pnb != null) {
                    Table.nativeSetString(nativePtr, tmoUserStatusColumnInfo.f20049u, createRow, realmGet$pnb, false);
                } else {
                    Table.nativeSetNull(nativePtr, tmoUserStatusColumnInfo.f20049u, createRow, false);
                }
                String realmGet$vmtt = tmoUserStatus.realmGet$vmtt();
                if (realmGet$vmtt != null) {
                    Table.nativeSetString(nativePtr, tmoUserStatusColumnInfo.f20050v, createRow, realmGet$vmtt, false);
                } else {
                    Table.nativeSetNull(nativePtr, tmoUserStatusColumnInfo.f20050v, createRow, false);
                }
            }
        }
    }

    private static com_tmobile_services_nameid_model_TmoUserStatusRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.f19804n.get();
        realmObjectContext.m3137g(baseRealm, row, baseRealm.mo3059L().m2854g(TmoUserStatus.class), false, Collections.emptyList());
        com_tmobile_services_nameid_model_TmoUserStatusRealmProxy com_tmobile_services_nameid_model_tmouserstatusrealmproxy = new com_tmobile_services_nameid_model_TmoUserStatusRealmProxy();
        realmObjectContext.m3143a();
        return com_tmobile_services_nameid_model_tmouserstatusrealmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_tmobile_services_nameid_model_TmoUserStatusRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_tmobile_services_nameid_model_TmoUserStatusRealmProxy com_tmobile_services_nameid_model_tmouserstatusrealmproxy = (com_tmobile_services_nameid_model_TmoUserStatusRealmProxy) obj;
        BaseRealm d = this.proxyState.m3085d();
        BaseRealm d2 = com_tmobile_services_nameid_model_tmouserstatusrealmproxy.proxyState.m3085d();
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
        String t2 = com_tmobile_services_nameid_model_tmouserstatusrealmproxy.proxyState.m3084e().getTable().m2633t();
        if (t != null) {
            if (!t.equals(t2)) {
                return false;
            }
        } else if (t2 != null) {
            return false;
        }
        return this.proxyState.m3084e().getObjectKey() == com_tmobile_services_nameid_model_tmouserstatusrealmproxy.proxyState.m3084e().getObjectKey();
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
            this.columnInfo = (TmoUserStatusColumnInfo) realmObjectContext.m3141c();
            ProxyState<TmoUserStatus> proxyState = new ProxyState<>(this);
            this.proxyState = proxyState;
            proxyState.m3073p(realmObjectContext.m3139e());
            this.proxyState.m3072q(realmObjectContext.m3138f());
            this.proxyState.m3076m(realmObjectContext.m3142b());
            this.proxyState.m3074o(realmObjectContext.m3140d());
        }
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public boolean realmGet$CNAMEligible() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f20046r);
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public boolean realmGet$CNAMON() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f20045q);
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public boolean realmGet$VMTTOFF() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f20047s);
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public boolean realmGet$bundled() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f20043o);
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public String realmGet$customerType() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20048t);
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public int realmGet$daysLeft() {
        this.proxyState.m3085d().m3151h();
        return (int) this.proxyState.m3084e().getLong(this.columnInfo.f20037i);
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public boolean realmGet$eligible() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f20036h);
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public String realmGet$errorText() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20039k);
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public boolean realmGet$novm() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f20044p);
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public boolean realmGet$pending() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f20041m);
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public boolean realmGet$pendingCheckError() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f20042n);
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public String realmGet$pnb() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20049u);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public Boolean realmGet$scamBlock() {
        this.proxyState.m3085d().m3151h();
        if (this.proxyState.m3084e().isNull(this.columnInfo.f20040l)) {
            return null;
        }
        return Boolean.valueOf(this.proxyState.m3084e().getBoolean(this.columnInfo.f20040l));
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public Boolean realmGet$scamId() {
        this.proxyState.m3085d().m3151h();
        if (this.proxyState.m3084e().isNull(this.columnInfo.f20033e)) {
            return null;
        }
        return Boolean.valueOf(this.proxyState.m3084e().getBoolean(this.columnInfo.f20033e));
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public String realmGet$statusText() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20035g);
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public String realmGet$typeLetter() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20034f);
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public Date realmGet$updatedAt() {
        this.proxyState.m3085d().m3151h();
        if (this.proxyState.m3084e().isNull(this.columnInfo.f20038j)) {
            return null;
        }
        return this.proxyState.m3084e().getDate(this.columnInfo.f20038j);
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public String realmGet$vmtt() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20050v);
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public void realmSet$CNAMEligible(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f20046r, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f20046r, e.getObjectKey(), z, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public void realmSet$CNAMON(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f20045q, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f20045q, e.getObjectKey(), z, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public void realmSet$VMTTOFF(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f20047s, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f20047s, e.getObjectKey(), z, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public void realmSet$bundled(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f20043o, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f20043o, e.getObjectKey(), z, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public void realmSet$customerType(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20048t);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f20048t, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f20048t, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f20048t, e.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public void realmSet$daysLeft(int i) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setLong(this.columnInfo.f20037i, i);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2660J(this.columnInfo.f20037i, e.getObjectKey(), i, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public void realmSet$eligible(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f20036h, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f20036h, e.getObjectKey(), z, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public void realmSet$errorText(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20039k);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f20039k, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f20039k, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f20039k, e.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public void realmSet$novm(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f20044p, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f20044p, e.getObjectKey(), z, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public void realmSet$pending(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f20041m, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f20041m, e.getObjectKey(), z, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public void realmSet$pendingCheckError(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f20042n, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f20042n, e.getObjectKey(), z, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public void realmSet$pnb(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20049u);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f20049u, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f20049u, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f20049u, e.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public void realmSet$scamBlock(Boolean bool) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (bool == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20040l);
            } else {
                this.proxyState.m3084e().setBoolean(this.columnInfo.f20040l, bool.booleanValue());
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (bool == null) {
                e.getTable().m2659K(this.columnInfo.f20040l, e.getObjectKey(), true);
            } else {
                e.getTable().m2662H(this.columnInfo.f20040l, e.getObjectKey(), bool.booleanValue(), true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public void realmSet$scamId(Boolean bool) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (bool == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20033e);
            } else {
                this.proxyState.m3084e().setBoolean(this.columnInfo.f20033e, bool.booleanValue());
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (bool == null) {
                e.getTable().m2659K(this.columnInfo.f20033e, e.getObjectKey(), true);
            } else {
                e.getTable().m2662H(this.columnInfo.f20033e, e.getObjectKey(), bool.booleanValue(), true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public void realmSet$statusText(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20035g);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f20035g, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f20035g, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f20035g, e.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public void realmSet$typeLetter(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20034f);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f20034f, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f20034f, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f20034f, e.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public void realmSet$updatedAt(Date date) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (date == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20038j);
            } else {
                this.proxyState.m3084e().setDate(this.columnInfo.f20038j, date);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (date == null) {
                e.getTable().m2659K(this.columnInfo.f20038j, e.getObjectKey(), true);
            } else {
                e.getTable().m2661I(this.columnInfo.f20038j, e.getObjectKey(), date, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.TmoUserStatus, io.realm.AbstractC2164x6fb2031c
    public void realmSet$vmtt(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20050v);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f20050v, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f20050v, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f20050v, e.getObjectKey(), str, true);
            }
        }
    }
}
