package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import j0;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar.class */
public abstract class ActionBar {

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f373a;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f373a = 0;
            this.f373a = 8388627;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f373a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, o.ActionBarLayout);
            this.f373a = obtainStyledAttributes.getInt(o.ActionBarLayout_android_layout_gravity, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f373a = 0;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f373a = 0;
            this.f373a = layoutParams.f373a;
        }
    }

    /* renamed from: androidx.appcompat.app.ActionBar$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$a.class */
    public interface AbstractC0062a {
        /* renamed from: a */
        void m7032a(boolean z);
    }

    @Deprecated
    /* renamed from: androidx.appcompat.app.ActionBar$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$b.class */
    public static abstract class AbstractC0063b {
        /* renamed from: a */
        public abstract CharSequence m7031a();

        /* renamed from: b */
        public abstract View m7030b();

        /* renamed from: c */
        public abstract Drawable m7029c();

        /* renamed from: d */
        public abstract CharSequence m7028d();

        /* renamed from: e */
        public abstract void m7027e();
    }

    /* renamed from: f */
    public boolean m7047f() {
        return false;
    }

    /* renamed from: g */
    public abstract boolean m7046g();

    /* renamed from: h */
    public abstract void m7045h(boolean z);

    /* renamed from: i */
    public abstract int m7044i();

    /* renamed from: j */
    public abstract Context m7043j();

    /* renamed from: k */
    public boolean m7042k() {
        return false;
    }

    /* renamed from: l */
    public abstract void m7041l(Configuration configuration);

    /* renamed from: m */
    public void m7040m() {
    }

    /* renamed from: n */
    public abstract boolean m7039n(int i, KeyEvent keyEvent);

    /* renamed from: o */
    public boolean m7038o(KeyEvent keyEvent) {
        return false;
    }

    /* renamed from: p */
    public boolean m7037p() {
        return false;
    }

    /* renamed from: q */
    public abstract void m7036q(boolean z);

    /* renamed from: r */
    public abstract void m7035r(boolean z);

    /* renamed from: s */
    public abstract void m7034s(CharSequence charSequence);

    /* renamed from: t */
    public abstract j0 m7033t(j0.a aVar);
}
