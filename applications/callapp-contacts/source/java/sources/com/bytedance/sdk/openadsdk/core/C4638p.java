package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.appsflyer.AppsFlyerProperties;
import com.bytedance.sdk.adnet.core.C4218m;
import com.bytedance.sdk.adnet.err.C4239a;
import com.bytedance.sdk.adnet.err.C4243e;
import com.bytedance.sdk.adnet.err.C4245g;
import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.adnet.p141b.C4181f;
import com.bytedance.sdk.adnet.p141b.C4183h;
import com.bytedance.sdk.adnet.p141b.C4185j;
import com.bytedance.sdk.adnet.p141b.FutureC4184i;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.AbstractC4635o;
import com.bytedance.sdk.openadsdk.core.p152c.C4520b;
import com.bytedance.sdk.openadsdk.core.p154e.C4545a;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.p154e.C4559j;
import com.bytedance.sdk.openadsdk.core.p154e.C4561l;
import com.bytedance.sdk.openadsdk.core.p154e.C4564n;
import com.bytedance.sdk.openadsdk.core.p157h.AbstractC4583b;
import com.bytedance.sdk.openadsdk.core.p157h.C4587d;
import com.bytedance.sdk.openadsdk.core.p157h.C4588e;
import com.bytedance.sdk.openadsdk.core.p157h.RunnableC4584c;
import com.bytedance.sdk.openadsdk.p164d.C4805a;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.p164d.C4820i;
import com.bytedance.sdk.openadsdk.p165e.C4863a;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import com.bytedance.sdk.openadsdk.p176k.p183g.C5028b;
import com.bytedance.sdk.openadsdk.utils.C5432a;
import com.bytedance.sdk.openadsdk.utils.C5433aa;
import com.bytedance.sdk.openadsdk.utils.C5437ae;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5461h;
import com.bytedance.sdk.openadsdk.utils.C5471m;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5482t;
import com.bytedance.sdk.openadsdk.utils.C5487y;
import com.callapp.contacts.model.Constants;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.p094a.p095a.p096a.p097a.p099b.C3236a;
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
/* renamed from: com.bytedance.sdk.openadsdk.core.p */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/p.class */
public class C4638p implements AbstractC4635o<C4805a> {

    /* renamed from: g */
    private static volatile boolean f16953g = false;

    /* renamed from: h */
    private static boolean f16954h = true;

    /* renamed from: a */
    private final Context f16955a;

    /* renamed from: e */
    private long f16959e;

    /* renamed from: f */
    private int f16960f;

    /* renamed from: c */
    private final ExecutorService f16957c = Executors.newFixedThreadPool(1);

    /* renamed from: b */
    private final boolean f16956b = m34648f();

    /* renamed from: d */
    private final String f16958d = m34642i();

    /* renamed from: com.bytedance.sdk.openadsdk.core.p$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/p$a.class */
    public static class C4645a {

        /* renamed from: a */
        final int f16982a;

        /* renamed from: b */
        final long f16983b;

        /* renamed from: c */
        final long f16984c;

        /* renamed from: d */
        final int f16985d;

        /* renamed from: e */
        final String f16986e;

        /* renamed from: f */
        final int f16987f;

        /* renamed from: g */
        final String f16988g;

        /* renamed from: h */
        public final C4545a f16989h;

        /* renamed from: i */
        final String f16990i;

        private C4645a(String str, int i, int i2, String str2, int i3, String str3, C4545a c4545a, long j, long j2) {
            this.f16982a = i;
            this.f16985d = i2;
            this.f16986e = str2;
            this.f16988g = str3;
            this.f16989h = c4545a;
            this.f16990i = str;
            this.f16987f = i3;
            this.f16983b = j;
            this.f16984c = j2;
        }

        /* renamed from: a */
        public static C4645a m34641a(JSONObject jSONObject, AdSlot adSlot, C4559j c4559j) {
            String optString = jSONObject.optString("did");
            int optInt = jSONObject.optInt("processing_time_ms");
            long optLong = jSONObject.optLong("s_receive_ts");
            long optLong2 = jSONObject.optLong("s_send_ts");
            int optInt2 = jSONObject.optInt("status_code");
            String optString2 = jSONObject.optString("desc");
            String optString3 = jSONObject.optString("request_id");
            int optInt3 = jSONObject.optInt("reason");
            C4545a m35501a = C4493b.m35501a(jSONObject, adSlot, c4559j);
            if (m35501a != null) {
                m35501a.m35349a(jSONObject.optLong("request_after"));
            }
            return new C4645a(optString, optInt, optInt2, optString2, optInt3, optString3, m35501a, optLong, optLong2);
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.core.p$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/p$b.class */
    public static class C4646b {

        /* renamed from: a */
        public final int f16991a;

        /* renamed from: b */
        public final boolean f16992b;

        /* renamed from: c */
        public final C4564n f16993c;

        private C4646b(int i, boolean z, C4564n c4564n) {
            this.f16991a = i;
            this.f16992b = z;
            this.f16993c = c4564n;
        }

        /* renamed from: a */
        public static C4646b m34640a(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            int optInt = jSONObject.optInt("code");
            boolean optBoolean = jSONObject.optBoolean("verify");
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            C4564n c4564n = new C4564n();
            if (optJSONObject != null) {
                try {
                    c4564n.m35068a(optJSONObject.optInt("reason"));
                    c4564n.m35065b(optJSONObject.optInt("corp_type"));
                    c4564n.m35064c(optJSONObject.optInt("reward_amount"));
                    c4564n.m35067a(optJSONObject.optString("reward_name"));
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            return new C4646b(optInt, optBoolean, c4564n);
        }
    }

    public C4638p(Context context) {
        this.f16955a = context;
    }

    /* renamed from: a */
    private int m34684a(int i) {
        return 10000;
    }

    /* renamed from: a */
    private static String m34682a(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(Constants.EXTRA_PHONE_NUMBER);
            return telephonyManager == null ? "" : telephonyManager.getSimOperator();
        } catch (Throwable th) {
            return "";
        }
    }

    /* renamed from: a */
    private JSONObject m34681a(AdSlot adSlot, int i, C4559j c4559j) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", adSlot.getCodeId());
            jSONObject.put("adtype", i);
            if (c4559j != null) {
                jSONObject.put("render_method", c4559j.f16593e);
                if (c4559j.f16593e == 1) {
                    m34663a(jSONObject, "accepted_size", adSlot.getImgAcceptedWidth(), adSlot.getImgAcceptedHeight());
                } else if (c4559j.f16593e == 2) {
                    m34664a(jSONObject, "accepted_size", adSlot.getExpressViewAcceptedWidth(), adSlot.getExpressViewAcceptedHeight());
                }
            } else {
                jSONObject.put("render_method", 1);
                m34663a(jSONObject, "accepted_size", adSlot.getImgAcceptedWidth(), adSlot.getImgAcceptedHeight());
            }
            jSONObject.put("ptpl_ids", C4600n.m34805h().m34884h(adSlot.getCodeId()));
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
            int i4 = 1;
            if (i != 7) {
                i4 = i == 8 ? 1 : i3;
            }
            int i5 = i4;
            if (c4559j != null) {
                i5 = i4;
                if (c4559j.f16592d != null) {
                    i5 = adSlot.getAdCount();
                }
            }
            jSONObject.put("ad_count", i5);
        } catch (Exception e) {
        }
        return jSONObject;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(64:2|107|3|4|5|(58:11|12|15|16|(2:18|(3:23|24|25))(2:26|(3:33|34|35))|109|36|37|(1:41)|42|43|44|45|46|47|48|49|50|51|52|(3:59|60|61)|62|63|64|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|(3:88|89|(2:91|92))|93|94|95|96|97|98|99|100|101|102|103)|13|14|15|16|(0)(0)|109|36|37|(2:39|41)|42|43|44|45|46|47|48|49|50|51|52|(6:54|56|57|59|60|61)|62|63|64|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|(0)|93|94|95|96|97|98|99|100|101|102|103) */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01e0  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.json.JSONObject m34680a(com.bytedance.sdk.openadsdk.AdSlot r7, com.bytedance.sdk.openadsdk.core.p154e.C4559j r8, int r9) {
        /*
            Method dump skipped, instructions count: 575
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.C4638p.m34680a(com.bytedance.sdk.openadsdk.AdSlot, com.bytedance.sdk.openadsdk.core.e.j, int):org.json.JSONObject");
    }

    /* renamed from: a */
    public void m34683a(long j, String str, int i, C4645a c4645a, int i2, String str2) {
    }

    /* renamed from: a */
    public void m34677a(AbstractC4635o.AbstractC4636a abstractC4636a) {
        abstractC4636a.mo34084a(-1, C4566f.m35036a(-1));
    }

    /* renamed from: a */
    public void m34676a(AbstractC4635o.AbstractC4637b abstractC4637b) {
        abstractC4637b.mo34687a(-1, C4566f.m35036a(-1));
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: a */
    private void m34670a(C4805a c4805a) {
        if (c4805a == null || c4805a.f17659b == null) {
            return;
        }
        String optString = c4805a.f17659b.optString("log_extra", "");
        ?? m32273e = C5438af.m32273e(optString);
        int m32269f = C5438af.m32269f(optString);
        char c = m32273e;
        if (m32273e == 0) {
            c = this.f16959e;
        }
        this.f16959e = c;
        int i = m32269f;
        if (m32269f == 0) {
            i = this.f16960f;
        }
        this.f16960f = i;
    }

    /* renamed from: a */
    private void m34666a(JSONObject jSONObject, C4559j c4559j) {
        if (c4559j == null || c4559j.f16592d == null) {
            return;
        }
        try {
            jSONObject.put("source_temai_product_ids", c4559j.f16592d);
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    private void m34664a(JSONObject jSONObject, String str, float f, float f2) {
        if (f < BitmapDescriptorFactory.HUE_RED || f2 < BitmapDescriptorFactory.HUE_RED) {
            return;
        }
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

    /* renamed from: a */
    private void m34663a(JSONObject jSONObject, String str, int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
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

    /* renamed from: a */
    private static void m34662a(JSONObject jSONObject, String str, String str2) throws JSONException {
        if (!TextUtils.isEmpty(str2)) {
            jSONObject.put(str, str2);
        }
    }

    /* renamed from: a */
    private boolean m34669a(String str) {
        if (C4520b.m35398a()) {
            return true;
        }
        if (!C4520b.m35397a(str)) {
            return false;
        }
        String m35396b = C4520b.m35396b();
        if (TextUtils.isEmpty(m35396b)) {
            return true;
        }
        C4811e.m33876a(this.f16955a, m35396b, System.currentTimeMillis());
        return true;
    }

    /* renamed from: b */
    private static String m34660b(int i) {
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

    /* renamed from: b */
    private JSONArray m34656b(List<FilterWord> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (FilterWord filterWord : list) {
            jSONArray.put(filterWord.getId());
        }
        return jSONArray;
    }

    /* renamed from: b */
    public static JSONObject m34661b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("personalized_ad", C4600n.m34805h().m34858v());
            jSONObject.put("lmt", C5461h.m32163b());
            jSONObject.put(VerizonSSPWaterfallProvider.APP_DATA_COPPA_KEY, C4570g.m35020b().m35002h());
            jSONObject.put("gdpr", C4570g.m35020b().m35004g());
            jSONObject.put("is_gdpr_user", C4600n.m34805h().m34863s());
            m34662a(jSONObject, VerizonSSPWaterfallProvider.USER_DATA_KEYWORDS_KEY, C4570g.m35020b().m34998j());
            m34662a(jSONObject, "data", C4570g.m35020b().m34997k());
        } catch (Exception e) {
        }
        return jSONObject;
    }

    /* renamed from: b */
    private JSONObject m34658b(C4557i c4557i, List<FilterWord> list) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("action", "dislike");
            jSONObject2.put(Reporting.Key.TIMESTAMP, System.currentTimeMillis());
            jSONObject2.put("ad_sdk_version", "3.5.0.5");
            jSONObject2.put("extra", c4557i.m35228S());
            jSONObject2.put("filter_words", m34656b(list));
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject2);
            jSONObject.put("actions", jSONArray);
        } catch (Exception e) {
        }
        return jSONObject;
    }

    /* renamed from: b */
    public void m34659b(final AdSlot adSlot, final C4559j c4559j, final int i, final AbstractC4635o.AbstractC4636a abstractC4636a) {
        if (!C4587d.m34919a()) {
            if (abstractC4636a == null) {
                return;
            }
            abstractC4636a.mo34084a(1000, "广告请求开关已关闭,请联系穿山甲管理员");
        } else if (!C4600n.m34805h().m34859u()) {
            if (abstractC4636a == null) {
                return;
            }
            abstractC4636a.mo34084a(-16, C4566f.m35036a(-16));
        } else if (!m34657b(abstractC4636a)) {
        } else {
            RunnableC4584c.m34933a((AbstractC4583b) null).m34928a(false);
            if (abstractC4636a == null) {
                return;
            }
            if (m34669a(adSlot.getCodeId())) {
                abstractC4636a.mo34084a(-8, C4566f.m35036a(-8));
            } else if (TextUtils.isEmpty(adSlot.getBidAdm())) {
                final JSONObject m34680a = m34680a(adSlot, c4559j, i);
                if (m34680a == null) {
                    abstractC4636a.mo34084a(-9, C4566f.m35036a(-9));
                    return;
                }
                final long currentTimeMillis = System.currentTimeMillis();
                final AtomicLong atomicLong = new AtomicLong(currentTimeMillis);
                final AtomicLong atomicLong2 = new AtomicLong(currentTimeMillis);
                new C4181f(1, C5438af.m32259i("/api/ad/union/sdk/get_ads/"), m34680a, new C4218m.AbstractC4219a<JSONObject>() { // from class: com.bytedance.sdk.openadsdk.core.p.2
                    @Override // com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
                    /* renamed from: a */
                    public void mo33422a(C4218m<JSONObject> c4218m) {
                        atomicLong.set(System.currentTimeMillis());
                        JSONObject mo34667a = C4638p.this.mo34667a(c4218m.f15468a);
                        if (mo34667a == null) {
                            C4638p.this.m34677a(abstractC4636a);
                            C4638p.this.m34683a(c4218m.f15472e, adSlot.getCodeId(), i, null, -1, "mate parse_fail");
                            return;
                        }
                        try {
                            C4645a m34641a = C4645a.m34641a(mo34667a, adSlot, c4559j);
                            C4590i.m34845a(C4638p.this.f16955a, m34641a.f16990i);
                            if (m34641a.f16985d != 20000) {
                                if (C4600n.m34805h().m34877l() || m34641a.f16985d != 40029) {
                                    abstractC4636a.mo34084a(m34641a.f16985d, m34641a.f16986e);
                                } else {
                                    abstractC4636a.mo34084a(-100, C4566f.m35036a(-100));
                                }
                                C4638p.this.m34683a(c4218m.f15472e, adSlot.getCodeId(), i, m34641a, m34641a.f16985d, String.valueOf(m34641a.f16987f));
                            } else if (m34641a.f16989h == null) {
                                C4638p.this.m34677a(abstractC4636a);
                                C4638p.this.m34683a(c4218m.f15472e, adSlot.getCodeId(), i, m34641a, -1, "parse_fail");
                            } else {
                                m34641a.f16989h.m35339c(mo34667a.toString());
                                atomicLong2.set(System.currentTimeMillis());
                                abstractC4636a.mo34083a(m34641a.f16989h);
                                Map<String, C4557i> m35346a = C4545a.m35346a(m34641a.f16989h);
                                if (m35346a != null) {
                                    C4863a.m33717a().m33712a(m35346a);
                                }
                                if (m34641a.f16989h.m35343b() == null || m34641a.f16989h.m35343b().isEmpty()) {
                                    return;
                                }
                                C4557i c4557i = m34641a.f16989h.m35343b().get(0);
                                String m32294b = C5438af.m32294b(i);
                                HashMap hashMap = new HashMap();
                                C4559j c4559j2 = c4559j;
                                if (c4559j2 != null && c4559j2.f16594f > 0) {
                                    hashMap.put("client_start_time", Long.valueOf(currentTimeMillis - c4559j.f16594f));
                                    hashMap.put("load_ts", Long.valueOf(c4559j.f16594f));
                                    hashMap.put("total_time", Long.valueOf(atomicLong2.get() - c4559j.f16594f));
                                }
                                hashMap.put("request_ts", Long.valueOf(currentTimeMillis));
                                hashMap.put("s_revice_ts", Long.valueOf(m34641a.f16983b));
                                hashMap.put("s_send_ts", Long.valueOf(m34641a.f16984c));
                                hashMap.put("c_revice_ts", Long.valueOf(atomicLong.get()));
                                hashMap.put("c_end_ts", Long.valueOf(atomicLong2.get()));
                                hashMap.put("network_time", Long.valueOf(c4218m.f15473f));
                                hashMap.put("go_time", Long.valueOf(m34641a.f16983b - currentTimeMillis));
                                hashMap.put("sever_time", Integer.valueOf(m34641a.f16982a));
                                hashMap.put("back_time", Long.valueOf(atomicLong.get() - m34641a.f16984c));
                                hashMap.put("client_end_time", Long.valueOf(atomicLong2.get() - atomicLong.get()));
                                C4811e.m33872a(c4557i, m32294b, hashMap);
                            }
                        } catch (Throwable th) {
                            C5478q.m32108c("NetApiImpl", "get ad error: ", th);
                            C4638p.this.m34677a(abstractC4636a);
                            C4638p.this.m34683a(c4218m.f15472e, adSlot.getCodeId(), i, null, -1, "parse_fail");
                        }
                    }

                    @Override // com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
                    /* renamed from: b */
                    public void mo33419b(C4218m<JSONObject> c4218m) {
                        int i2;
                        VAdError vAdError = c4218m.f15470c;
                        if (vAdError instanceof C4243e) {
                            C4638p.this.m34677a(abstractC4636a);
                            C4638p.this.m34683a(c4218m.f15472e, adSlot.getCodeId(), i, null, -1, C4566f.m35036a(-1));
                            return;
                        }
                        String m35036a = C4566f.m35036a(-2);
                        if (vAdError == null || c4218m == null) {
                            i2 = -2;
                        } else {
                            i2 = (int) c4218m.f15475h;
                            m35036a = vAdError.getMessage();
                        }
                        abstractC4636a.mo34084a(i2, m35036a);
                        if (vAdError instanceof C4245g) {
                            m35036a = "SocketTimeout";
                        }
                        C4638p.this.m34683a(c4218m.f15472e, adSlot.getCodeId(), i, null, i2, m35036a);
                    }
                }) { // from class: com.bytedance.sdk.openadsdk.core.p.3
                    @Override // com.bytedance.sdk.adnet.core.Request
                    public Map<String, String> getHeaders() throws C4239a {
                        HashMap hashMap = new HashMap();
                        String m34622c = C4650s.m34622c(m34680a.toString());
                        if (m34622c != null) {
                            hashMap.put("ss-sign", m34622c);
                        }
                        return hashMap;
                    }
                }.setRetryPolicy(C4959e.m33435b().m36171a(m34684a(i)).m36170b(0)).setUserAgent(C5438af.m32295b()).setShouldCache(false).build(C4959e.m33434c().m33431f());
            } else {
                C5478q.m32112b("bidding", "getAd bidAdm有效，则直接解析返回广告：BidAdm->MD5->" + C5028b.m33243a(adSlot.getBidAdm()));
                try {
                    JSONObject mo34667a = mo34667a(new JSONObject(adSlot.getBidAdm()));
                    if (mo34667a == null) {
                        m34677a(abstractC4636a);
                        return;
                    }
                    C4645a m34641a = C4645a.m34641a(mo34667a, adSlot, c4559j);
                    C4590i.m34845a(this.f16955a, m34641a.f16990i);
                    if (m34641a.f16985d != 20000) {
                        abstractC4636a.mo34084a(m34641a.f16985d, m34641a.f16986e);
                    } else if (m34641a.f16989h == null) {
                        m34677a(abstractC4636a);
                    } else {
                        m34641a.f16989h.m35339c(mo34667a.toString());
                        abstractC4636a.mo34083a(m34641a.f16989h);
                    }
                } catch (Throwable th) {
                    C5478q.m32108c("NetApiImpl", "get ad error: ", th);
                    m34677a(abstractC4636a);
                }
            }
        }
    }

    /* renamed from: b */
    private boolean m34657b(AbstractC4635o.AbstractC4636a abstractC4636a) {
        if (!f16953g) {
            if (C5471m.m32130a(C4600n.m34815a())) {
                f16953g = true;
            } else if (abstractC4636a != null) {
                abstractC4636a.mo34084a(-15, C4566f.m35036a(-15));
                f16953g = false;
            }
        }
        return f16953g;
    }

    /* renamed from: c */
    private JSONObject m34654c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AppsFlyerProperties.APP_ID, C4570g.m35020b().m35012d());
            jSONObject.put("name", C4570g.m35020b().m35008e());
            m34643h(jSONObject);
            C5438af.m32297a(jSONObject, false);
            jSONObject.put("is_paid_app", C4570g.m35020b().m35000i());
            if (C4650s.m34623b(C4590i.m34846a(this.f16955a)) != null) {
                jSONObject.put("apk_sign", C4650s.m34623b(C4590i.m34846a(this.f16955a)));
            }
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    /* renamed from: c */
    private void m34653c(JSONObject jSONObject) throws JSONException {
        int m35004g = C4570g.m35020b().m35004g();
        if ((C4600n.m34805h().m34863s() == -1 && C5438af.m32245p()) || C4600n.m34805h().m34863s() == 1) {
            if (m35004g == 1 || m35004g == -1 || C4570g.m35020b().m35002h() == 1) {
                return;
            }
            jSONObject.put("ip", m34652d());
        } else if (C4600n.m34805h().m34863s() == 1 && m35004g == 0) {
            jSONObject.put("ip", m34652d());
        } else {
            boolean z = C4600n.m34805h().m34863s() == 1 && (m35004g == 1 || m35004g == -1);
            boolean z2 = false;
            if (C4600n.m34805h().m34863s() == -1) {
                z2 = false;
                if (m35004g == 1) {
                    z2 = true;
                }
            }
            if (z || z2 || C4570g.m35020b().m35002h() == 1) {
                return;
            }
            jSONObject.put("ip", m34652d());
        }
    }

    /* renamed from: d */
    private String m34652d() {
        return C5461h.m32164a(true);
    }

    /* renamed from: d */
    private boolean m34651d(JSONObject jSONObject) {
        return jSONObject != null && jSONObject.length() > 0;
    }

    /* renamed from: e */
    private JSONObject m34650e() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ua", C5438af.m32295b());
            jSONObject.put("ad_sdk_version", "3.5.0.5");
            jSONObject.put("sim_op", m34682a(this.f16955a));
            jSONObject.put("root", this.f16956b ? 1 : 0);
            jSONObject.put("timezone", m34644h());
            jSONObject.put("access", C5482t.m32085f(this.f16955a));
            jSONObject.put("os", "Android");
            jSONObject.put("os_version", Build.VERSION.RELEASE);
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("device_type", this.f16958d);
            jSONObject.put("device_model", Build.MODEL);
            jSONObject.put("device_brand", Build.BRAND);
            jSONObject.put("device_manufacturer", Build.MANUFACTURER);
            jSONObject.put("language", Locale.getDefault().getLanguage());
            jSONObject.put("resolution", C5443ag.m32215d(this.f16955a) + "x" + C5443ag.m32218c(this.f16955a));
            jSONObject.put("display_density", m34660b(C5443ag.m32211f(this.f16955a)));
            jSONObject.put("density_dpi", C5443ag.m32211f(this.f16955a));
            jSONObject.put("device_id", C4590i.m34846a(this.f16955a));
            jSONObject.put("aid", "1371");
            jSONObject.put("rom", m34646g());
            jSONObject.put("cpu_abi", Build.CPU_ABI);
            jSONObject.put("ut", this.f16960f);
            jSONObject.put("uid", this.f16959e);
            jSONObject.put("google_aid", C3236a.m39088a().m39084b());
            jSONObject.put("locale_language", C5461h.m32159c());
            jSONObject.put("screen_bright", Math.ceil(C5461h.m32157d() * 10.0f) / 10.0d);
            int i = 1;
            if (C5461h.m32167a()) {
                i = 0;
            }
            jSONObject.put("is_screen_off", i);
            C4588e m34805h = C4600n.m34805h();
            if (m34805h.m34862s("mnc")) {
                jSONObject.put("mnc", C5433aa.m32327c());
            }
            if (m34805h.m34862s("mcc")) {
                jSONObject.put("mcc", C5433aa.m32328b());
            }
        } catch (Exception e) {
        }
        return jSONObject;
    }

    /* renamed from: e */
    private void m34649e(JSONObject jSONObject) {
        if (!C4570g.m35020b().m34989s()) {
            return;
        }
        try {
            jSONObject.getJSONObject("header").put("aid", "4562");
        } catch (Exception e) {
            e.printStackTrace();
        }
        JSONObject m32332a = C5432a.m32332a(jSONObject);
        if (m34651d(m32332a)) {
            jSONObject = m32332a;
        }
        final Map<String, String> m34647f = m34647f(jSONObject);
        new C4181f(1, C5438af.m32252l(), jSONObject, FutureC4184i.m36235a()) { // from class: com.bytedance.sdk.openadsdk.core.p.5
            @Override // com.bytedance.sdk.adnet.core.Request
            public Map<String, String> getHeaders() throws C4239a {
                return m34647f;
            }
        }.setRetryPolicy(C4959e.m33435b().m36171a(10000)).setUserAgent(C5438af.m32295b()).build(C4959e.m33434c().m33432e());
    }

    /* renamed from: f */
    private Map<String, String> m34647f(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        hashMap.put("Content-Type", "application/json; charset=utf-8");
        if (m34651d(jSONObject)) {
            hashMap.put("Content-Encoding", "union_sdk_encode");
        }
        return hashMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0025, code lost:
        if (new java.io.File("/system/xbin/su").exists() != false) goto L7;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m34648f() {
        /*
            r0 = 0
            r3 = r0
            java.io.File r0 = new java.io.File     // Catch: java.lang.Exception -> L2c
            r4 = r0
            r0 = r4
            java.lang.String r1 = "/system/bin/su"
            r0.<init>(r1)     // Catch: java.lang.Exception -> L2c
            r0 = r4
            boolean r0 = r0.exists()     // Catch: java.lang.Exception -> L2c
            if (r0 != 0) goto L28
            java.io.File r0 = new java.io.File     // Catch: java.lang.Exception -> L2c
            r4 = r0
            r0 = r4
            java.lang.String r1 = "/system/xbin/su"
            r0.<init>(r1)     // Catch: java.lang.Exception -> L2c
            r0 = r4
            boolean r0 = r0.exists()     // Catch: java.lang.Exception -> L2c
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L2a
        L28:
            r0 = 1
            r3 = r0
        L2a:
            r0 = r3
            return r0
        L2c:
            r4 = move-exception
            goto L2a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.C4638p.m34648f():boolean");
    }

    /* renamed from: g */
    private static String m34646g() {
        StringBuilder sb = new StringBuilder();
        try {
            if (C5487y.m32050e()) {
                sb.append("MIUI-");
            } else if (C5487y.m32056b()) {
                sb.append("FLYME-");
            } else {
                String m32041n = C5487y.m32041n();
                if (C5487y.m32057a(m32041n)) {
                    sb.append("EMUI-");
                }
                if (!TextUtils.isEmpty(m32041n)) {
                    sb.append(m32041n);
                    sb.append(VerificationLanguage.REGION_PREFIX);
                }
            }
            sb.append(Build.VERSION.INCREMENTAL);
        } catch (Throwable th) {
        }
        return sb.toString();
    }

    /* renamed from: g */
    private boolean m34645g(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                return jSONObject.optString("message").equalsIgnoreCase("success");
            } catch (Throwable th) {
                return false;
            }
        }
        return false;
    }

    /* renamed from: h */
    private static int m34644h() {
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

    /* renamed from: h */
    private void m34643h(JSONObject jSONObject) {
        try {
            jSONObject.put("package_name", C5438af.m32283d());
            jSONObject.put("version_code", C5438af.m32277e());
            jSONObject.put("version", C5438af.m32272f());
        } catch (Exception e) {
        }
    }

    /* renamed from: i */
    private String m34642i() {
        return C5461h.m32158c(this.f16955a) ? "tv" : C5461h.m32162b(this.f16955a) ? "android_pad" : com.mopub.common.Constants.ANDROID_PLATFORM;
    }

    @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o
    /* renamed from: a */
    public C4561l mo34685a() {
        C4218m c4218m;
        if (!C4587d.m34919a()) {
            return null;
        }
        FutureC4184i m36235a = FutureC4184i.m36235a();
        new C4185j(0, C5437ae.m32313b(C4600n.m34805h().m34867q()), m36235a).setRetryPolicy(C4959e.m33435b().m36171a(10000)).setShouldCache(false).build(C4959e.m33434c().m33432e());
        try {
            c4218m = m36235a.get();
        } catch (Exception e) {
            c4218m = null;
        }
        C4561l c4561l = null;
        if (c4218m != null) {
            c4561l = null;
            if (c4218m.m36115a()) {
                c4561l = C4561l.m35092d((String) c4218m.f15468a);
            }
        }
        return c4561l;
    }

    @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o
    /* renamed from: a */
    public C4820i mo34668a(List<C4805a> list) {
        C4218m c4218m;
        String str;
        if (!C4587d.m34919a()) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        boolean z = false;
        try {
            m34670a(list.get(0));
            jSONObject.put("header", m34650e());
            JSONArray jSONArray = new JSONArray();
            for (C4805a c4805a : list) {
                jSONArray.put(c4805a.f17659b);
            }
            jSONObject.put("event", jSONArray);
            jSONObject.put("_gen_time", System.currentTimeMillis());
        } catch (JSONException e) {
        }
        JSONObject m32332a = C5432a.m32332a(jSONObject);
        if (!m34651d(m32332a)) {
            m32332a = jSONObject;
        }
        C5478q.m32112b("adevent", "adevent is :" + jSONObject.toString());
        final Map<String, String> m34647f = m34647f(m32332a);
        FutureC4184i m36235a = FutureC4184i.m36235a();
        new C4181f(1, C5437ae.m32313b(C5438af.m32255k()), m32332a, m36235a) { // from class: com.bytedance.sdk.openadsdk.core.p.4
            @Override // com.bytedance.sdk.adnet.core.Request
            public Map<String, String> getHeaders() throws C4239a {
                return m34647f;
            }
        }.setRetryPolicy(C4959e.m33435b().m36171a(10000)).setUserAgent(C5438af.m32295b()).build(C4959e.m33434c().m33432e());
        try {
            c4218m = m36235a.get();
        } catch (Throwable th) {
            c4218m = null;
        }
        boolean z2 = c4218m != null && m34645g((JSONObject) c4218m.f15468a);
        int i = c4218m != null ? (int) c4218m.f15475h : 0;
        if (z2 || i != 200) {
            str = (c4218m == null || c4218m.f15470c == null) ? "error unknown" : c4218m.f15470c.getMessage();
        } else {
            str = "server say not success";
            z = true;
        }
        m34649e(jSONObject);
        return new C4820i(z2, i, str, z);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: AttachTryCatchVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Null type added to not empty exception handler: Exception -> 0x0072
        	at jadx.core.dex.trycatch.ExceptionHandler.addCatchType(ExceptionHandler.java:54)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.createHandler(AttachTryCatchVisitor.java:136)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.convertToHandlers(AttachTryCatchVisitor.java:123)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.initTryCatches(AttachTryCatchVisitor.java:59)
        	at jadx.core.dex.visitors.AttachTryCatchVisitor.visit(AttachTryCatchVisitor.java:47)
        */
    @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o
    /* renamed from: a */
    public org.json.JSONObject mo34667a(org.json.JSONObject r5) {
        /*
            r4 = this;
            r0 = r5
            if (r0 != 0) goto L6
            r0 = r5
            return r0
            boolean r0 = com.bytedance.sdk.openadsdk.core.C4638p.f16954h
            if (r0 == 0) goto L64
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
            if (r0 != r1) goto L36
            r0 = r7     // Catch: java.lang.Exception -> L72
            java.lang.String r0 = com.bytedance.sdk.openadsdk.utils.C5432a.m32330b(r0)     // Catch: java.lang.Exception -> L72
            r9 = r0     // Catch: java.lang.Exception -> L72
            r0 = r9     // Catch: java.lang.Exception -> L72 java.lang.Exception -> L72
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> L72
            r10 = r0     // Catch: java.lang.Exception -> L72
            r0 = r10     // Catch: java.lang.Exception -> L72
            if (r0 != 0) goto L64
            org.json.JSONObject r0 = new org.json.JSONObject
            r7 = r0
            r0 = r7
            r1 = r9
            r0.<init>(r1)
            r0 = r7     // Catch: java.lang.Throwable -> L5c
            java.lang.String r1 = "auction_price"     // Catch: java.lang.Throwable -> L5c
            r2 = r8     // Catch: java.lang.Throwable -> L5c
            org.json.JSONObject r0 = r0.put(r1, r2)     // Catch: java.lang.Throwable -> L5c
            r0 = r7     // Catch: java.lang.Throwable -> L5c
            r9 = r0
            goto L67
        L5c:
            r9 = move-exception
            r0 = r7
            r9 = r0
            goto L67
            r0 = r5
            r9 = r0
            boolean r0 = com.bytedance.sdk.openadsdk.core.C4638p.f16954h
            if (r0 == 0) goto L70
            r0 = r9
            return r0
            r0 = r5
            return r0
        L72:
            r9 = move-exception
            goto L64
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.C4638p.mo34667a(org.json.JSONObject):org.json.JSONObject");
    }

    @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o
    /* renamed from: a */
    public void mo34679a(final AdSlot adSlot, final C4559j c4559j, final int i, final AbstractC4635o.AbstractC4636a abstractC4636a) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            C4592k.m34835b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.p.1
                @Override // java.lang.Runnable
                public void run() {
                    C4638p.this.m34659b(adSlot, c4559j, i, abstractC4636a);
                }
            });
        } else {
            m34659b(adSlot, c4559j, i, abstractC4636a);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o
    /* renamed from: a */
    public void mo34678a(C4557i c4557i, List<FilterWord> list) {
        JSONObject m34658b;
        if (C4587d.m34919a() && (m34658b = m34658b(c4557i, list)) != null) {
            new C4183h(1, C5438af.m32259i("/api/ad/union/dislike_event/"), C5432a.m32332a(m34658b), null).setRetryPolicy(C4959e.m33435b().m36171a(10000)).build(C4959e.m33434c().m33432e());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o
    /* renamed from: a */
    public void mo34665a(JSONObject jSONObject, final AbstractC4635o.AbstractC4637b abstractC4637b) {
        if (!C4587d.m34919a()) {
            if (abstractC4637b == null) {
                return;
            }
            abstractC4637b.mo34687a(1000, "广告请求开关已关闭,请联系穿山甲管理员");
        } else if (jSONObject == null || abstractC4637b == null) {
        } else {
            new C4181f(1, C5438af.m32259i("/api/ad/union/sdk/reward_video/reward/"), C5432a.m32332a(jSONObject), new C4218m.AbstractC4219a<JSONObject>() { // from class: com.bytedance.sdk.openadsdk.core.p.6
                @Override // com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
                /* renamed from: a */
                public void mo33422a(C4218m<JSONObject> c4218m) {
                    if (c4218m == null || c4218m.f15468a == null) {
                        C4638p.this.m34676a(abstractC4637b);
                        return;
                    }
                    int optInt = c4218m.f15468a.optInt("cypher", -1);
                    String optString = c4218m.f15468a.optString("message");
                    JSONObject jSONObject2 = c4218m.f15468a;
                    String str = null;
                    if (optInt == 3) {
                        str = C5432a.m32330b(optString);
                    }
                    JSONObject jSONObject3 = jSONObject2;
                    if (!TextUtils.isEmpty(str)) {
                        try {
                            jSONObject3 = new JSONObject(str);
                        } catch (Throwable th) {
                            jSONObject3 = jSONObject2;
                        }
                    }
                    C4646b m34640a = C4646b.m34640a(jSONObject3);
                    if (m34640a.f16991a != 20000) {
                        abstractC4637b.mo34687a(m34640a.f16991a, C4566f.m35036a(m34640a.f16991a));
                    } else if (m34640a.f16993c == null) {
                        C4638p.this.m34676a(abstractC4637b);
                    } else {
                        abstractC4637b.mo34686a(m34640a);
                    }
                }

                @Override // com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
                /* renamed from: b */
                public void mo33419b(C4218m<JSONObject> c4218m) {
                    int i = -2;
                    String m35036a = C4566f.m35036a(-2);
                    if (c4218m != null) {
                        i = (int) c4218m.f15475h;
                    }
                    String str = m35036a;
                    if (c4218m != null) {
                        str = m35036a;
                        if (c4218m.f15470c != null) {
                            str = c4218m.f15470c.getMessage();
                        }
                    }
                    abstractC4637b.mo34687a(i, str);
                }
            }).setRetryPolicy(C4959e.m33435b().m36171a(10000)).build(C4959e.m33434c().m33432e());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o
    /* renamed from: b */
    public C4820i mo34655b(JSONObject jSONObject) {
        boolean z;
        boolean z2;
        int i;
        String str;
        int i2;
        C4218m c4218m;
        if (C4587d.m34919a() && jSONObject != null && jSONObject.length() > 0) {
            FutureC4184i m36235a = FutureC4184i.m36235a();
            boolean z3 = true;
            new C4181f(1, C5438af.m32259i("/api/ad/union/sdk/stats/batch/"), C5432a.m32332a(jSONObject), m36235a).setRetryPolicy(C4959e.m33435b().m36171a(10000)).setUserAgent(C5438af.m32295b()).build(C4959e.m33434c().m33432e());
            String str2 = "error unknown";
            boolean z4 = false;
            try {
                c4218m = m36235a.get();
            } catch (Throwable th) {
                i2 = 0;
                z3 = false;
            }
            if (c4218m == null) {
                return new C4820i(false, 0, "error unknown", false);
            }
            if (c4218m.f15468a != 0) {
                int optInt = ((JSONObject) c4218m.f15468a).optInt("code", -1);
                String optString = ((JSONObject) c4218m.f15468a).optString("data", "");
                z4 = optInt == 20000;
                if (optInt == 60005) {
                    str2 = optString;
                } else {
                    z3 = false;
                    str2 = optString;
                }
            } else {
                z3 = false;
                z4 = false;
            }
            try {
                i2 = (int) c4218m.f15475h;
                i = i2;
                z2 = z3;
                z = z4;
                str = str2;
                try {
                    if (c4218m.f15470c != null) {
                        str = c4218m.f15470c.getMessage();
                        i = i2;
                        z2 = z3;
                        z = z4;
                    }
                } catch (Throwable th2) {
                    str = str2;
                    z = z4;
                    z2 = z3;
                    i = i2;
                    return new C4820i(z, i, str, z2);
                }
            } catch (Throwable th3) {
                i2 = 0;
            }
            return new C4820i(z, i, str, z2);
        }
        return null;
    }
}
