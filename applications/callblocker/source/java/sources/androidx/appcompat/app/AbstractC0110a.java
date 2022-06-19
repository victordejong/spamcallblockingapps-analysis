package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.C0083a;
import androidx.appcompat.view.AbstractC0172b;
/* renamed from: androidx.appcompat.app.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a.class */
public abstract class AbstractC0110a {

    /* renamed from: androidx.appcompat.app.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a$a.class */
    public static class C0111a extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f327a;

        public C0111a(int i, int i2) {
            super(i, i2);
            this.f327a = 0;
            this.f327a = 8388627;
        }

        public C0111a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f327a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0083a.C0093j.ActionBarLayout);
            this.f327a = obtainStyledAttributes.getInt(C0083a.C0093j.ActionBarLayout_android_layout_gravity, 0);
            obtainStyledAttributes.recycle();
        }

        public C0111a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f327a = 0;
        }

        public C0111a(C0111a c0111a) {
            super((ViewGroup.MarginLayoutParams) c0111a);
            this.f327a = 0;
            this.f327a = c0111a.f327a;
        }
    }

    /* renamed from: androidx.appcompat.app.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a$b.class */
    public interface AbstractC0112b {
        /* renamed from: a */
        void m22240a(boolean z);
    }

    @Deprecated
    /* renamed from: androidx.appcompat.app.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a$c.class */
    public static abstract class AbstractC0113c {
        /* renamed from: a */
        public abstract Drawable m22239a();

        /* renamed from: b */
        public abstract CharSequence m22238b();

        /* renamed from: c */
        public abstract View m22237c();

        /* renamed from: d */
        public abstract void m22236d();

        /* renamed from: e */
        public abstract CharSequence m22235e();
    }

    /* renamed from: a */
    public abstract int mo22091a();

    /* renamed from: a */
    public AbstractC0172b mo22085a(AbstractC0172b.AbstractC0173a abstractC0173a) {
        return null;
    }

    /* renamed from: a */
    public void mo22090a(float f) {
        if (f != 0.0f) {
            throw new UnsupportedOperationException("Setting a non-zero elevation is not supported in this action bar configuration.");
        }
    }

    /* renamed from: a */
    public void mo22087a(Configuration configuration) {
    }

    /* renamed from: a */
    public void mo22084a(CharSequence charSequence) {
    }

    /* renamed from: a */
    public void mo22083a(boolean z) {
    }

    /* renamed from: a */
    public boolean mo22088a(int i, KeyEvent keyEvent) {
        return false;
    }

    /* renamed from: a */
    public boolean mo22105a(KeyEvent keyEvent) {
        return false;
    }

    /* renamed from: b */
    public Context mo22081b() {
        return null;
    }

    /* renamed from: b */
    public void mo22079b(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("Hide on content scroll is not supported in this action bar configuration.");
        }
    }

    /* renamed from: c */
    public void mo22078c(boolean z) {
    }

    /* renamed from: c */
    public boolean mo22104c() {
        return false;
    }

    /* renamed from: d */
    public void mo22077d(boolean z) {
    }

    /* renamed from: d */
    public boolean mo22103d() {
        return false;
    }

    /* renamed from: e */
    public void mo22076e(boolean z) {
    }

    /* renamed from: e */
    public boolean mo22102e() {
        return false;
    }

    /* renamed from: f */
    public boolean mo22075f() {
        return false;
    }

    /* renamed from: g */
    public void mo22101g() {
    }
}
