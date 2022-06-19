package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import p020b.p021a.C1432j;
import p020b.p021a.p028o.AbstractC1455b;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar.class */
public abstract class ActionBar {

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f208a;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f208a = 0;
            this.f208a = 8388627;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f208a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1432j.ActionBarLayout);
            this.f208a = obtainStyledAttributes.getInt(C1432j.ActionBarLayout_android_layout_gravity, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f208a = 0;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f208a = 0;
            this.f208a = layoutParams.f208a;
        }
    }

    /* renamed from: androidx.appcompat.app.ActionBar$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$a.class */
    public interface AbstractC0105a {
        /* renamed from: a */
        void m35706a(boolean z);
    }

    @Deprecated
    /* renamed from: androidx.appcompat.app.ActionBar$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$b.class */
    public static abstract class AbstractC0106b {
        /* renamed from: a */
        public abstract CharSequence m35705a();

        /* renamed from: b */
        public abstract View m35704b();

        /* renamed from: c */
        public abstract Drawable m35703c();

        /* renamed from: d */
        public abstract CharSequence m35702d();

        /* renamed from: e */
        public abstract void m35701e();
    }

    /* renamed from: f */
    public boolean m35711f() {
        return false;
    }

    /* renamed from: g */
    public abstract boolean mo35470g();

    /* renamed from: h */
    public abstract void mo35469h(boolean z);

    /* renamed from: i */
    public abstract int mo35468i();

    /* renamed from: j */
    public abstract Context mo35467j();

    /* renamed from: k */
    public boolean m35710k() {
        return false;
    }

    /* renamed from: l */
    public abstract void mo35466l(Configuration configuration);

    /* renamed from: m */
    public void m35709m() {
    }

    /* renamed from: n */
    public abstract boolean mo35465n(int i, KeyEvent keyEvent);

    /* renamed from: o */
    public boolean m35708o(KeyEvent keyEvent) {
        return false;
    }

    /* renamed from: p */
    public boolean m35707p() {
        return false;
    }

    /* renamed from: q */
    public abstract void mo35464q(boolean z);

    /* renamed from: r */
    public abstract void mo35463r(boolean z);

    /* renamed from: s */
    public abstract void mo35462s(CharSequence charSequence);

    /* renamed from: t */
    public abstract AbstractC1455b mo35461t(AbstractC1455b.AbstractC1456a abstractC1456a);
}
