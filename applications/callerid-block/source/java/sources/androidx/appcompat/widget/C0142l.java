package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.TextView;
import androidx.core.widget.AbstractC0293b;
import d.a.j;
import java.lang.ref.WeakReference;
/* renamed from: androidx.appcompat.widget.l */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/l.class */
class C0142l {

    /* renamed from: a */
    private final TextView f639a;

    /* renamed from: b */
    private C0124b0 f640b;

    /* renamed from: c */
    private C0124b0 f641c;

    /* renamed from: d */
    private C0124b0 f642d;

    /* renamed from: e */
    private C0124b0 f643e;

    /* renamed from: f */
    private C0124b0 f644f;

    /* renamed from: g */
    private C0124b0 f645g;

    /* renamed from: h */
    private C0124b0 f646h;

    /* renamed from: i */
    private final C0143m f647i;

    /* renamed from: j */
    private int f648j = 0;

    /* renamed from: k */
    private int f649k = -1;

    /* renamed from: l */
    private Typeface f650l;

    /* renamed from: m */
    private boolean f651m;

    public C0142l(TextView textView) {
        this.f639a = textView;
        this.f647i = new C0143m(textView);
    }

    /* renamed from: A */
    private void m14560A(int i, float f) {
        this.f647i.m14503y(i, f);
    }

    /* renamed from: B */
    private void m14559B(Context context, C0127d0 c0127d0) {
        String m14625o;
        Typeface typeface;
        Typeface typeface2;
        this.f648j = c0127d0.m14629k(j.TextAppearance_android_textStyle, this.f648j);
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            int m14629k = c0127d0.m14629k(j.TextAppearance_android_textFontWeight, -1);
            this.f649k = m14629k;
            if (m14629k != -1) {
                this.f648j = (this.f648j & 2) | 0;
            }
        }
        int i2 = j.TextAppearance_android_fontFamily;
        if (!c0127d0.m14621s(i2) && !c0127d0.m14621s(j.TextAppearance_fontFamily)) {
            int i3 = j.TextAppearance_android_typeface;
            if (!c0127d0.m14621s(i3)) {
                return;
            }
            this.f651m = false;
            int m14629k2 = c0127d0.m14629k(i3, 1);
            if (m14629k2 == 1) {
                typeface2 = Typeface.SANS_SERIF;
            } else if (m14629k2 == 2) {
                typeface2 = Typeface.SERIF;
            } else if (m14629k2 != 3) {
                return;
            } else {
                typeface2 = Typeface.MONOSPACE;
            }
            this.f650l = typeface2;
            return;
        }
        this.f650l = null;
        int i4 = j.TextAppearance_fontFamily;
        if (c0127d0.m14621s(i4)) {
            i2 = i4;
        }
        int i5 = this.f649k;
        int i6 = this.f648j;
        if (!context.isRestricted()) {
            try {
                Typeface m14630j = c0127d0.m14630j(i2, this.f648j, new a(this, i5, i6, new WeakReference(this.f639a)));
                if (m14630j != null) {
                    Typeface typeface3 = m14630j;
                    if (i >= 28) {
                        typeface3 = m14630j;
                        if (this.f649k != -1) {
                            typeface3 = Typeface.create(Typeface.create(m14630j, 0), this.f649k, (this.f648j & 2) != 0);
                        }
                    }
                    this.f650l = typeface3;
                }
                this.f651m = this.f650l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException e) {
            }
        }
        if (this.f650l != null || (m14625o = c0127d0.m14625o(i2)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.f649k == -1) {
            typeface = Typeface.create(m14625o, this.f648j);
        } else {
            Typeface create = Typeface.create(m14625o, 0);
            int i7 = this.f649k;
            boolean z = false;
            if ((this.f648j & 2) != 0) {
                z = true;
            }
            typeface = Typeface.create(create, i7, z);
        }
        this.f650l = typeface;
    }

    /* renamed from: a */
    private void m14558a(Drawable drawable, C0124b0 c0124b0) {
        if (drawable == null || c0124b0 == null) {
            return;
        }
        C0129f.m14600i(drawable, c0124b0, this.f639a.getDrawableState());
    }

    /* renamed from: d */
    private static C0124b0 m14555d(Context context, C0129f c0129f, int i) {
        ColorStateList m14603f = c0129f.m14603f(context, i);
        if (m14603f != null) {
            C0124b0 c0124b0 = new C0124b0();
            c0124b0.f586d = true;
            c0124b0.f583a = m14603f;
            return c0124b0;
        }
        return null;
    }

    /* renamed from: x */
    private void m14535x(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 17 && (drawable5 != null || drawable6 != null)) {
            Drawable[] compoundDrawablesRelative = this.f639a.getCompoundDrawablesRelative();
            TextView textView = this.f639a;
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
        } else if (drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) {
        } else {
            if (i >= 17) {
                Drawable[] compoundDrawablesRelative2 = this.f639a.getCompoundDrawablesRelative();
                if (compoundDrawablesRelative2[0] != null || compoundDrawablesRelative2[2] != null) {
                    TextView textView2 = this.f639a;
                    Drawable drawable7 = compoundDrawablesRelative2[0];
                    if (drawable2 == null) {
                        drawable2 = compoundDrawablesRelative2[1];
                    }
                    Drawable drawable8 = compoundDrawablesRelative2[2];
                    if (drawable4 == null) {
                        drawable4 = compoundDrawablesRelative2[3];
                    }
                    textView2.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, drawable8, drawable4);
                    return;
                }
            }
            Drawable[] compoundDrawables = this.f639a.getCompoundDrawables();
            TextView textView3 = this.f639a;
            if (drawable == null) {
                drawable = compoundDrawables[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawables[1];
            }
            if (drawable3 == null) {
                drawable3 = compoundDrawables[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawables[3];
            }
            textView3.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        }
    }

    /* renamed from: y */
    private void m14534y() {
        C0124b0 c0124b0 = this.f646h;
        this.f640b = c0124b0;
        this.f641c = c0124b0;
        this.f642d = c0124b0;
        this.f643e = c0124b0;
        this.f644f = c0124b0;
        this.f645g = c0124b0;
    }

    /* renamed from: b */
    public void m14557b() {
        if (this.f640b != null || this.f641c != null || this.f642d != null || this.f643e != null) {
            Drawable[] compoundDrawables = this.f639a.getCompoundDrawables();
            m14558a(compoundDrawables[0], this.f640b);
            m14558a(compoundDrawables[1], this.f641c);
            m14558a(compoundDrawables[2], this.f642d);
            m14558a(compoundDrawables[3], this.f643e);
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (this.f644f == null && this.f645g == null) {
                return;
            }
            Drawable[] compoundDrawablesRelative = this.f639a.getCompoundDrawablesRelative();
            m14558a(compoundDrawablesRelative[0], this.f644f);
            m14558a(compoundDrawablesRelative[2], this.f645g);
        }
    }

    /* renamed from: c */
    void m14556c() {
        this.f647i.m14526b();
    }

    /* renamed from: e */
    int m14554e() {
        return this.f647i.m14518j();
    }

    /* renamed from: f */
    int m14553f() {
        return this.f647i.m14517k();
    }

    /* renamed from: g */
    int m14552g() {
        return this.f647i.m14516l();
    }

    /* renamed from: h */
    int[] m14551h() {
        return this.f647i.m14515m();
    }

    /* renamed from: i */
    int m14550i() {
        return this.f647i.m14514n();
    }

    /* renamed from: j */
    ColorStateList m14549j() {
        C0124b0 c0124b0 = this.f646h;
        return c0124b0 != null ? c0124b0.f583a : null;
    }

    /* renamed from: k */
    PorterDuff.Mode m14548k() {
        C0124b0 c0124b0 = this.f646h;
        return c0124b0 != null ? c0124b0.f584b : null;
    }

    /* renamed from: l */
    boolean m14547l() {
        return this.f647i.m14509s();
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x03da  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x043a  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x048c  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0497  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x04a8  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x04b4  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x04c6  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x04d2  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x04e4  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x04f0  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0502  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x050e  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0520  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x052c  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x054b  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0567  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x05a9  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x05b7  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x05c5  */
    /* JADX WARN: Removed duplicated region for block: B:170:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x032e  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0381  */
    @android.annotation.SuppressLint({"NewApi"})
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m14546m(android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 1487
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0142l.m14546m(android.util.AttributeSet, int):void");
    }

    /* renamed from: n */
    void m14545n(WeakReference<TextView> weakReference, Typeface typeface) {
        if (this.f651m) {
            this.f650l = typeface;
            TextView textView = weakReference.get();
            if (textView == null) {
                return;
            }
            textView.setTypeface(typeface, this.f648j);
        }
    }

    /* renamed from: o */
    void m14544o(boolean z, int i, int i2, int i3, int i4) {
        if (!AbstractC0293b.f1735a) {
            m14556c();
        }
    }

    /* renamed from: p */
    void m14543p() {
        m14557b();
    }

    /* renamed from: q */
    public void m14542q(Context context, int i) {
        String m14625o;
        ColorStateList m14637c;
        C0127d0 m14620t = C0127d0.m14620t(context, i, j.TextAppearance);
        int i2 = j.TextAppearance_textAllCaps;
        if (m14620t.m14621s(i2)) {
            m14541r(m14620t.m14639a(i2, false));
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 23) {
            int i4 = j.TextAppearance_android_textColor;
            if (m14620t.m14621s(i4) && (m14637c = m14620t.m14637c(i4)) != null) {
                this.f639a.setTextColor(m14637c);
            }
        }
        int i5 = j.TextAppearance_android_textSize;
        if (m14620t.m14621s(i5) && m14620t.m14634f(i5, -1) == 0) {
            this.f639a.setTextSize(0, 0.0f);
        }
        m14559B(context, m14620t);
        if (i3 >= 26) {
            int i6 = j.TextAppearance_fontVariationSettings;
            if (m14620t.m14621s(i6) && (m14625o = m14620t.m14625o(i6)) != null) {
                this.f639a.setFontVariationSettings(m14625o);
            }
        }
        m14620t.m14617w();
        Typeface typeface = this.f650l;
        if (typeface != null) {
            this.f639a.setTypeface(typeface, this.f648j);
        }
    }

    /* renamed from: r */
    void m14541r(boolean z) {
        this.f639a.setAllCaps(z);
    }

    /* renamed from: s */
    void m14540s(int i, int i2, int i3, int i4) {
        this.f647i.m14507u(i, i2, i3, i4);
    }

    /* renamed from: t */
    void m14539t(int[] iArr, int i) {
        this.f647i.m14506v(iArr, i);
    }

    /* renamed from: u */
    void m14538u(int i) {
        this.f647i.m14505w(i);
    }

    /* renamed from: v */
    void m14537v(ColorStateList colorStateList) {
        if (this.f646h == null) {
            this.f646h = new C0124b0();
        }
        C0124b0 c0124b0 = this.f646h;
        c0124b0.f583a = colorStateList;
        c0124b0.f586d = colorStateList != null;
        m14534y();
    }

    /* renamed from: w */
    void m14536w(PorterDuff.Mode mode) {
        if (this.f646h == null) {
            this.f646h = new C0124b0();
        }
        C0124b0 c0124b0 = this.f646h;
        c0124b0.f584b = mode;
        c0124b0.f585c = mode != null;
        m14534y();
    }

    /* renamed from: z */
    void m14533z(int i, float f) {
        if (AbstractC0293b.f1735a || m14547l()) {
            return;
        }
        m14560A(i, f);
    }
}
