package p1727n3.p1734b.p1735a;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.Toolbar;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import p1727n3.p1734b.p1735a.C25398c;
import p1727n3.p1734b.p1741e.AbstractC25450a;
import p1727n3.p1788g.C26177c;
/* renamed from: n3.b.a.j */
/* loaded from: classes-dex2jar.jar:n3/b/a/j.class */
public abstract class AbstractC25407j {

    /* renamed from: a */
    public static final C26177c<WeakReference<AbstractC25407j>> f70858a = new C26177c<>(0);

    /* renamed from: b */
    public static final Object f70859b = new Object();

    /* renamed from: t */
    public static void m3651t(AbstractC25407j abstractC25407j) {
        synchronized (f70859b) {
            Iterator<WeakReference<AbstractC25407j>> it = f70858a.iterator();
            while (it.hasNext()) {
                AbstractC25407j abstractC25407j2 = it.next().get();
                if (abstractC25407j2 == abstractC25407j || abstractC25407j2 == null) {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: A */
    public abstract void mo3650A(CharSequence charSequence);

    /* renamed from: B */
    public abstract AbstractC25450a mo3649B(AbstractC25450a.AbstractC25451a abstractC25451a);

    /* renamed from: c */
    public abstract void mo3622c(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: d */
    public Context mo3621d(Context context) {
        return context;
    }

    /* renamed from: e */
    public abstract <T extends View> T mo3620e(int i);

    /* renamed from: f */
    public abstract C25398c.AbstractC25399a mo3619f();

    /* renamed from: g */
    public int mo3618g() {
        return -100;
    }

    /* renamed from: h */
    public abstract MenuInflater mo3617h();

    /* renamed from: i */
    public abstract AbstractC25393a mo3616i();

    /* renamed from: j */
    public abstract void mo3615j();

    /* renamed from: k */
    public abstract void mo3614k();

    /* renamed from: l */
    public abstract void mo3613l(Configuration configuration);

    /* renamed from: m */
    public abstract void mo3612m(Bundle bundle);

    /* renamed from: n */
    public abstract void mo3611n();

    /* renamed from: o */
    public abstract void mo3610o(Bundle bundle);

    /* renamed from: p */
    public abstract void mo3609p();

    /* renamed from: q */
    public abstract void mo3608q(Bundle bundle);

    /* renamed from: r */
    public abstract void mo3607r();

    /* renamed from: s */
    public abstract void mo3606s();

    /* renamed from: u */
    public abstract boolean mo3605u(int i);

    /* renamed from: v */
    public abstract void mo3604v(int i);

    /* renamed from: w */
    public abstract void mo3603w(View view);

    /* renamed from: x */
    public abstract void mo3602x(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: y */
    public abstract void mo3601y(Toolbar toolbar);

    /* renamed from: z */
    public void mo3600z(int i) {
    }
}
