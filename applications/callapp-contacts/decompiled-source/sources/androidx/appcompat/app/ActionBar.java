package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.a;
import androidx.appcompat.view.b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar.class */
public abstract class ActionBar {

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public int f567a;

        public LayoutParams(int i) {
            this(-2, -1, i);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f567a = 0;
            this.f567a = 8388627;
        }

        public LayoutParams(int i, int i2, int i3) {
            super(i, i2);
            this.f567a = 0;
            this.f567a = i3;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f567a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.ActionBarLayout);
            this.f567a = obtainStyledAttributes.getInt(a.j.ActionBarLayout_android_layout_gravity, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f567a = 0;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f567a = 0;
            this.f567a = layoutParams.f567a;
        }
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$a.class */
    public static abstract class a {
        public abstract Drawable a();

        public abstract CharSequence b();

        public abstract View c();

        public abstract CharSequence d();
    }

    public b a(b.a aVar) {
        return null;
    }

    public abstract void a();

    public void a(float f) {
        if (f != BitmapDescriptorFactory.HUE_RED) {
            throw new UnsupportedOperationException("Setting a non-zero elevation is not supported in this action bar configuration.");
        }
    }

    public abstract void a(int i);

    public void a(Configuration configuration) {
    }

    public abstract void a(Drawable drawable);

    public abstract void a(CharSequence charSequence);

    public abstract void a(boolean z);

    public boolean a(int i, KeyEvent keyEvent) {
        return false;
    }

    public boolean a(KeyEvent keyEvent) {
        return false;
    }

    public abstract View b();

    public void b(int i) {
    }

    public void b(Drawable drawable) {
    }

    public void b(CharSequence charSequence) {
    }

    public void b(boolean z) {
    }

    public abstract CharSequence c();

    public void c(boolean z) {
    }

    public abstract int d();

    public void d(boolean z) {
    }

    public abstract void e();

    public abstract void f();

    public Context g() {
        return null;
    }

    public void h() {
        throw new UnsupportedOperationException("Hide on content scroll is not supported in this action bar configuration.");
    }

    public boolean i() {
        return false;
    }

    public boolean j() {
        return false;
    }

    public boolean k() {
        return false;
    }

    public boolean l() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m() {
    }
}
