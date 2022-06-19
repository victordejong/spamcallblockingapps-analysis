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
import java.lang.ref.WeakReference;
import java.util.Iterator;
import p020b.p036e.C1491b;
/* renamed from: androidx.appcompat.app.c */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/c.class */
public abstract class AbstractC0149c {

    /* renamed from: d */
    private static int f431d = -100;

    /* renamed from: e */
    private static final C1491b<WeakReference<AbstractC0149c>> f432e = new C1491b<>();

    /* renamed from: f */
    private static final Object f433f = new Object();

    /* renamed from: A */
    private static void m35555A(AbstractC0149c abstractC0149c) {
        synchronized (f433f) {
            Iterator<WeakReference<AbstractC0149c>> it = f432e.iterator();
            while (it.hasNext()) {
                AbstractC0149c abstractC0149c2 = it.next().get();
                if (abstractC0149c2 == abstractC0149c || abstractC0149c2 == null) {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: F */
    public static void m35550F(int i) {
        if (i != -1 && i != 0 && i != 1 && i != 2 && i != 3) {
            Log.d("AppCompatDelegate", "setDefaultNightMode() called with an unknown mode");
        } else if (f431d == i) {
        } else {
            f431d = i;
            m35544f();
        }
    }

    /* renamed from: c */
    public static void m35547c(AbstractC0149c abstractC0149c) {
        synchronized (f433f) {
            m35555A(abstractC0149c);
            f432e.add(new WeakReference<>(abstractC0149c));
        }
    }

    /* renamed from: f */
    private static void m35544f() {
        synchronized (f433f) {
            Iterator<WeakReference<AbstractC0149c>> it = f432e.iterator();
            while (it.hasNext()) {
                AbstractC0149c abstractC0149c = it.next().get();
                if (abstractC0149c != null) {
                    abstractC0149c.mo35545e();
                }
            }
        }
    }

    /* renamed from: i */
    public static AbstractC0149c m35541i(Activity activity, AbstractC0148b abstractC0148b) {
        return new AppCompatDelegateImpl(activity, abstractC0148b);
    }

    /* renamed from: j */
    public static AbstractC0149c m35540j(Dialog dialog, AbstractC0148b abstractC0148b) {
        return new AppCompatDelegateImpl(dialog, abstractC0148b);
    }

    /* renamed from: l */
    public static int m35538l() {
        return f431d;
    }

    /* renamed from: z */
    public static void m35524z(AbstractC0149c abstractC0149c) {
        synchronized (f433f) {
            m35555A(abstractC0149c);
        }
    }

    /* renamed from: B */
    public abstract boolean mo35554B(int i);

    /* renamed from: C */
    public abstract void mo35553C(int i);

    /* renamed from: D */
    public abstract void mo35552D(View view);

    /* renamed from: E */
    public abstract void mo35551E(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: G */
    public void mo35549G(int i) {
    }

    /* renamed from: H */
    public abstract void mo35548H(CharSequence charSequence);

    /* renamed from: d */
    public abstract void mo35546d(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: e */
    public abstract boolean mo35545e();

    @Deprecated
    /* renamed from: g */
    public void m35543g(Context context) {
    }

    /* renamed from: h */
    public Context mo35542h(Context context) {
        m35543g(context);
        return context;
    }

    /* renamed from: k */
    public abstract <T extends View> T mo35539k(int i);

    /* renamed from: m */
    public int mo35537m() {
        return -100;
    }

    /* renamed from: n */
    public abstract MenuInflater mo35536n();

    /* renamed from: o */
    public abstract ActionBar mo35535o();

    /* renamed from: p */
    public abstract void mo35534p();

    /* renamed from: q */
    public abstract void mo35533q();

    /* renamed from: r */
    public abstract void mo35532r(Configuration configuration);

    /* renamed from: s */
    public abstract void mo35531s(Bundle bundle);

    /* renamed from: t */
    public abstract void mo35530t();

    /* renamed from: u */
    public abstract void mo35529u(Bundle bundle);

    /* renamed from: v */
    public abstract void mo35528v();

    /* renamed from: w */
    public abstract void mo35527w(Bundle bundle);

    /* renamed from: x */
    public abstract void mo35526x();

    /* renamed from: y */
    public abstract void mo35525y();
}
