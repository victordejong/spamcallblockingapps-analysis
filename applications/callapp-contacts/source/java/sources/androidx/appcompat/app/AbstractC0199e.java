package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.C0188a;
import androidx.appcompat.view.AbstractC0241b;
import androidx.appcompat.widget.Toolbar;
import androidx.p023b.C0430b;
import java.lang.ref.WeakReference;
import java.util.Iterator;
/* renamed from: androidx.appcompat.app.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/e.class */
public abstract class AbstractC0199e {

    /* renamed from: a */
    private static int f517a = -100;

    /* renamed from: b */
    private static final C0430b<WeakReference<AbstractC0199e>> f518b = new C0430b<>();

    /* renamed from: c */
    private static final Object f519c = new Object();

    /* renamed from: a */
    public static AbstractC0199e m46297a(Activity activity, AbstractC0198d abstractC0198d) {
        return new AppCompatDelegateImpl(activity, abstractC0198d);
    }

    /* renamed from: a */
    public static AbstractC0199e m46296a(Dialog dialog, AbstractC0198d abstractC0198d) {
        return new AppCompatDelegateImpl(dialog, abstractC0198d);
    }

    /* renamed from: a */
    public static void m46291a(AbstractC0199e abstractC0199e) {
        synchronized (f519c) {
            m46281c(abstractC0199e);
            f518b.add(new WeakReference<>(abstractC0199e));
        }
    }

    /* renamed from: b */
    public static void m46284b(AbstractC0199e abstractC0199e) {
        synchronized (f519c) {
            m46281c(abstractC0199e);
        }
    }

    /* renamed from: c */
    private static void m46281c(AbstractC0199e abstractC0199e) {
        synchronized (f519c) {
            Iterator<WeakReference<AbstractC0199e>> it2 = f518b.iterator();
            while (it2.hasNext()) {
                AbstractC0199e abstractC0199e2 = it2.next().get();
                if (abstractC0199e2 == abstractC0199e || abstractC0199e2 == null) {
                    it2.remove();
                }
            }
        }
    }

    /* renamed from: m */
    public static int m46270m() {
        return f517a;
    }

    /* renamed from: a */
    public Context mo46295a(Context context) {
        return context;
    }

    /* renamed from: a */
    public abstract ActionBar mo46299a();

    /* renamed from: a */
    public abstract AbstractC0241b mo46290a(AbstractC0241b.AbstractC0242a abstractC0242a);

    /* renamed from: a */
    public void mo46298a(int i) {
    }

    /* renamed from: a */
    public abstract void mo46294a(Configuration configuration);

    /* renamed from: a */
    public abstract void mo46293a(View view);

    /* renamed from: a */
    public abstract void mo46292a(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: a */
    public abstract void mo46289a(Toolbar toolbar);

    /* renamed from: a */
    public abstract void mo46288a(CharSequence charSequence);

    /* renamed from: b */
    public abstract MenuInflater mo46287b();

    /* renamed from: b */
    public abstract <T extends View> T mo46286b(int i);

    /* renamed from: b */
    public abstract void mo46285b(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: c */
    public abstract void mo46283c();

    /* renamed from: c */
    public abstract void mo46282c(int i);

    /* renamed from: d */
    public abstract void mo46280d();

    /* renamed from: d */
    public abstract boolean mo46279d(int i);

    /* renamed from: e */
    public abstract void mo46278e();

    /* renamed from: f */
    public abstract void mo46277f();

    /* renamed from: g */
    public abstract void mo46276g();

    /* renamed from: h */
    public abstract void mo46275h();

    /* renamed from: i */
    public abstract void mo46274i();

    /* renamed from: j */
    public abstract C0188a.AbstractC0190a mo46273j();

    /* renamed from: k */
    public abstract void mo46272k();

    /* renamed from: l */
    public int mo46271l() {
        return -100;
    }
}
