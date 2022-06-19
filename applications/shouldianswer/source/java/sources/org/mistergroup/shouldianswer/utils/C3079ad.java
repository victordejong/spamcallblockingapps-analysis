package org.mistergroup.shouldianswer.utils;

import android.os.Build;
import androidx.customview.p026a.AbstractC0610a;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.net.ConnectException;
import java.net.UnknownHostException;
import java.util.Date;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p077b.p078a.AbstractC1632d;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p081e.p083b.C1694h;
import okhttp3.AbstractC1953aa;
import okhttp3.AbstractC1957ac;
import okhttp3.C1955ab;
import okhttp3.C2095v;
import okhttp3.C2098w;
import okhttp3.C2104z;
import org.json.JSONObject;
import org.mistergroup.shouldianswer.model.C2405c;
import org.mistergroup.shouldianswer.model.C2454t;
import org.mistergroup.shouldianswer.model.communityDatabase.C2408a;
/* renamed from: org.mistergroup.shouldianswer.utils.ad */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/ad.class */
public final class C3079ad {

    /* renamed from: a */
    public static final C3079ad f8982a = new C3079ad();

    /* renamed from: b */
    private static final String f8983b = f8983b;

    /* renamed from: b */
    private static final String f8983b = f8983b;

    /* renamed from: c */
    private static final String f8984c = f8984c;

    /* renamed from: c */
    private static final String f8984c = f8984c;

    /* renamed from: d */
    private static final String f8985d = f8985d;

    /* renamed from: d */
    private static final String f8985d = f8985d;

    /* renamed from: e */
    private static final String f8986e = f8986e;

    /* renamed from: e */
    private static final String f8986e = f8986e;

    /* renamed from: f */
    private static final String f8987f = f8987f;

    /* renamed from: f */
    private static final String f8987f = f8987f;

    /* renamed from: g */
    private static final String f8988g = f8988g;

    /* renamed from: g */
    private static final String f8988g = f8988g;

    /* renamed from: h */
    private static final String f8989h = f8989h;

    /* renamed from: h */
    private static final String f8989h = f8989h;

    /* renamed from: i */
    private static final String f8990i = f8990i;

    /* renamed from: i */
    private static final String f8990i = f8990i;

    /* renamed from: j */
    private static final String f8991j = f8991j;

    /* renamed from: j */
    private static final String f8991j = f8991j;

    /* renamed from: k */
    private static final String f8992k = f8992k;

    /* renamed from: k */
    private static final String f8992k = f8992k;

    /* renamed from: l */
    private static final String f8993l = f8993l;

    /* renamed from: l */
    private static final String f8993l = f8993l;

    /* renamed from: m */
    private static final String f8994m = f8994m;

    /* renamed from: m */
    private static final String f8994m = f8994m;

    /* renamed from: n */
    private static final String f8995n = f8995n;

    /* renamed from: n */
    private static final String f8995n = f8995n;

    /* renamed from: org.mistergroup.shouldianswer.utils.ad$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/ad$a.class */
    public static final class C3080a {

        /* renamed from: a */
        private boolean f8996a;

        /* renamed from: b */
        private int f8997b;

        /* renamed from: c */
        private String f8998c;

        /* renamed from: d */
        private Date f8999d = new Date();

        /* renamed from: e */
        private JSONObject f9000e;

        /* renamed from: a */
        public final void m206a(int i) {
            this.f8997b = i;
        }

        /* renamed from: a */
        public final void m205a(String str) {
            this.f8998c = str;
        }

        /* renamed from: a */
        public final void m204a(JSONObject jSONObject) {
            this.f9000e = jSONObject;
        }

        /* renamed from: a */
        public final void m203a(boolean z) {
            this.f8996a = z;
        }

        /* renamed from: a */
        public final boolean m207a() {
            return this.f8996a;
        }

        /* renamed from: b */
        public final String m202b() {
            return this.f8998c;
        }

        /* renamed from: c */
        public final JSONObject m201c() {
            return this.f9000e;
        }
    }

    @AbstractC1634f(m3162b = "WebService.kt", m3161c = {168, 169, 189, 203, 238, 239}, m3160d = "uploadData", m3159e = "org.mistergroup.shouldianswer.utils.WebService")
    /* renamed from: org.mistergroup.shouldianswer.utils.ad$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/ad$b.class */
    public static final class C3081b extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f9001a;

        /* renamed from: b */
        int f9002b;

        /* renamed from: d */
        Object f9004d;

        /* renamed from: e */
        Object f9005e;

        /* renamed from: f */
        Object f9006f;

        /* renamed from: g */
        Object f9007g;

        /* renamed from: h */
        Object f9008h;

        /* renamed from: i */
        Object f9009i;

        /* renamed from: j */
        Object f9010j;

        /* renamed from: k */
        Object f9011k;

        /* renamed from: l */
        Object f9012l;

        /* renamed from: m */
        Object f9013m;

        /* renamed from: n */
        Object f9014n;

        /* renamed from: o */
        Object f9015o;

        /* renamed from: p */
        boolean f9016p;

        /* renamed from: q */
        long f9017q;

        /* renamed from: r */
        long f9018r;

        /* renamed from: s */
        int f9019s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C3081b(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C3079ad.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f9001a = obj;
            this.f9002b |= AbstractC0610a.INVALID_ID;
            return C3079ad.this.m215a(false, (AbstractC1641c<? super Boolean>) this);
        }
    }

    private C3079ad() {
    }

    /* renamed from: a */
    private final AbstractC1953aa m216a(HashMap<String, String> hashMap) {
        HashMap<String, String> hashMap2 = hashMap;
        if (hashMap == null) {
            hashMap2 = new HashMap<>();
        }
        HashMap<String, String> hashMap3 = hashMap2;
        hashMap3.put("_appId", C2405c.f6946b.m1172m());
        String str = Build.DEVICE;
        C1694h.m3122a((Object) str, "Build.DEVICE");
        hashMap3.put("_device", str);
        String str2 = Build.MODEL;
        C1694h.m3122a((Object) str2, "Build.MODEL");
        hashMap3.put("_model", str2);
        String str3 = Build.MANUFACTURER;
        C1694h.m3122a((Object) str3, "Build.MANUFACTURER");
        hashMap3.put("_manufacturer", str3);
        hashMap3.put("_api", String.valueOf(Build.VERSION.SDK_INT));
        hashMap3.put("_appFamily", C2405c.f6946b.m1202a());
        hashMap3.put("_appVer", String.valueOf(C3118r.f9187a.m96c()));
        hashMap3.put("_dbVer", String.valueOf(C2408a.f6967a.m1150b()));
        hashMap3.put("_country", C2454t.f7186a.m984a().m982a().toString());
        C2095v.C2096a m1886a = new C2095v.C2096a().m1886a(C2095v.f5382e);
        StringBuilder sb = new StringBuilder();
        for (String str4 : hashMap2.keySet()) {
            String str5 = hashMap2.get(str4);
            if (str5 != null) {
                sb.append(str5);
                m1886a.m1887a(str4, str5);
            }
        }
        C3105k c3105k = C3105k.f9133a;
        m1886a.m1887a("_checksum", c3105k.m150a(sb.toString() + "saltandmira2"));
        C2095v m1888a = m1886a.m1888a();
        C1694h.m3122a((Object) m1888a, "bodyBuilder.build()");
        return m1888a;
    }

    /* renamed from: b */
    private final String m213b(String str) {
        return "https://aapi.shouldianswer.net/srvapp" + str;
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x08d6 A[Catch: Exception -> 0x0a45, TryCatch #0 {Exception -> 0x0a45, blocks: (B:13:0x0112, B:15:0x01ad, B:18:0x0232, B:21:0x02b2, B:24:0x0307, B:27:0x0335, B:30:0x034a, B:32:0x0396, B:34:0x03a6, B:36:0x03b7, B:36:0x03b7, B:37:0x03ba, B:43:0x03f2, B:50:0x0446, B:52:0x046f, B:54:0x0479, B:56:0x0514, B:58:0x0519, B:60:0x0544, B:62:0x0577, B:68:0x05d5, B:74:0x0710, B:76:0x0732, B:78:0x073c, B:80:0x0750, B:82:0x0770, B:84:0x0781, B:86:0x078b, B:89:0x07a9, B:91:0x07b0, B:93:0x07c4, B:97:0x07d9, B:99:0x07e0, B:101:0x07e8, B:103:0x07f9, B:103:0x07f9, B:104:0x07fc, B:106:0x08d6, B:108:0x08f9, B:113:0x099a, B:115:0x0a16, B:119:0x0a25, B:121:0x0a32, B:121:0x0a32, B:122:0x0a35), top: B:127:0x0055 }] */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0a22  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0a32 A[Catch: Exception -> 0x0a45, Exception -> 0x0a45, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x0a45, blocks: (B:13:0x0112, B:15:0x01ad, B:18:0x0232, B:21:0x02b2, B:24:0x0307, B:27:0x0335, B:30:0x034a, B:32:0x0396, B:34:0x03a6, B:36:0x03b7, B:36:0x03b7, B:37:0x03ba, B:43:0x03f2, B:50:0x0446, B:52:0x046f, B:54:0x0479, B:56:0x0514, B:58:0x0519, B:60:0x0544, B:62:0x0577, B:68:0x05d5, B:74:0x0710, B:76:0x0732, B:78:0x073c, B:80:0x0750, B:82:0x0770, B:84:0x0781, B:86:0x078b, B:89:0x07a9, B:91:0x07b0, B:93:0x07c4, B:97:0x07d9, B:99:0x07e0, B:101:0x07e8, B:103:0x07f9, B:103:0x07f9, B:104:0x07fc, B:106:0x08d6, B:108:0x08f9, B:113:0x099a, B:115:0x0a16, B:119:0x0a25, B:121:0x0a32, B:121:0x0a32, B:122:0x0a35), top: B:127:0x0055 }] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0437  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0439  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0479 A[Catch: Exception -> 0x0a45, TRY_LEAVE, TryCatch #0 {Exception -> 0x0a45, blocks: (B:13:0x0112, B:15:0x01ad, B:18:0x0232, B:21:0x02b2, B:24:0x0307, B:27:0x0335, B:30:0x034a, B:32:0x0396, B:34:0x03a6, B:36:0x03b7, B:36:0x03b7, B:37:0x03ba, B:43:0x03f2, B:50:0x0446, B:52:0x046f, B:54:0x0479, B:56:0x0514, B:58:0x0519, B:60:0x0544, B:62:0x0577, B:68:0x05d5, B:74:0x0710, B:76:0x0732, B:78:0x073c, B:80:0x0750, B:82:0x0770, B:84:0x0781, B:86:0x078b, B:89:0x07a9, B:91:0x07b0, B:93:0x07c4, B:97:0x07d9, B:99:0x07e0, B:101:0x07e8, B:103:0x07f9, B:103:0x07f9, B:104:0x07fc, B:106:0x08d6, B:108:0x08f9, B:113:0x099a, B:115:0x0a16, B:119:0x0a25, B:121:0x0a32, B:121:0x0a32, B:122:0x0a35), top: B:127:0x0055 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x05b3  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x05b6  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x06df  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x06e2  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x073c A[Catch: Exception -> 0x0a45, TryCatch #0 {Exception -> 0x0a45, blocks: (B:13:0x0112, B:15:0x01ad, B:18:0x0232, B:21:0x02b2, B:24:0x0307, B:27:0x0335, B:30:0x034a, B:32:0x0396, B:34:0x03a6, B:36:0x03b7, B:36:0x03b7, B:37:0x03ba, B:43:0x03f2, B:50:0x0446, B:52:0x046f, B:54:0x0479, B:56:0x0514, B:58:0x0519, B:60:0x0544, B:62:0x0577, B:68:0x05d5, B:74:0x0710, B:76:0x0732, B:78:0x073c, B:80:0x0750, B:82:0x0770, B:84:0x0781, B:86:0x078b, B:89:0x07a9, B:91:0x07b0, B:93:0x07c4, B:97:0x07d9, B:99:0x07e0, B:101:0x07e8, B:103:0x07f9, B:103:0x07f9, B:104:0x07fc, B:106:0x08d6, B:108:0x08f9, B:113:0x099a, B:115:0x0a16, B:119:0x0a25, B:121:0x0a32, B:121:0x0a32, B:122:0x0a35), top: B:127:0x0055 }] */
    /* JADX WARN: Type inference failed for: r0v321, types: [long] */
    /* JADX WARN: Type inference failed for: r0v323, types: [long] */
    /* JADX WARN: Type inference failed for: r0v344, types: [long] */
    /* JADX WARN: Type inference failed for: r0v346, types: [long] */
    /* JADX WARN: Type inference failed for: r0v359, types: [long] */
    /* JADX WARN: Type inference failed for: r0v361, types: [long] */
    /* JADX WARN: Type inference failed for: r0v388, types: [long] */
    /* JADX WARN: Type inference failed for: r0v390, types: [long] */
    /* JADX WARN: Type inference failed for: r0v430, types: [long] */
    /* JADX WARN: Type inference failed for: r0v432, types: [long] */
    /* JADX WARN: Type inference failed for: r0v483, types: [long] */
    /* JADX WARN: Type inference failed for: r0v485, types: [long] */
    /* JADX WARN: Type inference failed for: r0v535, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m215a(boolean r7, kotlin.p075c.AbstractC1641c<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 2645
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.utils.C3079ad.m215a(boolean, kotlin.c.c):java.lang.Object");
    }

    /* renamed from: a */
    public final String m219a() {
        return f8984c;
    }

    /* renamed from: a */
    public final String m218a(String str) {
        C1694h.m3117b(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        return C2454t.f7186a.m984a().m981b() + str;
    }

    /* renamed from: a */
    public final C1955ab m217a(String str, HashMap<String, String> hashMap) {
        C1694h.m3117b(str, "functionName");
        C3104j.m157a(C3104j.f9124a, "WebService.callServiceDirect function=" + str, (String) null, 2, (Object) null);
        int i = 0;
        while (i <= 2) {
            if (i > 0) {
                try {
                    C3104j.m157a(C3104j.f9124a, "WebService.callServiceDirect retry " + String.valueOf(i), (String) null, 2, (Object) null);
                } catch (ConnectException e) {
                    C3104j.f9124a.m163a(e);
                    i++;
                } catch (UnknownHostException e2) {
                    C3104j.f9124a.m163a(e2);
                    i++;
                } catch (Exception e3) {
                    C3104j.m158a(C3104j.f9124a, e3, (String) null, 2, (Object) null);
                    return null;
                }
            }
            boolean z = true;
            int i2 = i == 0 ? 1 : 10;
            if (i == 0) {
                i2 = 3;
            }
            long j = 10;
            C2098w m1843a = new C2098w.C2100a().m1842a(i2, TimeUnit.SECONDS).m1839c(j, TimeUnit.SECONDS).m1840b(j, TimeUnit.SECONDS).m1841a(false).m1843a();
            C2104z m1815a = new C2104z.C2105a().m1814a(m213b(str)).m1811a(m216a(hashMap)).m1815a();
            C3104j.m157a(C3104j.f9124a, "WebService.callServiceDirect url=" + m1815a.toString(), (String) null, 2, (Object) null);
            C1955ab mo1833b = m1843a.m1879a(m1815a).mo1833b();
            C3104j c3104j = C3104j.f9124a;
            StringBuilder sb = new StringBuilder();
            sb.append("WebService.callServiceDirect success=");
            if (mo1833b == null || !mo1833b.m2490c()) {
                z = false;
            }
            sb.append(String.valueOf(z));
            C3104j.m157a(c3104j, sb.toString(), (String) null, 2, (Object) null);
            return mo1833b;
        }
        return null;
    }

    /* renamed from: b */
    public final String m214b() {
        return f8985d;
    }

    /* renamed from: b */
    public final C3080a m212b(String str, HashMap<String, String> hashMap) {
        C1694h.m3117b(str, "functionName");
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "WebService.callService function=" + str, (String) null, 2, (Object) null);
        C3080a c3080a = new C3080a();
        try {
            C1955ab m217a = m217a(str, hashMap);
            if (m217a != null) {
                if (m217a.m2490c()) {
                    AbstractC1957ac m2486g = m217a.m2486g();
                    if (m2486g != null) {
                        String m2461e = m2486g.m2461e();
                        try {
                            c3080a.m204a(new JSONObject(m2461e));
                            JSONObject m201c = c3080a.m201c();
                            if (m201c == null) {
                                C1694h.m3124a();
                            }
                            c3080a.m203a(m201c.getBoolean(FirebaseAnalytics.Param.SUCCESS));
                        } catch (Exception e) {
                            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                        }
                        if (!c3080a.m207a()) {
                            C3104j c3104j2 = C3104j.f9124a;
                            C3104j.m157a(c3104j2, "unusccess response: " + m2461e, (String) null, 2, (Object) null);
                        }
                    }
                } else {
                    c3080a.m206a(m217a.m2491b());
                    c3080a.m205a(m217a.m2489d());
                    C3104j c3104j3 = C3104j.f9124a;
                    C3104j.m157a(c3104j3, "WebService.callService failed code=" + String.valueOf(m217a.m2491b()) + " message=" + m217a.m2489d(), (String) null, 2, (Object) null);
                }
            }
        } catch (Exception e2) {
            C3104j.m158a(C3104j.f9124a, e2, (String) null, 2, (Object) null);
        }
        C3104j c3104j4 = C3104j.f9124a;
        C3104j.m157a(c3104j4, "WebService.callService success=" + String.valueOf(c3080a.m207a()), (String) null, 2, (Object) null);
        return c3080a;
    }

    /* renamed from: c */
    public final String m211c() {
        return f8989h;
    }

    /* renamed from: d */
    public final String m210d() {
        return f8991j;
    }

    /* renamed from: e */
    public final String m209e() {
        return f8994m;
    }

    /* renamed from: f */
    public final String m208f() {
        return f8995n;
    }
}
