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
import com.google.android.gms.ads.internal.util.AbstractC1409a1;
import com.google.android.gms.ads.internal.util.C1430k0;
import com.google.android.gms.ads.internal.util.y0;
import com.google.android.gms.dynamic.AbstractC1632a;
import com.google.android.gms.dynamic.b;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sj0.class */
public final class sj0 {

    /* renamed from: a */
    private final AbstractC1409a1 f8486a;

    /* renamed from: b */
    private final sl1 f8487b;

    /* renamed from: c */
    private final yi0 f8488c;

    /* renamed from: d */
    private final si0 f8489d;

    /* renamed from: e */
    private final ek0 f8490e;

    /* renamed from: f */
    private final mk0 f8491f;

    /* renamed from: g */
    private final Executor f8492g;

    /* renamed from: h */
    private final Executor f8493h;

    /* renamed from: i */
    private final zzagy f8494i;

    /* renamed from: j */
    private final pi0 f8495j;

    public sj0(AbstractC1409a1 abstractC1409a1, sl1 sl1Var, yi0 yi0Var, si0 si0Var, ek0 ek0Var, mk0 mk0Var, Executor executor, Executor executor2, pi0 pi0Var) {
        this.f8486a = abstractC1409a1;
        this.f8487b = sl1Var;
        this.f8494i = sl1Var.f8504i;
        this.f8488c = yi0Var;
        this.f8489d = si0Var;
        this.f8490e = ek0Var;
        this.f8491f = mk0Var;
        this.f8492g = executor;
        this.f8493h = executor2;
        this.f8495j = pi0Var;
    }

    /* renamed from: g */
    private static void m5654g(RelativeLayout.LayoutParams layoutParams, int i) {
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

    /* renamed from: a */
    public final void m5660a(ok0 ok0Var) {
        this.f8492g.execute(new Runnable(this, ok0Var) { // from class: com.google.android.gms.internal.ads.pj0

            /* renamed from: b */
            private final sj0 f8131b;

            /* renamed from: c */
            private final ok0 f8132c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8131b = this;
                this.f8132c = ok0Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f8131b.m5655f(this.f8132c);
            }
        });
    }

    /* renamed from: b */
    public final void m5659b(ok0 ok0Var) {
        if (ok0Var == null || this.f8490e == null || ok0Var.m6316w4() == null || !this.f8488c.m4756b()) {
            return;
        }
        try {
            ok0Var.m6316w4().addView(this.f8490e.m7614a());
        } catch (zzbgq e) {
            y0.l("web view can not be obtained", e);
        }
    }

    /* renamed from: c */
    public final void m5658c(ok0 ok0Var) {
        if (ok0Var == null) {
            return;
        }
        Context context = ok0Var.m6326M4().getContext();
        if (!C1430k0.m8813i(context, this.f8488c.f9221a)) {
            return;
        }
        if (!(context instanceof Activity)) {
            C1894po.m6185a("Activity context is needed for policy validator.");
        } else if (this.f8491f == null || ok0Var.m6316w4() == null) {
        } else {
            try {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                windowManager.addView(this.f8491f.m6562a(ok0Var.m6316w4(), windowManager), C1430k0.m8812j());
            } catch (zzbgq e) {
                y0.l("web view can not be obtained", e);
            }
        }
    }

    /* renamed from: d */
    public final boolean m5657d(ViewGroup viewGroup) {
        View m5710f = this.f8489d.m5710f();
        if (m5710f == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (m5710f.getParent() instanceof ViewGroup) {
            ((ViewGroup) m5710f.getParent()).removeView(m5710f);
        }
        viewGroup.addView(m5710f, ((Boolean) C1674c.m7906c().m6878b(C1842m3.f7330T1)).booleanValue() ? new FrameLayout.LayoutParams(-1, -1, 17) : new FrameLayout.LayoutParams(-2, -2, 17));
        return true;
    }

    /* renamed from: e */
    public final /* synthetic */ void m5656e(ViewGroup viewGroup) {
        AbstractC1409a1 abstractC1409a1;
        String str;
        String valueOf;
        boolean z = viewGroup != null;
        if (this.f8489d.m5710f() != null) {
            if (this.f8489d.m5722X() == 2 || this.f8489d.m5722X() == 1) {
                abstractC1409a1 = this.f8486a;
                str = this.f8487b.f8501f;
                valueOf = String.valueOf(this.f8489d.m5722X());
            } else if (this.f8489d.m5722X() != 6) {
                return;
            } else {
                this.f8486a.m8888N0(this.f8487b.f8501f, "2", z);
                abstractC1409a1 = this.f8486a;
                str = this.f8487b.f8501f;
                valueOf = "1";
            }
            abstractC1409a1.m8888N0(str, valueOf, z);
        }
    }

    /* renamed from: f */
    public final /* synthetic */ void m5655f(ok0 ok0Var) {
        ViewGroup viewGroup;
        zzags zzagsVar;
        ViewGroup viewGroup2;
        AbstractC1698d6 m6195a;
        Drawable drawable;
        if (this.f8488c.m4753e() || this.f8488c.m4755c()) {
            for (int i = 0; i < 2; i++) {
                View m6325P = ok0Var.m6325P(new String[]{"1098", "3011"}[i]);
                if (m6325P != null && (m6325P instanceof ViewGroup)) {
                    viewGroup = (ViewGroup) m6325P;
                    break;
                }
            }
        }
        viewGroup = null;
        Context context = ok0Var.m6326M4().getContext();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.f8489d.m5718a0() != null) {
            View m5718a0 = this.f8489d.m5718a0();
            zzagy zzagyVar = this.f8494i;
            if (zzagyVar == null) {
                zzagsVar = m5718a0;
            } else {
                zzagsVar = m5718a0;
                if (viewGroup == null) {
                    m5654g(layoutParams, zzagyVar.f);
                    m5718a0.setLayoutParams(layoutParams);
                    zzagsVar = m5718a0;
                }
            }
        } else if (!(this.f8489d.m5720Z() instanceof p5)) {
            zzagsVar = null;
        } else {
            p5 m5720Z = this.f8489d.m5720Z();
            if (viewGroup == null) {
                m5654g(layoutParams, m5720Z.i());
            }
            zzagsVar = new zzags(context, m5720Z, layoutParams);
            zzagsVar.setContentDescription((CharSequence) C1674c.m7906c().m6878b(C1842m3.f7318R1));
        }
        if (zzagsVar != null) {
            if (zzagsVar.getParent() instanceof ViewGroup) {
                ((ViewGroup) zzagsVar.getParent()).removeView(zzagsVar);
            }
            if (viewGroup != null) {
                viewGroup.removeAllViews();
                viewGroup.addView(zzagsVar);
            } else {
                zza zzaVar = new zza(ok0Var.m6326M4().getContext());
                zzaVar.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                zzaVar.addView(zzagsVar);
                FrameLayout m6316w4 = ok0Var.m6316w4();
                if (m6316w4 != null) {
                    m6316w4.addView(zzaVar);
                }
            }
            ok0Var.m6323g3(ok0Var.m6318p(), zzagsVar, true);
        }
        zzede zzedeVar = oj0.o;
        int size = zzedeVar.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                viewGroup2 = null;
                break;
            }
            View m6325P2 = ok0Var.m6325P((String) zzedeVar.get(i2));
            i2++;
            if (m6325P2 instanceof ViewGroup) {
                viewGroup2 = (ViewGroup) m6325P2;
                break;
            }
        }
        this.f8493h.execute(new Runnable(this, viewGroup2) { // from class: com.google.android.gms.internal.ads.qj0

            /* renamed from: b */
            private final sj0 f8209b;

            /* renamed from: c */
            private final ViewGroup f8210c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8209b = this;
                this.f8210c = viewGroup2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f8209b.m5656e(this.f8210c);
            }
        });
        if (viewGroup2 == null) {
            return;
        }
        if (m5657d(viewGroup2)) {
            if (this.f8489d.m5701o() == null) {
                return;
            }
            this.f8489d.m5701o().q0(new rj0(this, ok0Var, viewGroup2));
            return;
        }
        viewGroup2.removeAllViews();
        View m6326M4 = ok0Var.m6326M4();
        Context context2 = m6326M4 != null ? m6326M4.getContext() : null;
        if (context2 == null || (m6195a = this.f8495j.m6195a()) == null) {
            return;
        }
        try {
            AbstractC1632a m7755g = m6195a.m7755g();
            if (m7755g == null || (drawable = (Drawable) b.M1(m7755g)) == null) {
                return;
            }
            ImageView imageView = new ImageView(context2);
            imageView.setImageDrawable(drawable);
            AbstractC1632a abstractC1632a = null;
            if (ok0Var != null) {
                abstractC1632a = ok0Var.m6317q();
            }
            imageView.setScaleType((abstractC1632a == null || !((Boolean) C1674c.m7906c().m6878b(C1842m3.f7290M3)).booleanValue()) ? ImageView.ScaleType.CENTER_INSIDE : (ImageView.ScaleType) b.M1(abstractC1632a));
            imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            viewGroup2.addView(imageView);
        } catch (RemoteException e) {
            C1894po.m6180f("Could not get main image drawable");
        }
    }
}
