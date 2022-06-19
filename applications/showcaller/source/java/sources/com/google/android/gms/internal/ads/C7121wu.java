package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AbstractC5759m;
import com.google.android.gms.ads.C5842q;
import com.google.android.gms.ads.initialization.AbstractC5622a;
import com.google.android.gms.ads.initialization.AbstractC5623b;
import com.google.android.gms.ads.initialization.AdapterStatus$State;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.dynamic.BinderC6255b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.wu */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wu.class */
public final class C7121wu {

    /* renamed from: a */
    private static C7121wu f31784a;

    /* renamed from: d */
    private AbstractC6713lt f31787d;

    /* renamed from: i */
    private AbstractC5622a f31792i;

    /* renamed from: c */
    private final Object f31786c = new Object();

    /* renamed from: e */
    private boolean f31788e = false;

    /* renamed from: f */
    private boolean f31789f = false;

    /* renamed from: g */
    private AbstractC5759m f31790g = null;

    /* renamed from: h */
    private C5842q f31791h = new C5842q.C5843a().m17773a();

    /* renamed from: b */
    private final ArrayList<AbstractC5623b> f31785b = new ArrayList<>();

    private C7121wu() {
    }

    /* renamed from: d */
    public static C7121wu m9452d() {
        C7121wu c7121wu;
        synchronized (C7121wu.class) {
            try {
                if (f31784a == null) {
                    f31784a = new C7121wu();
                }
                c7121wu = f31784a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c7121wu;
    }

    /* renamed from: k */
    private final void m9445k(C5842q c5842q) {
        try {
            this.f31787d.mo11304p2(new zzbim(c5842q));
        } catch (RemoteException e) {
            ei0.m15466d("Unable to set request configuration parcel.", e);
        }
    }

    /* renamed from: l */
    private final void m9444l(Context context) {
        if (this.f31787d == null) {
            this.f31787d = new C6896qr(C7118wr.m9484b(), context).m9877d(context, false);
        }
    }

    /* renamed from: m */
    public static final AbstractC5622a m9443m(List<zzbrl> list) {
        HashMap hashMap = new HashMap();
        for (zzbrl zzbrlVar : list) {
            hashMap.put(zzbrlVar.f33736d, new e40(zzbrlVar.f33737e ? AdapterStatus$State.READY : AdapterStatus$State.NOT_READY, zzbrlVar.f33739g, zzbrlVar.f33738f));
        }
        return new f40(hashMap);
    }

    /* renamed from: e */
    public final void m9451e(Context context, String str, AbstractC5623b abstractC5623b) {
        synchronized (this.f31786c) {
            if (this.f31788e) {
                if (abstractC5623b != null) {
                    m9452d().f31785b.add(abstractC5623b);
                }
            } else if (this.f31789f) {
                if (abstractC5623b != null) {
                    abstractC5623b.mo18224a(m9449g());
                }
            } else {
                this.f31788e = true;
                if (abstractC5623b != null) {
                    m9452d().f31785b.add(abstractC5623b);
                }
                if (context == null) {
                    throw new IllegalArgumentException("Context cannot be null.");
                }
                try {
                    k70.m13978a().m13977b(context, null);
                    m9444l(context);
                    if (abstractC5623b != null) {
                        this.f31787d.mo11315Q0(new BinderC7084vu(this, null));
                    }
                    this.f31787d.mo11306k1(new p70());
                    this.f31787d.mo11312a();
                    this.f31787d.mo11313X1(null, BinderC6255b.m16744m2(null));
                    if (this.f31791h.m17776b() != -1 || this.f31791h.m17775c() != -1) {
                        m9445k(this.f31791h);
                    }
                    C6679kw.m13770a(context);
                    if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25503I3)).booleanValue() && !m9450f().endsWith("0")) {
                        ei0.m15467c("Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time.");
                        this.f31792i = new C7010tu(this);
                        if (abstractC5623b != null) {
                            xh0.f32048a.post(new Runnable(this, abstractC5623b) { // from class: com.google.android.gms.internal.ads.su

                                /* renamed from: d */
                                private final C7121wu f29677d;

                                /* renamed from: e */
                                private final AbstractC5623b f29678e;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f29677d = this;
                                    this.f29678e = abstractC5623b;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f29677d.m9446j(this.f29678e);
                                }
                            });
                        }
                    }
                } catch (RemoteException e) {
                    ei0.m15463g("MobileAdsSettingManager initialization failed", e);
                }
            }
        }
    }

    /* renamed from: f */
    public final String m9450f() {
        String m14270a;
        synchronized (this.f31786c) {
            C6155o.m17014n(this.f31787d != null, "MobileAds.initialize() must be called prior to getting version string.");
            try {
                m14270a = iv2.m14270a(this.f31787d.mo11308j());
            } catch (RemoteException e) {
                ei0.m15466d("Unable to get version string.", e);
                return "";
            }
        }
        return m14270a;
    }

    /* renamed from: g */
    public final AbstractC5622a m9449g() {
        synchronized (this.f31786c) {
            C6155o.m17014n(this.f31787d != null, "MobileAds.initialize() must be called prior to getting initialization status.");
            try {
                AbstractC5622a abstractC5622a = this.f31792i;
                if (abstractC5622a != null) {
                    return abstractC5622a;
                }
                return m9443m(this.f31787d.mo11307k());
            } catch (RemoteException e) {
                ei0.m15467c("Unable to get Initialization status.");
                return new C7010tu(this);
            }
        }
    }

    /* renamed from: i */
    public final C5842q m9447i() {
        return this.f31791h;
    }

    /* renamed from: j */
    public final /* synthetic */ void m9446j(AbstractC5623b abstractC5623b) {
        abstractC5623b.mo18224a(this.f31792i);
    }
}
