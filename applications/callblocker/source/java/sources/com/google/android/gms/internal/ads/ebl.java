package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.C2384n;
import com.google.android.gms.ads.p122e.AbstractC2287a;
import com.google.android.gms.ads.p122e.AbstractC2289b;
import com.google.android.gms.ads.p122e.AbstractC2290c;
import com.google.android.gms.ads.reward.AbstractC2393c;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.dynamic.BinderC2734b;
import java.util.HashMap;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ebl.class */
public final class ebl {
    @GuardedBy("lock")

    /* renamed from: a */
    private static ebl f16240a;

    /* renamed from: b */
    private static final Object f16241b = new Object();

    /* renamed from: c */
    private eae f16242c;

    /* renamed from: d */
    private AbstractC2393c f16243d;

    /* renamed from: e */
    private C2384n f16244e = new C2384n.C2385a().m14619a();

    /* renamed from: f */
    private AbstractC2289b f16245f;

    private ebl() {
    }

    /* renamed from: a */
    public static AbstractC2289b m8006a(List<C3159gb> list) {
        HashMap hashMap = new HashMap();
        for (C3159gb c3159gb : list) {
            hashMap.put(c3159gb.f16684a, new C3167gj(c3159gb.f16685b ? AbstractC2287a.EnumC2288a.READY : AbstractC2287a.EnumC2288a.NOT_READY, c3159gb.f16687d, c3159gb.f16686c));
        }
        return new C3170gm(hashMap);
    }

    /* renamed from: a */
    public static ebl m8012a() {
        ebl eblVar;
        synchronized (f16241b) {
            if (f16240a == null) {
                f16240a = new ebl();
            }
            eblVar = f16240a;
        }
        return eblVar;
    }

    /* renamed from: a */
    private final void m8008a(C2384n c2384n) {
        try {
            this.f16242c.mo7925a(new ech(c2384n));
        } catch (RemoteException e) {
            C3645yb.m6748c("Unable to set request configuration parcel.", e);
        }
    }

    /* renamed from: a */
    public final AbstractC2393c m8011a(Context context) {
        AbstractC2393c abstractC2393c;
        synchronized (f16241b) {
            if (this.f16243d != null) {
                abstractC2393c = this.f16243d;
            } else {
                this.f16243d = new C3464rj(context, new dyv(dyx.m8161b(), context, new BinderC3277kl()).m8172a(context, false));
                abstractC2393c = this.f16243d;
            }
        }
        return abstractC2393c;
    }

    /* renamed from: a */
    public final void m8010a(Context context, String str, AbstractC2290c abstractC2290c) {
        synchronized (f16241b) {
            if (this.f16242c != null) {
                return;
            }
            if (context == null) {
                throw new IllegalArgumentException("Context cannot be null.");
            }
            try {
                C3272kg.m7675a().m7672a(context, str);
                this.f16242c = new dys(dyx.m8161b(), context).m8172a(context, false);
                if (abstractC2290c != null) {
                    this.f16242c.mo7924a(new ebt(this, abstractC2290c, null));
                }
                this.f16242c.mo7923a(new BinderC3277kl());
                this.f16242c.mo7928a();
                this.f16242c.mo7921a(str, BinderC2734b.m13794a(new Runnable(this, context) { // from class: com.google.android.gms.internal.ads.ebo

                    /* renamed from: a */
                    private final ebl f16262a;

                    /* renamed from: b */
                    private final Context f16263b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f16262a = this;
                        this.f16263b = context;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f16262a.m8011a(this.f16263b);
                    }
                }));
                if (this.f16244e.m14623a() != -1 || this.f16244e.m14622b() != -1) {
                    m8008a(this.f16244e);
                }
                edi.m7866a(context);
                if (!((Boolean) dyx.m8158e().m7876a(edi.f16490cq)).booleanValue() && !m8005b().endsWith("0")) {
                    C3645yb.m6749c("Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time.");
                    this.f16245f = new AbstractC2289b(this) { // from class: com.google.android.gms.internal.ads.ebr

                        /* renamed from: a */
                        private final ebl f16264a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f16264a = this;
                        }
                    };
                    if (abstractC2290c != null) {
                        C3634xr.f17613a.post(new Runnable(this, abstractC2290c) { // from class: com.google.android.gms.internal.ads.ebn

                            /* renamed from: a */
                            private final ebl f16260a;

                            /* renamed from: b */
                            private final AbstractC2290c f16261b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f16260a = this;
                                this.f16261b = abstractC2290c;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f16260a.m8009a(this.f16261b);
                            }
                        });
                    }
                }
            } catch (RemoteException e) {
                C3645yb.m6746d("MobileAdsSettingManager initialization failed", e);
            }
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m8009a(AbstractC2290c abstractC2290c) {
        abstractC2290c.m14821a(this.f16245f);
    }

    /* renamed from: b */
    public final String m8005b() {
        String str;
        C2662s.m13976a(this.f16242c != null, "MobileAds.initialize() must be called prior to getting version string.");
        try {
            str = cos.m10930a(this.f16242c.mo7916d());
        } catch (RemoteException e) {
            C3645yb.m6748c("Unable to get version string.", e);
            str = "";
        }
        return str;
    }

    /* renamed from: c */
    public final C2384n m8004c() {
        return this.f16244e;
    }
}
