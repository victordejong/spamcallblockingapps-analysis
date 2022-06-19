package com.unknownphone.callblocker.p186d;

import java.io.IOException;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.AbstractC5406ad;
import okhttp3.C5550x;
import org.json.JSONException;
import retrofit2.AbstractC5586b;
import retrofit2.AbstractC5589d;
import retrofit2.C5627l;
import retrofit2.C5628m;
import retrofit2.p198a.AbstractC5565d;
import retrofit2.p198a.AbstractC5566e;
import retrofit2.p198a.AbstractC5576o;
/* renamed from: com.unknownphone.callblocker.d.d */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/d/d.class */
public class C5292d {

    /* renamed from: a */
    private static final String f22148a = C5292d.class.getSimpleName();

    /* renamed from: b */
    private static C5292d f22149b;

    /* renamed from: c */
    private AbstractC5294a f22150c = (AbstractC5294a) new C5628m.C5630a().m39a("https://secure.unknownphone.com/api/").m36a(new C5550x.C5552a().m162a(180, TimeUnit.SECONDS).m162a(180, TimeUnit.SECONDS).m159c(180, TimeUnit.SECONDS).m160b(180, TimeUnit.SECONDS).m161a(null).m163a()).m40a().m51a(AbstractC5294a.class);

    /* renamed from: com.unknownphone.callblocker.d.d$a */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/d/d$a.class */
    public interface AbstractC5294a {
        @AbstractC5576o(m125a = "./")
        @AbstractC5566e
        /* renamed from: a */
        AbstractC5586b<AbstractC5406ad> m1041a(@AbstractC5565d Map<String, String> map);
    }

    /* renamed from: com.unknownphone.callblocker.d.d$b */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/d/d$b.class */
    public interface AbstractC5295b {
        /* renamed from: a */
        void mo951a(int i, String str, boolean z);
    }

    private C5292d() {
    }

    /* renamed from: a */
    public static C5292d m1044a() {
        if (f22149b == null) {
            f22149b = new C5292d();
        }
        return f22149b;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0097  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.util.Pair<java.lang.String, java.lang.Boolean> m1043a(java.util.Map<java.lang.String, java.lang.String> r6) {
        /*
            r5 = this;
            r0 = r5
            com.unknownphone.callblocker.d.d$a r0 = r0.f22150c
            r1 = r6
            retrofit2.b r0 = r0.m1041a(r1)
            r7 = r0
            r0 = r7
            retrofit2.l r0 = r0.mo102a()     // Catch: java.io.IOException -> L8b
            r6 = r0
            r0 = r6
            okhttp3.ad r0 = r0.m53c()     // Catch: java.io.IOException -> L8b
            r8 = r0
            r0 = r6
            java.lang.Object r0 = r0.m54b()     // Catch: java.io.IOException -> L8b
            okhttp3.ad r0 = (okhttp3.AbstractC5406ad) r0     // Catch: java.io.IOException -> L8b
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L48
            android.util.Pair r0 = new android.util.Pair     // Catch: java.io.IOException -> L68
            r6 = r0
            r0 = r6
            r1 = r8
            java.lang.String r1 = r1.m779d()     // Catch: java.io.IOException -> L68
            r2 = 1
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)     // Catch: java.io.IOException -> L68
            r0.<init>(r1, r2)     // Catch: java.io.IOException -> L68
        L34:
            r0 = r8
            if (r0 == 0) goto L3c
            r0 = r8
            r0.close()     // Catch: java.io.IOException -> Laa
        L3c:
            r0 = r9
            if (r0 == 0) goto L46
            r0 = r9
            r0.close()     // Catch: java.io.IOException -> Laa
        L46:
            r0 = r6
            return r0
        L48:
            r0 = r9
            if (r0 != 0) goto L7c
            r0 = 0
            r6 = r0
        L4f:
            r0 = r9
            if (r0 != 0) goto L85
            r0 = 1
            r10 = r0
        L57:
            android.util.Pair r0 = new android.util.Pair     // Catch: java.io.IOException -> L68
            r1 = r0
            r2 = r6
            r3 = r10
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r3)     // Catch: java.io.IOException -> L68
            r1.<init>(r2, r3)     // Catch: java.io.IOException -> L68
            r6 = r0
            goto L34
        L68:
            r6 = move-exception
            android.util.Pair r0 = new android.util.Pair     // Catch: java.io.IOException -> L8b
            r1 = r0
            r2 = r6
            java.lang.String r2 = r2.toString()     // Catch: java.io.IOException -> L8b
            r3 = 1
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r3)     // Catch: java.io.IOException -> L8b
            r1.<init>(r2, r3)     // Catch: java.io.IOException -> L8b
            r6 = r0
            goto L34
        L7c:
            r0 = r9
            java.lang.String r0 = r0.m779d()     // Catch: java.io.IOException -> L68
            r6 = r0
            goto L4f
        L85:
            r0 = 0
            r10 = r0
            goto L57
        L8b:
            r8 = move-exception
            r0 = 0
            r6 = r0
        L8e:
            r0 = r7
            boolean r0 = r0.mo98c()
            if (r0 != 0) goto L46
            android.util.Pair r0 = new android.util.Pair
            r1 = r0
            r2 = r8
            java.lang.String r2 = r2.toString()
            r3 = 1
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r3)
            r1.<init>(r2, r3)
            r6 = r0
            goto L46
        Laa:
            r8 = move-exception
            goto L8e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unknownphone.callblocker.p186d.C5292d.m1043a(java.util.Map):android.util.Pair");
    }

    /* renamed from: a */
    public AbstractC5586b<AbstractC5406ad> m1042a(Map<String, String> map, final AbstractC5295b abstractC5295b) {
        AbstractC5586b<AbstractC5406ad> m1041a = this.f22150c.m1041a(map);
        m1041a.mo100a(new AbstractC5589d<AbstractC5406ad>() { // from class: com.unknownphone.callblocker.d.d.1
            @Override // retrofit2.AbstractC5589d
            /* renamed from: a */
            public void mo104a(AbstractC5586b<AbstractC5406ad> abstractC5586b, Throwable th) {
                if (abstractC5586b.mo98c()) {
                    return;
                }
                try {
                    if (abstractC5295b == null) {
                        return;
                    }
                    abstractC5295b.mo951a(0, th.toString(), true);
                } catch (JSONException e) {
                }
            }

            @Override // retrofit2.AbstractC5589d
            /* renamed from: a */
            public void mo103a(AbstractC5586b<AbstractC5406ad> abstractC5586b, C5627l<AbstractC5406ad> c5627l) {
                boolean z = true;
                AbstractC5406ad m53c = c5627l.m53c();
                AbstractC5406ad m54b = c5627l.m54b();
                int m57a = c5627l.m57a();
                try {
                    if (abstractC5295b != null) {
                        if (m53c != null) {
                            abstractC5295b.mo951a(m57a, m53c.m779d(), true);
                        } else {
                            AbstractC5295b abstractC5295b2 = abstractC5295b;
                            String m779d = m54b == null ? null : m54b.m779d();
                            if (m54b != null) {
                                z = false;
                            }
                            abstractC5295b2.mo951a(m57a, m779d, z);
                        }
                    }
                } catch (IOException | JSONException e) {
                    try {
                        abstractC5295b.mo951a(m57a, e.toString(), true);
                    } catch (JSONException e2) {
                    }
                }
                if (m53c != null) {
                    m53c.close();
                }
                if (m54b != null) {
                    m54b.close();
                }
            }
        });
        return m1041a;
    }
}
