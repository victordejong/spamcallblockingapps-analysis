package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import p097g.C2788a;
import p117h8.C3035k;
import p163m0.C3589v;
/* renamed from: androidx.appcompat.widget.o */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/o.class */
public class C0260o {

    /* renamed from: a */
    public final ImageView f1052a;

    /* renamed from: b */
    public C0289x0 f1053b;

    /* renamed from: c */
    public C0289x0 f1054c;

    /* renamed from: d */
    public int f1055d = 0;

    public C0260o(ImageView imageView) {
        this.f1052a = imageView;
    }

    /* renamed from: a */
    public void m8457a() {
        boolean z;
        Drawable drawable = this.f1052a.getDrawable();
        if (drawable != null) {
            C0233h0.m8498b(drawable);
        }
        if (drawable != null) {
            int i = Build.VERSION.SDK_INT;
            if (i <= 21 && i == 21) {
                if (this.f1054c == null) {
                    this.f1054c = new C0289x0();
                }
                C0289x0 c0289x0 = this.f1054c;
                c0289x0.f1131a = null;
                c0289x0.f1134d = false;
                c0289x0.f1132b = null;
                c0289x0.f1133c = false;
                ColorStateList imageTintList = this.f1052a.getImageTintList();
                if (imageTintList != null) {
                    c0289x0.f1134d = true;
                    c0289x0.f1131a = imageTintList;
                }
                PorterDuff.Mode imageTintMode = this.f1052a.getImageTintMode();
                if (imageTintMode != null) {
                    c0289x0.f1133c = true;
                    c0289x0.f1132b = imageTintMode;
                }
                if (c0289x0.f1134d || c0289x0.f1133c) {
                    C0242j.m8481f(drawable, c0289x0, this.f1052a.getDrawableState());
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    return;
                }
            }
            C0289x0 c0289x02 = this.f1053b;
            if (c0289x02 == null) {
                return;
            }
            C0242j.m8481f(drawable, c0289x02, this.f1052a.getDrawableState());
        }
    }

    /* renamed from: b */
    public void m8456b(AttributeSet attributeSet, int i) {
        Drawable drawable;
        Drawable drawable2;
        Context context = this.f1052a.getContext();
        int[] iArr = C3035k.f10219f;
        C0303z0 m8383q = C0303z0.m8383q(context, attributeSet, iArr, i, 0);
        ImageView imageView = this.f1052a;
        C3589v.m2104t(imageView, imageView.getContext(), iArr, attributeSet, m8383q.f1164b, i, 0);
        try {
            Drawable drawable3 = this.f1052a.getDrawable();
            Drawable drawable4 = drawable3;
            if (drawable3 == null) {
                int m8388l = m8383q.m8388l(1, -1);
                drawable4 = drawable3;
                if (m8388l != -1) {
                    Drawable m3015b = C2788a.m3015b(this.f1052a.getContext(), m8388l);
                    drawable4 = m3015b;
                    if (m3015b != null) {
                        this.f1052a.setImageDrawable(m3015b);
                        drawable4 = m3015b;
                    }
                }
            }
            if (drawable4 != null) {
                C0233h0.m8498b(drawable4);
            }
            if (m8383q.m8385o(2)) {
                ImageView imageView2 = this.f1052a;
                ColorStateList m8397c = m8383q.m8397c(2);
                int i2 = Build.VERSION.SDK_INT;
                imageView2.setImageTintList(m8397c);
                if (i2 == 21 && (drawable2 = imageView2.getDrawable()) != null && imageView2.getImageTintList() != null) {
                    if (drawable2.isStateful()) {
                        drawable2.setState(imageView2.getDrawableState());
                    }
                    imageView2.setImageDrawable(drawable2);
                }
            }
            if (m8383q.m8385o(3)) {
                ImageView imageView3 = this.f1052a;
                PorterDuff.Mode m8495e = C0233h0.m8495e(m8383q.m8390j(3, -1), null);
                int i3 = Build.VERSION.SDK_INT;
                imageView3.setImageTintMode(m8495e);
                if (i3 == 21 && (drawable = imageView3.getDrawable()) != null && imageView3.getImageTintList() != null) {
                    if (drawable.isStateful()) {
                        drawable.setState(imageView3.getDrawableState());
                    }
                    imageView3.setImageDrawable(drawable);
                }
            }
        } finally {
            m8383q.f1164b.recycle();
        }
    }

    /* renamed from: c */
    public void m8455c(int i) {
        if (i != 0) {
            Drawable m3015b = C2788a.m3015b(this.f1052a.getContext(), i);
            if (m3015b != null) {
                C0233h0.m8498b(m3015b);
            }
            this.f1052a.setImageDrawable(m3015b);
        } else {
            this.f1052a.setImageDrawable(null);
        }
        m8457a();
    }

    /* renamed from: d */
    public void m8454d(ColorStateList colorStateList) {
        if (this.f1053b == null) {
            this.f1053b = new C0289x0();
        }
        C0289x0 c0289x0 = this.f1053b;
        c0289x0.f1131a = colorStateList;
        c0289x0.f1134d = true;
        m8457a();
    }

    /* renamed from: e */
    public void m8453e(PorterDuff.Mode mode) {
        if (this.f1053b == null) {
            this.f1053b = new C0289x0();
        }
        C0289x0 c0289x0 = this.f1053b;
        c0289x0.f1132b = mode;
        c0289x0.f1133c = true;
        m8457a();
    }
}
