package p1727n3.p1734b.p1735a;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.ViewGroup;
import androidx.appcompat.C0032R;
import p1727n3.p1734b.p1741e.AbstractC25450a;
/* renamed from: n3.b.a.a */
/* loaded from: classes-dex2jar.jar:n3/b/a/a.class */
public abstract class AbstractC25393a {

    /* renamed from: n3.b.a.a$a */
    /* loaded from: classes-dex2jar.jar:n3/b/a/a$a.class */
    public static class C25394a extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f70833a;

        public C25394a(int i, int i2) {
            super(i, i2);
            this.f70833a = 0;
            this.f70833a = 8388627;
        }

        public C25394a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f70833a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0032R.styleable.ActionBarLayout);
            this.f70833a = obtainStyledAttributes.getInt(C0032R.styleable.ActionBarLayout_android_layout_gravity, 0);
            obtainStyledAttributes.recycle();
        }

        public C25394a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f70833a = 0;
        }

        public C25394a(C25394a c25394a) {
            super((ViewGroup.MarginLayoutParams) c25394a);
            this.f70833a = 0;
            this.f70833a = c25394a.f70833a;
        }
    }

    /* renamed from: n3.b.a.a$b */
    /* loaded from: classes-dex2jar.jar:n3/b/a/a$b.class */
    public interface AbstractC25395b {
        /* renamed from: a */
        void m3676a(boolean z);
    }

    @Deprecated
    /* renamed from: n3.b.a.a$c */
    /* loaded from: classes-dex2jar.jar:n3/b/a/a$c.class */
    public static abstract class AbstractC25396c {
        /* renamed from: a */
        public abstract void m3675a();
    }

    /* renamed from: A */
    public abstract void mo3568A();

    /* renamed from: B */
    public AbstractC25450a mo3567B(AbstractC25450a.AbstractC25451a abstractC25451a) {
        return null;
    }

    /* renamed from: a */
    public boolean mo3574a() {
        return false;
    }

    /* renamed from: b */
    public abstract boolean mo3561b();

    /* renamed from: c */
    public abstract void mo3560c(boolean z);

    /* renamed from: d */
    public abstract int mo3559d();

    /* renamed from: e */
    public abstract Context mo3558e();

    /* renamed from: f */
    public abstract void mo3557f();

    /* renamed from: g */
    public boolean mo3573g() {
        return false;
    }

    /* renamed from: h */
    public abstract void mo3556h(Configuration configuration);

    /* renamed from: i */
    public void mo3572i() {
    }

    /* renamed from: j */
    public abstract boolean mo3555j(int i, KeyEvent keyEvent);

    /* renamed from: k */
    public boolean mo3571k(KeyEvent keyEvent) {
        return false;
    }

    /* renamed from: l */
    public boolean mo3570l() {
        return false;
    }

    /* renamed from: m */
    public abstract void mo3554m(boolean z);

    /* renamed from: n */
    public abstract void mo3553n(boolean z);

    /* renamed from: o */
    public abstract void mo3552o(boolean z);

    /* renamed from: p */
    public abstract void mo3551p(boolean z);

    /* renamed from: q */
    public abstract void mo3550q(float f);

    /* renamed from: r */
    public abstract void mo3549r(int i);

    /* renamed from: s */
    public abstract void mo3548s(int i);

    /* renamed from: t */
    public abstract void mo3547t(Drawable drawable);

    /* renamed from: u */
    public abstract void mo3546u(boolean z);

    /* renamed from: v */
    public abstract void mo3545v(boolean z);

    /* renamed from: w */
    public abstract void mo3544w(CharSequence charSequence);

    /* renamed from: x */
    public abstract void mo3543x(int i);

    /* renamed from: y */
    public abstract void mo3542y(CharSequence charSequence);

    /* renamed from: z */
    public abstract void mo3541z(CharSequence charSequence);
}
