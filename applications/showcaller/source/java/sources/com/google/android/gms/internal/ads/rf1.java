package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.formats.zza;
import com.google.android.gms.ads.internal.util.AbstractC5728q1;
import com.google.android.gms.ads.internal.util.C5674b1;
import com.google.android.gms.ads.internal.util.C5722o1;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rf1.class */
public final class rf1 {

    /* renamed from: a */
    private final AbstractC5728q1 f28925a;

    /* renamed from: b */
    private final xj2 f28926b;

    /* renamed from: c */
    private final we1 f28927c;

    /* renamed from: d */
    private final re1 f28928d;

    /* renamed from: e */
    private final cg1 f28929e;

    /* renamed from: f */
    private final lg1 f28930f;

    /* renamed from: g */
    private final Executor f28931g;

    /* renamed from: h */
    private final Executor f28932h;

    /* renamed from: i */
    private final zzblv f28933i;

    /* renamed from: j */
    private final oe1 f28934j;

    public rf1(AbstractC5728q1 abstractC5728q1, xj2 xj2Var, we1 we1Var, re1 re1Var, cg1 cg1Var, lg1 lg1Var, Executor executor, Executor executor2, oe1 oe1Var) {
        this.f28925a = abstractC5728q1;
        this.f28926b = xj2Var;
        this.f28933i = xj2Var.f32082i;
        this.f28927c = we1Var;
        this.f28928d = re1Var;
        this.f28929e = cg1Var;
        this.f28930f = lg1Var;
        this.f28931g = executor;
        this.f28932h = executor2;
        this.f28934j = oe1Var;
    }

    /* renamed from: g */
    private static void m11477g(RelativeLayout.LayoutParams layoutParams, int i) {
        if (i == 0) {
            layoutParams.addRule(10);
            layoutParams.addRule(9);
        } else if (i == 2) {
            layoutParams.addRule(12);
            layoutParams.addRule(11);
        } else if (i != 3) {
            layoutParams.addRule(10);
            layoutParams.addRule(11);
        } else {
            layoutParams.addRule(12);
            layoutParams.addRule(9);
        }
    }

    /* renamed from: h */
    private final boolean m11476h(ViewGroup viewGroup, boolean z) {
        View m11506h = z ? this.f28928d.m11506h() : this.f28928d.m11504i();
        if (m11506h == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (m11506h.getParent() instanceof ViewGroup) {
            ((ViewGroup) m11506h.getParent()).removeView(m11506h);
        }
        viewGroup.addView(m11506h, ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25761o2)).booleanValue() ? new FrameLayout.LayoutParams(-1, -1, 17) : new FrameLayout.LayoutParams(-2, -2, 17));
        return true;
    }

    /* renamed from: a */
    public final void m11483a(ng1 ng1Var) {
        this.f28931g.execute(new Runnable(this, ng1Var) { // from class: com.google.android.gms.internal.ads.of1

            /* renamed from: d */
            private final rf1 f27518d;

            /* renamed from: e */
            private final ng1 f27519e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f27518d = this;
                this.f27519e = ng1Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f27518d.m11478f(this.f27519e);
            }
        });
    }

    /* renamed from: b */
    public final void m11482b(ng1 ng1Var) {
        if (ng1Var == null || this.f28929e == null || ng1Var.mo12911D0() == null || !this.f28927c.mo9600b()) {
            return;
        }
        try {
            ng1Var.mo12911D0().addView(this.f28929e.m16055a());
        } catch (zzcmw e) {
            C5722o1.m17989l("web view can not be obtained", e);
        }
    }

    /* renamed from: c */
    public final void m11481c(ng1 ng1Var) {
        if (ng1Var == null) {
            return;
        }
        Context context = ng1Var.mo12908V4().getContext();
        if (!C5674b1.m18111i(context, this.f28927c.f31555a)) {
            return;
        }
        if (!(context instanceof Activity)) {
            ei0.m15469a("Activity context is needed for policy validator.");
        } else if (this.f28930f == null || ng1Var.mo12911D0() == null) {
        } else {
            try {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                windowManager.addView(this.f28930f.m13526a(ng1Var.mo12911D0(), windowManager), C5674b1.m18110j());
            } catch (zzcmw e) {
                C5722o1.m17989l("web view can not be obtained", e);
            }
        }
    }

    /* renamed from: d */
    public final boolean m11480d(ViewGroup viewGroup) {
        return m11476h(viewGroup, true);
    }

    /* renamed from: e */
    public final /* synthetic */ void m11479e(ViewGroup viewGroup) {
        boolean z = viewGroup != null;
        if (this.f28928d.m11506h() != null) {
            if (this.f28928d.m11513d0() == 2 || this.f28928d.m11513d0() == 1) {
                this.f28925a.mo17970Q0(this.f28926b.f32079f, String.valueOf(this.f28928d.m11513d0()), z);
            } else if (this.f28928d.m11513d0() != 6) {
            } else {
                this.f28925a.mo17970Q0(this.f28926b.f32079f, "2", z);
                this.f28925a.mo17970Q0(this.f28926b.f32079f, "1", z);
            }
        }
    }

    /* renamed from: f */
    public final /* synthetic */ void m11478f(ng1 ng1Var) {
        ViewGroup viewGroup;
        zzblp zzblpVar;
        ViewGroup viewGroup2;
        AbstractC6421dz m12690a;
        Drawable drawable;
        if (this.f28927c.mo9597e() || this.f28927c.mo9599c()) {
            for (int i = 0; i < 2; i++) {
                View mo12909N = ng1Var.mo12909N(new String[]{"1098", "3011"}[i]);
                if (mo12909N != null && (mo12909N instanceof ViewGroup)) {
                    viewGroup = (ViewGroup) mo12909N;
                    break;
                }
            }
        }
        viewGroup = null;
        Context context = ng1Var.mo12908V4().getContext();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.f28928d.m11507g0() != null) {
            View m11507g0 = this.f28928d.m11507g0();
            zzblv zzblvVar = this.f28933i;
            if (zzblvVar == null) {
                zzblpVar = m11507g0;
            } else {
                zzblpVar = m11507g0;
                if (viewGroup == null) {
                    m11477g(layoutParams, zzblvVar.f33721h);
                    m11507g0.setLayoutParams(layoutParams);
                    zzblpVar = m11507g0;
                }
            }
        } else if (!(this.f28928d.m11509f0() instanceof BinderC6866py)) {
            zzblpVar = null;
        } else {
            BinderC6866py binderC6866py = (BinderC6866py) this.f28928d.m11509f0();
            if (viewGroup == null) {
                m11477g(layoutParams, binderC6866py.zzi());
            }
            zzblpVar = new zzblp(context, binderC6866py, layoutParams);
            zzblpVar.setContentDescription((CharSequence) C7192yr.m8714c().m14263c(C6679kw.f25745m2));
        }
        if (zzblpVar != null) {
            if (zzblpVar.getParent() instanceof ViewGroup) {
                ((ViewGroup) zzblpVar.getParent()).removeView(zzblpVar);
            }
            if (viewGroup != null) {
                viewGroup.removeAllViews();
                viewGroup.addView(zzblpVar);
            } else {
                zza zzaVar = new zza(ng1Var.mo12908V4().getContext());
                zzaVar.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                zzaVar.addView(zzblpVar);
                FrameLayout mo12911D0 = ng1Var.mo12911D0();
                if (mo12911D0 != null) {
                    mo12911D0.addView(zzaVar);
                }
            }
            ng1Var.mo12910J0(ng1Var.mo12901m(), zzblpVar, true);
        }
        zzfoj<String> zzfojVar = nf1.f27113d;
        int size = zzfojVar.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                viewGroup2 = null;
                break;
            }
            View mo12909N2 = ng1Var.mo12909N(zzfojVar.get(i2));
            i2++;
            if (mo12909N2 instanceof ViewGroup) {
                viewGroup2 = (ViewGroup) mo12909N2;
                break;
            }
        }
        this.f28932h.execute(new Runnable(this, viewGroup2) { // from class: com.google.android.gms.internal.ads.pf1

            /* renamed from: d */
            private final rf1 f27958d;

            /* renamed from: e */
            private final ViewGroup f27959e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f27958d = this;
                this.f27959e = viewGroup2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f27958d.m11479e(this.f27959e);
            }
        });
        if (viewGroup2 == null) {
            return;
        }
        if (m11476h(viewGroup2, true)) {
            if (this.f28928d.m11495r() == null) {
                return;
            }
            this.f28928d.m11495r().mo7897m0(new qf1(ng1Var, viewGroup2));
        } else if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25554O6)).booleanValue() && m11476h(viewGroup2, false)) {
            if (this.f28928d.m11494s() == null) {
                return;
            }
            this.f28928d.m11494s().mo7897m0(new qf1(ng1Var, viewGroup2));
        } else {
            viewGroup2.removeAllViews();
            View mo12908V4 = ng1Var.mo12908V4();
            Context context2 = null;
            if (mo12908V4 != null) {
                context2 = mo12908V4.getContext();
            }
            if (context2 == null || (m12690a = this.f28934j.m12690a()) == null) {
                return;
            }
            try {
                AbstractC6253a zzg = m12690a.zzg();
                if (zzg == null || (drawable = (Drawable) BinderC6255b.m16745J0(zzg)) == null) {
                    return;
                }
                ImageView imageView = new ImageView(context2);
                imageView.setImageDrawable(drawable);
                AbstractC6253a mo12900n = ng1Var.mo12900n();
                if (mo12900n == null || !((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25827w4)).booleanValue()) {
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                } else {
                    imageView.setScaleType((ImageView.ScaleType) BinderC6255b.m16745J0(mo12900n));
                }
                imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                viewGroup2.addView(imageView);
            } catch (RemoteException e) {
                ei0.m15464f("Could not get main image drawable");
            }
        }
    }
}
