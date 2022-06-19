package p229s2;

import android.content.Context;
import android.net.ConnectivityManager;
import android.util.Log;
import com.applovin.sdk.AppLovinEventTypes;
import com.google.android.gms.internal.ads.C1676a;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p018b3.AbstractC0721a;
import p134j4.C3260w0;
import p218r2.C4184b;
import p221r5.AbstractC4208a;
import p239t2.AbstractC4377j;
import p239t2.AbstractC4378k;
import p239t2.AbstractC4384o;
import p239t2.C4357b;
import p239t2.C4364c;
import p239t2.C4366d;
import p239t2.C4367e;
import p239t2.C4369f;
import p239t2.C4372g;
import p239t2.C4375i;
import p239t2.EnumC4387p;
import p242t5.C4403d;
import p242t5.C4404e;
import p250u2.AbstractC4463f;
import p250u2.C4462e;
import p261v2.AbstractC4593f;
import p261v2.AbstractC4594g;
import p261v2.AbstractC4599k;
import p261v2.C4587a;
import p261v2.C4589b;
/* renamed from: s2.d */
/* loaded from: classes-dex2jar.jar:s2/d.class */
public final class C4282d implements AbstractC4599k {

    /* renamed from: a */
    public final AbstractC4208a f13435a;

    /* renamed from: b */
    public final ConnectivityManager f13436b;

    /* renamed from: c */
    public final Context f13437c;

    /* renamed from: e */
    public final AbstractC0721a f13439e;

    /* renamed from: f */
    public final AbstractC0721a f13440f;

    /* renamed from: d */
    public final URL f13438d = m1115c(C4279a.f13420c);

    /* renamed from: g */
    public final int f13441g = 40000;

    /* renamed from: s2.d$a */
    /* loaded from: classes-dex2jar.jar:s2/d$a.class */
    public static final class C4283a {

        /* renamed from: a */
        public final URL f13442a;

        /* renamed from: b */
        public final AbstractC4377j f13443b;

        /* renamed from: c */
        public final String f13444c;

        public C4283a(URL url, AbstractC4377j abstractC4377j, String str) {
            this.f13442a = url;
            this.f13443b = abstractC4377j;
            this.f13444c = str;
        }
    }

    /* renamed from: s2.d$b */
    /* loaded from: classes-dex2jar.jar:s2/d$b.class */
    public static final class C4284b {

        /* renamed from: a */
        public final int f13445a;

        /* renamed from: b */
        public final URL f13446b;

        /* renamed from: c */
        public final long f13447c;

        public C4284b(int i, URL url, long j) {
            this.f13445a = i;
            this.f13446b = url;
            this.f13447c = j;
        }
    }

    public C4282d(Context context, AbstractC0721a abstractC0721a, AbstractC0721a abstractC0721a2) {
        C4404e c4404e = new C4404e();
        ((C4357b) C4357b.f13590a).m1009a(c4404e);
        c4404e.f13726d = true;
        this.f13435a = new C4403d(c4404e);
        this.f13437c = context;
        this.f13436b = (ConnectivityManager) context.getSystemService("connectivity");
        this.f13439e = abstractC0721a2;
        this.f13440f = abstractC0721a;
    }

    /* renamed from: c */
    public static URL m1115c(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(C1676a.m4789h("Invalid url: ", str), e);
        }
    }

    /* JADX WARN: Type inference failed for: r0v183, types: [long] */
    @Override // p261v2.AbstractC4599k
    /* renamed from: a */
    public AbstractC4594g mo739a(AbstractC4593f abstractC4593f) {
        String str;
        Object m1117b;
        int i;
        Integer num;
        String str2;
        C4369f.C4371b c4371b;
        HashMap hashMap = new HashMap();
        C4587a c4587a = (C4587a) abstractC4593f;
        for (AbstractC4463f abstractC4463f : c4587a.f14176a) {
            String mo899g = abstractC4463f.mo899g();
            if (!hashMap.containsKey(mo899g)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(abstractC4463f);
                hashMap.put(mo899g, arrayList);
            } else {
                ((List) hashMap.get(mo899g)).add(abstractC4463f);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : hashMap.entrySet()) {
            AbstractC4463f abstractC4463f2 = (AbstractC4463f) ((List) entry.getValue()).get(0);
            EnumC4387p enumC4387p = EnumC4387p.DEFAULT;
            Long valueOf = Long.valueOf(this.f13440f.mo7430a());
            Long valueOf2 = Long.valueOf(this.f13439e.mo7430a());
            C4367e c4367e = new C4367e(AbstractC4378k.EnumC4379a.ANDROID_FIREBASE, new C4364c(Integer.valueOf(abstractC4463f2.m900f("sdk-version")), abstractC4463f2.m905a("model"), abstractC4463f2.m905a("hardware"), abstractC4463f2.m905a("device"), abstractC4463f2.m905a(AppLovinEventTypes.USER_VIEWED_PRODUCT), abstractC4463f2.m905a("os-uild"), abstractC4463f2.m905a("manufacturer"), abstractC4463f2.m905a("fingerprint"), abstractC4463f2.m905a("locale"), abstractC4463f2.m905a("country"), abstractC4463f2.m905a("mcc_mnc"), abstractC4463f2.m905a("application_build"), null), null);
            try {
                str2 = null;
                num = Integer.valueOf(Integer.parseInt((String) entry.getKey()));
            } catch (NumberFormatException e) {
                str2 = (String) entry.getKey();
                num = null;
            }
            ArrayList arrayList3 = new ArrayList();
            for (AbstractC4463f abstractC4463f3 : (List) entry.getValue()) {
                C4462e mo902d = abstractC4463f3.mo902d();
                C4184b c4184b = mo902d.f13842a;
                if (c4184b.equals(new C4184b("proto"))) {
                    byte[] bArr = mo902d.f13843b;
                    c4371b = new C4369f.C4371b();
                    c4371b.f13653d = bArr;
                } else if (c4184b.equals(new C4184b("json"))) {
                    String str3 = new String(mo902d.f13843b, Charset.forName("UTF-8"));
                    c4371b = new C4369f.C4371b();
                    c4371b.f13654e = str3;
                } else {
                    Log.w(C3260w0.m2478g("CctTransportBackend"), String.format("Received event of unsupported encoding %s. Skipping...", c4184b));
                }
                c4371b.f13650a = Long.valueOf(abstractC4463f3.mo901e());
                c4371b.f13652c = Long.valueOf(abstractC4463f3.mo898h());
                String str4 = abstractC4463f3.mo904b().get("tz-offset");
                c4371b.f13655f = Long.valueOf(str4 == null ? (char) 0 : Long.valueOf(str4).longValue());
                c4371b.f13656g = new C4375i(AbstractC4384o.EnumC4386b.f13675c.get(abstractC4463f3.m900f("net-type")), AbstractC4384o.EnumC4385a.f13671d.get(abstractC4463f3.m900f("mobile-subtype")), null);
                if (abstractC4463f3.mo903c() != null) {
                    c4371b.f13651b = abstractC4463f3.mo903c();
                }
                String str5 = c4371b.f13650a == null ? " eventTimeMs" : "";
                String str6 = str5;
                if (c4371b.f13652c == null) {
                    str6 = C1676a.m4789h(str5, " eventUptimeMs");
                }
                String str7 = str6;
                if (c4371b.f13655f == null) {
                    str7 = C1676a.m4789h(str6, " timezoneOffsetSeconds");
                }
                if (!str7.isEmpty()) {
                    throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str7));
                }
                arrayList3.add(new C4369f(c4371b.f13650a.longValue(), c4371b.f13651b, c4371b.f13652c.longValue(), c4371b.f13653d, c4371b.f13654e, c4371b.f13655f.longValue(), c4371b.f13656g, null));
            }
            String str8 = valueOf == null ? " requestTimeMs" : "";
            String str9 = str8;
            if (valueOf2 == null) {
                str9 = C1676a.m4789h(str8, " requestUptimeMs");
            }
            if (!str9.isEmpty()) {
                throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str9));
            }
            arrayList2.add(new C4372g(valueOf.longValue(), valueOf2.longValue(), c4367e, num, str2, arrayList3, enumC4387p, null));
        }
        C4366d c4366d = new C4366d(arrayList2);
        URL url = this.f13438d;
        if (c4587a.f14177b != null) {
            try {
                C4279a m1119a = C4279a.m1119a(((C4587a) abstractC4593f).f14177b);
                String str10 = m1119a.f13424b;
                if (str10 == null) {
                    str10 = null;
                }
                String str11 = m1119a.f13423a;
                str = str10;
                if (str11 != null) {
                    url = m1115c(str11);
                    str = str10;
                }
            } catch (IllegalArgumentException e2) {
                return AbstractC4594g.m748a();
            }
        } else {
            str = null;
        }
        int i2 = 5;
        try {
            C4283a c4283a = new C4283a(url, c4366d, str);
            C4280b c4280b = new C4280b(this);
            do {
                m1117b = c4280b.m1117b(c4283a);
                C4284b c4284b = (C4284b) m1117b;
                URL url2 = c4284b.f13446b;
                if (url2 != null) {
                    C3260w0.m2480e("CctTransportBackend", "Following redirect to: %s", url2);
                    c4283a = new C4283a(c4284b.f13446b, c4283a.f13443b, c4283a.f13444c);
                } else {
                    c4283a = null;
                }
                if (c4283a == null) {
                    break;
                }
                i = i2 - 1;
                i2 = i;
            } while (i >= 1);
            C4284b c4284b2 = (C4284b) m1117b;
            int i3 = c4284b2.f13445a;
            return i3 == 200 ? new C4589b(1, c4284b2.f13447c) : (i3 >= 500 || i3 == 404) ? new C4589b(2, -1L) : AbstractC4594g.m748a();
        } catch (IOException e3) {
            C3260w0.m2478g("CctTransportBackend");
            return new C4589b(2, -1L);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:2|(1:4)(1:5)|6|(1:8)(7:9|(1:11)(1:12)|15|21|16|19|20)|14|15|21|16|19|20) */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x011f, code lost:
        if (p239t2.AbstractC4384o.EnumC4385a.f13671d.get(r8) != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0197, code lost:
        p134j4.C3260w0.m2478g("CctTransportBackend");
        r8 = -1;
     */
    @Override // p261v2.AbstractC4599k
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p250u2.AbstractC4463f mo738b(p250u2.AbstractC4463f r6) {
        /*
            Method dump skipped, instructions count: 440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p229s2.C4282d.mo738b(u2.f):u2.f");
    }
}
