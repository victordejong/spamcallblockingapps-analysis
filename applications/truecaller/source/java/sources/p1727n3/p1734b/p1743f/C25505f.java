package p1727n3.p1734b.p1743f;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.C0032R;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p1727n3.p1807k.p1821i.C26614s;
/* renamed from: n3.b.f.f */
/* loaded from: classes-dex2jar.jar:n3/b/f/f.class */
public class C25505f {

    /* renamed from: a */
    public final ImageView f71373a;

    /* renamed from: b */
    public C25535p0 f71374b;

    public C25505f(ImageView imageView) {
        this.f71373a = imageView;
    }

    /* renamed from: a */
    public void m3367a() {
        C25535p0 c25535p0;
        Drawable drawable = this.f71373a.getDrawable();
        if (drawable != null) {
            int[] iArr = C25553w.f71522a;
        }
        if (drawable == null || (c25535p0 = this.f71374b) == null) {
            return;
        }
        C25502e.m3375f(drawable, c25535p0, this.f71373a.getDrawableState());
    }

    /* renamed from: b */
    public void m3366b(AttributeSet attributeSet, int i) {
        Context context = this.f71373a.getContext();
        int[] iArr = C0032R.styleable.AppCompatImageView;
        C25540r0 m3306q = C25540r0.m3306q(context, attributeSet, iArr, i, 0);
        ImageView imageView = this.f71373a;
        C26614s.m1565p(imageView, imageView.getContext(), iArr, attributeSet, m3306q.f71466b, i, 0);
        try {
            Drawable drawable = this.f71373a.getDrawable();
            Drawable drawable2 = drawable;
            if (drawable == null) {
                int m3311l = m3306q.m3311l(C0032R.styleable.AppCompatImageView_srcCompat, -1);
                drawable2 = drawable;
                if (m3311l != -1) {
                    Drawable m3540a = C25440a.m3540a(this.f71373a.getContext(), m3311l);
                    drawable2 = m3540a;
                    if (m3540a != null) {
                        this.f71373a.setImageDrawable(m3540a);
                        drawable2 = m3540a;
                    }
                }
            }
            if (drawable2 != null) {
                int[] iArr2 = C25553w.f71522a;
            }
            int i2 = C0032R.styleable.AppCompatImageView_tint;
            if (m3306q.m3308o(i2)) {
                this.f71373a.setImageTintList(m3306q.m3320c(i2));
            }
            int i3 = C0032R.styleable.AppCompatImageView_tintMode;
            if (m3306q.m3308o(i3)) {
                this.f71373a.setImageTintMode(C25553w.m3248c(m3306q.m3313j(i3, -1), null));
            }
        } finally {
            m3306q.f71466b.recycle();
        }
    }

    /* renamed from: c */
    public void m3365c(int i) {
        if (i != 0) {
            Drawable m3540a = C25440a.m3540a(this.f71373a.getContext(), i);
            if (m3540a != null) {
                int[] iArr = C25553w.f71522a;
            }
            this.f71373a.setImageDrawable(m3540a);
        } else {
            this.f71373a.setImageDrawable(null);
        }
        m3367a();
    }

    /* renamed from: d */
    public void m3364d(ColorStateList colorStateList) {
        if (this.f71374b == null) {
            this.f71374b = new C25535p0();
        }
        C25535p0 c25535p0 = this.f71374b;
        c25535p0.f71441a = colorStateList;
        c25535p0.f71444d = true;
        m3367a();
    }

    /* renamed from: e */
    public void m3363e(PorterDuff.Mode mode) {
        if (this.f71374b == null) {
            this.f71374b = new C25535p0();
        }
        C25535p0 c25535p0 = this.f71374b;
        c25535p0.f71442b = mode;
        c25535p0.f71443c = true;
        m3367a();
    }
}
