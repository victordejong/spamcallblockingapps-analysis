package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import d.a.j;
import d.a.o.b;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar.class */
public abstract class ActionBar {

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f129a;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f129a = 0;
            this.f129a = 8388627;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f129a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.ActionBarLayout);
            this.f129a = obtainStyledAttributes.getInt(j.ActionBarLayout_android_layout_gravity, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f129a = 0;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f129a = 0;
            this.f129a = layoutParams.f129a;
        }
    }

    /* renamed from: androidx.appcompat.app.ActionBar$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$a.class */
    public interface AbstractC0069a {
        /* renamed from: a */
        void m14987a(boolean z);
    }

    @Deprecated
    /* renamed from: androidx.appcompat.app.ActionBar$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$b.class */
    public static abstract class AbstractC0070b {
        /* renamed from: a */
        public abstract CharSequence m14986a();

        /* renamed from: b */
        public abstract View m14985b();

        /* renamed from: c */
        public abstract Drawable m14984c();

        /* renamed from: d */
        public abstract CharSequence m14983d();

        /* renamed from: e */
        public abstract void m14982e();
    }

    /* renamed from: f */
    public boolean m15002f() {
        return false;
    }

    /* renamed from: g */
    public abstract boolean m15001g();

    /* renamed from: h */
    public abstract void m15000h(boolean z);

    /* renamed from: i */
    public abstract int m14999i();

    /* renamed from: j */
    public abstract Context m14998j();

    /* renamed from: k */
    public boolean m14997k() {
        return false;
    }

    /* renamed from: l */
    public abstract void m14996l(Configuration configuration);

    /* renamed from: m */
    void m14995m() {
    }

    /* renamed from: n */
    public abstract boolean m14994n(int i, KeyEvent keyEvent);

    /* renamed from: o */
    public boolean m14993o(KeyEvent keyEvent) {
        return false;
    }

    /* renamed from: p */
    public boolean m14992p() {
        return false;
    }

    /* renamed from: q */
    public abstract void m14991q(boolean z);

    /* renamed from: r */
    public abstract void m14990r(boolean z);

    /* renamed from: s */
    public abstract void m14989s(CharSequence charSequence);

    /* renamed from: t */
    public abstract b m14988t(b.a aVar);
}
