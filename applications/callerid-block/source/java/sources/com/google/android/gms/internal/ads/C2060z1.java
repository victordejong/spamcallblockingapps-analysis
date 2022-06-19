package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.C1495p;
import com.google.android.gms.ads.initialization.AbstractC1376a;
import com.google.android.gms.ads.initialization.AbstractC1377b;
import com.google.android.gms.ads.initialization.AdapterStatus$State;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.dynamic.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.internal.ads.z1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/z1.class */
public final class C2060z1 {
    @GuardedBy("InternalMobileAds.class")

    /* renamed from: h */
    private static C2060z1 f9294h;
    @GuardedBy("lock")

    /* renamed from: c */
    private AbstractC1868o0 f9297c;

    /* renamed from: g */
    private AbstractC1376a f9301g;

    /* renamed from: b */
    private final Object f9296b = new Object();

    /* renamed from: d */
    private boolean f9298d = false;

    /* renamed from: e */
    private boolean f9299e = false;

    /* renamed from: f */
    private C1495p f9300f = new C1495p.C1496a().m8580a();

    /* renamed from: a */
    private final ArrayList<AbstractC1377b> f9295a = new ArrayList<>();

    private C2060z1() {
    }

    /* renamed from: a */
    public static C2060z1 m4677a() {
        C2060z1 c2060z1;
        synchronized (C2060z1.class) {
            try {
                if (f9294h == null) {
                    f9294h = new C2060z1();
                }
                c2060z1 = f9294h;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2060z1;
    }

    @GuardedBy("lock")
    /* renamed from: k */
    private final void m4667k(C1495p c1495p) {
        try {
            this.f9297c.m6364e5(new zzads(c1495p));
        } catch (RemoteException e) {
            C1894po.m6182d("Unable to set request configuration parcel.", e);
        }
    }

    @GuardedBy("lock")
    /* renamed from: l */
    private final void m4666l(Context context) {
        if (this.f9297c == null) {
            this.f9297c = (AbstractC1868o0) new h03(m03.m6635b(), context).m6736d(context, false);
        }
    }

    /* renamed from: m */
    public static final AbstractC1376a m4665m(List<zzamj> list) {
        HashMap hashMap = new HashMap();
        for (zzamj zzamjVar : list) {
            hashMap.put(zzamjVar.b, new C2032xa(zzamjVar.c ? AdapterStatus$State.READY : AdapterStatus$State.NOT_READY, zzamjVar.e, zzamjVar.d));
        }
        return new ya(hashMap);
    }

    /* renamed from: b */
    public final void m4676b(Context context, @Nullable String str, @Nullable AbstractC1377b abstractC1377b) {
        synchronized (this.f9296b) {
            if (this.f9298d) {
                if (abstractC1377b != null) {
                    m4677a().f9295a.add(abstractC1377b);
                }
            } else if (this.f9299e) {
                if (abstractC1377b != null) {
                    abstractC1377b.m8957a(m4674d());
                }
            } else {
                this.f9298d = true;
                if (abstractC1377b != null) {
                    m4677a().f9295a.add(abstractC1377b);
                }
                if (context == null) {
                    throw new IllegalArgumentException("Context cannot be null.");
                }
                try {
                    C2067zd.m4650a().m4649b(context, null);
                    m4666l(context);
                    if (abstractC1377b != null) {
                        this.f9297c.m6355s2(new y1(this, (C2029x1) null));
                    }
                    this.f9297c.m6366Y1(new de());
                    this.f9297c.m6365a();
                    this.f9297c.m6368H3(null, b.g3((Object) null));
                    if (this.f9300f.m8583b() != -1 || this.f9300f.m8582c() != -1) {
                        m4667k(this.f9300f);
                    }
                    C1842m3.m6600a(context);
                    if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7388c3)).booleanValue() && !m4675c().endsWith("0")) {
                        C1894po.m6183c("Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time.");
                        this.f9301g = new w1(this);
                        if (abstractC1377b != null) {
                            C1786io.f6814b.post(new Runnable(this, abstractC1377b) { // from class: com.google.android.gms.internal.ads.v1

                                /* renamed from: b */
                                private final C2060z1 f8860b;

                                /* renamed from: c */
                                private final AbstractC1377b f8861c;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f8860b = this;
                                    this.f8861c = abstractC1377b;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f8860b.m4672f(this.f8861c);
                                }
                            });
                        }
                    }
                } catch (RemoteException e) {
                    C1894po.m6179g("MobileAdsSettingManager initialization failed", e);
                }
            }
        }
    }

    /* renamed from: c */
    public final String m4675c() {
        String m5453a;
        synchronized (this.f9296b) {
            C1581h.m8343l(this.f9297c != null, "MobileAds.initialize() must be called prior to getting version string.");
            try {
                m5453a = tw1.m5453a(this.f9297c.m6359m());
            } catch (RemoteException e) {
                C1894po.m6182d("Unable to get version string.", e);
                return "";
            }
        }
        return m5453a;
    }

    /* renamed from: d */
    public final AbstractC1376a m4674d() {
        synchronized (this.f9296b) {
            C1581h.m8343l(this.f9297c != null, "MobileAds.initialize() must be called prior to getting initialization status.");
            try {
                AbstractC1376a abstractC1376a = this.f9301g;
                if (abstractC1376a != null) {
                    return abstractC1376a;
                }
                return m4665m(this.f9297c.m6360l());
            } catch (RemoteException e) {
                C1894po.m6183c("Unable to get Initialization status.");
                return new w1(this);
            }
        }
    }

    /* renamed from: e */
    public final C1495p m4673e() {
        return this.f9300f;
    }

    /* renamed from: f */
    public final /* synthetic */ void m4672f(AbstractC1377b abstractC1377b) {
        abstractC1377b.m8957a(this.f9301g);
    }
}
