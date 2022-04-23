package p012b.p016b.p026q;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.Locale;
import p012b.p016b.C0583j;
import p012b.p042i.p044i.p045c.C0882f;
import p012b.p042i.p054p.C1002u;
import p012b.p042i.p056q.AbstractC1025b;
import p012b.p042i.p056q.C1032i;
/* renamed from: b.b.q.l */
/* loaded from: classes-dex2jar.jar:b/b/q/l.class */
public class C0706l {

    /* renamed from: a */
    public final TextView f3473a;

    /* renamed from: b */
    public C0686d0 f3474b;

    /* renamed from: c */
    public C0686d0 f3475c;

    /* renamed from: d */
    public C0686d0 f3476d;

    /* renamed from: e */
    public C0686d0 f3477e;

    /* renamed from: f */
    public C0686d0 f3478f;

    /* renamed from: g */
    public C0686d0 f3479g;

    /* renamed from: h */
    public C0686d0 f3480h;

    /* renamed from: i */
    public final C0709m f3481i;

    /* renamed from: j */
    public int f3482j = 0;

    /* renamed from: k */
    public int f3483k = -1;

    /* renamed from: l */
    public Typeface f3484l;

    /* renamed from: m */
    public boolean f3485m;

    /* renamed from: b.b.q.l$a */
    /* loaded from: classes-dex2jar.jar:b/b/q/l$a.class */
    public class C0707a extends C0882f.AbstractC0883a {

        /* renamed from: a */
        public final /* synthetic */ int f3486a;

        /* renamed from: b */
        public final /* synthetic */ int f3487b;

        /* renamed from: c */
        public final /* synthetic */ WeakReference f3488c;

        public C0707a(int i, int i2, WeakReference weakReference) {
            this.f3486a = i;
            this.f3487b = i2;
            this.f3488c = weakReference;
        }

        @Override // p012b.p042i.p044i.p045c.C0882f.AbstractC0883a
        /* renamed from: a */
        public void mo35633a(int i) {
        }

        @Override // p012b.p042i.p044i.p045c.C0882f.AbstractC0883a
        /* renamed from: a */
        public void mo35631a(Typeface typeface) {
            Typeface typeface2 = typeface;
            if (Build.VERSION.SDK_INT >= 28) {
                int i = this.f3486a;
                typeface2 = typeface;
                if (i != -1) {
                    typeface2 = Typeface.create(typeface, i, (this.f3487b & 2) != 0);
                }
            }
            C0706l.this.m36335a(this.f3488c, typeface2);
        }
    }

    public C0706l(TextView textView) {
        this.f3473a = textView;
        this.f3481i = new C0709m(this.f3473a);
    }

    /* renamed from: a */
    public static C0686d0 m36341a(Context context, C0689f fVar, int i) {
        ColorStateList b = fVar.m36431b(context, i);
        if (b == null) {
            return null;
        }
        C0686d0 d0Var = new C0686d0();
        d0Var.f3394d = true;
        d0Var.f3391a = b;
        return d0Var;
    }

    /* renamed from: a */
    public void m36347a() {
        if (!(this.f3474b == null && this.f3475c == null && this.f3476d == null && this.f3477e == null)) {
            Drawable[] compoundDrawables = this.f3473a.getCompoundDrawables();
            m36337a(compoundDrawables[0], this.f3474b);
            m36337a(compoundDrawables[1], this.f3475c);
            m36337a(compoundDrawables[2], this.f3476d);
            m36337a(compoundDrawables[3], this.f3477e);
        }
        if (Build.VERSION.SDK_INT < 17) {
            return;
        }
        if (this.f3478f != null || this.f3479g != null) {
            Drawable[] compoundDrawablesRelative = this.f3473a.getCompoundDrawablesRelative();
            m36337a(compoundDrawablesRelative[0], this.f3478f);
            m36337a(compoundDrawablesRelative[2], this.f3479g);
        }
    }

    /* renamed from: a */
    public void m36346a(int i) {
        this.f3481i.m36299b(i);
    }

    /* renamed from: a */
    public void m36345a(int i, float f) {
        if (!AbstractC1025b.f4312X && !m36322j()) {
            m36330b(i, f);
        }
    }

    /* renamed from: a */
    public void m36344a(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        this.f3481i.m36311a(i, i2, i3, i4);
    }

    /* renamed from: a */
    public void m36343a(Context context, int i) {
        String d;
        ColorStateList a;
        C0691f0 a2 = C0691f0.m36416a(context, i, C0583j.TextAppearance);
        if (a2.m36402g(C0583j.TextAppearance_textAllCaps)) {
            m36334a(a2.m36417a(C0583j.TextAppearance_textAllCaps, false));
        }
        if (Build.VERSION.SDK_INT < 23 && a2.m36402g(C0583j.TextAppearance_android_textColor) && (a = a2.m36421a(C0583j.TextAppearance_android_textColor)) != null) {
            this.f3473a.setTextColor(a);
        }
        if (a2.m36402g(C0583j.TextAppearance_android_textSize) && a2.m36409c(C0583j.TextAppearance_android_textSize, -1) == 0) {
            this.f3473a.setTextSize(0, 0.0f);
        }
        m36342a(context, a2);
        if (Build.VERSION.SDK_INT >= 26 && a2.m36402g(C0583j.TextAppearance_fontVariationSettings) && (d = a2.m36408d(C0583j.TextAppearance_fontVariationSettings)) != null) {
            this.f3473a.setFontVariationSettings(d);
        }
        a2.m36413b();
        Typeface typeface = this.f3484l;
        if (typeface != null) {
            this.f3473a.setTypeface(typeface, this.f3482j);
        }
    }

    /* renamed from: a */
    public final void m36342a(Context context, C0691f0 f0Var) {
        String d;
        this.f3482j = f0Var.m36407d(C0583j.TextAppearance_android_textStyle, this.f3482j);
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 28) {
            int d2 = f0Var.m36407d(C0583j.TextAppearance_android_textFontWeight, -1);
            this.f3483k = d2;
            if (d2 != -1) {
                this.f3482j = (this.f3482j & 2) | 0;
            }
        }
        if (f0Var.m36402g(C0583j.TextAppearance_android_fontFamily) || f0Var.m36402g(C0583j.TextAppearance_fontFamily)) {
            this.f3484l = null;
            int i = f0Var.m36402g(C0583j.TextAppearance_fontFamily) ? C0583j.TextAppearance_fontFamily : C0583j.TextAppearance_android_fontFamily;
            int i2 = this.f3483k;
            int i3 = this.f3482j;
            if (!context.isRestricted()) {
                try {
                    Typeface a = f0Var.m36418a(i, this.f3482j, new C0707a(i2, i3, new WeakReference(this.f3473a)));
                    if (a != null) {
                        if (Build.VERSION.SDK_INT < 28 || this.f3483k == -1) {
                            this.f3484l = a;
                        } else {
                            this.f3484l = Typeface.create(Typeface.create(a, 0), this.f3483k, (this.f3482j & 2) != 0);
                        }
                    }
                    this.f3485m = this.f3484l == null;
                } catch (Resources.NotFoundException | UnsupportedOperationException e) {
                }
            }
            if (this.f3484l == null && (d = f0Var.m36408d(i)) != null) {
                if (Build.VERSION.SDK_INT < 28 || this.f3483k == -1) {
                    this.f3484l = Typeface.create(d, this.f3482j);
                    return;
                }
                Typeface create = Typeface.create(d, 0);
                int i4 = this.f3483k;
                if ((this.f3482j & 2) != 0) {
                    z = true;
                }
                this.f3484l = Typeface.create(create, i4, z);
            }
        } else if (f0Var.m36402g(C0583j.TextAppearance_android_typeface)) {
            this.f3485m = false;
            int d3 = f0Var.m36407d(C0583j.TextAppearance_android_typeface, 1);
            if (d3 == 1) {
                this.f3484l = Typeface.SANS_SERIF;
            } else if (d3 == 2) {
                this.f3484l = Typeface.SERIF;
            } else if (d3 == 3) {
                this.f3484l = Typeface.MONOSPACE;
            }
        }
    }

    /* renamed from: a */
    public void m36340a(ColorStateList colorStateList) {
        if (this.f3480h == null) {
            this.f3480h = new C0686d0();
        }
        C0686d0 d0Var = this.f3480h;
        d0Var.f3391a = colorStateList;
        d0Var.f3394d = colorStateList != null;
        m36320l();
    }

    /* renamed from: a */
    public void m36339a(PorterDuff.Mode mode) {
        if (this.f3480h == null) {
            this.f3480h = new C0686d0();
        }
        C0686d0 d0Var = this.f3480h;
        d0Var.f3392b = mode;
        d0Var.f3393c = mode != null;
        m36320l();
    }

    /* renamed from: a */
    public final void m36338a(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (Build.VERSION.SDK_INT >= 17 && (drawable5 != null || drawable6 != null)) {
            Drawable[] compoundDrawablesRelative = this.f3473a.getCompoundDrawablesRelative();
            TextView textView = this.f3473a;
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
        } else if (drawable != null || drawable2 != null || drawable3 != null || drawable4 != null) {
            if (Build.VERSION.SDK_INT >= 17) {
                Drawable[] compoundDrawablesRelative2 = this.f3473a.getCompoundDrawablesRelative();
                if (!(compoundDrawablesRelative2[0] == null && compoundDrawablesRelative2[2] == null)) {
                    TextView textView2 = this.f3473a;
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
            Drawable[] compoundDrawables = this.f3473a.getCompoundDrawables();
            TextView textView3 = this.f3473a;
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

    /* renamed from: a */
    public final void m36337a(Drawable drawable, C0686d0 d0Var) {
        if (drawable != null && d0Var != null) {
            C0689f.m36433a(drawable, d0Var, this.f3473a.getDrawableState());
        }
    }

    /* renamed from: a */
    public void m36336a(AttributeSet attributeSet, int i) {
        String str;
        String str2;
        boolean z;
        ColorStateList colorStateList;
        boolean z2;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        Context context = this.f3473a.getContext();
        C0689f b = C0689f.m36432b();
        C0691f0 a = C0691f0.m36414a(context, attributeSet, C0583j.AppCompatTextHelper, i, 0);
        TextView textView = this.f3473a;
        C1002u.m35244a(textView, textView.getContext(), C0583j.AppCompatTextHelper, attributeSet, a.m36422a(), i, 0);
        int g = a.m36401g(C0583j.AppCompatTextHelper_android_textAppearance, -1);
        if (a.m36402g(C0583j.AppCompatTextHelper_android_drawableLeft)) {
            this.f3474b = m36341a(context, b, a.m36401g(C0583j.AppCompatTextHelper_android_drawableLeft, 0));
        }
        if (a.m36402g(C0583j.AppCompatTextHelper_android_drawableTop)) {
            this.f3475c = m36341a(context, b, a.m36401g(C0583j.AppCompatTextHelper_android_drawableTop, 0));
        }
        if (a.m36402g(C0583j.AppCompatTextHelper_android_drawableRight)) {
            this.f3476d = m36341a(context, b, a.m36401g(C0583j.AppCompatTextHelper_android_drawableRight, 0));
        }
        if (a.m36402g(C0583j.AppCompatTextHelper_android_drawableBottom)) {
            this.f3477e = m36341a(context, b, a.m36401g(C0583j.AppCompatTextHelper_android_drawableBottom, 0));
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (a.m36402g(C0583j.AppCompatTextHelper_android_drawableStart)) {
                this.f3478f = m36341a(context, b, a.m36401g(C0583j.AppCompatTextHelper_android_drawableStart, 0));
            }
            if (a.m36402g(C0583j.AppCompatTextHelper_android_drawableEnd)) {
                this.f3479g = m36341a(context, b, a.m36401g(C0583j.AppCompatTextHelper_android_drawableEnd, 0));
            }
        }
        a.m36413b();
        boolean z3 = this.f3473a.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (g != -1) {
            C0691f0 a2 = C0691f0.m36416a(context, g, C0583j.TextAppearance);
            if (z3 || !a2.m36402g(C0583j.TextAppearance_textAllCaps)) {
                z = false;
                z2 = false;
            } else {
                z = a2.m36417a(C0583j.TextAppearance_textAllCaps, false);
                z2 = true;
            }
            m36342a(context, a2);
            if (Build.VERSION.SDK_INT < 23) {
                colorStateList3 = a2.m36402g(C0583j.TextAppearance_android_textColor) ? a2.m36421a(C0583j.TextAppearance_android_textColor) : null;
                colorStateList2 = a2.m36402g(C0583j.TextAppearance_android_textColorHint) ? a2.m36421a(C0583j.TextAppearance_android_textColorHint) : null;
                colorStateList = a2.m36402g(C0583j.TextAppearance_android_textColorLink) ? a2.m36421a(C0583j.TextAppearance_android_textColorLink) : null;
            } else {
                colorStateList2 = null;
                colorStateList = null;
                colorStateList3 = null;
            }
            str2 = a2.m36402g(C0583j.TextAppearance_textLocale) ? a2.m36408d(C0583j.TextAppearance_textLocale) : null;
            str = (Build.VERSION.SDK_INT < 26 || !a2.m36402g(C0583j.TextAppearance_fontVariationSettings)) ? null : a2.m36408d(C0583j.TextAppearance_fontVariationSettings);
            a2.m36413b();
        } else {
            colorStateList2 = null;
            str = null;
            z = false;
            z2 = false;
            colorStateList = null;
            str2 = null;
            colorStateList3 = null;
        }
        C0691f0 a3 = C0691f0.m36414a(context, attributeSet, C0583j.TextAppearance, i, 0);
        if (!z3 && a3.m36402g(C0583j.TextAppearance_textAllCaps)) {
            z = a3.m36417a(C0583j.TextAppearance_textAllCaps, false);
            z2 = true;
        }
        ColorStateList colorStateList4 = colorStateList2;
        ColorStateList colorStateList5 = colorStateList;
        ColorStateList colorStateList6 = colorStateList3;
        if (Build.VERSION.SDK_INT < 23) {
            if (a3.m36402g(C0583j.TextAppearance_android_textColor)) {
                colorStateList3 = a3.m36421a(C0583j.TextAppearance_android_textColor);
            }
            if (a3.m36402g(C0583j.TextAppearance_android_textColorHint)) {
                colorStateList2 = a3.m36421a(C0583j.TextAppearance_android_textColorHint);
            }
            colorStateList4 = colorStateList2;
            colorStateList5 = colorStateList;
            colorStateList6 = colorStateList3;
            if (a3.m36402g(C0583j.TextAppearance_android_textColorLink)) {
                colorStateList5 = a3.m36421a(C0583j.TextAppearance_android_textColorLink);
                colorStateList6 = colorStateList3;
                colorStateList4 = colorStateList2;
            }
        }
        if (a3.m36402g(C0583j.TextAppearance_textLocale)) {
            str2 = a3.m36408d(C0583j.TextAppearance_textLocale);
        }
        String str3 = str;
        if (Build.VERSION.SDK_INT >= 26) {
            str3 = str;
            if (a3.m36402g(C0583j.TextAppearance_fontVariationSettings)) {
                str3 = a3.m36408d(C0583j.TextAppearance_fontVariationSettings);
            }
        }
        if (Build.VERSION.SDK_INT >= 28 && a3.m36402g(C0583j.TextAppearance_android_textSize) && a3.m36409c(C0583j.TextAppearance_android_textSize, -1) == 0) {
            this.f3473a.setTextSize(0, 0.0f);
        }
        m36342a(context, a3);
        a3.m36413b();
        if (colorStateList6 != null) {
            this.f3473a.setTextColor(colorStateList6);
        }
        if (colorStateList4 != null) {
            this.f3473a.setHintTextColor(colorStateList4);
        }
        if (colorStateList5 != null) {
            this.f3473a.setLinkTextColor(colorStateList5);
        }
        if (!z3 && z2) {
            m36334a(z);
        }
        Typeface typeface = this.f3484l;
        if (typeface != null) {
            if (this.f3483k == -1) {
                this.f3473a.setTypeface(typeface, this.f3482j);
            } else {
                this.f3473a.setTypeface(typeface);
            }
        }
        if (str3 != null) {
            this.f3473a.setFontVariationSettings(str3);
        }
        if (str2 != null) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 24) {
                this.f3473a.setTextLocales(LocaleList.forLanguageTags(str2));
            } else if (i2 >= 21) {
                this.f3473a.setTextLocale(Locale.forLanguageTag(str2.substring(0, str2.indexOf(44))));
            }
        }
        this.f3481i.m36307a(attributeSet, i);
        if (AbstractC1025b.f4312X && this.f3481i.m36290g() != 0) {
            int[] f = this.f3481i.m36291f();
            if (f.length > 0) {
                if (this.f3473a.getAutoSizeStepGranularity() != -1.0f) {
                    this.f3473a.setAutoSizeTextTypeUniformWithConfiguration(this.f3481i.m36293d(), this.f3481i.m36294c(), this.f3481i.m36292e(), 0);
                } else {
                    this.f3473a.setAutoSizeTextTypeUniformWithPresetSizes(f, 0);
                }
            }
        }
        C0691f0 a4 = C0691f0.m36415a(context, attributeSet, C0583j.AppCompatTextView);
        int g2 = a4.m36401g(C0583j.AppCompatTextView_drawableLeftCompat, -1);
        Drawable a5 = g2 != -1 ? b.m36435a(context, g2) : null;
        int g3 = a4.m36401g(C0583j.AppCompatTextView_drawableTopCompat, -1);
        Drawable a6 = g3 != -1 ? b.m36435a(context, g3) : null;
        int g4 = a4.m36401g(C0583j.AppCompatTextView_drawableRightCompat, -1);
        Drawable a7 = g4 != -1 ? b.m36435a(context, g4) : null;
        int g5 = a4.m36401g(C0583j.AppCompatTextView_drawableBottomCompat, -1);
        Drawable a8 = g5 != -1 ? b.m36435a(context, g5) : null;
        int g6 = a4.m36401g(C0583j.AppCompatTextView_drawableStartCompat, -1);
        Drawable a9 = g6 != -1 ? b.m36435a(context, g6) : null;
        int g7 = a4.m36401g(C0583j.AppCompatTextView_drawableEndCompat, -1);
        m36338a(a5, a6, a7, a8, a9, g7 != -1 ? b.m36435a(context, g7) : null);
        if (a4.m36402g(C0583j.AppCompatTextView_drawableTint)) {
            C1032i.m35100a(this.f3473a, a4.m36421a(C0583j.AppCompatTextView_drawableTint));
        }
        if (a4.m36402g(C0583j.AppCompatTextView_drawableTintMode)) {
            C1032i.m35099a(this.f3473a, C0716p.m36252a(a4.m36407d(C0583j.AppCompatTextView_drawableTintMode, -1), null));
        }
        int c = a4.m36409c(C0583j.AppCompatTextView_firstBaselineToTopHeight, -1);
        int c2 = a4.m36409c(C0583j.AppCompatTextView_lastBaselineToBottomHeight, -1);
        int c3 = a4.m36409c(C0583j.AppCompatTextView_lineHeight, -1);
        a4.m36413b();
        if (c != -1) {
            C1032i.m35101a(this.f3473a, c);
        }
        if (c2 != -1) {
            C1032i.m35094b(this.f3473a, c2);
        }
        if (c3 != -1) {
            C1032i.m35092c(this.f3473a, c3);
        }
    }

    /* renamed from: a */
    public void m36335a(WeakReference<TextView> weakReference, Typeface typeface) {
        if (this.f3485m) {
            this.f3484l = typeface;
            TextView textView = weakReference.get();
            if (textView != null) {
                textView.setTypeface(typeface, this.f3482j);
            }
        }
    }

    /* renamed from: a */
    public void m36334a(boolean z) {
        this.f3473a.setAllCaps(z);
    }

    /* renamed from: a */
    public void m36333a(boolean z, int i, int i2, int i3, int i4) {
        if (!AbstractC1025b.f4312X) {
            m36331b();
        }
    }

    /* renamed from: a */
    public void m36332a(int[] iArr, int i) throws IllegalArgumentException {
        this.f3481i.m36301a(iArr, i);
    }

    /* renamed from: b */
    public void m36331b() {
        this.f3481i.m36316a();
    }

    /* renamed from: b */
    public final void m36330b(int i, float f) {
        this.f3481i.m36312a(i, f);
    }

    /* renamed from: c */
    public int m36329c() {
        return this.f3481i.m36294c();
    }

    /* renamed from: d */
    public int m36328d() {
        return this.f3481i.m36293d();
    }

    /* renamed from: e */
    public int m36327e() {
        return this.f3481i.m36292e();
    }

    /* renamed from: f */
    public int[] m36326f() {
        return this.f3481i.m36291f();
    }

    /* renamed from: g */
    public int m36325g() {
        return this.f3481i.m36290g();
    }

    /* renamed from: h */
    public ColorStateList m36324h() {
        C0686d0 d0Var = this.f3480h;
        return d0Var != null ? d0Var.f3391a : null;
    }

    /* renamed from: i */
    public PorterDuff.Mode m36323i() {
        C0686d0 d0Var = this.f3480h;
        return d0Var != null ? d0Var.f3392b : null;
    }

    /* renamed from: j */
    public boolean m36322j() {
        return this.f3481i.m36289h();
    }

    /* renamed from: k */
    public void m36321k() {
        m36347a();
    }

    /* renamed from: l */
    public final void m36320l() {
        C0686d0 d0Var = this.f3480h;
        this.f3474b = d0Var;
        this.f3475c = d0Var;
        this.f3476d = d0Var;
        this.f3477e = d0Var;
        this.f3478f = d0Var;
        this.f3479g = d0Var;
    }
}
