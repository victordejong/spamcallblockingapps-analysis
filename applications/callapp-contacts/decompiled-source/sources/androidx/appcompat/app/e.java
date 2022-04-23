package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.a;
import androidx.appcompat.view.b;
import androidx.appcompat.widget.Toolbar;
import androidx.b.b;
import java.lang.ref.WeakReference;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/e.class */
public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    private static int f651a = -100;

    /* renamed from: b  reason: collision with root package name */
    private static final b<WeakReference<e>> f652b = new b<>();

    /* renamed from: c  reason: collision with root package name */
    private static final Object f653c = new Object();

    public static e a(Activity activity, d dVar) {
        return new AppCompatDelegateImpl(activity, dVar);
    }

    public static e a(Dialog dialog, d dVar) {
        return new AppCompatDelegateImpl(dialog, dVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(e eVar) {
        synchronized (f653c) {
            c(eVar);
            f652b.add(new WeakReference<>(eVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(e eVar) {
        synchronized (f653c) {
            c(eVar);
        }
    }

    private static void c(e eVar) {
        synchronized (f653c) {
            Iterator<WeakReference<e>> it2 = f652b.iterator();
            while (it2.hasNext()) {
                e eVar2 = it2.next().get();
                if (eVar2 == eVar || eVar2 == null) {
                    it2.remove();
                }
            }
        }
    }

    public static int m() {
        return f651a;
    }

    public Context a(Context context) {
        return context;
    }

    public abstract ActionBar a();

    public abstract androidx.appcompat.view.b a(b.a aVar);

    public void a(int i) {
    }

    public abstract void a(Configuration configuration);

    public abstract void a(View view);

    public abstract void a(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void a(Toolbar toolbar);

    public abstract void a(CharSequence charSequence);

    public abstract MenuInflater b();

    public abstract <T extends View> T b(int i);

    public abstract void b(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void c();

    public abstract void c(int i);

    public abstract void d();

    public abstract boolean d(int i);

    public abstract void e();

    public abstract void f();

    public abstract void g();

    public abstract void h();

    public abstract void i();

    public abstract a.AbstractC0020a j();

    public abstract void k();

    public int l() {
        return -100;
    }
}
