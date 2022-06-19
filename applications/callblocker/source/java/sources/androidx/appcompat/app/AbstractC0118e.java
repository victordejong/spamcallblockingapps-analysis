package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.p013b.C0375b;
import java.lang.ref.WeakReference;
import java.util.Iterator;
/* renamed from: androidx.appcompat.app.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/e.class */
public abstract class AbstractC0118e {

    /* renamed from: a */
    private static int f333a = -100;

    /* renamed from: b */
    private static final C0375b<WeakReference<AbstractC0118e>> f334b = new C0375b<>();

    /* renamed from: c */
    private static final Object f335c = new Object();

    /* renamed from: a */
    public static AbstractC0118e m22214a(Activity activity, AbstractC0117d abstractC0117d) {
        return new LayoutInflater$Factory2C0119f(activity, abstractC0117d);
    }

    /* renamed from: a */
    public static AbstractC0118e m22213a(Dialog dialog, AbstractC0117d abstractC0117d) {
        return new LayoutInflater$Factory2C0119f(dialog, abstractC0117d);
    }

    /* renamed from: a */
    public static void m22212a(AbstractC0118e abstractC0118e) {
        synchronized (f335c) {
            m22210c(abstractC0118e);
            f334b.add(new WeakReference<>(abstractC0118e));
        }
    }

    /* renamed from: b */
    public static void m22211b(AbstractC0118e abstractC0118e) {
        synchronized (f335c) {
            m22210c(abstractC0118e);
        }
    }

    /* renamed from: c */
    private static void m22210c(AbstractC0118e abstractC0118e) {
        synchronized (f335c) {
            Iterator<WeakReference<AbstractC0118e>> it = f334b.iterator();
            while (it.hasNext()) {
                AbstractC0118e abstractC0118e2 = it.next().get();
                if (abstractC0118e2 == abstractC0118e || abstractC0118e2 == null) {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: j */
    public static int m22209j() {
        return f333a;
    }

    /* renamed from: a */
    public abstract AbstractC0110a mo22202a();

    /* renamed from: a */
    public void mo22201a(int i) {
    }

    /* renamed from: a */
    public void mo22197a(Context context) {
    }

    /* renamed from: a */
    public abstract void mo22196a(Configuration configuration);

    /* renamed from: a */
    public abstract void mo22195a(Bundle bundle);

    /* renamed from: a */
    public abstract void mo22192a(View view);

    /* renamed from: a */
    public abstract void mo22191a(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: a */
    public abstract void mo22180a(CharSequence charSequence);

    /* renamed from: b */
    public abstract MenuInflater mo22178b();

    /* renamed from: b */
    public abstract <T extends View> T mo22177b(int i);

    /* renamed from: b */
    public abstract void mo22174b(Bundle bundle);

    /* renamed from: b */
    public abstract void mo22173b(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: c */
    public abstract void mo22168c();

    /* renamed from: c */
    public abstract void mo22167c(int i);

    /* renamed from: c */
    public abstract void mo22164c(Bundle bundle);

    /* renamed from: d */
    public abstract void mo22162d();

    /* renamed from: d */
    public abstract boolean mo22161d(int i);

    /* renamed from: e */
    public abstract void mo22159e();

    /* renamed from: f */
    public abstract void mo22156f();

    /* renamed from: g */
    public abstract void mo22154g();

    /* renamed from: h */
    public abstract void mo22152h();

    /* renamed from: i */
    public int mo22150i() {
        return -100;
    }
}
