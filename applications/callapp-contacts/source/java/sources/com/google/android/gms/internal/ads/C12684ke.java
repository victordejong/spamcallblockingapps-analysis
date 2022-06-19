package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzar;
import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
/* renamed from: com.google.android.gms.internal.ads.ke */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ke.class */
public final class C12684ke {

    /* renamed from: a */
    final Object f49413a;

    /* renamed from: b */
    final Context f49414b;

    /* renamed from: c */
    final String f49415c;

    /* renamed from: d */
    final zzbar f49416d;

    /* renamed from: e */
    zzar<AbstractC12673ju> f49417e;

    /* renamed from: f */
    C12705kz f49418f;

    /* renamed from: g */
    int f49419g;

    /* renamed from: h */
    private zzar<AbstractC12673ju> f49420h;

    private C12684ke(Context context, zzbar zzbarVar, String str) {
        this.f49413a = new Object();
        this.f49419g = 1;
        this.f49415c = str;
        this.f49414b = context.getApplicationContext();
        this.f49416d = zzbarVar;
        this.f49417e = new C12698ks();
        this.f49420h = new C12698ks();
    }

    public C12684ke(Context context, zzbar zzbarVar, String str, zzar<AbstractC12673ju> zzarVar, zzar<AbstractC12673ju> zzarVar2) {
        this(context, zzbarVar, str);
        this.f49417e = zzarVar;
        this.f49420h = zzarVar2;
    }

    /* renamed from: a */
    public final C12701kv m14556a() {
        synchronized (this.f49413a) {
            synchronized (this.f49413a) {
                C12705kz c12705kz = this.f49418f;
                if (c12705kz != null && this.f49419g == 0) {
                    c12705kz.m13896a(new AbstractC13107zt(this) { // from class: com.google.android.gms.internal.ads.kg

                        /* renamed from: a */
                        private final C12684ke f49421a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f49421a = this;
                        }

                        @Override // com.google.android.gms.internal.ads.AbstractC13107zt
                        /* renamed from: a */
                        public final void mo13893a(Object obj) {
                            C12684ke c12684ke = this.f49421a;
                            if (((AbstractC12673ju) obj).mo14566b()) {
                                c12684ke.f49419g = 1;
                            }
                        }
                    }, C12689kj.f49428a);
                }
            }
            C12705kz c12705kz2 = this.f49418f;
            if (c12705kz2 != null && c12705kz2.f50137b.get() != -1) {
                int i = this.f49419g;
                if (i == 0) {
                    return this.f49418f.m14552a();
                } else if (i == 1) {
                    this.f49419g = 2;
                    m14555a(null);
                    return this.f49418f.m14552a();
                } else if (i == 2) {
                    return this.f49418f.m14552a();
                } else {
                    return this.f49418f.m14552a();
                }
            }
            this.f49419g = 2;
            C12705kz m14555a = m14555a(null);
            this.f49418f = m14555a;
            return m14555a.m14552a();
        }
    }

    /* renamed from: a */
    public final C12705kz m14555a(die dieVar) {
        C12705kz c12705kz = new C12705kz(this.f49420h);
        C13091zd.f50122e.execute(new Runnable(this, dieVar, c12705kz) { // from class: com.google.android.gms.internal.ads.kh

            /* renamed from: a */
            private final C12684ke f49422a;

            /* renamed from: b */
            private final die f49423b;

            /* renamed from: c */
            private final C12705kz f49424c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f49422a = this;
                this.f49423b = dieVar;
                this.f49424c = c12705kz;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C12684ke c12684ke = this.f49422a;
                die dieVar2 = this.f49423b;
                C12705kz c12705kz2 = this.f49424c;
                try {
                    AbstractC12673ju c12675jw = new C12675jw(c12684ke.f49414b, c12684ke.f49416d, dieVar2, null);
                    c12675jw.mo14568a(new AbstractC12672jt(c12684ke, c12705kz2, c12675jw) { // from class: com.google.android.gms.internal.ads.ki

                        /* renamed from: a */
                        private final C12684ke f49425a;

                        /* renamed from: b */
                        private final C12705kz f49426b;

                        /* renamed from: c */
                        private final AbstractC12673ju f49427c;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f49425a = c12684ke;
                            this.f49426b = c12705kz2;
                            this.f49427c = c12675jw;
                        }

                        @Override // com.google.android.gms.internal.ads.AbstractC12672jt
                        /* renamed from: a */
                        public final void mo14554a() {
                            final C12684ke c12684ke2 = this.f49425a;
                            final C12705kz c12705kz3 = this.f49426b;
                            final AbstractC12673ju abstractC12673ju = this.f49427c;
                            zzj.zzegq.postDelayed(new Runnable(c12684ke2, c12705kz3, abstractC12673ju) { // from class: com.google.android.gms.internal.ads.kl

                                /* renamed from: a */
                                private final C12684ke f49430a;

                                /* renamed from: b */
                                private final C12705kz f49431b;

                                /* renamed from: c */
                                private final AbstractC12673ju f49432c;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f49430a = c12684ke2;
                                    this.f49431b = c12705kz3;
                                    this.f49432c = abstractC12673ju;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    C12684ke c12684ke3 = this.f49430a;
                                    C12705kz c12705kz4 = this.f49431b;
                                    AbstractC12673ju abstractC12673ju2 = this.f49432c;
                                    synchronized (c12684ke3.f49413a) {
                                        if (c12705kz4.f50137b.get() != -1 && c12705kz4.f50137b.get() != 1) {
                                            c12705kz4.m13894d();
                                            dbs dbsVar = C13091zd.f50122e;
                                            abstractC12673ju2.getClass();
                                            dbsVar.execute(new Runnable(abstractC12673ju2) { // from class: com.google.android.gms.internal.ads.kk

                                                /* renamed from: a */
                                                private final AbstractC12673ju f49429a;

                                                /* JADX INFO: Access modifiers changed from: package-private */
                                                {
                                                    this.f49429a = abstractC12673ju2;
                                                }

                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    this.f49429a.mo14569a();
                                                }
                                            });
                                            zzd.zzed("Could not receive loaded message in a timely manner. Rejecting.");
                                        }
                                    }
                                }
                            }, C12699kt.f49449b);
                        }
                    });
                    c12675jw.mo14533a("/jsLoaded", new C12693kn(c12684ke, c12705kz2, c12675jw));
                    zzbs zzbsVar = new zzbs();
                    C12692km c12692km = new C12692km(c12684ke, dieVar2, c12675jw, zzbsVar);
                    zzbsVar.set(c12692km);
                    c12675jw.mo14533a("/requestReload", c12692km);
                    if (c12684ke.f49415c.endsWith(".js")) {
                        c12675jw.mo14565b(c12684ke.f49415c);
                    } else if (c12684ke.f49415c.startsWith("<html>")) {
                        c12675jw.mo14562d(c12684ke.f49415c);
                    } else {
                        c12675jw.mo14563c(c12684ke.f49415c);
                    }
                    zzj.zzegq.postDelayed(new RunnableC12695kp(c12684ke, c12705kz2, c12675jw), C12699kt.f49448a);
                } catch (Throwable th) {
                    zzd.zzc("Error creating webview.", th);
                    zzr.zzkz().m13979a(th, "SdkJavascriptFactory.loadJavascriptEngine");
                    c12705kz2.m13894d();
                }
            }
        });
        c12705kz.m13896a(new C12697kr(this, c12705kz), new C12696kq(this, c12705kz));
        return c12705kz;
    }
}
