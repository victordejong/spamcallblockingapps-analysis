package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.b6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/b6.class */
public final class C7183b6 {
    @GuardedBy("lock")

    /* renamed from: c */
    public static C7183b6 f17294c;

    /* renamed from: d */
    public static final Object f17295d = new Object();

    /* renamed from: a */
    public AbstractC7208d5 f17296a;

    /* renamed from: b */
    public RewardedVideoAd f17297b;

    /* renamed from: d */
    public static C7183b6 m20979d() {
        C7183b6 b6Var;
        synchronized (f17295d) {
            if (f17294c == null) {
                f17294c = new C7183b6();
            }
            b6Var = f17294c;
        }
        return b6Var;
    }

    /* renamed from: a */
    public final float m20988a() {
        AbstractC7208d5 d5Var = this.f17296a;
        float f = 1.0f;
        if (d5Var == null) {
            return 1.0f;
        }
        try {
            f = d5Var.mo20818O();
        } catch (RemoteException e) {
            C7452x1.m20571b("Unable to get app volume.", e);
        }
        return f;
    }

    /* renamed from: a */
    public final RewardedVideoAd m20986a(Context context) {
        synchronized (f17295d) {
            if (this.f17297b != null) {
                return this.f17297b;
            }
            this.f17297b = new C7243g1(context, new C7406t3(C7430v3.m20639b(), context, new BinderC7213da()).m20652a(context, false));
            return this.f17297b;
        }
    }

    /* renamed from: a */
    public final void m20987a(float f) {
        boolean z = true;
        C7021t.m21285a(0.0f <= f && f <= 1.0f, "The app volume must be a value between 0 and 1 inclusive.");
        if (this.f17296a == null) {
            z = false;
        }
        C7021t.m21281b(z, "MobileAds.initialize() must be called prior to setting the app volume.");
        try {
            this.f17296a.mo20816a(f);
        } catch (RemoteException e) {
            C7452x1.m20571b("Unable to set app volume.", e);
        }
    }

    /* renamed from: a */
    public final void m20985a(Context context, String str) {
        C7021t.m21281b(this.f17296a != null, "MobileAds.initialize() must be called prior to opening debug menu.");
        try {
            this.f17296a.mo20815a(BinderC7110d.m21058a(context), str);
        } catch (RemoteException e) {
            C7452x1.m20571b("Unable to open debug menu.", e);
        }
    }

    /* renamed from: a */
    public final void m20984a(final Context context, String str, C7209d6 d6Var) {
        synchronized (f17295d) {
            if (this.f17296a == null) {
                if (context != null) {
                    try {
                        Bundle bundle = new Bundle();
                        bundle.putBoolean("measurementEnabled", false);
                        BinderC7174aa.m20991a(context, str, bundle);
                        this.f17296a = new C7370q3(C7430v3.m20639b(), context).m20652a(context, false);
                        this.f17296a.mo20811c();
                        this.f17296a.mo20814a(new BinderC7213da());
                        if (str != null) {
                            this.f17296a.mo20813b(str, BinderC7110d.m21058a(new Runnable(this, context) { // from class: h.i.a.e.j.a.c6

                                /* renamed from: a */
                                public final C7183b6 f17310a;

                                /* renamed from: b */
                                public final Context f17311b;

                                {
                                    this.f17310a = this;
                                    this.f17311b = context;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f17310a.m20986a(this.f17311b);
                                }
                            }));
                        }
                    } catch (RemoteException e) {
                        C7452x1.m20569c("MobileAdsSettingManager initialization failed", e);
                    }
                    return;
                }
                throw new IllegalArgumentException("Context cannot be null.");
            }
        }
    }

    /* renamed from: a */
    public final void m20983a(Class<? extends AbstractC7320m2> cls) {
        try {
            this.f17296a.mo20808o(cls.getCanonicalName());
        } catch (RemoteException e) {
            C7452x1.m20571b("Unable to register RtbAdapter", e);
        }
    }

    /* renamed from: a */
    public final void m20982a(boolean z) {
        C7021t.m21281b(this.f17296a != null, "MobileAds.initialize() must be called prior to setting app muted state.");
        try {
            this.f17296a.mo20812b(z);
        } catch (RemoteException e) {
            C7452x1.m20571b("Unable to set app mute state.", e);
        }
    }

    /* renamed from: b */
    public final boolean m20981b() {
        AbstractC7208d5 d5Var = this.f17296a;
        boolean z = false;
        if (d5Var == null) {
            return false;
        }
        try {
            z = d5Var.mo20817U();
        } catch (RemoteException e) {
            C7452x1.m20571b("Unable to get app mute state.", e);
        }
        return z;
    }

    /* renamed from: c */
    public final String m20980c() {
        try {
            this.f17296a.mo20810f();
            return "";
        } catch (RemoteException e) {
            C7452x1.m20571b("Unable to get version string.", e);
            return "";
        }
    }
}
