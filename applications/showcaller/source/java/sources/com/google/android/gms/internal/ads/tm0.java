package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.common.util.AbstractC6227e;
import java.io.IOException;
@TargetApi(16)
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tm0.class */
public final class tm0 extends km0 implements zj0 {

    /* renamed from: g */
    private ak0 f30056g;

    /* renamed from: h */
    private String f30057h;

    /* renamed from: i */
    private boolean f30058i;

    /* renamed from: j */
    private boolean f30059j;

    /* renamed from: k */
    private bm0 f30060k;

    /* renamed from: l */
    private long f30061l;

    /* renamed from: m */
    private long f30062m;

    public tm0(kk0 kk0Var, jk0 jk0Var) {
        super(kk0Var);
        Context context = kk0Var.getContext();
        mn0 mn0Var = jk0Var.f24917m ? new mn0(context, jk0Var, this.f25258f.get()) : new rl0(context, jk0Var, this.f25258f.get());
        this.f30056g = mn0Var;
        mn0Var.mo11414T(this);
    }

    /* renamed from: A */
    private final void m10628A(long j) {
        C5679c2.f18451a.postDelayed(new Runnable(this) { // from class: com.google.android.gms.internal.ads.sm0

            /* renamed from: d */
            private final tm0 f29581d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29581d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f29581d.m10616y();
            }
        }, j);
    }

    /* renamed from: B */
    private static String m10627B(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        int length = String.valueOf(canonicalName).length();
        StringBuilder sb = new StringBuilder(str.length() + 2 + length + String.valueOf(message).length());
        sb.append(str);
        sb.append("/");
        sb.append(canonicalName);
        sb.append(":");
        sb.append(message);
        return sb.toString();
    }

    /* renamed from: z */
    protected static final String m10615z(String str) {
        String valueOf = String.valueOf(xh0.m9174d(str));
        return valueOf.length() != 0 ? "cache:".concat(valueOf) : new String("cache:");
    }

    @Override // com.google.android.gms.internal.ads.zj0
    /* renamed from: a */
    public final void mo7994a(int i) {
    }

    @Override // com.google.android.gms.internal.ads.km0, com.google.android.gms.common.api.AbstractC6006h
    /* renamed from: b */
    public final void mo10626b() {
        ak0 ak0Var = this.f30056g;
        if (ak0Var != null) {
            ak0Var.mo11414T(null);
            this.f30056g.mo11413U();
        }
    }

    @Override // com.google.android.gms.internal.ads.zj0
    /* renamed from: c */
    public final void mo7990c(boolean z, long j) {
        kk0 kk0Var = this.f25258f.get();
        if (kk0Var != null) {
            qi0.f28499e.execute(new Runnable(kk0Var, z, j) { // from class: com.google.android.gms.internal.ads.rm0

                /* renamed from: d */
                private final kk0 f29037d;

                /* renamed from: e */
                private final boolean f29038e;

                /* renamed from: f */
                private final long f29039f;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f29037d = kk0Var;
                    this.f29038e = z;
                    this.f29039f = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f29037d.mo7913c1(this.f29038e, this.f29039f);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zj0
    /* renamed from: d */
    public final void mo7989d(String str, Exception exc) {
        ei0.m15463g("Precache exception", exc);
        C5667s.m18156h().m12234l(exc, "VideoStreamExoPlayerCache.onException");
    }

    @Override // com.google.android.gms.internal.ads.zj0
    /* renamed from: e */
    public final void mo7988e(int i, int i2) {
    }

    @Override // com.google.android.gms.internal.ads.zj0
    /* renamed from: g */
    public final void mo7986g(String str, Exception exc) {
        ei0.m15463g("Precache error", exc);
        C5667s.m18156h().m12234l(exc, "VideoStreamExoPlayerCache.onError");
    }

    @Override // com.google.android.gms.internal.ads.km0
    /* renamed from: h */
    public final boolean mo10625h(String str) {
        return mo10624i(str, new String[]{str});
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v265, types: [long] */
    /* JADX WARN: Type inference failed for: r0v328, types: [long] */
    /* JADX WARN: Type inference failed for: r0v332, types: [long] */
    /* JADX WARN: Type inference failed for: r0v336, types: [long] */
    /* JADX WARN: Type inference failed for: r19v30 */
    /* JADX WARN: Type inference failed for: r19v31 */
    @Override // com.google.android.gms.internal.ads.km0
    /* renamed from: i */
    public final boolean mo10624i(String str, String[] strArr) {
        Exception e;
        tm0 tm0Var;
        tm0 tm0Var2;
        tm0 tm0Var3;
        Throwable th;
        tm0 tm0Var4;
        char c;
        String str2;
        String str3;
        tm0 tm0Var5;
        tm0 tm0Var6 = this;
        String str4 = str;
        tm0Var6.f30057h = str4;
        String m10615z = m10615z(str);
        String str5 = str4;
        String str6 = m10615z;
        tm0 tm0Var7 = tm0Var6;
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr[i] = Uri.parse(strArr[i]);
            }
            tm0Var6.f30056g.mo11416R(uriArr, tm0Var6.f25257e);
            kk0 kk0Var = tm0Var6.f25258f.get();
            if (kk0Var != null) {
                kk0Var.mo7954G(m10615z, tm0Var6);
            }
            AbstractC6227e m18153k = C5667s.m18153k();
            long mo16807a = m18153k.mo16807a();
            long longValue = ((Long) C7192yr.m8714c().m14263c(C6679kw.f25798t)).longValue();
            long longValue2 = ((Long) C7192yr.m8714c().m14263c(C6679kw.f25790s)).longValue() * 1000;
            long intValue = ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25782r)).intValue();
            boolean booleanValue = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25736l1)).booleanValue();
            char c2 = 65535;
            String str7 = m10615z;
            while (true) {
                String str8 = str7;
                str5 = str4;
                str6 = str8;
                tm0Var7 = tm0Var6;
                synchronized (this) {
                    try {
                        if (m18153k.mo16807a() - mo16807a > longValue2) {
                            String str9 = str4;
                            StringBuilder sb = new StringBuilder(47);
                            sb.append("Timeout reached. Limit: ");
                            sb.append(longValue2);
                            sb.append(" ms");
                            throw new IOException(sb.toString());
                        } else if (tm0Var6.f30058i) {
                            String str10 = str4;
                            throw new IOException("Abort requested before buffering finished. ");
                        } else if (tm0Var6.f30059j) {
                            return true;
                        } else {
                            if (!tm0Var6.f30056g.mo11431A()) {
                                String str11 = str4;
                                throw new IOException("ExoPlayer was released during preloading.");
                            }
                            long mo11424H = tm0Var6.f30056g.mo11424H();
                            if (mo11424H > 0) {
                                ?? mo11418N = tm0Var6.f30056g.mo11418N();
                                int i2 = (mo11418N > c2 ? 1 : (mo11418N == c2 ? 0 : -1));
                                char c3 = c2;
                                if (i2 != 0) {
                                    try {
                                        try {
                                            m13856p(str, str8, mo11418N, mo11424H, mo11418N > 0, booleanValue ? tm0Var6.f30056g.mo11423I() : true ? 1L : 0L, booleanValue ? tm0Var6.f30056g.mo11422J() : true ? 1L : 0L, booleanValue ? tm0Var6.f30056g.mo11421K() : true ? 1L : 0L, ak0.m16582P(), ak0.m16581Q());
                                            c3 = mo11418N;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            tm0Var3 = str;
                                            str4 = str8;
                                            tm0Var4 = this;
                                            tm0Var = "error";
                                            throw th;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        tm0Var3 = str;
                                        str4 = str8;
                                        tm0Var4 = this;
                                        tm0Var = "error";
                                    }
                                }
                                if (mo11418N >= mo11424H) {
                                    m13853s(str, str8, mo11424H);
                                    return true;
                                }
                                tm0Var5 = this;
                                str3 = str;
                                str2 = str8;
                                try {
                                    c = c3;
                                    if (tm0Var5.f30056g.mo11417O() >= intValue) {
                                        c = c3;
                                        if (mo11418N > 0) {
                                            return true;
                                        }
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    tm0Var4 = tm0Var5;
                                    tm0Var3 = str3;
                                    str4 = str2;
                                    tm0Var = "error";
                                    throw th;
                                }
                            } else {
                                str2 = str8;
                                str3 = str4;
                                tm0Var5 = tm0Var6;
                                c = c2;
                            }
                            try {
                                try {
                                    tm0Var5.wait(longValue);
                                    tm0 tm0Var8 = tm0Var5;
                                } catch (Throwable th5) {
                                    tm0Var = tm0Var7;
                                    th = th5;
                                    tm0Var4 = str8;
                                    tm0Var3 = tm0Var6;
                                    throw th;
                                }
                            } catch (InterruptedException e2) {
                                throw new IOException("Wait interrupted.");
                            }
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        String str12 = str4;
                        str4 = str8;
                        tm0Var4 = tm0Var6;
                        tm0Var = "error";
                        tm0Var3 = str12;
                    }
                }
                try {
                    throw th;
                } catch (Exception e3) {
                    e = e3;
                    tm0Var2 = tm0Var4;
                    String message = e.getMessage();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(message).length());
                    sb2.append("Failed to preload url ");
                    sb2.append(tm0Var3);
                    sb2.append(" Exception: ");
                    sb2.append(message);
                    ei0.m15464f(sb2.toString());
                    C5667s.m18156h().m12234l(e, "VideoStreamExoPlayerCache.preload");
                    mo10626b();
                    tm0Var2.m13852u(tm0Var3, str4, tm0Var, m10627B(tm0Var, e));
                    return false;
                }
                tm0Var6 = tm0Var5;
                str4 = str3;
                str7 = str2;
                c2 = c;
            }
        } catch (Exception e4) {
            tm0Var3 = str5;
            str4 = str6;
            tm0Var = "error";
            tm0Var2 = tm0Var7;
            e = e4;
        }
    }

    @Override // com.google.android.gms.internal.ads.km0
    /* renamed from: j */
    public final boolean mo10623j(String str, String[] strArr, bm0 bm0Var) {
        this.f30057h = str;
        this.f30060k = bm0Var;
        String m10615z = m10615z(str);
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr[i] = Uri.parse(strArr[i]);
            }
            this.f30056g.mo11416R(uriArr, this.f25257e);
            kk0 kk0Var = this.f25258f.get();
            if (kk0Var != null) {
                kk0Var.mo7954G(m10615z, this);
            }
            this.f30061l = C5667s.m18153k().mo16807a();
            this.f30062m = -1L;
            m10628A(0L);
            return true;
        } catch (Exception e) {
            String message = e.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(message).length());
            sb.append("Failed to preload url ");
            sb.append(str);
            sb.append(" Exception: ");
            sb.append(message);
            ei0.m15464f(sb.toString());
            C5667s.m18156h().m12234l(e, "VideoStreamExoPlayerCache.preload");
            mo10626b();
            m13852u(str, m10615z, "error", m10627B("error", e));
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.km0
    /* renamed from: k */
    public final void mo10622k(int i) {
        this.f30056g.mo11425G(i);
    }

    @Override // com.google.android.gms.internal.ads.km0
    /* renamed from: l */
    public final void mo10621l(int i) {
        this.f30056g.mo11426F(i);
    }

    @Override // com.google.android.gms.internal.ads.km0
    /* renamed from: m */
    public final void mo10620m(int i) {
        this.f30056g.mo11408Z(i);
    }

    @Override // com.google.android.gms.internal.ads.km0
    /* renamed from: n */
    public final void mo10619n(int i) {
        this.f30056g.mo11407a0(i);
    }

    @Override // com.google.android.gms.internal.ads.km0
    /* renamed from: o */
    public final void mo10618o() {
        synchronized (this) {
            this.f30058i = true;
            notify();
            mo10626b();
        }
        String str = this.f30057h;
        if (str != null) {
            m13852u(this.f30057h, m10615z(str), "externalAbort", "Programmatic precache abort.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zj0
    /* renamed from: t */
    public final void mo7973t() {
        ei0.m15464f("Precache onRenderedFirstFrame");
    }

    /* renamed from: x */
    public final ak0 m10617x() {
        synchronized (this) {
            this.f30059j = true;
            notify();
        }
        this.f30056g.mo11414T(null);
        ak0 ak0Var = this.f30056g;
        this.f30056g = null;
        return ak0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 38, insn: 0x026a: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r38 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:100:0x0267 */
    /* JADX WARN: Not initialized variable reg: 40, insn: 0x0267: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r40 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:100:0x0267 */
    /* JADX WARN: Not initialized variable reg: 41, insn: 0x026d: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r41 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:100:0x0267 */
    /* JADX WARN: Type inference failed for: r0v173, types: [long] */
    /* JADX WARN: Type inference failed for: r0v177, types: [long] */
    /* JADX WARN: Type inference failed for: r0v181, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [com.google.android.gms.internal.ads.cw<java.lang.Boolean>, com.google.android.gms.internal.ads.cw] */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r21v4 */
    /* JADX WARN: Type inference failed for: r31v0 */
    /* JADX WARN: Type inference failed for: r31v1 */
    /* JADX WARN: Type inference failed for: r31v2 */
    /* JADX WARN: Type inference failed for: r33v0 */
    /* JADX WARN: Type inference failed for: r33v1 */
    /* JADX WARN: Type inference failed for: r33v2 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* renamed from: y */
    public final /* synthetic */ void m10616y() {
        tm0 tm0Var;
        Exception e;
        String str;
        long longValue;
        long intValue;
        ?? r0;
        boolean booleanValue;
        Throwable th;
        tm0 tm0Var2;
        String str2;
        String str3;
        String m10615z = m10615z(this.f30057h);
        String str4 = "error";
        try {
            longValue = ((Long) C7192yr.m8714c().m14263c(C6679kw.f25790s)).longValue() * 1000;
            intValue = ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25782r)).intValue();
            r0 = C6679kw.f25736l1;
            booleanValue = ((Boolean) C7192yr.m8714c().m14263c(r0)).booleanValue();
            try {
            } catch (Throwable th2) {
                th = th2;
                tm0Var = tm0Var2;
                str = str2;
                str4 = str3;
            }
        } catch (Exception e2) {
            e = e2;
            str = m10615z;
            tm0Var = this;
        }
        synchronized (this) {
            try {
                if (C5667s.m18153k().mo16807a() - this.f30061l <= longValue) {
                    boolean z = this.f30058i;
                    try {
                        if (z) {
                            throw new IOException("Abort requested before buffering finished. ");
                        }
                        if (!this.f30059j) {
                            if (!this.f30056g.mo11431A()) {
                                throw new IOException("ExoPlayer was released during preloading.");
                            }
                            long mo11424H = this.f30056g.mo11424H();
                            if (mo11424H > 0) {
                                long mo11418N = this.f30056g.mo11418N();
                                if (mo11418N != this.f30062m) {
                                    try {
                                        try {
                                            m13856p(this.f30057h, m10615z, mo11418N, mo11424H, mo11418N > 0, (booleanValue ? this.f30056g.mo11423I() : true) == true ? 1L : 0L, (booleanValue ? this.f30056g.mo11422J() : true) == true ? 1L : 0L, (booleanValue ? this.f30056g.mo11421K() : true) == true ? 1L : 0L, ak0.m16582P(), ak0.m16581Q());
                                            try {
                                                this.f30062m = mo11418N;
                                            } catch (Throwable th3) {
                                                th = th3;
                                                tm0Var = this;
                                                str = m10615z;
                                                throw th;
                                            }
                                        } catch (Throwable th4) {
                                            th = th4;
                                            tm0Var = this;
                                            str = m10615z;
                                            throw th;
                                        }
                                    } catch (Throwable th5) {
                                        th = th5;
                                        tm0Var = this;
                                        str = m10615z;
                                    }
                                }
                                if (mo11418N >= mo11424H) {
                                    m13853s(this.f30057h, m10615z, mo11424H);
                                    tm0Var = this;
                                } else {
                                    m10615z = m10615z;
                                    if (this.f30056g.mo11417O() >= intValue) {
                                        m10615z = m10615z;
                                        if (mo11418N > 0) {
                                            tm0Var = this;
                                        }
                                    }
                                }
                            }
                            m10628A(((Long) C7192yr.m8714c().m14263c(C6679kw.f25798t)).longValue());
                            return;
                        }
                        tm0Var = this;
                        C5667s.m18138z().m16018h(tm0Var.f30060k);
                    } catch (Throwable th6) {
                        tm0Var = this;
                        th = z ? 1 : 0;
                        str = th6;
                        str4 = r0;
                    }
                } else {
                    str = m10615z;
                    tm0Var = this;
                    try {
                        StringBuilder sb = new StringBuilder(47);
                        sb.append("Timeout reached. Limit: ");
                        sb.append(longValue);
                        sb.append(" ms");
                        throw new IOException(sb.toString());
                    } catch (Throwable th7) {
                        th = th7;
                        str4 = "downloadTimeout";
                    }
                }
            } catch (Throwable th8) {
                th = th8;
                str = m10615z;
                tm0Var = this;
            }
            try {
                throw th;
            } catch (Exception e3) {
                e = e3;
                String str5 = tm0Var.f30057h;
                String message = e.getMessage();
                StringBuilder sb2 = new StringBuilder(String.valueOf(str5).length() + 34 + String.valueOf(message).length());
                sb2.append("Failed to preload url ");
                sb2.append(str5);
                sb2.append(" Exception: ");
                sb2.append(message);
                ei0.m15464f(sb2.toString());
                C5667s.m18156h().m12234l(e, "VideoStreamExoPlayerCache.preload");
                mo10626b();
                tm0Var.m13852u(tm0Var.f30057h, str, str4, m10627B(str4, e));
                C5667s.m18138z().m16018h(tm0Var.f30060k);
            }
        }
    }
}
