package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.p119b.C2250a;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/azv.class */
public final class azv {

    /* renamed from: a */
    private final AbstractC3558uw f10735a;

    /* renamed from: b */
    private final chh f10736b;

    /* renamed from: c */
    private final azd f10737c;

    /* renamed from: d */
    private final ayx f10738d;

    /* renamed from: e */
    private final bae f10739e;

    /* renamed from: f */
    private final Executor f10740f;

    /* renamed from: g */
    private final Executor f10741g;

    /* renamed from: h */
    private final C2835bl f10742h;

    /* renamed from: i */
    private final ays f10743i;

    public azv(AbstractC3558uw abstractC3558uw, chh chhVar, azd azdVar, ayx ayxVar, bae baeVar, Executor executor, Executor executor2, ays aysVar) {
        this.f10735a = abstractC3558uw;
        this.f10736b = chhVar;
        this.f10742h = chhVar.f13045i;
        this.f10737c = azdVar;
        this.f10738d = ayxVar;
        this.f10739e = baeVar;
        this.f10740f = executor;
        this.f10741g = executor2;
        this.f10743i = aysVar;
    }

    /* renamed from: a */
    private static void m12191a(RelativeLayout.LayoutParams layoutParams, int i) {
        switch (i) {
            case 0:
                layoutParams.addRule(10);
                layoutParams.addRule(9);
                return;
            case 1:
            default:
                layoutParams.addRule(10);
                layoutParams.addRule(11);
                return;
            case 2:
                layoutParams.addRule(12);
                layoutParams.addRule(11);
                return;
            case 3:
                layoutParams.addRule(12);
                layoutParams.addRule(9);
                return;
        }
    }

    /* renamed from: a */
    public static boolean m12188a(bam bamVar, String[] strArr) {
        boolean z;
        Map<String, WeakReference<View>> mo12167f = bamVar.mo12167f();
        if (mo12167f == null) {
            z = false;
        } else {
            int length = strArr.length;
            int i = 0;
            while (true) {
                z = false;
                if (i >= length) {
                    break;
                } else if (mo12167f.get(strArr[i]) != null) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public final void m12189a(bam bamVar) {
        this.f10740f.execute(new Runnable(this, bamVar) { // from class: com.google.android.gms.internal.ads.azu

            /* renamed from: a */
            private final azv f10733a;

            /* renamed from: b */
            private final bam f10734b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10733a = this;
                this.f10734b = bamVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10733a.m12185c(this.f10734b);
            }
        });
    }

    /* renamed from: a */
    public final boolean m12192a(ViewGroup viewGroup) {
        boolean z;
        View m12244m = this.f10738d.m12244m();
        if (m12244m == null) {
            z = false;
        } else {
            viewGroup.removeAllViews();
            if (m12244m.getParent() instanceof ViewGroup) {
                ((ViewGroup) m12244m.getParent()).removeView(m12244m);
            }
            viewGroup.addView(m12244m, ((Boolean) dyx.m8158e().m7876a(edi.f16395bA)).booleanValue() ? new FrameLayout.LayoutParams(-1, -1, 17) : new FrameLayout.LayoutParams(-2, -2, 17));
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public final /* synthetic */ void m12187b(ViewGroup viewGroup) {
        boolean z = viewGroup != null;
        if (this.f10738d.m12244m() != null) {
            if (2 == this.f10738d.m12283a() || 1 == this.f10738d.m12283a()) {
                this.f10735a.mo7034a(this.f10736b.f13042f, String.valueOf(this.f10738d.m12283a()), z);
            } else if (6 != this.f10738d.m12283a()) {
            } else {
                this.f10735a.mo7034a(this.f10736b.f13042f, "2", z);
                this.f10735a.mo7034a(this.f10736b.f13042f, "1", z);
            }
        }
    }

    /* renamed from: b */
    public final void m12186b(bam bamVar) {
        if (bamVar == null || this.f10739e == null || bamVar.mo12171b() == null || !this.f10737c.mo12222b()) {
            return;
        }
        try {
            bamVar.mo12171b().addView(this.f10739e.m12179a());
        } catch (zzbew e) {
            C3556uu.m7051a("web view can not be obtained", e);
        }
    }

    /* renamed from: c */
    public final /* synthetic */ void m12185c(bam bamVar) {
        ViewGroup viewGroup;
        C2829bf c2829bf;
        ViewGroup viewGroup2;
        AbstractC2731a mo11584a;
        Drawable drawable;
        ViewGroup viewGroup3;
        if (this.f10737c.mo12219e() || this.f10737c.mo12221c()) {
            int i = 0;
            while (true) {
                if (i >= 2) {
                    viewGroup3 = null;
                    break;
                }
                View mo12172a_ = bamVar.mo12172a_(new String[]{"1098", "3011"}[i]);
                if (mo12172a_ != null && (mo12172a_ instanceof ViewGroup)) {
                    viewGroup3 = (ViewGroup) mo12172a_;
                    break;
                }
                i++;
            }
            viewGroup = viewGroup3;
        } else {
            viewGroup = null;
        }
        boolean z = viewGroup != null;
        Context context = bamVar.mo12170c().getContext();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.f10738d.m12253d() != null) {
            c2829bf = this.f10738d.m12253d();
            if (this.f10742h != null && !z) {
                m12191a(layoutParams, this.f10742h.f11459e);
                c2829bf.setLayoutParams(layoutParams);
            }
        } else if (!(this.f10738d.m12255c() instanceof BinderC2830bg)) {
            c2829bf = null;
        } else {
            BinderC2830bg binderC2830bg = (BinderC2830bg) this.f10738d.m12255c();
            if (!z) {
                m12191a(layoutParams, binderC2830bg.m11980h());
            }
            c2829bf = new C2829bf(context, binderC2830bg, layoutParams);
            c2829bf.setContentDescription((CharSequence) dyx.m8158e().m7876a(edi.f16445by));
        }
        if (c2829bf != null) {
            if (c2829bf.getParent() instanceof ViewGroup) {
                ((ViewGroup) c2829bf.getParent()).removeView(c2829bf);
            }
            if (z) {
                viewGroup.removeAllViews();
                viewGroup.addView(c2829bf);
            } else {
                C2250a c2250a = new C2250a(bamVar.mo12170c().getContext());
                c2250a.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                c2250a.addView(c2829bf);
                FrameLayout mo12171b = bamVar.mo12171b();
                if (mo12171b != null) {
                    mo12171b.addView(c2250a);
                }
            }
            bamVar.mo12173a(bamVar.mo12165h(), c2829bf, true);
        }
        String[] strArr = azt.f10719a;
        int length = strArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                viewGroup2 = null;
                break;
            }
            View mo12172a_2 = bamVar.mo12172a_(strArr[i2]);
            if (mo12172a_2 instanceof ViewGroup) {
                viewGroup2 = (ViewGroup) mo12172a_2;
                break;
            }
            i2++;
        }
        this.f10741g.execute(new Runnable(this, viewGroup2) { // from class: com.google.android.gms.internal.ads.azx

            /* renamed from: a */
            private final azv f10747a;

            /* renamed from: b */
            private final ViewGroup f10748b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10747a = this;
                this.f10748b = viewGroup2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10747a.m12187b(this.f10748b);
            }
        });
        if (viewGroup2 != null) {
            if (m12192a(viewGroup2)) {
                if (this.f10738d.m12235v() == null) {
                    return;
                }
                this.f10738d.m12235v().mo13467a(new azw(this, bamVar, viewGroup2));
                return;
            }
            viewGroup2.removeAllViews();
            View mo12170c = bamVar.mo12170c();
            Context context2 = mo12170c != null ? mo12170c.getContext() : null;
            if (context2 == null) {
                return;
            }
            if (((Boolean) dyx.m8158e().m7876a(edi.f16444bx)).booleanValue()) {
                AbstractC2843bt m12291a = this.f10743i.m12291a();
                if (m12291a == null) {
                    return;
                }
                try {
                    mo11584a = m12291a.mo11600b();
                } catch (RemoteException e) {
                    C3556uu.m6745e("Could not get main image drawable");
                    return;
                }
            } else {
                AbstractC2844bu m12250g = this.f10738d.m12250g();
                if (m12250g == null) {
                    return;
                }
                try {
                    mo11584a = m12250g.mo11584a();
                } catch (RemoteException e2) {
                    C3556uu.m6745e("Could not get drawable from image");
                    return;
                }
            }
            if (mo11584a == null || (drawable = (Drawable) BinderC2734b.m13795a(mo11584a)) == null) {
                return;
            }
            ImageView imageView = new ImageView(context2);
            imageView.setImageDrawable(drawable);
            AbstractC2731a abstractC2731a = null;
            if (bamVar != null) {
                abstractC2731a = bamVar.mo12164i();
            }
            if (abstractC2731a == null || !((Boolean) dyx.m8158e().m7876a(edi.f16473cZ)).booleanValue()) {
                imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            } else {
                imageView.setScaleType((ImageView.ScaleType) BinderC2734b.m13795a(abstractC2731a));
            }
            imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            viewGroup2.addView(imageView);
        }
    }
}
