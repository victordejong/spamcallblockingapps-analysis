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
import com.google.android.gms.ads.formats.AdChoicesView;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzcfe;
import com.google.android.gms.internal.ads.zzcgc;
import com.integralads.avid.library.mopub.session.internal.InternalAvidAdSessionContext;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.C4067th;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfe.class */
public final class zzcfe {

    /* renamed from: a */
    public final zzayr f25917a;

    /* renamed from: b */
    public final zzdok f25918b;

    /* renamed from: c */
    public final zzcem f25919c;

    /* renamed from: d */
    public final zzcei f25920d;

    /* renamed from: e */
    public final zzcfm f25921e;

    /* renamed from: f */
    public final zzcfu f25922f;

    /* renamed from: g */
    public final Executor f25923g;

    /* renamed from: h */
    public final Executor f25924h;

    /* renamed from: i */
    public final zzadu f25925i;

    /* renamed from: j */
    public final zzced f25926j;

    public zzcfe(zzayr zzayrVar, zzdok zzdokVar, zzcem zzcemVar, zzcei zzceiVar, zzcfm zzcfmVar, zzcfu zzcfuVar, Executor executor, Executor executor2, zzced zzcedVar) {
        this.f25917a = zzayrVar;
        this.f25918b = zzdokVar;
        this.f25925i = zzdokVar.f27647i;
        this.f25919c = zzcemVar;
        this.f25920d = zzceiVar;
        this.f25921e = zzcfmVar;
        this.f25922f = zzcfuVar;
        this.f25923g = executor;
        this.f25924h = executor2;
        this.f25926j = zzcedVar;
    }

    /* renamed from: a */
    public static void m14354a(RelativeLayout.LayoutParams layoutParams, int i) {
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
    public static boolean m14351a(zzcgc zzcgcVar, String[] strArr) {
        Map<String, WeakReference<View>> C1 = zzcgcVar.mo14329C1();
        if (C1 == null) {
            return false;
        }
        for (String str : strArr) {
            if (C1.get(str) != null) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final void m14352a(final zzcgc zzcgcVar) {
        this.f25923g.execute(new Runnable(this, zzcgcVar) { // from class: c.d.b.d.g.a.sh

            /* renamed from: a */
            public final zzcfe f15306a;

            /* renamed from: b */
            public final zzcgc f15307b;

            {
                this.f15306a = this;
                this.f15307b = zzcgcVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f15306a.m14347d(this.f15307b);
            }
        });
    }

    /* renamed from: a */
    public final boolean m14355a(ViewGroup viewGroup) {
        View s = this.f25920d.m14678s();
        if (s == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (s.getParent() instanceof ViewGroup) {
            ((ViewGroup) s.getParent()).removeView(s);
        }
        viewGroup.addView(s, ((Boolean) zzwm.m11166e().m16921a(zzabb.f23685H1)).booleanValue() ? new FrameLayout.LayoutParams(-1, -1, 17) : new FrameLayout.LayoutParams(-2, -2, 17));
        return true;
    }

    /* renamed from: b */
    public final /* synthetic */ void m14350b(ViewGroup viewGroup) {
        boolean z = viewGroup != null;
        if (this.f25920d.m14678s() == null) {
            return;
        }
        if (2 == this.f25920d.m14682o() || 1 == this.f25920d.m14682o()) {
            this.f25917a.mo16070a(this.f25918b.f27644f, String.valueOf(this.f25920d.m14682o()), z);
        } else if (6 == this.f25920d.m14682o()) {
            this.f25917a.mo16070a(this.f25918b.f27644f, InternalAvidAdSessionContext.AVID_API_LEVEL, z);
            this.f25917a.mo16070a(this.f25918b.f27644f, "1", z);
        }
    }

    /* renamed from: b */
    public final void m14349b(zzcgc zzcgcVar) {
        if (zzcgcVar != null && this.f25921e != null && zzcgcVar.mo14325P0() != null && this.f25919c.mo14665c()) {
            try {
                zzcgcVar.mo14325P0().addView(this.f25921e.m14341a());
            } catch (zzbgv e) {
                zzayp.m16154e("web view can not be obtained", e);
            }
        }
    }

    /* renamed from: c */
    public final void m14348c(zzcgc zzcgcVar) {
        if (zzcgcVar != null) {
            Context context = zzcgcVar.mo14326M0().getContext();
            if (zzbau.m15936a(this.f25919c.f25872a)) {
                if (!(context instanceof Activity)) {
                    zzbbq.m15858a("Activity context is needed for policy validator.");
                } else if (this.f25922f != null && zzcgcVar.mo14325P0() != null) {
                    try {
                        WindowManager windowManager = (WindowManager) context.getSystemService("window");
                        windowManager.addView(this.f25922f.m14334a(zzcgcVar.mo14325P0(), windowManager), zzbau.m15946a());
                    } catch (zzbgv e) {
                        zzayp.m16154e("web view can not be obtained", e);
                    }
                }
            }
        }
    }

    /* renamed from: d */
    public final /* synthetic */ void m14347d(zzcgc zzcgcVar) {
        ViewGroup viewGroup;
        View view;
        final ViewGroup viewGroup2;
        IObjectWrapper iObjectWrapper;
        Drawable drawable;
        int i = 0;
        IObjectWrapper iObjectWrapper2 = null;
        if (this.f25919c.mo14663e() || this.f25919c.mo14664d()) {
            for (int i2 = 0; i2 < 2; i2++) {
                View k = zzcgcVar.mo14319k(new String[]{"1098", "3011"}[i2]);
                if (k != null && (k instanceof ViewGroup)) {
                    viewGroup = (ViewGroup) k;
                    break;
                }
            }
        }
        viewGroup = null;
        boolean z = viewGroup != null;
        Context context = zzcgcVar.mo14326M0().getContext();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.f25920d.m14681p() != null) {
            View p = this.f25920d.m14681p();
            zzadu zzaduVar = this.f25925i;
            if (zzaduVar == null) {
                view = p;
            } else {
                view = p;
                if (!z) {
                    m14354a(layoutParams, zzaduVar.f24043e);
                    p.setLayoutParams(layoutParams);
                    view = p;
                }
            }
        } else if (!(this.f25920d.m14726A() instanceof zzadl)) {
            view = null;
        } else {
            zzadl zzadlVar = (zzadl) this.f25920d.m14726A();
            if (!z) {
                m14354a(layoutParams, zzadlVar.m16848g2());
            }
            view = new zzado(context, zzadlVar, layoutParams);
            view.setContentDescription((CharSequence) zzwm.m11166e().m16921a(zzabb.f23675F1));
        }
        if (view != null) {
            if (view.getParent() instanceof ViewGroup) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            if (z) {
                viewGroup.removeAllViews();
                viewGroup.addView(view);
            } else {
                AdChoicesView adChoicesView = new AdChoicesView(zzcgcVar.mo14326M0().getContext());
                adChoicesView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                adChoicesView.addView(view);
                FrameLayout P0 = zzcgcVar.mo14325P0();
                if (P0 != null) {
                    P0.addView(adChoicesView);
                }
            }
            zzcgcVar.mo14323a(zzcgcVar.mo14320f0(), view, true);
        }
        String[] strArr = zzcfc.f25903n;
        int length = strArr.length;
        while (true) {
            if (i >= length) {
                viewGroup2 = null;
                break;
            }
            View k2 = zzcgcVar.mo14319k(strArr[i]);
            if (k2 instanceof ViewGroup) {
                viewGroup2 = (ViewGroup) k2;
                break;
            }
            i++;
        }
        this.f25924h.execute(new Runnable(this, viewGroup2) { // from class: c.d.b.d.g.a.uh

            /* renamed from: a */
            public final zzcfe f15641a;

            /* renamed from: b */
            public final ViewGroup f15642b;

            {
                this.f15641a = this;
                this.f15642b = viewGroup2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f15641a.m14350b(this.f15642b);
            }
        });
        if (viewGroup2 == null) {
            return;
        }
        if (!m14355a(viewGroup2)) {
            viewGroup2.removeAllViews();
            View M0 = zzcgcVar.mo14326M0();
            Context context2 = M0 != null ? M0.getContext() : null;
            if (context2 != null) {
                if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23670E1)).booleanValue()) {
                    zzadz a = this.f25926j.m14731a();
                    if (a != null) {
                        try {
                            iObjectWrapper = a.mo14765l1();
                        } catch (RemoteException e) {
                            zzbbq.m15852d("Could not get main image drawable");
                            return;
                        }
                    } else {
                        return;
                    }
                } else {
                    zzaee q = this.f25920d.m14680q();
                    if (q != null) {
                        try {
                            iObjectWrapper = q.mo16833U1();
                        } catch (RemoteException e2) {
                            zzbbq.m15852d("Could not get drawable from image");
                            return;
                        }
                    } else {
                        return;
                    }
                }
                if (!(iObjectWrapper == null || (drawable = (Drawable) ObjectWrapper.m17021Q(iObjectWrapper)) == null)) {
                    ImageView imageView = new ImageView(context2);
                    imageView.setImageDrawable(drawable);
                    if (zzcgcVar != null) {
                        iObjectWrapper2 = zzcgcVar.mo14328G0();
                    }
                    if (iObjectWrapper2 == null || !((Boolean) zzwm.m11166e().m16921a(zzabb.f23824h3)).booleanValue()) {
                        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    } else {
                        imageView.setScaleType((ImageView.ScaleType) ObjectWrapper.m17021Q(iObjectWrapper2));
                    }
                    imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                    viewGroup2.addView(imageView);
                }
            }
        } else if (this.f25920d.m14677t() != null) {
            this.f25920d.m14677t().mo15588a(new C4067th(this, zzcgcVar, viewGroup2));
        }
    }
}
