package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzar;
import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ke.class */
public final class ke {

    /* renamed from: a  reason: collision with root package name */
    final Object f28101a;

    /* renamed from: b  reason: collision with root package name */
    final Context f28102b;

    /* renamed from: c  reason: collision with root package name */
    final String f28103c;

    /* renamed from: d  reason: collision with root package name */
    final zzbar f28104d;
    zzar<ju> e;
    kz f;
    int g;
    private zzar<ju> h;

    private ke(Context context, zzbar zzbarVar, String str) {
        this.f28101a = new Object();
        this.g = 1;
        this.f28103c = str;
        this.f28102b = context.getApplicationContext();
        this.f28104d = zzbarVar;
        this.e = new ks();
        this.h = new ks();
    }

    public ke(Context context, zzbar zzbarVar, String str, zzar<ju> zzarVar, zzar<ju> zzarVar2) {
        this(context, zzbarVar, str);
        this.e = zzarVar;
        this.h = zzarVar2;
    }

    public final kv a() {
        synchronized (this.f28101a) {
            synchronized (this.f28101a) {
                kz kzVar = this.f;
                if (kzVar != null && this.g == 0) {
                    kzVar.a(new zt(this) { // from class: com.google.android.gms.internal.ads.kg

                        /* renamed from: a  reason: collision with root package name */
                        private final ke f28105a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f28105a = this;
                        }

                        @Override // com.google.android.gms.internal.ads.zt
                        public final void a(Object obj) {
                            ke keVar = this.f28105a;
                            if (((ju) obj).b()) {
                                keVar.g = 1;
                            }
                        }
                    }, kj.f28112a);
                }
            }
            kz kzVar2 = this.f;
            if (!(kzVar2 == null || kzVar2.f28589b.get() == -1)) {
                int i = this.g;
                if (i == 0) {
                    return this.f.a();
                } else if (i == 1) {
                    this.g = 2;
                    a(null);
                    return this.f.a();
                } else if (i == 2) {
                    return this.f.a();
                } else {
                    return this.f.a();
                }
            }
            this.g = 2;
            kz a2 = a(null);
            this.f = a2;
            return a2.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final kz a(final die dieVar) {
        final kz kzVar = new kz(this.h);
        zd.e.execute(new Runnable(this, dieVar, kzVar) { // from class: com.google.android.gms.internal.ads.kh

            /* renamed from: a  reason: collision with root package name */
            private final ke f28106a;

            /* renamed from: b  reason: collision with root package name */
            private final die f28107b;

            /* renamed from: c  reason: collision with root package name */
            private final kz f28108c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28106a = this;
                this.f28107b = dieVar;
                this.f28108c = kzVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                final ke keVar = this.f28106a;
                die dieVar2 = this.f28107b;
                final kz kzVar2 = this.f28108c;
                try {
                    final jw jwVar = new jw(keVar.f28102b, keVar.f28104d, dieVar2, null);
                    jwVar.a(new jt(keVar, kzVar2, jwVar) { // from class: com.google.android.gms.internal.ads.ki

                        /* renamed from: a  reason: collision with root package name */
                        private final ke f28109a;

                        /* renamed from: b  reason: collision with root package name */
                        private final kz f28110b;

                        /* renamed from: c  reason: collision with root package name */
                        private final ju f28111c;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f28109a = keVar;
                            this.f28110b = kzVar2;
                            this.f28111c = jwVar;
                        }

                        @Override // com.google.android.gms.internal.ads.jt
                        public final void a() {
                            final ke keVar2 = this.f28109a;
                            final kz kzVar3 = this.f28110b;
                            final ju juVar = this.f28111c;
                            zzj.zzegq.postDelayed(new Runnable(keVar2, kzVar3, juVar) { // from class: com.google.android.gms.internal.ads.kl

                                /* renamed from: a  reason: collision with root package name */
                                private final ke f28114a;

                                /* renamed from: b  reason: collision with root package name */
                                private final kz f28115b;

                                /* renamed from: c  reason: collision with root package name */
                                private final ju f28116c;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f28114a = keVar2;
                                    this.f28115b = kzVar3;
                                    this.f28116c = juVar;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    ke keVar3 = this.f28114a;
                                    kz kzVar4 = this.f28115b;
                                    ju juVar2 = this.f28116c;
                                    synchronized (keVar3.f28101a) {
                                        if (!(kzVar4.f28589b.get() == -1 || kzVar4.f28589b.get() == 1)) {
                                            kzVar4.d();
                                            dbs dbsVar = zd.e;
                                            juVar2.getClass();
                                            dbsVar.execute(new Runnable(juVar2) { // from class: com.google.android.gms.internal.ads.kk

                                                /* renamed from: a  reason: collision with root package name */
                                                private final ju f28113a;

                                                /* JADX INFO: Access modifiers changed from: package-private */
                                                {
                                                    this.f28113a = juVar2;
                                                }

                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    this.f28113a.a();
                                                }
                                            });
                                            zzd.zzed("Could not receive loaded message in a timely manner. Rejecting.");
                                        }
                                    }
                                }
                            }, kt.f28133b);
                        }
                    });
                    jwVar.a("/jsLoaded", new kn(keVar, kzVar2, jwVar));
                    zzbs zzbsVar = new zzbs();
                    km kmVar = new km(keVar, dieVar2, jwVar, zzbsVar);
                    zzbsVar.set(kmVar);
                    jwVar.a("/requestReload", kmVar);
                    if (keVar.f28103c.endsWith(".js")) {
                        jwVar.b(keVar.f28103c);
                    } else if (keVar.f28103c.startsWith("<html>")) {
                        jwVar.d(keVar.f28103c);
                    } else {
                        jwVar.c(keVar.f28103c);
                    }
                    zzj.zzegq.postDelayed(new kp(keVar, kzVar2, jwVar), kt.f28132a);
                } catch (Throwable th) {
                    zzd.zzc("Error creating webview.", th);
                    zzr.zzkz().a(th, "SdkJavascriptFactory.loadJavascriptEngine");
                    kzVar2.d();
                }
            }
        });
        kzVar.a(new kr(this, kzVar), new kq(this, kzVar));
        return kzVar;
    }
}
