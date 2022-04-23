package p012b.p016b.p017k;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatDelegateImpl;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import p012b.p035f.C0782b;
/* renamed from: b.b.k.c */
/* loaded from: classes-dex2jar.jar:b/b/k/c.class */
public abstract class AbstractC0587c {

    /* renamed from: a */
    public static int f2925a = -100;

    /* renamed from: b */
    public static final C0782b<WeakReference<AbstractC0587c>> f2926b = new C0782b<>();

    /* renamed from: c */
    public static final Object f2927c = new Object();

    /* renamed from: a */
    public static AbstractC0587c m36884a(Activity activity, AbstractC0586b bVar) {
        return new AppCompatDelegateImpl(activity, bVar);
    }

    /* renamed from: a */
    public static AbstractC0587c m36883a(Dialog dialog, AbstractC0586b bVar) {
        return new AppCompatDelegateImpl(dialog, bVar);
    }

    /* renamed from: a */
    public static void m36877a(AbstractC0587c cVar) {
        synchronized (f2927c) {
            m36866c(cVar);
            f2926b.add(new WeakReference<>(cVar));
        }
    }

    /* renamed from: b */
    public static void m36870b(AbstractC0587c cVar) {
        synchronized (f2927c) {
            m36866c(cVar);
        }
    }

    /* renamed from: c */
    public static void m36866c(AbstractC0587c cVar) {
        synchronized (f2927c) {
            try {
                Iterator<WeakReference<AbstractC0587c>> it = f2926b.iterator();
                while (it.hasNext()) {
                    AbstractC0587c cVar2 = it.next().get();
                    if (cVar2 == cVar || cVar2 == null) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: j */
    public static int m36858j() {
        return f2925a;
    }

    /* renamed from: a */
    public int mo36886a() {
        return -100;
    }

    /* renamed from: a */
    public abstract <T extends View> T mo36885a(int i);

    @Deprecated
    /* renamed from: a */
    public void m36882a(Context context) {
    }

    /* renamed from: a */
    public abstract void mo36881a(Configuration configuration);

    /* renamed from: a */
    public abstract void mo36880a(Bundle bundle);

    /* renamed from: a */
    public abstract void mo36879a(View view);

    /* renamed from: a */
    public abstract void mo36878a(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: a */
    public abstract void mo36876a(CharSequence charSequence);

    /* renamed from: b */
    public Context mo36873b(Context context) {
        m36882a(context);
        return context;
    }

    /* renamed from: b */
    public abstract MenuInflater mo36875b();

    /* renamed from: b */
    public abstract void mo36872b(Bundle bundle);

    /* renamed from: b */
    public abstract void mo36871b(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: b */
    public abstract boolean mo36874b(int i);

    /* renamed from: c */
    public abstract ActionBar mo36869c();

    /* renamed from: c */
    public abstract void mo36868c(int i);

    /* renamed from: c */
    public abstract void mo36867c(Bundle bundle);

    /* renamed from: d */
    public abstract void mo36865d();

    /* renamed from: d */
    public void mo36864d(int i) {
    }

    /* renamed from: e */
    public abstract void mo36863e();

    /* renamed from: f */
    public abstract void mo36862f();

    /* renamed from: g */
    public abstract void mo36861g();

    /* renamed from: h */
    public abstract void mo36860h();

    /* renamed from: i */
    public abstract void mo36859i();
}
