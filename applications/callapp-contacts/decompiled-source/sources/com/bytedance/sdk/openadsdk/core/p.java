package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.appsflyer.AppsFlyerProperties;
import com.bytedance.sdk.adnet.b.f;
import com.bytedance.sdk.adnet.core.m;
import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.adnet.err.g;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.e.j;
import com.bytedance.sdk.openadsdk.core.e.l;
import com.bytedance.sdk.openadsdk.core.e.n;
import com.bytedance.sdk.openadsdk.core.h.c;
import com.bytedance.sdk.openadsdk.core.h.d;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.d.e;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.ae;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.h;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.t;
import com.bytedance.sdk.openadsdk.utils.y;
import com.callapp.contacts.model.Constants;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.sinch.verification.core.verification.VerificationLanguage;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicLong;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/*  JADX ERROR: NullPointerException in pass: ProcessKotlinInternals
    java.lang.NullPointerException
    	at jadx.core.dex.visitors.kotlin.ProcessKotlinInternals.processMth(ProcessKotlinInternals.java:92)
    	at jadx.core.dex.visitors.kotlin.ProcessKotlinInternals.visit(ProcessKotlinInternals.java:83)
    */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/p.class */
public class p implements o<com.bytedance.sdk.openadsdk.d.a> {
    private static volatile boolean g = false;
    private static boolean h = true;

    /* renamed from: a  reason: collision with root package name */
    private final Context f9062a;
    private long e;
    private int f;

    /* renamed from: c  reason: collision with root package name */
    private final ExecutorService f9064c = Executors.newFixedThreadPool(1);

    /* renamed from: b  reason: collision with root package name */
    private final boolean f9063b = f();

    /* renamed from: d  reason: collision with root package name */
    private final String f9065d = i();

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/p$a.class */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final int f9082a;

        /* renamed from: b  reason: collision with root package name */
        final long f9083b;

        /* renamed from: c  reason: collision with root package name */
        final long f9084c;

        /* renamed from: d  reason: collision with root package name */
        final int f9085d;
        final String e;
        final int f;
        final String g;
        public final com.bytedance.sdk.openadsdk.core.e.a h;
        final String i;

        private a(String str, int i, int i2, String str2, int i3, String str3, com.bytedance.sdk.openadsdk.core.e.a aVar, long j, long j2) {
            this.f9082a = i;
            this.f9085d = i2;
            this.e = str2;
            this.g = str3;
            this.h = aVar;
            this.i = str;
            this.f = i3;
            this.f9083b = j;
            this.f9084c = j2;
        }

        public static a a(JSONObject jSONObject, AdSlot adSlot, j jVar) {
            String optString = jSONObject.optString("did");
            int optInt = jSONObject.optInt("processing_time_ms");
            long optLong = jSONObject.optLong("s_receive_ts");
            long optLong2 = jSONObject.optLong("s_send_ts");
            int optInt2 = jSONObject.optInt("status_code");
            String optString2 = jSONObject.optString("desc");
            String optString3 = jSONObject.optString("request_id");
            int optInt3 = jSONObject.optInt("reason");
            com.bytedance.sdk.openadsdk.core.e.a a2 = com.bytedance.sdk.openadsdk.core.b.a(jSONObject, adSlot, jVar);
            if (a2 != null) {
                a2.a(jSONObject.optLong("request_after"));
            }
            return new a(optString, optInt, optInt2, optString2, optInt3, optString3, a2, optLong, optLong2);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/p$b.class */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f9086a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f9087b;

        /* renamed from: c  reason: collision with root package name */
        public final n f9088c;

        private b(int i, boolean z, n nVar) {
            this.f9086a = i;
            this.f9087b = z;
            this.f9088c = nVar;
        }

        public static b a(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            int optInt = jSONObject.optInt("code");
            boolean optBoolean = jSONObject.optBoolean("verify");
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            n nVar = new n();
            if (optJSONObject != null) {
                try {
                    nVar.a(optJSONObject.optInt("reason"));
                    nVar.b(optJSONObject.optInt("corp_type"));
                    nVar.c(optJSONObject.optInt("reward_amount"));
                    nVar.a(optJSONObject.optString("reward_name"));
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            return new b(optInt, optBoolean, nVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(Context context) {
        this.f9062a = context;
    }

    private int a(int i) {
        return 10000;
    }

    private static String a(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(Constants.EXTRA_PHONE_NUMBER);
            return telephonyManager == null ? "" : telephonyManager.getSimOperator();
        } catch (Throwable th) {
            return "";
        }
    }

    private JSONObject a(AdSlot adSlot, int i, j jVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", adSlot.getCodeId());
            jSONObject.put("adtype", i);
            if (jVar != null) {
                jSONObject.put("render_method", jVar.e);
                if (jVar.e == 1) {
                    a(jSONObject, "accepted_size", adSlot.getImgAcceptedWidth(), adSlot.getImgAcceptedHeight());
                } else if (jVar.e == 2) {
                    a(jSONObject, "accepted_size", adSlot.getExpressViewAcceptedWidth(), adSlot.getExpressViewAcceptedHeight());
                }
            } else {
                jSONObject.put("render_method", 1);
                a(jSONObject, "accepted_size", adSlot.getImgAcceptedWidth(), adSlot.getImgAcceptedHeight());
            }
            jSONObject.put("ptpl_ids", n.h().h(adSlot.getCodeId()));
            jSONObject.put("pos", AdSlot.getPosition(i));
            jSONObject.put("is_support_dpl", adSlot.isSupportDeepLink());
            if (adSlot.getNativeAdType() > 0 || i == 9 || i == 5) {
                jSONObject.put("is_origin_ad", true);
            }
            int adCount = adSlot.getAdCount();
            int i2 = adCount;
            if (adCount <= 0) {
                i2 = 1;
            }
            int i3 = i2;
            if (i2 > 3) {
                i3 = 3;
            }
            i3 = 1;
            if (i != 7 && i == 8) {
                i3 = 1;
            }
            int i4 = i3;
            if (jVar != null) {
                i4 = i3;
                if (jVar.f8908d != null) {
                    i4 = adSlot.getAdCount();
                }
            }
            jSONObject.put("ad_count", i4);
        } catch (Exception e) {
        }
        return jSONObject;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(64:2|107|3|4|5|(58:11|12|15|16|(2:18|(3:23|24|25))(2:26|(3:33|34|35))|109|36|37|(1:41)|42|43|44|45|46|47|48|49|50|51|52|(3:59|60|61)|62|63|64|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|(3:88|89|(2:91|92))|93|94|95|96|97|98|99|100|101|102|103)|13|14|15|16|(0)(0)|109|36|37|(2:39|41)|42|43|44|45|46|47|48|49|50|51|52|(6:54|56|57|59|60|61)|62|63|64|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|(0)|93|94|95|96|97|98|99|100|101|102|103) */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01e0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.json.JSONObject a(com.bytedance.sdk.openadsdk.AdSlot r7, com.bytedance.sdk.openadsdk.core.e.j r8, int r9) {
        /*
            Method dump skipped, instructions count: 575
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.p.a(com.bytedance.sdk.openadsdk.AdSlot, com.bytedance.sdk.openadsdk.core.e.j, int):org.json.JSONObject");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j, String str, int i, a aVar, int i2, String str2) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(o.a aVar) {
        aVar.a(-1, f.a(-1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(o.b bVar) {
        bVar.a(-1, f.a(-1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.bytedance.sdk.openadsdk.d.a r6) {
        /*
            r5 = this;
            r0 = r6
            if (r0 == 0) goto L_0x0050
            r0 = r6
            org.json.JSONObject r0 = r0.f9396b
            if (r0 != 0) goto L_0x000e
            goto L_0x0050
        L_0x000e:
            r0 = r6
            org.json.JSONObject r0 = r0.f9396b
            java.lang.String r1 = "log_extra"
            java.lang.String r2 = ""
            java.lang.String r0 = r0.optString(r1, r2)
            r6 = r0
            r0 = r6
            long r0 = com.bytedance.sdk.openadsdk.utils.af.e(r0)
            r7 = r0
            r0 = r6
            int r0 = com.bytedance.sdk.openadsdk.utils.af.f(r0)
            r9 = r0
            r0 = r7
            r10 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0035
            r0 = r5
            long r0 = r0.e
            r10 = r0
        L_0x0035:
            r0 = r5
            r1 = r10
            r0.e = r1
            r0 = r9
            r12 = r0
            r0 = r9
            if (r0 != 0) goto L_0x004a
            r0 = r5
            int r0 = r0.f
            r12 = r0
        L_0x004a:
            r0 = r5
            r1 = r12
            r0.f = r1
        L_0x0050:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.p.a(com.bytedance.sdk.openadsdk.d.a):void");
    }

    private void a(JSONObject jSONObject, j jVar) {
        if (jVar != null && jVar.f8908d != null) {
            try {
                jSONObject.put("source_temai_product_ids", jVar.f8908d);
            } catch (Exception e) {
            }
        }
    }

    private void a(JSONObject jSONObject, String str, float f, float f2) {
        if (f >= BitmapDescriptorFactory.HUE_RED && f2 >= BitmapDescriptorFactory.HUE_RED) {
            JSONObject jSONObject2 = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            try {
                jSONObject2.put("width", (int) f);
                jSONObject2.put("height", (int) f2);
                jSONArray.put(jSONObject2);
                jSONObject.put(str, jSONArray);
            } catch (Exception e) {
            }
        }
    }

    private void a(JSONObject jSONObject, String str, int i, int i2) {
        if (i > 0 && i2 > 0) {
            JSONObject jSONObject2 = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            try {
                jSONObject2.put("width", i);
                jSONObject2.put("height", i2);
                jSONArray.put(jSONObject2);
                jSONObject.put(str, jSONArray);
            } catch (Exception e) {
            }
        }
    }

    private static void a(JSONObject jSONObject, String str, String str2) throws JSONException {
        if (!TextUtils.isEmpty(str2)) {
            jSONObject.put(str, str2);
        }
    }

    private boolean a(String str) {
        if (com.bytedance.sdk.openadsdk.core.c.b.a()) {
            return true;
        }
        if (!com.bytedance.sdk.openadsdk.core.c.b.a(str)) {
            return false;
        }
        String b2 = com.bytedance.sdk.openadsdk.core.c.b.b();
        if (TextUtils.isEmpty(b2)) {
            return true;
        }
        e.a(this.f9062a, b2, System.currentTimeMillis());
        return true;
    }

    private static String b(int i) {
        String str;
        if (i != 120) {
            str = "mdpi";
            if (i != 160) {
                str = i != 240 ? i != 320 ? i != 480 ? i != 640 ? "mdpi" : "xxxhdpi" : "xxhdpi" : "xhdpi" : "hdpi";
            }
        } else {
            str = "ldpi";
        }
        return str;
    }

    private JSONArray b(List<FilterWord> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (FilterWord filterWord : list) {
            jSONArray.put(filterWord.getId());
        }
        return jSONArray;
    }

    public static JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("personalized_ad", n.h().v());
            jSONObject.put("lmt", h.b());
            jSONObject.put(VerizonSSPWaterfallProvider.APP_DATA_COPPA_KEY, g.b().h());
            jSONObject.put("gdpr", g.b().g());
            jSONObject.put("is_gdpr_user", n.h().s());
            a(jSONObject, VerizonSSPWaterfallProvider.USER_DATA_KEYWORDS_KEY, g.b().j());
            a(jSONObject, "data", g.b().k());
        } catch (Exception e) {
        }
        return jSONObject;
    }

    private JSONObject b(i iVar, List<FilterWord> list) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("action", "dislike");
            jSONObject2.put(Reporting.Key.TIMESTAMP, System.currentTimeMillis());
            jSONObject2.put("ad_sdk_version", "3.5.0.5");
            jSONObject2.put("extra", iVar.S());
            jSONObject2.put("filter_words", b(list));
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject2);
            jSONObject.put("actions", jSONArray);
        } catch (Exception e) {
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final AdSlot adSlot, final j jVar, final int i, final o.a aVar) {
        if (!d.a()) {
            if (aVar != null) {
                aVar.a(1000, "广告请求开关已关闭,请联系穿山甲管理员");
            }
        } else if (!n.h().u()) {
            if (aVar != null) {
                aVar.a(-16, f.a(-16));
            }
        } else if (b(aVar)) {
            c.a((com.bytedance.sdk.openadsdk.core.h.b) null).a(false);
            if (aVar != null) {
                if (a(adSlot.getCodeId())) {
                    aVar.a(-8, f.a(-8));
                } else if (!TextUtils.isEmpty(adSlot.getBidAdm())) {
                    q.b("bidding", "getAd bidAdm有效，则直接解析返回广告：BidAdm->MD5->" + com.bytedance.sdk.openadsdk.k.g.b.a(adSlot.getBidAdm()));
                    try {
                        JSONObject a2 = a(new JSONObject(adSlot.getBidAdm()));
                        if (a2 == null) {
                            a(aVar);
                            return;
                        }
                        a a3 = a.a(a2, adSlot, jVar);
                        i.a(this.f9062a, a3.i);
                        if (a3.f9085d != 20000) {
                            aVar.a(a3.f9085d, a3.e);
                        } else if (a3.h == null) {
                            a(aVar);
                        } else {
                            a3.h.c(a2.toString());
                            aVar.a(a3.h);
                        }
                    } catch (Throwable th) {
                        q.c("NetApiImpl", "get ad error: ", th);
                        a(aVar);
                    }
                } else {
                    final JSONObject a4 = a(adSlot, jVar, i);
                    if (a4 == null) {
                        aVar.a(-9, f.a(-9));
                        return;
                    }
                    final long currentTimeMillis = System.currentTimeMillis();
                    final AtomicLong atomicLong = new AtomicLong(currentTimeMillis);
                    final AtomicLong atomicLong2 = new AtomicLong(currentTimeMillis);
                    new f(1, af.i("/api/ad/union/sdk/get_ads/"), a4, new m.a<JSONObject>() { // from class: com.bytedance.sdk.openadsdk.core.p.2
                        @Override // com.bytedance.sdk.adnet.core.m.a
                        public void a(m<JSONObject> mVar) {
                            atomicLong.set(System.currentTimeMillis());
                            JSONObject a5 = p.this.a(mVar.f8332a);
                            if (a5 == null) {
                                p.this.a(aVar);
                                p.this.a(mVar.e, adSlot.getCodeId(), i, null, -1, "mate parse_fail");
                                return;
                            }
                            try {
                                a a6 = a.a(a5, adSlot, jVar);
                                i.a(p.this.f9062a, a6.i);
                                if (a6.f9085d != 20000) {
                                    if (n.h().l() || a6.f9085d != 40029) {
                                        aVar.a(a6.f9085d, a6.e);
                                    } else {
                                        aVar.a(-100, f.a(-100));
                                    }
                                    p.this.a(mVar.e, adSlot.getCodeId(), i, a6, a6.f9085d, String.valueOf(a6.f));
                                } else if (a6.h == null) {
                                    p.this.a(aVar);
                                    p.this.a(mVar.e, adSlot.getCodeId(), i, a6, -1, "parse_fail");
                                } else {
                                    a6.h.c(a5.toString());
                                    atomicLong2.set(System.currentTimeMillis());
                                    aVar.a(a6.h);
                                    Map<String, i> a7 = com.bytedance.sdk.openadsdk.core.e.a.a(a6.h);
                                    if (a7 != null) {
                                        com.bytedance.sdk.openadsdk.e.a.a().a(a7);
                                    }
                                    if (a6.h.b() != null && !a6.h.b().isEmpty()) {
                                        i iVar = a6.h.b().get(0);
                                        String b2 = af.b(i);
                                        HashMap hashMap = new HashMap();
                                        j jVar2 = jVar;
                                        if (jVar2 != null && jVar2.f > 0) {
                                            hashMap.put("client_start_time", Long.valueOf(currentTimeMillis - jVar.f));
                                            hashMap.put("load_ts", Long.valueOf(jVar.f));
                                            hashMap.put("total_time", Long.valueOf(atomicLong2.get() - jVar.f));
                                        }
                                        hashMap.put("request_ts", Long.valueOf(currentTimeMillis));
                                        hashMap.put("s_revice_ts", Long.valueOf(a6.f9083b));
                                        hashMap.put("s_send_ts", Long.valueOf(a6.f9084c));
                                        hashMap.put("c_revice_ts", Long.valueOf(atomicLong.get()));
                                        hashMap.put("c_end_ts", Long.valueOf(atomicLong2.get()));
                                        hashMap.put("network_time", Long.valueOf(mVar.f));
                                        hashMap.put("go_time", Long.valueOf(a6.f9083b - currentTimeMillis));
                                        hashMap.put("sever_time", Integer.valueOf(a6.f9082a));
                                        hashMap.put("back_time", Long.valueOf(atomicLong.get() - a6.f9084c));
                                        hashMap.put("client_end_time", Long.valueOf(atomicLong2.get() - atomicLong.get()));
                                        e.a(iVar, b2, hashMap);
                                    }
                                }
                            } catch (Throwable th2) {
                                q.c("NetApiImpl", "get ad error: ", th2);
                                p.this.a(aVar);
                                p.this.a(mVar.e, adSlot.getCodeId(), i, null, -1, "parse_fail");
                            }
                        }

                        @Override // com.bytedance.sdk.adnet.core.m.a
                        public void b(m<JSONObject> mVar) {
                            int i2;
                            VAdError vAdError = mVar.f8334c;
                            if (vAdError instanceof com.bytedance.sdk.adnet.err.e) {
                                p.this.a(aVar);
                                p.this.a(mVar.e, adSlot.getCodeId(), i, null, -1, f.a(-1));
                                return;
                            }
                            String a5 = f.a(-2);
                            if (vAdError == null || mVar == null) {
                                i2 = -2;
                            } else {
                                i2 = (int) mVar.h;
                                a5 = vAdError.getMessage();
                            }
                            aVar.a(i2, a5);
                            if (vAdError instanceof g) {
                                a5 = "SocketTimeout";
                            }
                            p.this.a(mVar.e, adSlot.getCodeId(), i, null, i2, a5);
                        }
                    }) { // from class: com.bytedance.sdk.openadsdk.core.p.3
                        @Override // com.bytedance.sdk.adnet.core.Request
                        public Map<String, String> getHeaders() throws com.bytedance.sdk.adnet.err.a {
                            HashMap hashMap = new HashMap();
                            String c2 = s.c(a4.toString());
                            if (c2 != null) {
                                hashMap.put("ss-sign", c2);
                            }
                            return hashMap;
                        }
                    }.setRetryPolicy(com.bytedance.sdk.openadsdk.j.e.b().a(a(i)).b(0)).setUserAgent(af.b()).setShouldCache(false).build(com.bytedance.sdk.openadsdk.j.e.c().f());
                }
            }
        }
    }

    private boolean b(o.a aVar) {
        if (!g) {
            if (com.bytedance.sdk.openadsdk.utils.m.a(n.a())) {
                g = true;
            } else if (aVar != null) {
                aVar.a(-15, f.a(-15));
                g = false;
            }
        }
        return g;
    }

    private JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AppsFlyerProperties.APP_ID, g.b().d());
            jSONObject.put("name", g.b().e());
            h(jSONObject);
            af.a(jSONObject, false);
            jSONObject.put("is_paid_app", g.b().i());
            if (s.b(i.a(this.f9062a)) != null) {
                jSONObject.put("apk_sign", s.b(i.a(this.f9062a)));
            }
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    private void c(JSONObject jSONObject) throws JSONException {
        int g2 = g.b().g();
        if ((n.h().s() != -1 || !af.p()) && n.h().s() != 1) {
            if (n.h().s() == 1 && g2 == 0) {
                jSONObject.put("ip", d());
                return;
            }
            boolean z = n.h().s() == 1 && (g2 == 1 || g2 == -1);
            boolean z2 = false;
            if (n.h().s() == -1) {
                z2 = false;
                if (g2 == 1) {
                    z2 = true;
                }
            }
            if (!z && !z2 && g.b().h() != 1) {
                jSONObject.put("ip", d());
            }
        } else if (g2 != 1 && g2 != -1 && g.b().h() != 1) {
            jSONObject.put("ip", d());
        }
    }

    private String d() {
        return h.a(true);
    }

    private boolean d(JSONObject jSONObject) {
        return jSONObject != null && jSONObject.length() > 0;
    }

    private JSONObject e() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ua", af.b());
            jSONObject.put("ad_sdk_version", "3.5.0.5");
            jSONObject.put("sim_op", a(this.f9062a));
            int i = 1;
            jSONObject.put("root", this.f9063b ? 1 : 0);
            jSONObject.put("timezone", h());
            jSONObject.put("access", t.f(this.f9062a));
            jSONObject.put("os", "Android");
            jSONObject.put("os_version", Build.VERSION.RELEASE);
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("device_type", this.f9065d);
            jSONObject.put("device_model", Build.MODEL);
            jSONObject.put("device_brand", Build.BRAND);
            jSONObject.put("device_manufacturer", Build.MANUFACTURER);
            jSONObject.put("language", Locale.getDefault().getLanguage());
            jSONObject.put("resolution", ag.d(this.f9062a) + "x" + ag.c(this.f9062a));
            jSONObject.put("display_density", b(ag.f(this.f9062a)));
            jSONObject.put("density_dpi", ag.f(this.f9062a));
            jSONObject.put("device_id", i.a(this.f9062a));
            jSONObject.put("aid", "1371");
            jSONObject.put("rom", g());
            jSONObject.put("cpu_abi", Build.CPU_ABI);
            jSONObject.put("ut", this.f);
            jSONObject.put("uid", this.e);
            jSONObject.put("google_aid", com.a.a.a.a.b.a.a().b());
            jSONObject.put("locale_language", h.c());
            jSONObject.put("screen_bright", Math.ceil(h.d() * 10.0f) / 10.0d);
            if (h.a()) {
                i = 0;
            }
            jSONObject.put("is_screen_off", i);
            com.bytedance.sdk.openadsdk.core.h.e h2 = n.h();
            if (h2.s("mnc")) {
                jSONObject.put("mnc", aa.c());
            }
            if (h2.s("mcc")) {
                jSONObject.put("mcc", aa.b());
            }
        } catch (Exception e) {
        }
        return jSONObject;
    }

    private void e(JSONObject jSONObject) {
        if (g.b().s()) {
            try {
                jSONObject.getJSONObject("header").put("aid", "4562");
            } catch (Exception e) {
                e.printStackTrace();
            }
            JSONObject a2 = com.bytedance.sdk.openadsdk.utils.a.a(jSONObject);
            if (d(a2)) {
                jSONObject = a2;
            }
            final Map<String, String> f = f(jSONObject);
            new f(1, af.l(), jSONObject, com.bytedance.sdk.adnet.b.i.a()) { // from class: com.bytedance.sdk.openadsdk.core.p.5
                @Override // com.bytedance.sdk.adnet.core.Request
                public Map<String, String> getHeaders() throws com.bytedance.sdk.adnet.err.a {
                    return f;
                }
            }.setRetryPolicy(com.bytedance.sdk.openadsdk.j.e.b().a(10000)).setUserAgent(af.b()).build(com.bytedance.sdk.openadsdk.j.e.c().e());
        }
    }

    private Map<String, String> f(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        hashMap.put("Content-Type", "application/json; charset=utf-8");
        if (d(jSONObject)) {
            hashMap.put("Content-Encoding", "union_sdk_encode");
        }
        return hashMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0025, code lost:
        if (new java.io.File("/system/xbin/su").exists() != false) goto L_0x0028;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean f() {
        /*
            r0 = 0
            r3 = r0
            java.io.File r0 = new java.io.File     // Catch: Exception -> 0x002c
            r4 = r0
            r0 = r4
            java.lang.String r1 = "/system/bin/su"
            r0.<init>(r1)     // Catch: Exception -> 0x002c
            r0 = r4
            boolean r0 = r0.exists()     // Catch: Exception -> 0x002c
            if (r0 != 0) goto L_0x0028
            java.io.File r0 = new java.io.File     // Catch: Exception -> 0x002c
            r4 = r0
            r0 = r4
            java.lang.String r1 = "/system/xbin/su"
            r0.<init>(r1)     // Catch: Exception -> 0x002c
            r0 = r4
            boolean r0 = r0.exists()     // Catch: Exception -> 0x002c
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x002a
        L_0x0028:
            r0 = 1
            r3 = r0
        L_0x002a:
            r0 = r3
            return r0
        L_0x002c:
            r4 = move-exception
            goto L_0x002a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.p.f():boolean");
    }

    private static String g() {
        StringBuilder sb = new StringBuilder();
        try {
            if (y.e()) {
                sb.append("MIUI-");
            } else if (y.b()) {
                sb.append("FLYME-");
            } else {
                String n = y.n();
                if (y.a(n)) {
                    sb.append("EMUI-");
                }
                if (!TextUtils.isEmpty(n)) {
                    sb.append(n);
                    sb.append(VerificationLanguage.REGION_PREFIX);
                }
            }
            sb.append(Build.VERSION.INCREMENTAL);
        } catch (Throwable th) {
        }
        return sb.toString();
    }

    private boolean g(JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        try {
            return jSONObject.optString("message").equalsIgnoreCase("success");
        } catch (Throwable th) {
            return false;
        }
    }

    private static int h() {
        int rawOffset = TimeZone.getDefault().getRawOffset() / 3600000;
        int i = rawOffset;
        if (rawOffset < -12) {
            i = -12;
        }
        int i2 = i;
        if (i > 12) {
            i2 = 12;
        }
        return i2;
    }

    private void h(JSONObject jSONObject) {
        try {
            jSONObject.put("package_name", af.d());
            jSONObject.put("version_code", af.e());
            jSONObject.put("version", af.f());
        } catch (Exception e) {
        }
    }

    private String i() {
        return h.c(this.f9062a) ? "tv" : h.b(this.f9062a) ? "android_pad" : com.mopub.common.Constants.ANDROID_PLATFORM;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o
    public l a() {
        m mVar;
        if (!d.a()) {
            return null;
        }
        com.bytedance.sdk.adnet.b.i a2 = com.bytedance.sdk.adnet.b.i.a();
        new com.bytedance.sdk.adnet.b.j(0, ae.b(n.h().q()), a2).setRetryPolicy(com.bytedance.sdk.openadsdk.j.e.b().a(10000)).setShouldCache(false).build(com.bytedance.sdk.openadsdk.j.e.c().e());
        try {
            mVar = a2.get();
        } catch (Exception e) {
            mVar = null;
        }
        l lVar = null;
        if (mVar != null) {
            lVar = null;
            if (mVar.a()) {
                lVar = l.d((String) mVar.f8332a);
            }
        }
        return lVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o
    public com.bytedance.sdk.openadsdk.d.i a(List<com.bytedance.sdk.openadsdk.d.a> list) {
        String str;
        m mVar = null;
        if (!d.a()) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        boolean z = false;
        try {
            a(list.get(0));
            jSONObject.put("header", e());
            JSONArray jSONArray = new JSONArray();
            for (com.bytedance.sdk.openadsdk.d.a aVar : list) {
                jSONArray.put(aVar.f9396b);
            }
            jSONObject.put("event", jSONArray);
            jSONObject.put("_gen_time", System.currentTimeMillis());
        } catch (JSONException e) {
        }
        JSONObject a2 = com.bytedance.sdk.openadsdk.utils.a.a(jSONObject);
        if (!d(a2)) {
            a2 = jSONObject;
        }
        q.b("adevent", "adevent is :" + jSONObject.toString());
        final Map<String, String> f = f(a2);
        com.bytedance.sdk.adnet.b.i a3 = com.bytedance.sdk.adnet.b.i.a();
        new f(1, ae.b(af.k()), a2, a3) { // from class: com.bytedance.sdk.openadsdk.core.p.4
            @Override // com.bytedance.sdk.adnet.core.Request
            public Map<String, String> getHeaders() throws com.bytedance.sdk.adnet.err.a {
                return f;
            }
        }.setRetryPolicy(com.bytedance.sdk.openadsdk.j.e.b().a(10000)).setUserAgent(af.b()).build(com.bytedance.sdk.openadsdk.j.e.c().e());
        try {
            mVar = a3.get();
        } catch (Throwable th) {
        }
        boolean z2 = mVar != null && g((JSONObject) mVar.f8332a);
        int i = mVar != null ? (int) mVar.h : 0;
        if (z2 || i != 200) {
            str = (mVar == null || mVar.f8334c == null) ? "error unknown" : mVar.f8334c.getMessage();
        } else {
            str = "server say not success";
            z = true;
        }
        e(jSONObject);
        return new com.bytedance.sdk.openadsdk.d.i(z2, i, str, z);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: AttachTryCatchVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Null type added to not empty exception handler: Exception -> 0x0072
        	at jadx.core.dex.trycatch.ExceptionHandler.addCatchType(ExceptionHandler.java:54)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.createHandler(AttachTryCatchVisitor.java:136)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.convertToHandlers(AttachTryCatchVisitor.java:123)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.initTryCatches(AttachTryCatchVisitor.java:59)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.visit(AttachTryCatchVisitor.java:47)
        */
    @Override // com.bytedance.sdk.openadsdk.core.o
    public org.json.JSONObject a(org.json.JSONObject r5) {
        /*
            r4 = this;
            r0 = r5
            if (r0 != 0) goto L_0x0006
            r0 = r5
            return r0
            boolean r0 = com.bytedance.sdk.openadsdk.core.p.h
            if (r0 == 0) goto L_0x0064
            r0 = r5
            java.lang.String r1 = "cypher"
            r2 = -1
            int r0 = r0.optInt(r1, r2)
            r6 = r0
            r0 = r5
            java.lang.String r1 = "message"
            java.lang.String r0 = r0.optString(r1)
            r7 = r0
            r0 = r5
            java.lang.String r1 = "auction_price"
            java.lang.String r2 = ""
            java.lang.String r0 = r0.optString(r1, r2)
            r8 = r0
            r0 = r7
            r9 = r0
            r0 = r6
            r1 = 3
            if (r0 != r1) goto L_0x0036
            r0 = r7     // Catch: Exception -> 0x0072
            java.lang.String r0 = com.bytedance.sdk.openadsdk.utils.a.b(r0)     // Catch: Exception -> 0x0072
            r9 = r0     // Catch: Exception -> 0x0072
            r0 = r9     // Catch: Exception -> 0x0072, Exception -> 0x0072
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: Exception -> 0x0072
            r10 = r0     // Catch: Exception -> 0x0072
            r0 = r10     // Catch: Exception -> 0x0072
            if (r0 != 0) goto L_0x0064
            org.json.JSONObject r0 = new org.json.JSONObject
            r7 = r0
            r0 = r7
            r1 = r9
            r0.<init>(r1)
            r0 = r7     // Catch: all -> 0x005c
            java.lang.String r1 = "auction_price"     // Catch: all -> 0x005c
            r2 = r8     // Catch: all -> 0x005c
            org.json.JSONObject r0 = r0.put(r1, r2)     // Catch: all -> 0x005c
            r0 = r7     // Catch: all -> 0x005c
            r9 = r0
            goto L_0x0067
        L_0x005c:
            r9 = move-exception
            r0 = r7
            r9 = r0
            goto L_0x0067
            r0 = r5
            r9 = r0
            boolean r0 = com.bytedance.sdk.openadsdk.core.p.h
            if (r0 == 0) goto L_0x0070
            r0 = r9
            return r0
            r0 = r5
            return r0
        L_0x0072:
            r9 = move-exception
            goto L_0x0064
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.p.a(org.json.JSONObject):org.json.JSONObject");
    }

    @Override // com.bytedance.sdk.openadsdk.core.o
    public void a(final AdSlot adSlot, final j jVar, final int i, final o.a aVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            k.b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.p.1
                @Override // java.lang.Runnable
                public void run() {
                    p.this.b(adSlot, jVar, i, aVar);
                }
            });
        } else {
            b(adSlot, jVar, i, aVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o
    public void a(i iVar, List<FilterWord> list) {
        JSONObject b2;
        if (d.a() && (b2 = b(iVar, list)) != null) {
            new com.bytedance.sdk.adnet.b.h(1, af.i("/api/ad/union/dislike_event/"), com.bytedance.sdk.openadsdk.utils.a.a(b2), null).setRetryPolicy(com.bytedance.sdk.openadsdk.j.e.b().a(10000)).build(com.bytedance.sdk.openadsdk.j.e.c().e());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o
    public void a(JSONObject jSONObject, final o.b bVar) {
        if (!d.a()) {
            if (bVar != null) {
                bVar.a(1000, "广告请求开关已关闭,请联系穿山甲管理员");
            }
        } else if (jSONObject != null && bVar != null) {
            new f(1, af.i("/api/ad/union/sdk/reward_video/reward/"), com.bytedance.sdk.openadsdk.utils.a.a(jSONObject), new m.a<JSONObject>() { // from class: com.bytedance.sdk.openadsdk.core.p.6
                @Override // com.bytedance.sdk.adnet.core.m.a
                public void a(m<JSONObject> mVar) {
                    if (mVar == null || mVar.f8332a == null) {
                        p.this.a(bVar);
                        return;
                    }
                    int optInt = mVar.f8332a.optInt("cypher", -1);
                    String optString = mVar.f8332a.optString("message");
                    JSONObject jSONObject2 = mVar.f8332a;
                    String str = null;
                    if (optInt == 3) {
                        str = com.bytedance.sdk.openadsdk.utils.a.b(optString);
                    }
                    JSONObject jSONObject3 = jSONObject2;
                    if (!TextUtils.isEmpty(str)) {
                        try {
                            jSONObject3 = new JSONObject(str);
                        } catch (Throwable th) {
                            jSONObject3 = jSONObject2;
                        }
                    }
                    b a2 = b.a(jSONObject3);
                    if (a2.f9086a != 20000) {
                        bVar.a(a2.f9086a, f.a(a2.f9086a));
                    } else if (a2.f9088c == null) {
                        p.this.a(bVar);
                    } else {
                        bVar.a(a2);
                    }
                }

                @Override // com.bytedance.sdk.adnet.core.m.a
                public void b(m<JSONObject> mVar) {
                    int i = -2;
                    String a2 = f.a(-2);
                    if (mVar != null) {
                        i = (int) mVar.h;
                    }
                    String str = a2;
                    if (mVar != null) {
                        str = a2;
                        if (mVar.f8334c != null) {
                            str = mVar.f8334c.getMessage();
                        }
                    }
                    bVar.a(i, str);
                }
            }).setRetryPolicy(com.bytedance.sdk.openadsdk.j.e.b().a(10000)).build(com.bytedance.sdk.openadsdk.j.e.c().e());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o
    public com.bytedance.sdk.openadsdk.d.i b(JSONObject jSONObject) {
        int i;
        m b2;
        if (!d.a() || jSONObject == null || jSONObject.length() <= 0) {
            return null;
        }
        com.bytedance.sdk.adnet.b.i a2 = com.bytedance.sdk.adnet.b.i.a();
        boolean z = true;
        new f(1, af.i("/api/ad/union/sdk/stats/batch/"), com.bytedance.sdk.openadsdk.utils.a.a(jSONObject), a2).setRetryPolicy(com.bytedance.sdk.openadsdk.j.e.b().a(10000)).setUserAgent(af.b()).build(com.bytedance.sdk.openadsdk.j.e.c().e());
        String str = "error unknown";
        boolean z2 = false;
        try {
            b2 = a2.get();
        } catch (Throwable th) {
            i = 0;
            z = false;
        }
        if (b2 == null) {
            return new com.bytedance.sdk.openadsdk.d.i(false, 0, "error unknown", false);
        }
        if (b2.f8332a != 0) {
            int optInt = ((JSONObject) b2.f8332a).optInt("code", -1);
            String optString = ((JSONObject) b2.f8332a).optString("data", "");
            z2 = optInt == 20000;
            if (optInt == 60005) {
                str = optString;
            } else {
                z = false;
                str = optString;
            }
        } else {
            z = false;
            z2 = false;
        }
        try {
            i = (int) b2.h;
            i = i;
            z = z;
            z2 = z2;
            str = str;
            try {
                if (b2.f8334c != null) {
                    str = b2.f8334c.getMessage();
                    i = i;
                    z = z;
                    z2 = z2;
                }
            } catch (Throwable th2) {
                return new com.bytedance.sdk.openadsdk.d.i(z2, i, str, z);
            }
        } catch (Throwable th3) {
            i = 0;
        }
        return new com.bytedance.sdk.openadsdk.d.i(z2, i, str, z);
    }
}
