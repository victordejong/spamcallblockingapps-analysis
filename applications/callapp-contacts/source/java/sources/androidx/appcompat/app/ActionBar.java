package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.C0142a;
import androidx.appcompat.view.AbstractC0241b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar.class */
public abstract class ActionBar {

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f282a;

        public LayoutParams(int i) {
            this(-2, -1, i);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f282a = 0;
            this.f282a = 8388627;
        }

        public LayoutParams(int i, int i2, int i3) {
            super(i, i2);
            this.f282a = 0;
            this.f282a = i3;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f282a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0142a.C0152j.ActionBarLayout);
            this.f282a = obtainStyledAttributes.getInt(C0142a.C0152j.ActionBarLayout_android_layout_gravity, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f282a = 0;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f282a = 0;
            this.f282a = layoutParams.f282a;
        }
    }

    @Deprecated
    /* renamed from: androidx.appcompat.app.ActionBar$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$a.class */
    public static abstract class AbstractC0155a {
        /* renamed from: a */
        public abstract Drawable m46371a();

        /* renamed from: b */
        public abstract CharSequence m46370b();

        /* renamed from: c */
        public abstract View m46369c();

        /* renamed from: d */
        public abstract CharSequence m46368d();
    }

    /* renamed from: a */
    public AbstractC0241b mo46239a(AbstractC0241b.AbstractC0242a abstractC0242a) {
        return null;
    }

    /* renamed from: a */
    public abstract void mo46246a();

    /* renamed from: a */
    public void mo46245a(float f) {
        if (f == BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        throw new UnsupportedOperationException("Setting a non-zero elevation is not supported in this action bar configuration.");
    }

    /* renamed from: a */
    public abstract void mo46244a(int i);

    /* renamed from: a */
    public void mo46242a(Configuration configuration) {
    }

    /* renamed from: a */
    public abstract void mo46241a(Drawable drawable);

    /* renamed from: a */
    public abstract void mo46238a(CharSequence charSequence);

    /* renamed from: a */
    public abstract void mo46237a(boolean z);

    /* renamed from: a */
    public boolean mo46243a(int i, KeyEvent keyEvent) {
        return false;
    }

    /* renamed from: a */
    public boolean mo46255a(KeyEvent keyEvent) {
        return false;
    }

    /* renamed from: b */
    public abstract View mo46235b();

    /* renamed from: b */
    public void mo46234b(int i) {
    }

    /* renamed from: b */
    public void mo46233b(Drawable drawable) {
    }

    /* renamed from: b */
    public void mo46231b(CharSequence charSequence) {
    }

    /* renamed from: b */
    public void mo46230b(boolean z) {
    }

    /* renamed from: c */
    public abstract CharSequence mo46229c();

    /* renamed from: c */
    public void mo46228c(boolean z) {
    }

    /* renamed from: d */
    public abstract int mo46227d();

    /* renamed from: d */
    public void mo46226d(boolean z) {
    }

    /* renamed from: e */
    public abstract void mo46225e();

    /* renamed from: f */
    public abstract void mo46224f();

    /* renamed from: g */
    public Context mo46222g() {
        return null;
    }

    /* renamed from: h */
    public void mo46220h() {
        throw new UnsupportedOperationException("Hide on content scroll is not supported in this action bar configuration.");
    }

    /* renamed from: i */
    public boolean mo46254i() {
        return false;
    }

    /* renamed from: j */
    public boolean mo46253j() {
        return false;
    }

    /* renamed from: k */
    public boolean mo46252k() {
        return false;
    }

    /* renamed from: l */
    public boolean mo46216l() {
        return false;
    }

    /* renamed from: m */
    public void mo46251m() {
    }
}
