package p086f;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.Toolbar;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import p086f.C2640c;
import p226s.C4254c;
/* renamed from: f.l */
/* loaded from: classes-dex2jar.jar:f/l.class */
public abstract class AbstractC2653l {

    /* renamed from: a */
    public static final C4254c<WeakReference<AbstractC2653l>> f9096a = new C4254c<>(0);

    /* renamed from: b */
    public static final Object f9097b = new Object();

    /* renamed from: t */
    public static void m3363t(AbstractC2653l abstractC2653l) {
        synchronized (f9097b) {
            Iterator<WeakReference<AbstractC2653l>> it2 = f9096a.iterator();
            while (it2.hasNext()) {
                AbstractC2653l abstractC2653l2 = it2.next().get();
                if (abstractC2653l2 == abstractC2653l || abstractC2653l2 == null) {
                    it2.remove();
                }
            }
        }
    }

    /* renamed from: A */
    public abstract void mo3362A(CharSequence charSequence);

    /* renamed from: c */
    public abstract void mo3335c(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: d */
    public Context mo3334d(Context context) {
        return context;
    }

    /* renamed from: e */
    public abstract <T extends View> T mo3333e(int i);

    /* renamed from: f */
    public abstract C2640c.AbstractC2641a mo3332f();

    /* renamed from: g */
    public int mo3331g() {
        return -100;
    }

    /* renamed from: h */
    public abstract MenuInflater mo3330h();

    /* renamed from: i */
    public abstract AbstractC2635a mo3329i();

    /* renamed from: j */
    public abstract void mo3328j();

    /* renamed from: k */
    public abstract void mo3327k();

    /* renamed from: l */
    public abstract void mo3326l(Configuration configuration);

    /* renamed from: m */
    public abstract void mo3325m(Bundle bundle);

    /* renamed from: n */
    public abstract void mo3324n();

    /* renamed from: o */
    public abstract void mo3323o(Bundle bundle);

    /* renamed from: p */
    public abstract void mo3322p();

    /* renamed from: q */
    public abstract void mo3321q(Bundle bundle);

    /* renamed from: r */
    public abstract void mo3320r();

    /* renamed from: s */
    public abstract void mo3319s();

    /* renamed from: u */
    public abstract boolean mo3318u(int i);

    /* renamed from: v */
    public abstract void mo3317v(int i);

    /* renamed from: w */
    public abstract void mo3316w(View view);

    /* renamed from: x */
    public abstract void mo3315x(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: y */
    public abstract void mo3314y(Toolbar toolbar);

    /* renamed from: z */
    public void mo3313z(int i) {
    }
}
