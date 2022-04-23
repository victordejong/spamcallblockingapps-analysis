package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import d.e.b;
import java.lang.ref.WeakReference;
import java.util.Iterator;
/* renamed from: androidx.appcompat.app.c */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/c.class */
public abstract class AbstractC0086c {

    /* renamed from: b */
    private static int f270b = -100;

    /* renamed from: c */
    private static final b<WeakReference<AbstractC0086c>> f271c = new b<>();

    /* renamed from: d */
    private static final Object f272d = new Object();

    AbstractC0086c() {
    }

    /* renamed from: A */
    private static void m14919A(AbstractC0086c cVar) {
        synchronized (f272d) {
            try {
                Iterator it = f271c.iterator();
                while (it.hasNext()) {
                    AbstractC0086c cVar2 = (AbstractC0086c) ((WeakReference) it.next()).get();
                    if (cVar2 == cVar || cVar2 == null) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: F */
    public static void m14914F(int i) {
        if (i != -1 && i != 0 && i != 1 && i != 2 && i != 3) {
            Log.d("AppCompatDelegate", "setDefaultNightMode() called with an unknown mode");
        } else if (f270b != i) {
            f270b = i;
            m14908f();
        }
    }

    /* renamed from: c */
    static void m14911c(AbstractC0086c cVar) {
        synchronized (f272d) {
            m14919A(cVar);
            f271c.add(new WeakReference(cVar));
        }
    }

    /* renamed from: f */
    private static void m14908f() {
        synchronized (f272d) {
            try {
                Iterator it = f271c.iterator();
                while (it.hasNext()) {
                    AbstractC0086c cVar = (AbstractC0086c) ((WeakReference) it.next()).get();
                    if (cVar != null) {
                        cVar.m14909e();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: i */
    public static AbstractC0086c m14905i(Activity activity, AbstractC0085b bVar) {
        return new AppCompatDelegateImpl(activity, bVar);
    }

    /* renamed from: j */
    public static AbstractC0086c m14904j(Dialog dialog, AbstractC0085b bVar) {
        return new AppCompatDelegateImpl(dialog, bVar);
    }

    /* renamed from: l */
    public static int m14902l() {
        return f270b;
    }

    /* renamed from: z */
    static void m14888z(AbstractC0086c cVar) {
        synchronized (f272d) {
            m14919A(cVar);
        }
    }

    /* renamed from: B */
    public abstract boolean m14918B(int i);

    /* renamed from: C */
    public abstract void m14917C(int i);

    /* renamed from: D */
    public abstract void m14916D(View view);

    /* renamed from: E */
    public abstract void m14915E(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: G */
    public void m14913G(int i) {
    }

    /* renamed from: H */
    public abstract void m14912H(CharSequence charSequence);

    /* renamed from: d */
    public abstract void m14910d(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: e */
    public abstract boolean m14909e();

    @Deprecated
    /* renamed from: g */
    public void m14907g(Context context) {
    }

    /* renamed from: h */
    public Context m14906h(Context context) {
        m14907g(context);
        return context;
    }

    /* renamed from: k */
    public abstract <T extends View> T m14903k(int i);

    /* renamed from: m */
    public int m14901m() {
        return -100;
    }

    /* renamed from: n */
    public abstract MenuInflater m14900n();

    /* renamed from: o */
    public abstract ActionBar m14899o();

    /* renamed from: p */
    public abstract void m14898p();

    /* renamed from: q */
    public abstract void m14897q();

    /* renamed from: r */
    public abstract void m14896r(Configuration configuration);

    /* renamed from: s */
    public abstract void m14895s(Bundle bundle);

    /* renamed from: t */
    public abstract void m14894t();

    /* renamed from: u */
    public abstract void m14893u(Bundle bundle);

    /* renamed from: v */
    public abstract void m14892v();

    /* renamed from: w */
    public abstract void m14891w(Bundle bundle);

    /* renamed from: x */
    public abstract void m14890x();

    /* renamed from: y */
    public abstract void m14889y();
}
