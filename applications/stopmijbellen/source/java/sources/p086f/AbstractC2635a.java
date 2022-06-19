package p086f;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.ViewGroup;
import p117h8.C3035k;
import p140k.AbstractC3295a;
/* renamed from: f.a */
/* loaded from: classes-dex2jar.jar:f/a.class */
public abstract class AbstractC2635a {

    /* renamed from: f.a$a */
    /* loaded from: classes-dex2jar.jar:f/a$a.class */
    public static class C2636a extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f9069a;

        public C2636a(int i, int i2) {
            super(i, i2);
            this.f9069a = 0;
            this.f9069a = 8388627;
        }

        public C2636a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f9069a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3035k.f10215b);
            this.f9069a = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public C2636a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f9069a = 0;
        }

        public C2636a(C2636a c2636a) {
            super((ViewGroup.MarginLayoutParams) c2636a);
            this.f9069a = 0;
            this.f9069a = c2636a.f9069a;
        }
    }

    /* renamed from: f.a$b */
    /* loaded from: classes-dex2jar.jar:f/a$b.class */
    public interface AbstractC2637b {
        /* renamed from: a */
        void m3377a(boolean z);
    }

    @Deprecated
    /* renamed from: f.a$c */
    /* loaded from: classes-dex2jar.jar:f/a$c.class */
    public static abstract class AbstractC2638c {
        /* renamed from: a */
        public abstract void m3376a();
    }

    /* renamed from: a */
    public boolean mo3285a() {
        return false;
    }

    /* renamed from: b */
    public abstract boolean mo3276b();

    /* renamed from: c */
    public abstract void mo3275c(boolean z);

    /* renamed from: d */
    public abstract int mo3274d();

    /* renamed from: e */
    public abstract Context mo3273e();

    /* renamed from: f */
    public boolean mo3284f() {
        return false;
    }

    /* renamed from: g */
    public abstract void mo3272g(Configuration configuration);

    /* renamed from: h */
    public void mo3283h() {
    }

    /* renamed from: i */
    public abstract boolean mo3271i(int i, KeyEvent keyEvent);

    /* renamed from: j */
    public boolean mo3282j(KeyEvent keyEvent) {
        return false;
    }

    /* renamed from: k */
    public boolean mo3281k() {
        return false;
    }

    /* renamed from: l */
    public abstract void mo3270l(boolean z);

    /* renamed from: m */
    public abstract void mo3269m(int i);

    /* renamed from: n */
    public abstract void mo3268n(Drawable drawable);

    /* renamed from: o */
    public abstract void mo3267o(boolean z);

    /* renamed from: p */
    public abstract void mo3266p(int i);

    /* renamed from: q */
    public abstract void mo3265q(CharSequence charSequence);

    /* renamed from: r */
    public abstract void mo3264r(CharSequence charSequence);

    /* renamed from: s */
    public AbstractC3295a mo3263s(AbstractC3295a.AbstractC3296a abstractC3296a) {
        return null;
    }
}
