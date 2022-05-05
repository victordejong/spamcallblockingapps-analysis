package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.internal.ads.zzjo;
import com.google.android.gms.internal.ads.zzjr;
import com.google.android.gms.internal.ads.zznf;
import java.util.concurrent.atomic.AtomicBoolean;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.y5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/y5.class */
public final class C7468y5 {

    /* renamed from: a */
    public final BinderC7213da f17551a;

    /* renamed from: b */
    public final AtomicBoolean f17552b;

    /* renamed from: c */
    public final VideoController f17553c;

    /* renamed from: d */
    public final C7454x3 f17554d;

    /* renamed from: e */
    public AbstractC7477z2 f17555e;

    /* renamed from: f */
    public AdListener f17556f;

    /* renamed from: g */
    public AdSize[] f17557g;

    /* renamed from: h */
    public AppEventListener f17558h;

    /* renamed from: i */
    public Correlator f17559i;

    /* renamed from: j */
    public AbstractC7322m4 f17560j;

    /* renamed from: k */
    public OnCustomRenderedAdLoadedListener f17561k;

    /* renamed from: l */
    public VideoOptions f17562l;

    /* renamed from: m */
    public String f17563m;

    /* renamed from: n */
    public ViewGroup f17564n;

    /* renamed from: o */
    public int f17565o;

    /* renamed from: p */
    public boolean f17566p;

    public C7468y5(ViewGroup viewGroup) {
        this(viewGroup, null, false, C7258h3.f17345a, 0);
    }

    public C7468y5(ViewGroup viewGroup, int i) {
        this(viewGroup, null, false, C7258h3.f17345a, i);
    }

    public C7468y5(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, C7258h3.f17345a, 0);
    }

    public C7468y5(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, int i) {
        this(viewGroup, attributeSet, false, C7258h3.f17345a, i);
    }

    public C7468y5(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, C7258h3 h3Var, int i) {
        this(viewGroup, attributeSet, z, h3Var, null, i);
    }

    public C7468y5(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, C7258h3 h3Var, AbstractC7322m4 m4Var, int i) {
        this.f17551a = new BinderC7213da();
        this.f17553c = new VideoController();
        this.f17554d = new C7480z5(this);
        this.f17564n = viewGroup;
        this.f17560j = null;
        this.f17552b = new AtomicBoolean(false);
        this.f17565o = i;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zzjr zzjrVar = new zzjr(context, attributeSet);
                this.f17557g = zzjrVar.m31845a(z);
                this.f17563m = zzjrVar.m31847a();
                if (viewGroup.isInEditMode()) {
                    C7343o1 a = C7430v3.m20640a();
                    AdSize adSize = this.f17557g[0];
                    int i2 = this.f17565o;
                    zzjo zzjoVar = new zzjo(context, adSize);
                    zzjoVar.f6780j = m20502a(i2);
                    a.m20774a(viewGroup, zzjoVar, "Ads by Google");
                }
            } catch (IllegalArgumentException e) {
                C7430v3.m20640a().m20772a(viewGroup, new zzjo(context, AdSize.BANNER), e.getMessage(), e.getMessage());
            }
        }
    }

    /* renamed from: a */
    public static zzjo m20501a(Context context, AdSize[] adSizeArr, int i) {
        zzjo zzjoVar = new zzjo(context, adSizeArr);
        zzjoVar.f6780j = m20502a(i);
        return zzjoVar;
    }

    /* renamed from: a */
    public static boolean m20502a(int i) {
        return i == 1;
    }

    /* renamed from: a */
    public final void m20503a() {
        try {
            if (this.f17560j != null) {
                this.f17560j.destroy();
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m20500a(AdListener adListener) {
        this.f17556f = adListener;
        this.f17554d.m20565a(adListener);
    }

    /* renamed from: a */
    public final void m20499a(Correlator correlator) {
        this.f17559i = correlator;
        try {
            if (this.f17560j != null) {
                this.f17560j.mo20748b(this.f17559i == null ? null : this.f17559i.zzaz());
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m20498a(VideoOptions videoOptions) {
        this.f17562l = videoOptions;
        try {
            if (this.f17560j != null) {
                this.f17560j.mo20756a(videoOptions == null ? null : new zznf(videoOptions));
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m20497a(AppEventListener appEventListener) {
        try {
            this.f17558h = appEventListener;
            if (this.f17560j != null) {
                this.f17560j.mo20753a(appEventListener != null ? new BinderC7284j3(appEventListener) : null);
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m20496a(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.f17561k = onCustomRenderedAdLoadedListener;
        try {
            if (this.f17560j != null) {
                this.f17560j.mo20755a(onCustomRenderedAdLoadedListener != null ? new BinderC7325m7(onCustomRenderedAdLoadedListener) : null);
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m20494a(C7444w5 w5Var) {
        try {
            if (this.f17560j == null) {
                if ((this.f17557g == null || this.f17563m == null) && this.f17560j == null) {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
                Context context = this.f17564n.getContext();
                zzjo a = m20501a(context, this.f17557g, this.f17565o);
                this.f17560j = "search_v2".equals(a.f6771a) ? new C7333n3(C7430v3.m20639b(), context, a, this.f17563m).m20652a(context, false) : new C7309l3(C7430v3.m20639b(), context, a, this.f17563m, this.f17551a).m20652a(context, false);
                this.f17560j.mo20747b(new BinderC7193c3(this.f17554d));
                if (this.f17555e != null) {
                    this.f17560j.mo20752a(new BinderC7167a3(this.f17555e));
                }
                if (this.f17558h != null) {
                    this.f17560j.mo20753a(new BinderC7284j3(this.f17558h));
                }
                if (this.f17561k != null) {
                    this.f17560j.mo20755a(new BinderC7325m7(this.f17561k));
                }
                if (this.f17559i != null) {
                    this.f17560j.mo20748b(this.f17559i.zzaz());
                }
                if (this.f17562l != null) {
                    this.f17560j.mo20756a(new zznf(this.f17562l));
                }
                this.f17560j.mo20744h(this.f17566p);
                try {
                    AbstractC7106b b = this.f17560j.mo20750b();
                    if (b != null) {
                        this.f17564n.addView((View) BinderC7110d.m21059A(b));
                    }
                } catch (RemoteException e) {
                    C7452x1.m20567d("#007 Could not call remote method.", e);
                }
            }
            if (this.f17560j.mo20749b(C7258h3.m20921a(this.f17564n.getContext(), w5Var))) {
                this.f17551a.m20943a(w5Var.m20599l());
            }
        } catch (RemoteException e2) {
            C7452x1.m20567d("#007 Could not call remote method.", e2);
        }
    }

    /* renamed from: a */
    public final void m20492a(AbstractC7477z2 z2Var) {
        try {
            this.f17555e = z2Var;
            if (this.f17560j != null) {
                this.f17560j.mo20752a(z2Var != null ? new BinderC7167a3(z2Var) : null);
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m20491a(String str) {
        if (this.f17563m == null) {
            this.f17563m = str;
            return;
        }
        throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
    }

    /* renamed from: a */
    public final void m20490a(boolean z) {
        this.f17566p = z;
        try {
            if (this.f17560j != null) {
                this.f17560j.mo20744h(this.f17566p);
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m20489a(AdSize... adSizeArr) {
        if (this.f17557g == null) {
            m20487b(adSizeArr);
            return;
        }
        throw new IllegalStateException("The ad size can only be set once on AdView.");
    }

    /* renamed from: a */
    public final boolean m20495a(AbstractC7322m4 m4Var) {
        if (m4Var == null) {
            return false;
        }
        try {
            AbstractC7106b b = m4Var.mo20750b();
            if (b == null || ((View) BinderC7110d.m21059A(b)).getParent() != null) {
                return false;
            }
            this.f17564n.addView((View) BinderC7110d.m21059A(b));
            this.f17560j = m4Var;
            return true;
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
            return false;
        }
    }

    /* renamed from: b */
    public final AdListener m20488b() {
        return this.f17556f;
    }

    /* renamed from: b */
    public final void m20487b(AdSize... adSizeArr) {
        this.f17557g = adSizeArr;
        try {
            if (this.f17560j != null) {
                this.f17560j.mo20757a(m20501a(this.f17564n.getContext(), this.f17557g, this.f17565o));
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
        this.f17564n.requestLayout();
    }

    /* renamed from: c */
    public final AdSize m20486c() {
        zzjo I;
        try {
            if (!(this.f17560j == null || (I = this.f17560j.mo20758I()) == null)) {
                return I.m31849c();
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
        AdSize[] adSizeArr = this.f17557g;
        if (adSizeArr != null) {
            return adSizeArr[0];
        }
        return null;
    }

    /* renamed from: d */
    public final AdSize[] m20485d() {
        return this.f17557g;
    }

    /* renamed from: e */
    public final String m20484e() {
        AbstractC7322m4 m4Var;
        if (this.f17563m == null && (m4Var = this.f17560j) != null) {
            try {
                this.f17563m = m4Var.mo20760D0();
            } catch (RemoteException e) {
                C7452x1.m20567d("#007 Could not call remote method.", e);
            }
        }
        return this.f17563m;
    }

    /* renamed from: f */
    public final AppEventListener m20483f() {
        return this.f17558h;
    }

    /* renamed from: g */
    public final String m20482g() {
        try {
            if (this.f17560j != null) {
                return this.f17560j.mo20759H();
            }
            return null;
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
            return null;
        }
    }

    /* renamed from: h */
    public final OnCustomRenderedAdLoadedListener m20481h() {
        return this.f17561k;
    }

    /* renamed from: i */
    public final VideoController m20480i() {
        return this.f17553c;
    }

    /* renamed from: j */
    public final VideoOptions m20479j() {
        return this.f17562l;
    }

    /* renamed from: k */
    public final boolean m20478k() {
        try {
            if (this.f17560j != null) {
                return this.f17560j.isLoading();
            }
            return false;
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
            return false;
        }
    }

    /* renamed from: l */
    public final void m20477l() {
        try {
            if (this.f17560j != null) {
                this.f17560j.pause();
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: m */
    public final void m20476m() {
        if (!this.f17552b.getAndSet(true)) {
            try {
                if (this.f17560j != null) {
                    this.f17560j.mo20745g0();
                }
            } catch (RemoteException e) {
                C7452x1.m20567d("#007 Could not call remote method.", e);
            }
        }
    }

    /* renamed from: n */
    public final void m20475n() {
        try {
            if (this.f17560j != null) {
                this.f17560j.resume();
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: o */
    public final AbstractC7359p5 m20474o() {
        AbstractC7322m4 m4Var = this.f17560j;
        if (m4Var == null) {
            return null;
        }
        try {
            return m4Var.getVideoController();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
            return null;
        }
    }
}
