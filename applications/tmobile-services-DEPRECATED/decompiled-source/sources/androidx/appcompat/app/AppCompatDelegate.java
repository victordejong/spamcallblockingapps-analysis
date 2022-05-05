package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.VectorEnabledTintResources;
import androidx.collection.ArraySet;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegate.class */
public abstract class AppCompatDelegate {

    /* renamed from: f */
    private static int f157f = -100;

    /* renamed from: g */
    private static final ArraySet<WeakReference<AppCompatDelegate>> f158g = new ArraySet<>();

    /* renamed from: h */
    private static final Object f159h = new Object();

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegate$NightMode.class */
    public @interface NightMode {
    }

    /* renamed from: B */
    public static void m22275B(boolean z) {
        VectorEnabledTintResources.m21155b(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static void m22274c(@NonNull AppCompatDelegate appCompatDelegate) {
        synchronized (f159h) {
            m22268z(appCompatDelegate);
            f158g.add(new WeakReference<>(appCompatDelegate));
        }
    }

    @NonNull
    /* renamed from: g */
    public static AppCompatDelegate m22272g(@NonNull Activity activity, @Nullable AppCompatCallback appCompatCallback) {
        return new AppCompatDelegateImpl(activity, appCompatCallback);
    }

    @NonNull
    /* renamed from: h */
    public static AppCompatDelegate m22271h(@NonNull Dialog dialog, @Nullable AppCompatCallback appCompatCallback) {
        return new AppCompatDelegateImpl(dialog, appCompatCallback);
    }

    /* renamed from: j */
    public static int m22270j() {
        return f157f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y */
    public static void m22269y(@NonNull AppCompatDelegate appCompatDelegate) {
        synchronized (f159h) {
            m22268z(appCompatDelegate);
        }
    }

    /* renamed from: z */
    private static void m22268z(@NonNull AppCompatDelegate appCompatDelegate) {
        synchronized (f159h) {
            Iterator<WeakReference<AppCompatDelegate>> it = f158g.iterator();
            while (it.hasNext()) {
                AppCompatDelegate appCompatDelegate2 = it.next().get();
                if (appCompatDelegate2 == appCompatDelegate || appCompatDelegate2 == null) {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: A */
    public abstract boolean mo22267A(int i);

    /* renamed from: C */
    public abstract void mo22264C(@LayoutRes int i);

    /* renamed from: D */
    public abstract void mo22262D(View view);

    /* renamed from: E */
    public abstract void mo22260E(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: F */
    public abstract void mo22258F(@Nullable Toolbar toolbar);

    /* renamed from: G */
    public void mo22256G(@StyleRes int i) {
    }

    /* renamed from: H */
    public abstract void mo22254H(@Nullable CharSequence charSequence);

    /* renamed from: d */
    public abstract void mo22223d(View view, ViewGroup.LayoutParams layoutParams);

    @Deprecated
    /* renamed from: e */
    public void m22273e(Context context) {
    }

    @NonNull
    @CallSuper
    /* renamed from: f */
    public Context mo22220f(@NonNull Context context) {
        m22273e(context);
        return context;
    }

    @Nullable
    /* renamed from: i */
    public abstract <T extends View> T mo22216i(@IdRes int i);

    @Nullable
    /* renamed from: k */
    public abstract ActionBarDrawerToggle.Delegate mo22213k();

    /* renamed from: l */
    public int mo22211l() {
        return -100;
    }

    /* renamed from: m */
    public abstract MenuInflater mo22209m();

    @Nullable
    /* renamed from: n */
    public abstract ActionBar mo22207n();

    /* renamed from: o */
    public abstract void mo22205o();

    /* renamed from: p */
    public abstract void mo22203p();

    /* renamed from: q */
    public abstract void mo22201q(Configuration configuration);

    /* renamed from: r */
    public abstract void mo22199r(Bundle bundle);

    /* renamed from: s */
    public abstract void mo22197s();

    /* renamed from: t */
    public abstract void mo22195t(Bundle bundle);

    /* renamed from: u */
    public abstract void mo22193u();

    /* renamed from: v */
    public abstract void mo22191v(Bundle bundle);

    /* renamed from: w */
    public abstract void mo22189w();

    /* renamed from: x */
    public abstract void mo22187x();
}
