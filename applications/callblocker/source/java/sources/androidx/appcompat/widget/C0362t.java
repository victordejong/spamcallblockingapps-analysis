package androidx.appcompat.widget;

import android.annotation.SuppressLint;
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
import androidx.appcompat.C0083a;
import androidx.core.p017a.p018a.C0449f;
import androidx.core.widget.AbstractC0621b;
import androidx.core.widget.C0628i;
import java.lang.ref.WeakReference;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.t */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t.class */
public class C0362t {

    /* renamed from: a */
    private final TextView f1491a;

    /* renamed from: b */
    private C0315an f1492b;

    /* renamed from: c */
    private C0315an f1493c;

    /* renamed from: d */
    private C0315an f1494d;

    /* renamed from: e */
    private C0315an f1495e;

    /* renamed from: f */
    private C0315an f1496f;

    /* renamed from: g */
    private C0315an f1497g;

    /* renamed from: h */
    private C0315an f1498h;

    /* renamed from: i */
    private final C0365u f1499i;

    /* renamed from: j */
    private int f1500j = 0;

    /* renamed from: k */
    private int f1501k = -1;

    /* renamed from: l */
    private Typeface f1502l;

    /* renamed from: m */
    private boolean f1503m;

    /* renamed from: androidx.appcompat.widget.t$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t$a.class */
    public static class C0363a extends C0449f.AbstractC0450a {

        /* renamed from: a */
        private final WeakReference<C0362t> f1504a;

        /* renamed from: b */
        private final int f1505b;

        /* renamed from: c */
        private final int f1506c;

        /* renamed from: androidx.appcompat.widget.t$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t$a$a.class */
        private class RunnableC0364a implements Runnable {

            /* renamed from: b */
            private final WeakReference<C0362t> f1508b;

            /* renamed from: c */
            private final Typeface f1509c;

            RunnableC0364a(WeakReference<C0362t> weakReference, Typeface typeface) {
                C0363a.this = r4;
                this.f1508b = weakReference;
                this.f1509c = typeface;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0362t c0362t = this.f1508b.get();
                if (c0362t == null) {
                    return;
                }
                c0362t.m21258a(this.f1509c);
            }
        }

        C0363a(C0362t c0362t, int i, int i2) {
            this.f1504a = new WeakReference<>(c0362t);
            this.f1505b = i;
            this.f1506c = i2;
        }

        @Override // androidx.core.p017a.p018a.C0449f.AbstractC0450a
        /* renamed from: a */
        public void mo2767a(int i) {
        }

        @Override // androidx.core.p017a.p018a.C0449f.AbstractC0450a
        /* renamed from: a */
        public void mo2766a(Typeface typeface) {
            C0362t c0362t = this.f1504a.get();
            if (c0362t == null) {
                return;
            }
            Typeface typeface2 = typeface;
            if (Build.VERSION.SDK_INT >= 28) {
                typeface2 = typeface;
                if (this.f1505b != -1) {
                    typeface2 = Typeface.create(typeface, this.f1505b, (this.f1506c & 2) != 0);
                }
            }
            c0362t.m21254a(new RunnableC0364a(this.f1504a, typeface2));
        }
    }

    public C0362t(TextView textView) {
        this.f1491a = textView;
        this.f1499i = new C0365u(this.f1491a);
    }

    /* renamed from: a */
    private static C0315an m21261a(Context context, C0350i c0350i, int i) {
        C0315an c0315an;
        ColorStateList m21306b = c0350i.m21306b(context, i);
        if (m21306b != null) {
            c0315an = new C0315an();
            c0315an.f1336d = true;
            c0315an.f1333a = m21306b;
        } else {
            c0315an = null;
        }
        return c0315an;
    }

    /* renamed from: a */
    private void m21262a(Context context, C0317ap c0317ap) {
        String m21427d;
        this.f1500j = c0317ap.m21438a(C0083a.C0093j.TextAppearance_android_textStyle, this.f1500j);
        if (Build.VERSION.SDK_INT >= 28) {
            this.f1501k = c0317ap.m21438a(C0083a.C0093j.TextAppearance_android_textFontWeight, -1);
            if (this.f1501k != -1) {
                this.f1500j = (this.f1500j & 2) | 0;
            }
        }
        if (!c0317ap.m21421g(C0083a.C0093j.TextAppearance_android_fontFamily) && !c0317ap.m21421g(C0083a.C0093j.TextAppearance_fontFamily)) {
            if (!c0317ap.m21421g(C0083a.C0093j.TextAppearance_android_typeface)) {
                return;
            }
            this.f1503m = false;
            switch (c0317ap.m21438a(C0083a.C0093j.TextAppearance_android_typeface, 1)) {
                case 1:
                    this.f1502l = Typeface.SANS_SERIF;
                    return;
                case 2:
                    this.f1502l = Typeface.SERIF;
                    return;
                case 3:
                    this.f1502l = Typeface.MONOSPACE;
                    return;
                default:
                    return;
            }
        }
        this.f1502l = null;
        int i = c0317ap.m21421g(C0083a.C0093j.TextAppearance_fontFamily) ? C0083a.C0093j.TextAppearance_fontFamily : C0083a.C0093j.TextAppearance_android_fontFamily;
        int i2 = this.f1501k;
        int i3 = this.f1500j;
        if (!context.isRestricted()) {
            try {
                Typeface m21437a = c0317ap.m21437a(i, this.f1500j, new C0363a(this, i2, i3));
                if (m21437a != null) {
                    if (Build.VERSION.SDK_INT < 28 || this.f1501k == -1) {
                        this.f1502l = m21437a;
                    } else {
                        this.f1502l = Typeface.create(Typeface.create(m21437a, 0), this.f1501k, (this.f1500j & 2) != 0);
                    }
                }
                this.f1503m = this.f1502l == null;
            } catch (Resources.NotFoundException e) {
            } catch (UnsupportedOperationException e2) {
            }
        }
        if (this.f1502l != null || (m21427d = c0317ap.m21427d(i)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.f1501k == -1) {
            this.f1502l = Typeface.create(m21427d, this.f1500j);
        } else {
            this.f1502l = Typeface.create(Typeface.create(m21427d, 0), this.f1501k, (this.f1500j & 2) != 0);
        }
    }

    /* renamed from: a */
    private void m21257a(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (Build.VERSION.SDK_INT >= 17 && (drawable5 != null || drawable6 != null)) {
            Drawable[] compoundDrawablesRelative = this.f1491a.getCompoundDrawablesRelative();
            TextView textView = this.f1491a;
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
                Drawable[] compoundDrawablesRelative2 = this.f1491a.getCompoundDrawablesRelative();
                if (compoundDrawablesRelative2[0] != null || compoundDrawablesRelative2[2] != null) {
                    TextView textView2 = this.f1491a;
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
            Drawable[] compoundDrawables = this.f1491a.getCompoundDrawables();
            TextView textView3 = this.f1491a;
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
    private void m21256a(Drawable drawable, C0315an c0315an) {
        if (drawable == null || c0315an == null) {
            return;
        }
        C0350i.m21308a(drawable, c0315an, this.f1491a.getDrawableState());
    }

    /* renamed from: b */
    private void m21249b(int i, float f) {
        this.f1499i.m21234a(i, f);
    }

    /* renamed from: l */
    private void m21239l() {
        this.f1492b = this.f1498h;
        this.f1493c = this.f1498h;
        this.f1494d = this.f1498h;
        this.f1495e = this.f1498h;
        this.f1496f = this.f1498h;
        this.f1497g = this.f1498h;
    }

    /* renamed from: a */
    public void m21267a() {
        m21250b();
    }

    /* renamed from: a */
    public void m21266a(int i) {
        this.f1499i.m21235a(i);
    }

    /* renamed from: a */
    public void m21265a(int i, float f) {
        if (AbstractC0621b.f2184d || m21247d()) {
            return;
        }
        m21249b(i, f);
    }

    /* renamed from: a */
    public void m21264a(int i, int i2, int i3, int i4) {
        this.f1499i.m21233a(i, i2, i3, i4);
    }

    /* renamed from: a */
    public void m21263a(Context context, int i) {
        String m21427d;
        ColorStateList m21425e;
        C0317ap m21435a = C0317ap.m21435a(context, i, C0083a.C0093j.TextAppearance);
        if (m21435a.m21421g(C0083a.C0093j.TextAppearance_textAllCaps)) {
            m21253a(m21435a.m21436a(C0083a.C0093j.TextAppearance_textAllCaps, false));
        }
        if (Build.VERSION.SDK_INT < 23 && m21435a.m21421g(C0083a.C0093j.TextAppearance_android_textColor) && (m21425e = m21435a.m21425e(C0083a.C0093j.TextAppearance_android_textColor)) != null) {
            this.f1491a.setTextColor(m21425e);
        }
        if (m21435a.m21421g(C0083a.C0093j.TextAppearance_android_textSize) && m21435a.m21424e(C0083a.C0093j.TextAppearance_android_textSize, -1) == 0) {
            this.f1491a.setTextSize(0, 0.0f);
        }
        m21262a(context, m21435a);
        if (Build.VERSION.SDK_INT >= 26 && m21435a.m21421g(C0083a.C0093j.TextAppearance_fontVariationSettings) && (m21427d = m21435a.m21427d(C0083a.C0093j.TextAppearance_fontVariationSettings)) != null) {
            this.f1491a.setFontVariationSettings(m21427d);
        }
        m21435a.m21441a();
        if (this.f1502l != null) {
            this.f1491a.setTypeface(this.f1502l, this.f1500j);
        }
    }

    /* renamed from: a */
    public void m21260a(ColorStateList colorStateList) {
        if (this.f1498h == null) {
            this.f1498h = new C0315an();
        }
        this.f1498h.f1333a = colorStateList;
        this.f1498h.f1336d = colorStateList != null;
        m21239l();
    }

    /* renamed from: a */
    public void m21259a(PorterDuff.Mode mode) {
        if (this.f1498h == null) {
            this.f1498h = new C0315an();
        }
        this.f1498h.f1334b = mode;
        this.f1498h.f1335c = mode != null;
        m21239l();
    }

    /* renamed from: a */
    public void m21258a(Typeface typeface) {
        if (this.f1503m) {
            this.f1491a.setTypeface(typeface);
            this.f1502l = typeface;
        }
    }

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    public void m21255a(AttributeSet attributeSet, int i) {
        Context context = this.f1491a.getContext();
        C0350i m21307b = C0350i.m21307b();
        C0317ap m21433a = C0317ap.m21433a(context, attributeSet, C0083a.C0093j.AppCompatTextHelper, i, 0);
        int m21420g = m21433a.m21420g(C0083a.C0093j.AppCompatTextHelper_android_textAppearance, -1);
        if (m21433a.m21421g(C0083a.C0093j.AppCompatTextHelper_android_drawableLeft)) {
            this.f1492b = m21261a(context, m21307b, m21433a.m21420g(C0083a.C0093j.AppCompatTextHelper_android_drawableLeft, 0));
        }
        if (m21433a.m21421g(C0083a.C0093j.AppCompatTextHelper_android_drawableTop)) {
            this.f1493c = m21261a(context, m21307b, m21433a.m21420g(C0083a.C0093j.AppCompatTextHelper_android_drawableTop, 0));
        }
        if (m21433a.m21421g(C0083a.C0093j.AppCompatTextHelper_android_drawableRight)) {
            this.f1494d = m21261a(context, m21307b, m21433a.m21420g(C0083a.C0093j.AppCompatTextHelper_android_drawableRight, 0));
        }
        if (m21433a.m21421g(C0083a.C0093j.AppCompatTextHelper_android_drawableBottom)) {
            this.f1495e = m21261a(context, m21307b, m21433a.m21420g(C0083a.C0093j.AppCompatTextHelper_android_drawableBottom, 0));
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (m21433a.m21421g(C0083a.C0093j.AppCompatTextHelper_android_drawableStart)) {
                this.f1496f = m21261a(context, m21307b, m21433a.m21420g(C0083a.C0093j.AppCompatTextHelper_android_drawableStart, 0));
            }
            if (m21433a.m21421g(C0083a.C0093j.AppCompatTextHelper_android_drawableEnd)) {
                this.f1497g = m21261a(context, m21307b, m21433a.m21420g(C0083a.C0093j.AppCompatTextHelper_android_drawableEnd, 0));
            }
        }
        m21433a.m21441a();
        boolean z = this.f1491a.getTransformationMethod() instanceof PasswordTransformationMethod;
        boolean z2 = false;
        boolean z3 = false;
        ColorStateList colorStateList = null;
        ColorStateList colorStateList2 = null;
        ColorStateList colorStateList3 = null;
        String str = null;
        String str2 = null;
        if (m21420g != -1) {
            C0317ap m21435a = C0317ap.m21435a(context, m21420g, C0083a.C0093j.TextAppearance);
            z3 = false;
            z2 = false;
            if (!z) {
                z3 = false;
                z2 = false;
                if (m21435a.m21421g(C0083a.C0093j.TextAppearance_textAllCaps)) {
                    z3 = true;
                    z2 = m21435a.m21436a(C0083a.C0093j.TextAppearance_textAllCaps, false);
                }
            }
            m21262a(context, m21435a);
            colorStateList = null;
            colorStateList2 = null;
            colorStateList3 = null;
            if (Build.VERSION.SDK_INT < 23) {
                ColorStateList colorStateList4 = null;
                if (m21435a.m21421g(C0083a.C0093j.TextAppearance_android_textColor)) {
                    colorStateList4 = m21435a.m21425e(C0083a.C0093j.TextAppearance_android_textColor);
                }
                ColorStateList colorStateList5 = null;
                if (m21435a.m21421g(C0083a.C0093j.TextAppearance_android_textColorHint)) {
                    colorStateList5 = m21435a.m21425e(C0083a.C0093j.TextAppearance_android_textColorHint);
                }
                colorStateList = colorStateList4;
                colorStateList2 = colorStateList5;
                colorStateList3 = null;
                if (m21435a.m21421g(C0083a.C0093j.TextAppearance_android_textColorLink)) {
                    colorStateList3 = m21435a.m21425e(C0083a.C0093j.TextAppearance_android_textColorLink);
                    colorStateList2 = colorStateList5;
                    colorStateList = colorStateList4;
                }
            }
            str2 = null;
            if (m21435a.m21421g(C0083a.C0093j.TextAppearance_textLocale)) {
                str2 = m21435a.m21427d(C0083a.C0093j.TextAppearance_textLocale);
            }
            str = null;
            if (Build.VERSION.SDK_INT >= 26) {
                str = null;
                if (m21435a.m21421g(C0083a.C0093j.TextAppearance_fontVariationSettings)) {
                    str = m21435a.m21427d(C0083a.C0093j.TextAppearance_fontVariationSettings);
                }
            }
            m21435a.m21441a();
        }
        C0317ap m21433a2 = C0317ap.m21433a(context, attributeSet, C0083a.C0093j.TextAppearance, i, 0);
        boolean z4 = z3;
        boolean z5 = z2;
        if (!z) {
            z4 = z3;
            z5 = z2;
            if (m21433a2.m21421g(C0083a.C0093j.TextAppearance_textAllCaps)) {
                z4 = true;
                z5 = m21433a2.m21436a(C0083a.C0093j.TextAppearance_textAllCaps, false);
            }
        }
        ColorStateList colorStateList6 = colorStateList;
        ColorStateList colorStateList7 = colorStateList2;
        ColorStateList colorStateList8 = colorStateList3;
        if (Build.VERSION.SDK_INT < 23) {
            if (m21433a2.m21421g(C0083a.C0093j.TextAppearance_android_textColor)) {
                colorStateList = m21433a2.m21425e(C0083a.C0093j.TextAppearance_android_textColor);
            }
            if (m21433a2.m21421g(C0083a.C0093j.TextAppearance_android_textColorHint)) {
                colorStateList2 = m21433a2.m21425e(C0083a.C0093j.TextAppearance_android_textColorHint);
            }
            colorStateList6 = colorStateList;
            colorStateList7 = colorStateList2;
            colorStateList8 = colorStateList3;
            if (m21433a2.m21421g(C0083a.C0093j.TextAppearance_android_textColorLink)) {
                colorStateList8 = m21433a2.m21425e(C0083a.C0093j.TextAppearance_android_textColorLink);
                colorStateList7 = colorStateList2;
                colorStateList6 = colorStateList;
            }
        }
        if (m21433a2.m21421g(C0083a.C0093j.TextAppearance_textLocale)) {
            str2 = m21433a2.m21427d(C0083a.C0093j.TextAppearance_textLocale);
        }
        String str3 = str;
        if (Build.VERSION.SDK_INT >= 26) {
            str3 = str;
            if (m21433a2.m21421g(C0083a.C0093j.TextAppearance_fontVariationSettings)) {
                str3 = m21433a2.m21427d(C0083a.C0093j.TextAppearance_fontVariationSettings);
            }
        }
        if (Build.VERSION.SDK_INT >= 28 && m21433a2.m21421g(C0083a.C0093j.TextAppearance_android_textSize) && m21433a2.m21424e(C0083a.C0093j.TextAppearance_android_textSize, -1) == 0) {
            this.f1491a.setTextSize(0, 0.0f);
        }
        m21262a(context, m21433a2);
        m21433a2.m21441a();
        if (colorStateList6 != null) {
            this.f1491a.setTextColor(colorStateList6);
        }
        if (colorStateList7 != null) {
            this.f1491a.setHintTextColor(colorStateList7);
        }
        if (colorStateList8 != null) {
            this.f1491a.setLinkTextColor(colorStateList8);
        }
        if (!z && z4) {
            m21253a(z5);
        }
        if (this.f1502l != null) {
            if (this.f1501k == -1) {
                this.f1491a.setTypeface(this.f1502l, this.f1500j);
            } else {
                this.f1491a.setTypeface(this.f1502l);
            }
        }
        if (str3 != null) {
            this.f1491a.setFontVariationSettings(str3);
        }
        if (str2 != null) {
            if (Build.VERSION.SDK_INT >= 24) {
                this.f1491a.setTextLocales(LocaleList.forLanguageTags(str2));
            } else if (Build.VERSION.SDK_INT >= 21) {
                this.f1491a.setTextLocale(Locale.forLanguageTag(str2.substring(0, str2.indexOf(44))));
            }
        }
        this.f1499i.m21229a(attributeSet, i);
        if (AbstractC0621b.f2184d && this.f1499i.m21238a() != 0) {
            int[] m21214e = this.f1499i.m21214e();
            if (m21214e.length > 0) {
                if (this.f1491a.getAutoSizeStepGranularity() != -1.0f) {
                    this.f1491a.setAutoSizeTextTypeUniformWithConfiguration(this.f1499i.m21216c(), this.f1499i.m21215d(), this.f1499i.m21222b(), 0);
                } else {
                    this.f1491a.setAutoSizeTextTypeUniformWithPresetSizes(m21214e, 0);
                }
            }
        }
        C0317ap m21434a = C0317ap.m21434a(context, attributeSet, C0083a.C0093j.AppCompatTextView);
        Drawable drawable = null;
        Drawable drawable2 = null;
        Drawable drawable3 = null;
        Drawable drawable4 = null;
        Drawable drawable5 = null;
        Drawable drawable6 = null;
        int m21420g2 = m21434a.m21420g(C0083a.C0093j.AppCompatTextView_drawableLeftCompat, -1);
        if (m21420g2 != -1) {
            drawable = m21307b.m21310a(context, m21420g2);
        }
        int m21420g3 = m21434a.m21420g(C0083a.C0093j.AppCompatTextView_drawableTopCompat, -1);
        if (m21420g3 != -1) {
            drawable2 = m21307b.m21310a(context, m21420g3);
        }
        int m21420g4 = m21434a.m21420g(C0083a.C0093j.AppCompatTextView_drawableRightCompat, -1);
        if (m21420g4 != -1) {
            drawable3 = m21307b.m21310a(context, m21420g4);
        }
        int m21420g5 = m21434a.m21420g(C0083a.C0093j.AppCompatTextView_drawableBottomCompat, -1);
        if (m21420g5 != -1) {
            drawable4 = m21307b.m21310a(context, m21420g5);
        }
        int m21420g6 = m21434a.m21420g(C0083a.C0093j.AppCompatTextView_drawableStartCompat, -1);
        if (m21420g6 != -1) {
            drawable5 = m21307b.m21310a(context, m21420g6);
        }
        int m21420g7 = m21434a.m21420g(C0083a.C0093j.AppCompatTextView_drawableEndCompat, -1);
        if (m21420g7 != -1) {
            drawable6 = m21307b.m21310a(context, m21420g7);
        }
        m21257a(drawable, drawable2, drawable3, drawable4, drawable5, drawable6);
        if (m21434a.m21421g(C0083a.C0093j.AppCompatTextView_drawableTint)) {
            C0628i.m20143a(this.f1491a, m21434a.m21425e(C0083a.C0093j.AppCompatTextView_drawableTint));
        }
        if (m21434a.m21421g(C0083a.C0093j.AppCompatTextView_drawableTintMode)) {
            C0628i.m20142a(this.f1491a, C0369y.m21168a(m21434a.m21438a(C0083a.C0093j.AppCompatTextView_drawableTintMode, -1), null));
        }
        int m21424e = m21434a.m21424e(C0083a.C0093j.AppCompatTextView_firstBaselineToTopHeight, -1);
        int m21424e2 = m21434a.m21424e(C0083a.C0093j.AppCompatTextView_lastBaselineToBottomHeight, -1);
        int m21424e3 = m21434a.m21424e(C0083a.C0093j.AppCompatTextView_lineHeight, -1);
        m21434a.m21441a();
        if (m21424e != -1) {
            C0628i.m20134b(this.f1491a, m21424e);
        }
        if (m21424e2 != -1) {
            C0628i.m20132c(this.f1491a, m21424e2);
        }
        if (m21424e3 != -1) {
            C0628i.m20130d(this.f1491a, m21424e3);
        }
    }

    /* renamed from: a */
    public void m21254a(Runnable runnable) {
        this.f1491a.post(runnable);
    }

    /* renamed from: a */
    public void m21253a(boolean z) {
        this.f1491a.setAllCaps(z);
    }

    /* renamed from: a */
    public void m21252a(boolean z, int i, int i2, int i3, int i4) {
        if (!AbstractC0621b.f2184d) {
            m21248c();
        }
    }

    /* renamed from: a */
    public void m21251a(int[] iArr, int i) {
        this.f1499i.m21223a(iArr, i);
    }

    /* renamed from: b */
    public void m21250b() {
        if (this.f1492b != null || this.f1493c != null || this.f1494d != null || this.f1495e != null) {
            Drawable[] compoundDrawables = this.f1491a.getCompoundDrawables();
            m21256a(compoundDrawables[0], this.f1492b);
            m21256a(compoundDrawables[1], this.f1493c);
            m21256a(compoundDrawables[2], this.f1494d);
            m21256a(compoundDrawables[3], this.f1495e);
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (this.f1496f == null && this.f1497g == null) {
                return;
            }
            Drawable[] compoundDrawablesRelative = this.f1491a.getCompoundDrawablesRelative();
            m21256a(compoundDrawablesRelative[0], this.f1496f);
            m21256a(compoundDrawablesRelative[2], this.f1497g);
        }
    }

    /* renamed from: c */
    public void m21248c() {
        this.f1499i.m21213f();
    }

    /* renamed from: d */
    public boolean m21247d() {
        return this.f1499i.m21212g();
    }

    /* renamed from: e */
    public int m21246e() {
        return this.f1499i.m21238a();
    }

    /* renamed from: f */
    public int m21245f() {
        return this.f1499i.m21222b();
    }

    /* renamed from: g */
    public int m21244g() {
        return this.f1499i.m21216c();
    }

    /* renamed from: h */
    public int m21243h() {
        return this.f1499i.m21215d();
    }

    /* renamed from: i */
    public int[] m21242i() {
        return this.f1499i.m21214e();
    }

    /* renamed from: j */
    public ColorStateList m21241j() {
        return this.f1498h != null ? this.f1498h.f1333a : null;
    }

    /* renamed from: k */
    public PorterDuff.Mode m21240k() {
        return this.f1498h != null ? this.f1498h.f1334b : null;
    }
}
