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
import androidx.appcompat.app.C0082b;
import androidx.appcompat.widget.Toolbar;
import androidx.p014c.C0376b;
import java.lang.ref.WeakReference;
import java.util.Iterator;
/* renamed from: androidx.appcompat.app.g */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/g.class */
public abstract class AbstractC0094g {

    /* renamed from: a */
    private static int f264a = -100;

    /* renamed from: b */
    private static final C0376b<WeakReference<AbstractC0094g>> f265b = new C0376b<>();

    /* renamed from: c */
    private static final Object f266c = new Object();

    /* renamed from: a */
    public static AbstractC0094g m7896a(Activity activity, AbstractC0093f abstractC0093f) {
        return new LayoutInflater$Factory2C0095h(activity, abstractC0093f);
    }

    /* renamed from: a */
    public static AbstractC0094g m7895a(Dialog dialog, AbstractC0093f abstractC0093f) {
        return new LayoutInflater$Factory2C0095h(dialog, abstractC0093f);
    }

    /* renamed from: a */
    public static void m7894a(AbstractC0094g abstractC0094g) {
        synchronized (f266c) {
            m7892c(abstractC0094g);
            f265b.add(new WeakReference<>(abstractC0094g));
        }
    }

    /* renamed from: b */
    public static void m7893b(AbstractC0094g abstractC0094g) {
        synchronized (f266c) {
            m7892c(abstractC0094g);
        }
    }

    /* renamed from: c */
    private static void m7892c(AbstractC0094g abstractC0094g) {
        synchronized (f266c) {
            Iterator<WeakReference<AbstractC0094g>> it = f265b.iterator();
            while (it.hasNext()) {
                AbstractC0094g abstractC0094g2 = it.next().get();
                if (abstractC0094g2 == abstractC0094g || abstractC0094g2 == null) {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: e */
    public static void m7891e(int i) {
        if (i != -1 && i != 0 && i != 1 && i != 2 && i != 3) {
            Log.d("AppCompatDelegate", "setDefaultNightMode() called with an unknown mode");
        } else if (f264a == i) {
        } else {
            f264a = i;
            m7889m();
        }
    }

    /* renamed from: l */
    public static int m7890l() {
        return f264a;
    }

    /* renamed from: m */
    private static void m7889m() {
        synchronized (f266c) {
            Iterator<WeakReference<AbstractC0094g>> it = f265b.iterator();
            while (it.hasNext()) {
                AbstractC0094g abstractC0094g = it.next().get();
                if (abstractC0094g != null) {
                    abstractC0094g.mo7827j();
                }
            }
        }
    }

    /* renamed from: a */
    public abstract AbstractC0078a mo7881a();

    /* renamed from: a */
    public void mo7880a(int i) {
    }

    /* renamed from: a */
    public void mo7876a(Context context) {
    }

    /* renamed from: a */
    public abstract void mo7875a(Configuration configuration);

    /* renamed from: a */
    public abstract void mo7874a(Bundle bundle);

    /* renamed from: a */
    public abstract void mo7871a(View view);

    /* renamed from: a */
    public abstract void mo7870a(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: a */
    public abstract void mo7858a(Toolbar toolbar);

    /* renamed from: a */
    public abstract void mo7857a(CharSequence charSequence);

    /* renamed from: b */
    public abstract MenuInflater mo7855b();

    /* renamed from: b */
    public abstract <T extends View> T mo7854b(int i);

    /* renamed from: b */
    public abstract void mo7851b(Bundle bundle);

    /* renamed from: b */
    public abstract void mo7850b(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: c */
    public abstract void mo7846c();

    /* renamed from: c */
    public abstract void mo7845c(int i);

    /* renamed from: c */
    public abstract void mo7842c(Bundle bundle);

    /* renamed from: d */
    public abstract void mo7840d();

    /* renamed from: d */
    public abstract boolean mo7839d(int i);

    /* renamed from: e */
    public abstract void mo7837e();

    /* renamed from: f */
    public abstract void mo7835f();

    /* renamed from: g */
    public abstract void mo7833g();

    /* renamed from: h */
    public abstract C0082b.AbstractC0084a mo7831h();

    /* renamed from: i */
    public abstract void mo7829i();

    /* renamed from: j */
    public abstract boolean mo7827j();

    /* renamed from: k */
    public int mo7825k() {
        return -100;
    }
}
