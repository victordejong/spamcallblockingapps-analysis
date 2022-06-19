package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.TrafficStats;
import android.os.StrictMode;
import com.google.android.gms.ads.internal.AbstractC5634k;
import com.google.android.gms.ads.internal.C5624a;
import com.google.android.gms.ads.internal.C5667s;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ho0.class */
public final class ho0 {
    /* JADX WARN: Type inference failed for: r0v12, types: [java.lang.Object, com.google.android.gms.internal.ads.wn0] */
    /* renamed from: a */
    public static final wn0 m14581a(Context context, mp0 mp0Var, String str, boolean z, boolean z2, C7016u c7016u, C6680kx c6680kx, zzcgz zzcgzVar, C6308ax c6308ax, AbstractC5634k abstractC5634k, C5624a c5624a, C6854pm c6854pm, ej2 ej2Var, jj2 jj2Var) {
        C6679kw.m13770a(context);
        try {
            jv2 jv2Var = new jv2(context, mp0Var, str, z, z2, c7016u, c6680kx, zzcgzVar, null, abstractC5634k, c5624a, c6854pm, ej2Var, jj2Var) { // from class: com.google.android.gms.internal.ads.fo0

                /* renamed from: d */
                private final Context f22996d;

                /* renamed from: e */
                private final mp0 f22997e;

                /* renamed from: f */
                private final String f22998f;

                /* renamed from: g */
                private final boolean f22999g;

                /* renamed from: h */
                private final boolean f23000h;

                /* renamed from: i */
                private final C7016u f23001i;

                /* renamed from: j */
                private final C6680kx f23002j;

                /* renamed from: k */
                private final zzcgz f23003k;

                /* renamed from: l */
                private final AbstractC5634k f23004l;

                /* renamed from: m */
                private final C5624a f23005m;

                /* renamed from: n */
                private final C6854pm f23006n;

                /* renamed from: o */
                private final ej2 f23007o;

                /* renamed from: p */
                private final jj2 f23008p;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f22996d = context;
                    this.f22997e = mp0Var;
                    this.f22998f = str;
                    this.f22999g = z;
                    this.f23000h = z2;
                    this.f23001i = c7016u;
                    this.f23002j = c6680kx;
                    this.f23003k = zzcgzVar;
                    this.f23004l = abstractC5634k;
                    this.f23005m = c5624a;
                    this.f23006n = c6854pm;
                    this.f23007o = ej2Var;
                    this.f23008p = jj2Var;
                }

                @Override // com.google.android.gms.internal.ads.jv2
                public final Object zza() {
                    Context context2 = this.f22996d;
                    mp0 mp0Var2 = this.f22997e;
                    String str2 = this.f22998f;
                    boolean z3 = this.f22999g;
                    boolean z4 = this.f23000h;
                    C7016u c7016u2 = this.f23001i;
                    C6680kx c6680kx2 = this.f23002j;
                    zzcgz zzcgzVar2 = this.f23003k;
                    AbstractC5634k abstractC5634k2 = this.f23004l;
                    C5624a c5624a2 = this.f23005m;
                    C6854pm c6854pm2 = this.f23006n;
                    ej2 ej2Var2 = this.f23007o;
                    jj2 jj2Var2 = this.f23008p;
                    try {
                        TrafficStats.setThreadStatsTag(264);
                        int i = oo0.f27606d;
                        zzcna zzcnaVar = new zzcna(new oo0(new lp0(context2), mp0Var2, str2, z3, z4, c7016u2, c6680kx2, zzcgzVar2, null, abstractC5634k2, c5624a2, c6854pm2, ej2Var2, jj2Var2));
                        zzcnaVar.setWebViewClient(C5667s.m18158f().mo18015l(zzcnaVar, c6854pm2, z4));
                        zzcnaVar.setWebChromeClient(new vn0(zzcnaVar));
                        TrafficStats.clearThreadStatsTag();
                        return zzcnaVar;
                    } catch (Throwable th) {
                        TrafficStats.clearThreadStatsTag();
                        throw th;
                    }
                }
            };
            StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            ?? zza = jv2Var.zza();
            StrictMode.setThreadPolicy(threadPolicy);
            return zza;
        } catch (Throwable th) {
            throw new zzcmw("Webview initialization failed.", th);
        }
    }

    /* renamed from: b */
    public static final r03<wn0> m14580b(Context context, zzcgz zzcgzVar, String str, C7016u c7016u, C5624a c5624a) {
        return k03.m13999e(new tz2(context, c7016u, zzcgzVar, c5624a, str) { // from class: com.google.android.gms.internal.ads.eo0

            /* renamed from: a */
            private final Context f22297a;

            /* renamed from: b */
            private final C7016u f22298b;

            /* renamed from: c */
            private final zzcgz f22299c;

            /* renamed from: d */
            private final C5624a f22300d;

            /* renamed from: e */
            private final String f22301e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f22297a = context;
                this.f22298b = c7016u;
                this.f22299c = zzcgzVar;
                this.f22300d = c5624a;
                this.f22301e = str;
            }

            @Override // com.google.android.gms.internal.ads.tz2
            public final r03 zza() {
                Context context2 = this.f22297a;
                C7016u c7016u2 = this.f22298b;
                zzcgz zzcgzVar2 = this.f22299c;
                C5624a c5624a2 = this.f22300d;
                String str2 = this.f22301e;
                C5667s.m18159e();
                wn0 m14581a = ho0.m14581a(context2, mp0.m13133b(), "", false, false, c7016u2, null, zzcgzVar2, null, null, c5624a2, C6854pm.m12219a(), null, null);
                final ui0 m10325g = ui0.m10325g(m14581a);
                m14581a.mo7914c0().mo14085f0(new hp0(m10325g) { // from class: com.google.android.gms.internal.ads.go0

                    /* renamed from: d */
                    private final ui0 f23422d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f23422d = m10325g;
                    }

                    @Override // com.google.android.gms.internal.ads.hp0
                    /* renamed from: b */
                    public final void mo8634b(boolean z) {
                        this.f23422d.m10324h();
                    }
                });
                m14581a.loadUrl(str2);
                return m10325g;
            }
        }, qi0.f28499e);
    }
}
