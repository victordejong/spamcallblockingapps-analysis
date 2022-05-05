package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.appcompat.C0042R;
import androidx.appcompat.view.ActionMode;
import androidx.fragment.app.FragmentTransaction;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar.class */
public abstract class ActionBar {

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$DisplayOptions.class */
    public @interface DisplayOptions {
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f22a;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f22a = 0;
            this.f22a = 8388627;
        }

        public LayoutParams(@NonNull Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f22a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0042R.styleable.ActionBarLayout);
            this.f22a = obtainStyledAttributes.getInt(C0042R.styleable.ActionBarLayout_android_layout_gravity, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f22a = 0;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f22a = 0;
            this.f22a = layoutParams.f22a;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$NavigationMode.class */
    public @interface NavigationMode {
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$OnMenuVisibilityListener.class */
    public interface OnMenuVisibilityListener {
        /* renamed from: a */
        void m22323a(boolean z);
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$OnNavigationListener.class */
    public interface OnNavigationListener {
        /* renamed from: a */
        boolean m22322a(int i, long j);
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$Tab.class */
    public static abstract class Tab {
        /* renamed from: a */
        public abstract CharSequence mo22079a();

        /* renamed from: b */
        public abstract View mo22078b();

        /* renamed from: c */
        public abstract Drawable mo22077c();

        /* renamed from: d */
        public abstract int mo22076d();

        /* renamed from: e */
        public abstract CharSequence mo22075e();

        /* renamed from: f */
        public abstract void mo22074f();
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$TabListener.class */
    public interface TabListener {
        /* renamed from: a */
        void m22321a(Tab tab, FragmentTransaction fragmentTransaction);

        /* renamed from: b */
        void m22320b(Tab tab, FragmentTransaction fragmentTransaction);

        /* renamed from: c */
        void m22319c(Tab tab, FragmentTransaction fragmentTransaction);
    }

    /* renamed from: A */
    public abstract void mo22115A(CharSequence charSequence);

    @RestrictTo
    /* renamed from: B */
    public void mo22114B(CharSequence charSequence) {
    }

    @RestrictTo
    /* renamed from: C */
    public ActionMode mo22113C(ActionMode.Callback callback) {
        return null;
    }

    @RestrictTo
    /* renamed from: g */
    public boolean mo22128g() {
        return false;
    }

    @RestrictTo
    /* renamed from: h */
    public boolean mo22095h() {
        return false;
    }

    @RestrictTo
    /* renamed from: i */
    public void mo22094i(boolean z) {
    }

    /* renamed from: j */
    public abstract int mo22093j();

    /* renamed from: k */
    public Context mo22092k() {
        return null;
    }

    @RestrictTo
    /* renamed from: l */
    public boolean mo22127l() {
        return false;
    }

    @RestrictTo
    /* renamed from: m */
    public void mo22091m(Configuration configuration) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public void mo22126n() {
    }

    @RestrictTo
    /* renamed from: o */
    public boolean mo22090o(int i, KeyEvent keyEvent) {
        return false;
    }

    @RestrictTo
    /* renamed from: p */
    public boolean mo22125p(KeyEvent keyEvent) {
        return false;
    }

    @RestrictTo
    /* renamed from: q */
    public boolean mo22124q() {
        return false;
    }

    @RestrictTo
    /* renamed from: r */
    public void mo22089r(boolean z) {
    }

    /* renamed from: s */
    public abstract void mo22088s(boolean z);

    /* renamed from: t */
    public abstract void mo22087t(boolean z);

    /* renamed from: u */
    public void mo22086u(float f) {
        if (f != 0.0f) {
            throw new UnsupportedOperationException("Setting a non-zero elevation is not supported in this action bar configuration.");
        }
    }

    /* renamed from: v */
    public void mo22085v(@StringRes int i) {
    }

    /* renamed from: w */
    public void mo22084w(@Nullable CharSequence charSequence) {
    }

    /* renamed from: x */
    public void mo22083x(@Nullable Drawable drawable) {
    }

    @RestrictTo
    /* renamed from: y */
    public void mo22082y(boolean z) {
    }

    /* renamed from: z */
    public abstract void mo22081z(@StringRes int i);
}
