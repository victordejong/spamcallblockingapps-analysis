package androidx.appcompat.widget;

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
import androidx.appcompat.C0142a;
import androidx.core.content.res.C0804f;
import androidx.core.view.C0926v;
import androidx.core.widget.AbstractC0953b;
import androidx.core.widget.C0959h;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.util.Locale;
/* renamed from: androidx.appcompat.widget.l */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/l.class */
public final class C0399l {

    /* renamed from: a */
    final C0401m f1599a;

    /* renamed from: c */
    Typeface f1601c;

    /* renamed from: d */
    boolean f1602d;

    /* renamed from: e */
    private final TextView f1603e;

    /* renamed from: f */
    private C0427z f1604f;

    /* renamed from: g */
    private C0427z f1605g;

    /* renamed from: h */
    private C0427z f1606h;

    /* renamed from: i */
    private C0427z f1607i;

    /* renamed from: j */
    private C0427z f1608j;

    /* renamed from: k */
    private C0427z f1609k;

    /* renamed from: l */
    private C0427z f1610l;

    /* renamed from: b */
    int f1600b = 0;

    /* renamed from: m */
    private int f1611m = -1;

    public C0399l(TextView textView) {
        this.f1603e = textView;
        this.f1599a = new C0401m(textView);
    }

    /* renamed from: a */
    private static C0427z m45699a(Context context, C0392f c0392f, int i) {
        ColorStateList m45724c = c0392f.m45724c(context, i);
        if (m45724c != null) {
            C0427z c0427z = new C0427z();
            c0427z.f1700d = true;
            c0427z.f1697a = m45724c;
            return c0427z;
        }
        return null;
    }

    /* renamed from: a */
    private void m45700a(Context context, C0370ab c0370ab) {
        String m45799d;
        this.f1600b = c0370ab.m45809a(C0142a.C0152j.TextAppearance_android_textStyle, this.f1600b);
        if (Build.VERSION.SDK_INT >= 28) {
            int m45809a = c0370ab.m45809a(C0142a.C0152j.TextAppearance_android_textFontWeight, -1);
            this.f1611m = m45809a;
            if (m45809a != -1) {
                this.f1600b = (this.f1600b & 2) | 0;
            }
        }
        if (!c0370ab.m45793g(C0142a.C0152j.TextAppearance_android_fontFamily) && !c0370ab.m45793g(C0142a.C0152j.TextAppearance_fontFamily)) {
            if (!c0370ab.m45793g(C0142a.C0152j.TextAppearance_android_typeface)) {
                return;
            }
            this.f1602d = false;
            int m45809a2 = c0370ab.m45809a(C0142a.C0152j.TextAppearance_android_typeface, 1);
            if (m45809a2 == 1) {
                this.f1601c = Typeface.SANS_SERIF;
                return;
            } else if (m45809a2 == 2) {
                this.f1601c = Typeface.SERIF;
                return;
            } else if (m45809a2 != 3) {
                return;
            } else {
                this.f1601c = Typeface.MONOSPACE;
                return;
            }
        }
        this.f1601c = null;
        int i = c0370ab.m45793g(C0142a.C0152j.TextAppearance_fontFamily) ? C0142a.C0152j.TextAppearance_fontFamily : C0142a.C0152j.TextAppearance_android_fontFamily;
        final int i2 = this.f1611m;
        final int i3 = this.f1600b;
        if (!context.isRestricted()) {
            final WeakReference weakReference = new WeakReference(this.f1603e);
            try {
                Typeface m45808a = c0370ab.m45808a(i, this.f1600b, new C0804f.AbstractC0805a() { // from class: androidx.appcompat.widget.l.1
                    @Override // androidx.core.content.res.C0804f.AbstractC0805a
                    /* renamed from: a */
                    public final void mo10639a(int i4) {
                    }

                    @Override // androidx.core.content.res.C0804f.AbstractC0805a
                    /* renamed from: a */
                    public final void mo10638a(Typeface typeface) {
                        Typeface typeface2 = typeface;
                        if (Build.VERSION.SDK_INT >= 28) {
                            int i4 = i2;
                            typeface2 = typeface;
                            if (i4 != -1) {
                                typeface2 = Typeface.create(typeface, i4, (i3 & 2) != 0);
                            }
                        }
                        C0399l c0399l = C0399l.this;
                        WeakReference weakReference2 = weakReference;
                        if (c0399l.f1602d) {
                            c0399l.f1601c = typeface2;
                            TextView textView = (TextView) weakReference2.get();
                            if (textView == null) {
                                return;
                            }
                            textView.setTypeface(typeface2, c0399l.f1600b);
                        }
                    }
                });
                if (m45808a != null) {
                    if (Build.VERSION.SDK_INT < 28 || this.f1611m == -1) {
                        this.f1601c = m45808a;
                    } else {
                        this.f1601c = Typeface.create(Typeface.create(m45808a, 0), this.f1611m, (this.f1600b & 2) != 0);
                    }
                }
                this.f1602d = this.f1601c == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException e) {
            }
        }
        if (this.f1601c != null || (m45799d = c0370ab.m45799d(i)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.f1611m == -1) {
            this.f1601c = Typeface.create(m45799d, this.f1600b);
            return;
        }
        Typeface create = Typeface.create(m45799d, 0);
        int i4 = this.f1611m;
        boolean z = false;
        if ((this.f1600b & 2) != 0) {
            z = true;
        }
        this.f1601c = Typeface.create(create, i4, z);
    }

    /* renamed from: a */
    private void m45696a(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (Build.VERSION.SDK_INT >= 17 && (drawable5 != null || drawable6 != null)) {
            Drawable[] compoundDrawablesRelative = this.f1603e.getCompoundDrawablesRelative();
            TextView textView = this.f1603e;
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
            if (Build.VERSION.SDK_INT >= 17) {
                Drawable[] compoundDrawablesRelative2 = this.f1603e.getCompoundDrawablesRelative();
                if (compoundDrawablesRelative2[0] != null || compoundDrawablesRelative2[2] != null) {
                    TextView textView2 = this.f1603e;
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
            Drawable[] compoundDrawables = this.f1603e.getCompoundDrawables();
            TextView textView3 = this.f1603e;
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
    private void m45695a(Drawable drawable, C0427z c0427z) {
        if (drawable == null || c0427z == null) {
            return;
        }
        C0392f.m45728a(drawable, c0427z, this.f1603e.getDrawableState());
    }

    /* renamed from: b */
    private void m45690b(int i, float f) {
        this.f1599a.m45684a(i, f);
    }

    /* renamed from: c */
    private void m45689c() {
        C0427z c0427z = this.f1610l;
        this.f1604f = c0427z;
        this.f1605g = c0427z;
        this.f1606h = c0427z;
        this.f1607i = c0427z;
        this.f1608j = c0427z;
        this.f1609k = c0427z;
    }

    /* renamed from: a */
    public final void m45705a() {
        if (this.f1604f != null || this.f1605g != null || this.f1606h != null || this.f1607i != null) {
            Drawable[] compoundDrawables = this.f1603e.getCompoundDrawables();
            m45695a(compoundDrawables[0], this.f1604f);
            m45695a(compoundDrawables[1], this.f1605g);
            m45695a(compoundDrawables[2], this.f1606h);
            m45695a(compoundDrawables[3], this.f1607i);
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (this.f1608j == null && this.f1609k == null) {
                return;
            }
            Drawable[] compoundDrawablesRelative = this.f1603e.getCompoundDrawablesRelative();
            m45695a(compoundDrawablesRelative[0], this.f1608j);
            m45695a(compoundDrawablesRelative[2], this.f1609k);
        }
    }

    /* renamed from: a */
    public final void m45704a(int i) {
        this.f1599a.m45685a(i);
    }

    /* renamed from: a */
    public final void m45703a(int i, float f) {
        if (AbstractC0953b.f3859d || this.f1599a.m45673b()) {
            return;
        }
        m45690b(i, f);
    }

    /* renamed from: a */
    public final void m45702a(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        this.f1599a.m45683a(i, i2, i3, i4);
    }

    /* renamed from: a */
    public final void m45701a(Context context, int i) {
        String m45799d;
        ColorStateList m45797e;
        C0370ab m45806a = C0370ab.m45806a(context, i, C0142a.C0152j.TextAppearance);
        if (m45806a.m45793g(C0142a.C0152j.TextAppearance_textAllCaps)) {
            m45693a(m45806a.m45807a(C0142a.C0152j.TextAppearance_textAllCaps, false));
        }
        if (Build.VERSION.SDK_INT < 23 && m45806a.m45793g(C0142a.C0152j.TextAppearance_android_textColor) && (m45797e = m45806a.m45797e(C0142a.C0152j.TextAppearance_android_textColor)) != null) {
            this.f1603e.setTextColor(m45797e);
        }
        if (m45806a.m45793g(C0142a.C0152j.TextAppearance_android_textSize) && m45806a.m45796e(C0142a.C0152j.TextAppearance_android_textSize, -1) == 0) {
            this.f1603e.setTextSize(0, BitmapDescriptorFactory.HUE_RED);
        }
        m45700a(context, m45806a);
        if (Build.VERSION.SDK_INT >= 26 && m45806a.m45793g(C0142a.C0152j.TextAppearance_fontVariationSettings) && (m45799d = m45806a.m45799d(C0142a.C0152j.TextAppearance_fontVariationSettings)) != null) {
            this.f1603e.setFontVariationSettings(m45799d);
        }
        m45806a.f1491a.recycle();
        Typeface typeface = this.f1601c;
        if (typeface != null) {
            this.f1603e.setTypeface(typeface, this.f1600b);
        }
    }

    /* renamed from: a */
    public final void m45698a(ColorStateList colorStateList) {
        if (this.f1610l == null) {
            this.f1610l = new C0427z();
        }
        this.f1610l.f1697a = colorStateList;
        this.f1610l.f1700d = colorStateList != null;
        m45689c();
    }

    /* renamed from: a */
    public final void m45697a(PorterDuff.Mode mode) {
        if (this.f1610l == null) {
            this.f1610l = new C0427z();
        }
        this.f1610l.f1698b = mode;
        this.f1610l.f1699c = mode != null;
        m45689c();
    }

    /* renamed from: a */
    public final void m45694a(AttributeSet attributeSet, int i) {
        String str;
        String str2;
        boolean z;
        ColorStateList colorStateList;
        boolean z2;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        ColorStateList colorStateList4;
        ColorStateList colorStateList5;
        Context context = this.f1603e.getContext();
        C0392f m45727b = C0392f.m45727b();
        C0370ab m45804a = C0370ab.m45804a(context, attributeSet, C0142a.C0152j.AppCompatTextHelper, i, 0);
        TextView textView = this.f1603e;
        C0926v.m44133a(textView, textView.getContext(), C0142a.C0152j.AppCompatTextHelper, attributeSet, m45804a.f1491a, i);
        int m45792g = m45804a.m45792g(C0142a.C0152j.AppCompatTextHelper_android_textAppearance, -1);
        if (m45804a.m45793g(C0142a.C0152j.AppCompatTextHelper_android_drawableLeft)) {
            this.f1604f = m45699a(context, m45727b, m45804a.m45792g(C0142a.C0152j.AppCompatTextHelper_android_drawableLeft, 0));
        }
        if (m45804a.m45793g(C0142a.C0152j.AppCompatTextHelper_android_drawableTop)) {
            this.f1605g = m45699a(context, m45727b, m45804a.m45792g(C0142a.C0152j.AppCompatTextHelper_android_drawableTop, 0));
        }
        if (m45804a.m45793g(C0142a.C0152j.AppCompatTextHelper_android_drawableRight)) {
            this.f1606h = m45699a(context, m45727b, m45804a.m45792g(C0142a.C0152j.AppCompatTextHelper_android_drawableRight, 0));
        }
        if (m45804a.m45793g(C0142a.C0152j.AppCompatTextHelper_android_drawableBottom)) {
            this.f1607i = m45699a(context, m45727b, m45804a.m45792g(C0142a.C0152j.AppCompatTextHelper_android_drawableBottom, 0));
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (m45804a.m45793g(C0142a.C0152j.AppCompatTextHelper_android_drawableStart)) {
                this.f1608j = m45699a(context, m45727b, m45804a.m45792g(C0142a.C0152j.AppCompatTextHelper_android_drawableStart, 0));
            }
            if (m45804a.m45793g(C0142a.C0152j.AppCompatTextHelper_android_drawableEnd)) {
                this.f1609k = m45699a(context, m45727b, m45804a.m45792g(C0142a.C0152j.AppCompatTextHelper_android_drawableEnd, 0));
            }
        }
        m45804a.f1491a.recycle();
        boolean z3 = this.f1603e.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (m45792g != -1) {
            C0370ab m45806a = C0370ab.m45806a(context, m45792g, C0142a.C0152j.TextAppearance);
            if (z3 || !m45806a.m45793g(C0142a.C0152j.TextAppearance_textAllCaps)) {
                z = false;
                z2 = false;
            } else {
                z = m45806a.m45807a(C0142a.C0152j.TextAppearance_textAllCaps, false);
                z2 = true;
            }
            m45700a(context, m45806a);
            if (Build.VERSION.SDK_INT < 23) {
                colorStateList4 = m45806a.m45793g(C0142a.C0152j.TextAppearance_android_textColor) ? m45806a.m45797e(C0142a.C0152j.TextAppearance_android_textColor) : null;
                colorStateList2 = m45806a.m45793g(C0142a.C0152j.TextAppearance_android_textColorHint) ? m45806a.m45797e(C0142a.C0152j.TextAppearance_android_textColorHint) : null;
                colorStateList5 = m45806a.m45793g(C0142a.C0152j.TextAppearance_android_textColorLink) ? m45806a.m45797e(C0142a.C0152j.TextAppearance_android_textColorLink) : null;
            } else {
                colorStateList2 = null;
                colorStateList5 = null;
                colorStateList4 = null;
            }
            str2 = m45806a.m45793g(C0142a.C0152j.TextAppearance_textLocale) ? m45806a.m45799d(C0142a.C0152j.TextAppearance_textLocale) : null;
            str = (Build.VERSION.SDK_INT < 26 || !m45806a.m45793g(C0142a.C0152j.TextAppearance_fontVariationSettings)) ? null : m45806a.m45799d(C0142a.C0152j.TextAppearance_fontVariationSettings);
            m45806a.f1491a.recycle();
            colorStateList = colorStateList5;
            colorStateList3 = colorStateList4;
        } else {
            colorStateList2 = null;
            str = null;
            z = false;
            colorStateList = null;
            str2 = null;
            z2 = false;
            colorStateList3 = null;
        }
        C0370ab m45804a2 = C0370ab.m45804a(context, attributeSet, C0142a.C0152j.TextAppearance, i, 0);
        boolean z4 = z;
        boolean z5 = z2;
        if (!z3) {
            z4 = z;
            z5 = z2;
            if (m45804a2.m45793g(C0142a.C0152j.TextAppearance_textAllCaps)) {
                z4 = m45804a2.m45807a(C0142a.C0152j.TextAppearance_textAllCaps, false);
                z5 = true;
            }
        }
        ColorStateList colorStateList6 = colorStateList2;
        ColorStateList colorStateList7 = colorStateList;
        ColorStateList colorStateList8 = colorStateList3;
        if (Build.VERSION.SDK_INT < 23) {
            if (m45804a2.m45793g(C0142a.C0152j.TextAppearance_android_textColor)) {
                colorStateList3 = m45804a2.m45797e(C0142a.C0152j.TextAppearance_android_textColor);
            }
            if (m45804a2.m45793g(C0142a.C0152j.TextAppearance_android_textColorHint)) {
                colorStateList2 = m45804a2.m45797e(C0142a.C0152j.TextAppearance_android_textColorHint);
            }
            colorStateList6 = colorStateList2;
            colorStateList7 = colorStateList;
            colorStateList8 = colorStateList3;
            if (m45804a2.m45793g(C0142a.C0152j.TextAppearance_android_textColorLink)) {
                colorStateList7 = m45804a2.m45797e(C0142a.C0152j.TextAppearance_android_textColorLink);
                colorStateList8 = colorStateList3;
                colorStateList6 = colorStateList2;
            }
        }
        if (m45804a2.m45793g(C0142a.C0152j.TextAppearance_textLocale)) {
            str2 = m45804a2.m45799d(C0142a.C0152j.TextAppearance_textLocale);
        }
        String str3 = str;
        if (Build.VERSION.SDK_INT >= 26) {
            str3 = str;
            if (m45804a2.m45793g(C0142a.C0152j.TextAppearance_fontVariationSettings)) {
                str3 = m45804a2.m45799d(C0142a.C0152j.TextAppearance_fontVariationSettings);
            }
        }
        if (Build.VERSION.SDK_INT >= 28 && m45804a2.m45793g(C0142a.C0152j.TextAppearance_android_textSize) && m45804a2.m45796e(C0142a.C0152j.TextAppearance_android_textSize, -1) == 0) {
            this.f1603e.setTextSize(0, BitmapDescriptorFactory.HUE_RED);
        }
        m45700a(context, m45804a2);
        m45804a2.f1491a.recycle();
        if (colorStateList8 != null) {
            this.f1603e.setTextColor(colorStateList8);
        }
        if (colorStateList6 != null) {
            this.f1603e.setHintTextColor(colorStateList6);
        }
        if (colorStateList7 != null) {
            this.f1603e.setLinkTextColor(colorStateList7);
        }
        if (!z3 && z5) {
            m45693a(z4);
        }
        Typeface typeface = this.f1601c;
        if (typeface != null) {
            if (this.f1611m == -1) {
                this.f1603e.setTypeface(typeface, this.f1600b);
            } else {
                this.f1603e.setTypeface(typeface);
            }
        }
        if (str3 != null) {
            this.f1603e.setFontVariationSettings(str3);
        }
        if (str2 != null) {
            if (Build.VERSION.SDK_INT >= 24) {
                this.f1603e.setTextLocales(LocaleList.forLanguageTags(str2));
            } else if (Build.VERSION.SDK_INT >= 21) {
                this.f1603e.setTextLocale(Locale.forLanguageTag(str2.substring(0, str2.indexOf(44))));
            }
        }
        this.f1599a.m45679a(attributeSet, i);
        if (AbstractC0953b.f3859d && this.f1599a.f1619a != 0) {
            int[] iArr = this.f1599a.f1623e;
            if (iArr.length > 0) {
                if (this.f1603e.getAutoSizeStepGranularity() != -1.0f) {
                    this.f1603e.setAutoSizeTextTypeUniformWithConfiguration(Math.round(this.f1599a.f1621c), Math.round(this.f1599a.f1622d), Math.round(this.f1599a.f1620b), 0);
                } else {
                    this.f1603e.setAutoSizeTextTypeUniformWithPresetSizes(iArr, 0);
                }
            }
        }
        C0370ab m45805a = C0370ab.m45805a(context, attributeSet, C0142a.C0152j.AppCompatTextView);
        int m45792g2 = m45805a.m45792g(C0142a.C0152j.AppCompatTextView_drawableLeftCompat, -1);
        Drawable m45729a = m45792g2 != -1 ? m45727b.m45729a(context, m45792g2) : null;
        int m45792g3 = m45805a.m45792g(C0142a.C0152j.AppCompatTextView_drawableTopCompat, -1);
        Drawable m45729a2 = m45792g3 != -1 ? m45727b.m45729a(context, m45792g3) : null;
        int m45792g4 = m45805a.m45792g(C0142a.C0152j.AppCompatTextView_drawableRightCompat, -1);
        Drawable m45729a3 = m45792g4 != -1 ? m45727b.m45729a(context, m45792g4) : null;
        int m45792g5 = m45805a.m45792g(C0142a.C0152j.AppCompatTextView_drawableBottomCompat, -1);
        Drawable m45729a4 = m45792g5 != -1 ? m45727b.m45729a(context, m45792g5) : null;
        int m45792g6 = m45805a.m45792g(C0142a.C0152j.AppCompatTextView_drawableStartCompat, -1);
        Drawable m45729a5 = m45792g6 != -1 ? m45727b.m45729a(context, m45792g6) : null;
        int m45792g7 = m45805a.m45792g(C0142a.C0152j.AppCompatTextView_drawableEndCompat, -1);
        m45696a(m45729a, m45729a2, m45729a3, m45729a4, m45729a5, m45792g7 != -1 ? m45727b.m45729a(context, m45792g7) : null);
        if (m45805a.m45793g(C0142a.C0152j.AppCompatTextView_drawableTint)) {
            C0959h.m43964a(this.f1603e, m45805a.m45797e(C0142a.C0152j.AppCompatTextView_drawableTint));
        }
        if (m45805a.m45793g(C0142a.C0152j.AppCompatTextView_drawableTintMode)) {
            C0959h.m43963a(this.f1603e, C0407p.m45622a(m45805a.m45809a(C0142a.C0152j.AppCompatTextView_drawableTintMode, -1), null));
        }
        int m45796e = m45805a.m45796e(C0142a.C0152j.AppCompatTextView_firstBaselineToTopHeight, -1);
        int m45796e2 = m45805a.m45796e(C0142a.C0152j.AppCompatTextView_lastBaselineToBottomHeight, -1);
        int m45796e3 = m45805a.m45796e(C0142a.C0152j.AppCompatTextView_lineHeight, -1);
        m45805a.f1491a.recycle();
        if (m45796e != -1) {
            C0959h.m43956b(this.f1603e, m45796e);
        }
        if (m45796e2 != -1) {
            C0959h.m43954c(this.f1603e, m45796e2);
        }
        if (m45796e3 != -1) {
            C0959h.m43953d(this.f1603e, m45796e3);
        }
    }

    /* renamed from: a */
    public final void m45693a(boolean z) {
        this.f1603e.setAllCaps(z);
    }

    /* renamed from: a */
    public final void m45692a(int[] iArr, int i) throws IllegalArgumentException {
        this.f1599a.m45674a(iArr, i);
    }

    /* renamed from: b */
    public final void m45691b() {
        if (!AbstractC0953b.f3859d) {
            this.f1599a.m45688a();
        }
    }
}
