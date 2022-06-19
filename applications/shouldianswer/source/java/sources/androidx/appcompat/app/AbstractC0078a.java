package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.C0051a;
import androidx.appcompat.view.AbstractC0155b;
import com.google.android.flexbox.FlexItem;
/* renamed from: androidx.appcompat.app.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a.class */
public abstract class AbstractC0078a {

    /* renamed from: androidx.appcompat.app.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a$a.class */
    public static class C0079a extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f237a;

        public C0079a(int i, int i2) {
            super(i, i2);
            this.f237a = 0;
            this.f237a = 8388627;
        }

        public C0079a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f237a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0051a.C0061j.ActionBarLayout);
            this.f237a = obtainStyledAttributes.getInt(C0051a.C0061j.ActionBarLayout_android_layout_gravity, 0);
            obtainStyledAttributes.recycle();
        }

        public C0079a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f237a = 0;
        }

        public C0079a(C0079a c0079a) {
            super((ViewGroup.MarginLayoutParams) c0079a);
            this.f237a = 0;
            this.f237a = c0079a.f237a;
        }
    }

    /* renamed from: androidx.appcompat.app.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a$b.class */
    public interface AbstractC0080b {
        /* renamed from: a */
        void m7948a(boolean z);
    }

    @Deprecated
    /* renamed from: androidx.appcompat.app.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a$c.class */
    public static abstract class AbstractC0081c {
        /* renamed from: a */
        public abstract Drawable m7947a();

        /* renamed from: b */
        public abstract CharSequence m7946b();

        /* renamed from: c */
        public abstract View m7945c();

        /* renamed from: d */
        public abstract void m7944d();

        /* renamed from: e */
        public abstract CharSequence m7943e();
    }

    /* renamed from: a */
    public abstract int mo7768a();

    /* renamed from: a */
    public AbstractC0155b mo7760a(AbstractC0155b.AbstractC0156a abstractC0156a) {
        return null;
    }

    /* renamed from: a */
    public void mo7767a(float f) {
        if (f == FlexItem.FLEX_GROW_DEFAULT) {
            return;
        }
        throw new UnsupportedOperationException("Setting a non-zero elevation is not supported in this action bar configuration.");
    }

    /* renamed from: a */
    public void mo7766a(int i) {
    }

    /* renamed from: a */
    public void mo7763a(Configuration configuration) {
    }

    /* renamed from: a */
    public void mo7762a(Drawable drawable) {
    }

    /* renamed from: a */
    public abstract void mo7759a(CharSequence charSequence);

    /* renamed from: a */
    public abstract void mo7758a(boolean z);

    /* renamed from: a */
    public boolean mo7764a(int i, KeyEvent keyEvent) {
        return false;
    }

    /* renamed from: a */
    public boolean mo7784a(KeyEvent keyEvent) {
        return false;
    }

    /* renamed from: b */
    public Context mo7756b() {
        return null;
    }

    /* renamed from: b */
    public void mo7754b(CharSequence charSequence) {
    }

    /* renamed from: b */
    public void mo7753b(boolean z) {
    }

    /* renamed from: c */
    public void mo7752c(boolean z) {
        if (!z) {
            return;
        }
        throw new UnsupportedOperationException("Hide on content scroll is not supported in this action bar configuration.");
    }

    /* renamed from: c */
    public boolean mo7783c() {
        return false;
    }

    /* renamed from: d */
    public void mo7751d(boolean z) {
    }

    /* renamed from: d */
    public boolean mo7782d() {
        return false;
    }

    /* renamed from: e */
    public void mo7750e(boolean z) {
    }

    /* renamed from: e */
    public boolean mo7781e() {
        return false;
    }

    /* renamed from: f */
    public void mo7748f(boolean z) {
    }

    /* renamed from: f */
    public boolean mo7749f() {
        return false;
    }

    /* renamed from: g */
    public void mo7780g() {
    }
}
