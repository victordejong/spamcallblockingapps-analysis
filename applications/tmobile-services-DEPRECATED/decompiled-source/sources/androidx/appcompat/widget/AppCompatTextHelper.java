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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.AutoSizeableTextView;
import androidx.core.widget.TextViewCompat;
import java.lang.ref.WeakReference;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatTextHelper.class */
class AppCompatTextHelper {
    @NonNull

    /* renamed from: a */
    private final TextView f1004a;

    /* renamed from: b */
    private TintInfo f1005b;

    /* renamed from: c */
    private TintInfo f1006c;

    /* renamed from: d */
    private TintInfo f1007d;

    /* renamed from: e */
    private TintInfo f1008e;

    /* renamed from: f */
    private TintInfo f1009f;

    /* renamed from: g */
    private TintInfo f1010g;

    /* renamed from: h */
    private TintInfo f1011h;
    @NonNull

    /* renamed from: i */
    private final AppCompatTextViewAutoSizeHelper f1012i;

    /* renamed from: j */
    private int f1013j = 0;

    /* renamed from: k */
    private int f1014k = -1;

    /* renamed from: l */
    private Typeface f1015l;

    /* renamed from: m */
    private boolean f1016m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatTextHelper(@NonNull TextView textView) {
        this.f1004a = textView;
        this.f1012i = new AppCompatTextViewAutoSizeHelper(this.f1004a);
    }

    /* renamed from: A */
    private void m21578A(int i, float f) {
        this.f1012i.m21520y(i, f);
    }

    /* renamed from: B */
    private void m21577B(Context context, TintTypedArray tintTypedArray) {
        String o;
        this.f1013j = tintTypedArray.m21255k(C0042R.styleable.TextAppearance_android_textStyle, this.f1013j);
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 28) {
            int k = tintTypedArray.m21255k(C0042R.styleable.TextAppearance_android_textFontWeight, -1);
            this.f1014k = k;
            if (k != -1) {
                this.f1013j = (this.f1013j & 2) | 0;
            }
        }
        if (tintTypedArray.m21247s(C0042R.styleable.TextAppearance_android_fontFamily) || tintTypedArray.m21247s(C0042R.styleable.TextAppearance_fontFamily)) {
            this.f1015l = null;
            int i = tintTypedArray.m21247s(C0042R.styleable.TextAppearance_fontFamily) ? C0042R.styleable.TextAppearance_fontFamily : C0042R.styleable.TextAppearance_android_fontFamily;
            final int i2 = this.f1014k;
            final int i3 = this.f1013j;
            if (!context.isRestricted()) {
                final WeakReference weakReference = new WeakReference(this.f1004a);
                try {
                    Typeface j = tintTypedArray.m21256j(i, this.f1013j, new ResourcesCompat.FontCallback() { // from class: androidx.appcompat.widget.AppCompatTextHelper.1
                        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                        /* renamed from: c */
                        public void mo9377c(int i4) {
                        }

                        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                        /* renamed from: d */
                        public void mo9376d(@NonNull Typeface typeface) {
                            Typeface typeface2 = typeface;
                            if (Build.VERSION.SDK_INT >= 28) {
                                int i4 = i2;
                                typeface2 = typeface;
                                if (i4 != -1) {
                                    typeface2 = Typeface.create(typeface, i4, (i3 & 2) != 0);
                                }
                            }
                            AppCompatTextHelper.this.m21563n(weakReference, typeface2);
                        }
                    });
                    if (j != null) {
                        if (Build.VERSION.SDK_INT < 28 || this.f1014k == -1) {
                            this.f1015l = j;
                        } else {
                            this.f1015l = Typeface.create(Typeface.create(j, 0), this.f1014k, (this.f1013j & 2) != 0);
                        }
                    }
                    this.f1016m = this.f1015l == null;
                } catch (Resources.NotFoundException | UnsupportedOperationException e) {
                }
            }
            if (this.f1015l == null && (o = tintTypedArray.m21251o(i)) != null) {
                if (Build.VERSION.SDK_INT < 28 || this.f1014k == -1) {
                    this.f1015l = Typeface.create(o, this.f1013j);
                    return;
                }
                Typeface create = Typeface.create(o, 0);
                int i4 = this.f1014k;
                if ((this.f1013j & 2) != 0) {
                    z = true;
                }
                this.f1015l = Typeface.create(create, i4, z);
            }
        } else if (tintTypedArray.m21247s(C0042R.styleable.TextAppearance_android_typeface)) {
            this.f1016m = false;
            int k2 = tintTypedArray.m21255k(C0042R.styleable.TextAppearance_android_typeface, 1);
            if (k2 == 1) {
                this.f1015l = Typeface.SANS_SERIF;
            } else if (k2 == 2) {
                this.f1015l = Typeface.SERIF;
            } else if (k2 == 3) {
                this.f1015l = Typeface.MONOSPACE;
            }
        }
    }

    /* renamed from: a */
    private void m21576a(Drawable drawable, TintInfo tintInfo) {
        if (drawable != null && tintInfo != null) {
            AppCompatDrawableManager.m21630i(drawable, tintInfo, this.f1004a.getDrawableState());
        }
    }

    /* renamed from: d */
    private static TintInfo m21573d(Context context, AppCompatDrawableManager appCompatDrawableManager, int i) {
        ColorStateList f = appCompatDrawableManager.m21633f(context, i);
        if (f == null) {
            return null;
        }
        TintInfo tintInfo = new TintInfo();
        tintInfo.f1354d = true;
        tintInfo.f1351a = f;
        return tintInfo;
    }

    /* renamed from: x */
    private void m21553x(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (Build.VERSION.SDK_INT >= 17 && (drawable5 != null || drawable6 != null)) {
            Drawable[] compoundDrawablesRelative = this.f1004a.getCompoundDrawablesRelative();
            TextView textView = this.f1004a;
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
                Drawable[] compoundDrawablesRelative2 = this.f1004a.getCompoundDrawablesRelative();
                if (!(compoundDrawablesRelative2[0] == null && compoundDrawablesRelative2[2] == null)) {
                    TextView textView2 = this.f1004a;
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
            Drawable[] compoundDrawables = this.f1004a.getCompoundDrawables();
            TextView textView3 = this.f1004a;
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
    private void m21552y() {
        TintInfo tintInfo = this.f1011h;
        this.f1005b = tintInfo;
        this.f1006c = tintInfo;
        this.f1007d = tintInfo;
        this.f1008e = tintInfo;
        this.f1009f = tintInfo;
        this.f1010g = tintInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m21575b() {
        if (!(this.f1005b == null && this.f1006c == null && this.f1007d == null && this.f1008e == null)) {
            Drawable[] compoundDrawables = this.f1004a.getCompoundDrawables();
            m21576a(compoundDrawables[0], this.f1005b);
            m21576a(compoundDrawables[1], this.f1006c);
            m21576a(compoundDrawables[2], this.f1007d);
            m21576a(compoundDrawables[3], this.f1008e);
        }
        if (Build.VERSION.SDK_INT < 17) {
            return;
        }
        if (this.f1009f != null || this.f1010g != null) {
            Drawable[] compoundDrawablesRelative = this.f1004a.getCompoundDrawablesRelative();
            m21576a(compoundDrawablesRelative[0], this.f1009f);
            m21576a(compoundDrawablesRelative[2], this.f1010g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo
    /* renamed from: c */
    public void m21574c() {
        this.f1012i.m21543b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public int m21572e() {
        return this.f1012i.m21535j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public int m21571f() {
        return this.f1012i.m21534k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public int m21570g() {
        return this.f1012i.m21533l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public int[] m21569h() {
        return this.f1012i.m21532m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public int m21568i() {
        return this.f1012i.m21531n();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: j */
    public ColorStateList m21567j() {
        TintInfo tintInfo = this.f1011h;
        return tintInfo != null ? tintInfo.f1351a : null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: k */
    public PorterDuff.Mode m21566k() {
        TintInfo tintInfo = this.f1011h;
        return tintInfo != null ? tintInfo.f1352b : null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo
    /* renamed from: l */
    public boolean m21565l() {
        return this.f1012i.m21526s();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"NewApi"})
    /* renamed from: m */
    public void m21564m(@Nullable AttributeSet attributeSet, int i) {
        String str;
        String str2;
        boolean z;
        ColorStateList colorStateList;
        boolean z2;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        Context context = this.f1004a.getContext();
        AppCompatDrawableManager b = AppCompatDrawableManager.m21637b();
        TintTypedArray v = TintTypedArray.m21244v(context, attributeSet, C0042R.styleable.AppCompatTextHelper, i, 0);
        TextView textView = this.f1004a;
        ViewCompat.m19187l0(textView, textView.getContext(), C0042R.styleable.AppCompatTextHelper, attributeSet, v.m21248r(), i, 0);
        int n = v.m21252n(C0042R.styleable.AppCompatTextHelper_android_textAppearance, -1);
        if (v.m21247s(C0042R.styleable.AppCompatTextHelper_android_drawableLeft)) {
            this.f1005b = m21573d(context, b, v.m21252n(C0042R.styleable.AppCompatTextHelper_android_drawableLeft, 0));
        }
        if (v.m21247s(C0042R.styleable.AppCompatTextHelper_android_drawableTop)) {
            this.f1006c = m21573d(context, b, v.m21252n(C0042R.styleable.AppCompatTextHelper_android_drawableTop, 0));
        }
        if (v.m21247s(C0042R.styleable.AppCompatTextHelper_android_drawableRight)) {
            this.f1007d = m21573d(context, b, v.m21252n(C0042R.styleable.AppCompatTextHelper_android_drawableRight, 0));
        }
        if (v.m21247s(C0042R.styleable.AppCompatTextHelper_android_drawableBottom)) {
            this.f1008e = m21573d(context, b, v.m21252n(C0042R.styleable.AppCompatTextHelper_android_drawableBottom, 0));
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (v.m21247s(C0042R.styleable.AppCompatTextHelper_android_drawableStart)) {
                this.f1009f = m21573d(context, b, v.m21252n(C0042R.styleable.AppCompatTextHelper_android_drawableStart, 0));
            }
            if (v.m21247s(C0042R.styleable.AppCompatTextHelper_android_drawableEnd)) {
                this.f1010g = m21573d(context, b, v.m21252n(C0042R.styleable.AppCompatTextHelper_android_drawableEnd, 0));
            }
        }
        v.m21243w();
        boolean z3 = this.f1004a.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (n != -1) {
            TintTypedArray t = TintTypedArray.m21246t(context, n, C0042R.styleable.TextAppearance);
            if (z3 || !t.m21247s(C0042R.styleable.TextAppearance_textAllCaps)) {
                z = false;
                z2 = false;
            } else {
                z = t.m21265a(C0042R.styleable.TextAppearance_textAllCaps, false);
                z2 = true;
            }
            m21577B(context, t);
            if (Build.VERSION.SDK_INT < 23) {
                colorStateList3 = t.m21247s(C0042R.styleable.TextAppearance_android_textColor) ? t.m21263c(C0042R.styleable.TextAppearance_android_textColor) : null;
                colorStateList2 = t.m21247s(C0042R.styleable.TextAppearance_android_textColorHint) ? t.m21263c(C0042R.styleable.TextAppearance_android_textColorHint) : null;
                colorStateList = t.m21247s(C0042R.styleable.TextAppearance_android_textColorLink) ? t.m21263c(C0042R.styleable.TextAppearance_android_textColorLink) : null;
            } else {
                colorStateList2 = null;
                colorStateList = null;
                colorStateList3 = null;
            }
            str2 = t.m21247s(C0042R.styleable.TextAppearance_textLocale) ? t.m21251o(C0042R.styleable.TextAppearance_textLocale) : null;
            str = (Build.VERSION.SDK_INT < 26 || !t.m21247s(C0042R.styleable.TextAppearance_fontVariationSettings)) ? null : t.m21251o(C0042R.styleable.TextAppearance_fontVariationSettings);
            t.m21243w();
        } else {
            colorStateList2 = null;
            str = null;
            z = false;
            z2 = false;
            colorStateList = null;
            str2 = null;
            colorStateList3 = null;
        }
        TintTypedArray v2 = TintTypedArray.m21244v(context, attributeSet, C0042R.styleable.TextAppearance, i, 0);
        if (!z3 && v2.m21247s(C0042R.styleable.TextAppearance_textAllCaps)) {
            z = v2.m21265a(C0042R.styleable.TextAppearance_textAllCaps, false);
            z2 = true;
        }
        ColorStateList colorStateList4 = colorStateList2;
        ColorStateList colorStateList5 = colorStateList;
        ColorStateList colorStateList6 = colorStateList3;
        if (Build.VERSION.SDK_INT < 23) {
            if (v2.m21247s(C0042R.styleable.TextAppearance_android_textColor)) {
                colorStateList3 = v2.m21263c(C0042R.styleable.TextAppearance_android_textColor);
            }
            if (v2.m21247s(C0042R.styleable.TextAppearance_android_textColorHint)) {
                colorStateList2 = v2.m21263c(C0042R.styleable.TextAppearance_android_textColorHint);
            }
            colorStateList4 = colorStateList2;
            colorStateList5 = colorStateList;
            colorStateList6 = colorStateList3;
            if (v2.m21247s(C0042R.styleable.TextAppearance_android_textColorLink)) {
                colorStateList5 = v2.m21263c(C0042R.styleable.TextAppearance_android_textColorLink);
                colorStateList6 = colorStateList3;
                colorStateList4 = colorStateList2;
            }
        }
        if (v2.m21247s(C0042R.styleable.TextAppearance_textLocale)) {
            str2 = v2.m21251o(C0042R.styleable.TextAppearance_textLocale);
        }
        String str3 = str;
        if (Build.VERSION.SDK_INT >= 26) {
            str3 = str;
            if (v2.m21247s(C0042R.styleable.TextAppearance_fontVariationSettings)) {
                str3 = v2.m21251o(C0042R.styleable.TextAppearance_fontVariationSettings);
            }
        }
        if (Build.VERSION.SDK_INT >= 28 && v2.m21247s(C0042R.styleable.TextAppearance_android_textSize) && v2.m21260f(C0042R.styleable.TextAppearance_android_textSize, -1) == 0) {
            this.f1004a.setTextSize(0, 0.0f);
        }
        m21577B(context, v2);
        v2.m21243w();
        if (colorStateList6 != null) {
            this.f1004a.setTextColor(colorStateList6);
        }
        if (colorStateList4 != null) {
            this.f1004a.setHintTextColor(colorStateList4);
        }
        if (colorStateList5 != null) {
            this.f1004a.setLinkTextColor(colorStateList5);
        }
        if (!z3 && z2) {
            m21559r(z);
        }
        Typeface typeface = this.f1015l;
        if (typeface != null) {
            if (this.f1014k == -1) {
                this.f1004a.setTypeface(typeface, this.f1013j);
            } else {
                this.f1004a.setTypeface(typeface);
            }
        }
        if (str3 != null) {
            this.f1004a.setFontVariationSettings(str3);
        }
        if (str2 != null) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 24) {
                this.f1004a.setTextLocales(LocaleList.forLanguageTags(str2));
            } else if (i2 >= 21) {
                this.f1004a.setTextLocale(Locale.forLanguageTag(str2.substring(0, str2.indexOf(44))));
            }
        }
        this.f1012i.m21525t(attributeSet, i);
        if (AutoSizeableTextView.f3388a && this.f1012i.m21531n() != 0) {
            int[] m = this.f1012i.m21532m();
            if (m.length > 0) {
                if (this.f1004a.getAutoSizeStepGranularity() != -1.0f) {
                    this.f1004a.setAutoSizeTextTypeUniformWithConfiguration(this.f1012i.m21534k(), this.f1012i.m21535j(), this.f1012i.m21533l(), 0);
                } else {
                    this.f1004a.setAutoSizeTextTypeUniformWithPresetSizes(m, 0);
                }
            }
        }
        TintTypedArray u = TintTypedArray.m21245u(context, attributeSet, C0042R.styleable.AppCompatTextView);
        int n2 = u.m21252n(C0042R.styleable.AppCompatTextView_drawableLeftCompat, -1);
        Drawable c = n2 != -1 ? b.m21636c(context, n2) : null;
        int n3 = u.m21252n(C0042R.styleable.AppCompatTextView_drawableTopCompat, -1);
        Drawable c2 = n3 != -1 ? b.m21636c(context, n3) : null;
        int n4 = u.m21252n(C0042R.styleable.AppCompatTextView_drawableRightCompat, -1);
        Drawable c3 = n4 != -1 ? b.m21636c(context, n4) : null;
        int n5 = u.m21252n(C0042R.styleable.AppCompatTextView_drawableBottomCompat, -1);
        Drawable c4 = n5 != -1 ? b.m21636c(context, n5) : null;
        int n6 = u.m21252n(C0042R.styleable.AppCompatTextView_drawableStartCompat, -1);
        Drawable c5 = n6 != -1 ? b.m21636c(context, n6) : null;
        int n7 = u.m21252n(C0042R.styleable.AppCompatTextView_drawableEndCompat, -1);
        m21553x(c, c2, c3, c4, c5, n7 != -1 ? b.m21636c(context, n7) : null);
        if (u.m21247s(C0042R.styleable.AppCompatTextView_drawableTint)) {
            TextViewCompat.m18824k(this.f1004a, u.m21263c(C0042R.styleable.AppCompatTextView_drawableTint));
        }
        if (u.m21247s(C0042R.styleable.AppCompatTextView_drawableTintMode)) {
            TextViewCompat.m18823l(this.f1004a, DrawableUtils.m21501e(u.m21255k(C0042R.styleable.AppCompatTextView_drawableTintMode, -1), null));
        }
        int f = u.m21260f(C0042R.styleable.AppCompatTextView_firstBaselineToTopHeight, -1);
        int f2 = u.m21260f(C0042R.styleable.AppCompatTextView_lastBaselineToBottomHeight, -1);
        int f3 = u.m21260f(C0042R.styleable.AppCompatTextView_lineHeight, -1);
        u.m21243w();
        if (f != -1) {
            TextViewCompat.m18821n(this.f1004a, f);
        }
        if (f2 != -1) {
            TextViewCompat.m18820o(this.f1004a, f2);
        }
        if (f3 != -1) {
            TextViewCompat.m18819p(this.f1004a, f3);
        }
    }

    /* renamed from: n */
    void m21563n(WeakReference<TextView> weakReference, Typeface typeface) {
        if (this.f1016m) {
            this.f1015l = typeface;
            TextView textView = weakReference.get();
            if (textView != null) {
                textView.setTypeface(typeface, this.f1013j);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo
    /* renamed from: o */
    public void m21562o(boolean z, int i, int i2, int i3, int i4) {
        if (!AutoSizeableTextView.f3388a) {
            m21574c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public void m21561p() {
        m21575b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public void m21560q(Context context, int i) {
        String o;
        ColorStateList c;
        TintTypedArray t = TintTypedArray.m21246t(context, i, C0042R.styleable.TextAppearance);
        if (t.m21247s(C0042R.styleable.TextAppearance_textAllCaps)) {
            m21559r(t.m21265a(C0042R.styleable.TextAppearance_textAllCaps, false));
        }
        if (Build.VERSION.SDK_INT < 23 && t.m21247s(C0042R.styleable.TextAppearance_android_textColor) && (c = t.m21263c(C0042R.styleable.TextAppearance_android_textColor)) != null) {
            this.f1004a.setTextColor(c);
        }
        if (t.m21247s(C0042R.styleable.TextAppearance_android_textSize) && t.m21260f(C0042R.styleable.TextAppearance_android_textSize, -1) == 0) {
            this.f1004a.setTextSize(0, 0.0f);
        }
        m21577B(context, t);
        if (Build.VERSION.SDK_INT >= 26 && t.m21247s(C0042R.styleable.TextAppearance_fontVariationSettings) && (o = t.m21251o(C0042R.styleable.TextAppearance_fontVariationSettings)) != null) {
            this.f1004a.setFontVariationSettings(o);
        }
        t.m21243w();
        Typeface typeface = this.f1015l;
        if (typeface != null) {
            this.f1004a.setTypeface(typeface, this.f1013j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public void m21559r(boolean z) {
        this.f1004a.setAllCaps(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public void m21558s(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        this.f1012i.m21524u(i, i2, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public void m21557t(@NonNull int[] iArr, int i) throws IllegalArgumentException {
        this.f1012i.m21523v(iArr, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public void m21556u(int i) {
        this.f1012i.m21522w(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v */
    public void m21555v(@Nullable ColorStateList colorStateList) {
        if (this.f1011h == null) {
            this.f1011h = new TintInfo();
        }
        TintInfo tintInfo = this.f1011h;
        tintInfo.f1351a = colorStateList;
        tintInfo.f1354d = colorStateList != null;
        m21552y();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public void m21554w(@Nullable PorterDuff.Mode mode) {
        if (this.f1011h == null) {
            this.f1011h = new TintInfo();
        }
        TintInfo tintInfo = this.f1011h;
        tintInfo.f1352b = mode;
        tintInfo.f1353c = mode != null;
        m21552y();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo
    /* renamed from: z */
    public void m21551z(int i, float f) {
        if (!AutoSizeableTextView.f3388a && !m21565l()) {
            m21578A(i, f);
        }
    }
}
