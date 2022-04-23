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
import androidx.appcompat.a;
import androidx.core.content.res.f;
import androidx.core.view.v;
import androidx.core.widget.b;
import androidx.core.widget.h;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/l.class */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    final m f1108a;

    /* renamed from: c  reason: collision with root package name */
    Typeface f1110c;

    /* renamed from: d  reason: collision with root package name */
    boolean f1111d;
    private final TextView e;
    private z f;
    private z g;
    private z h;
    private z i;
    private z j;
    private z k;
    private z l;

    /* renamed from: b  reason: collision with root package name */
    int f1109b = 0;
    private int m = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(TextView textView) {
        this.e = textView;
        this.f1108a = new m(textView);
    }

    private static z a(Context context, f fVar, int i) {
        ColorStateList c2 = fVar.c(context, i);
        if (c2 == null) {
            return null;
        }
        z zVar = new z();
        zVar.f1155d = true;
        zVar.f1152a = c2;
        return zVar;
    }

    private void a(Context context, ab abVar) {
        String d2;
        this.f1109b = abVar.a(a.j.TextAppearance_android_textStyle, this.f1109b);
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 28) {
            int a2 = abVar.a(a.j.TextAppearance_android_textFontWeight, -1);
            this.m = a2;
            if (a2 != -1) {
                this.f1109b = (this.f1109b & 2) | 0;
            }
        }
        if (abVar.g(a.j.TextAppearance_android_fontFamily) || abVar.g(a.j.TextAppearance_fontFamily)) {
            this.f1110c = null;
            int i = abVar.g(a.j.TextAppearance_fontFamily) ? a.j.TextAppearance_fontFamily : a.j.TextAppearance_android_fontFamily;
            final int i2 = this.m;
            final int i3 = this.f1109b;
            if (!context.isRestricted()) {
                final WeakReference weakReference = new WeakReference(this.e);
                try {
                    Typeface a3 = abVar.a(i, this.f1109b, new f.a() { // from class: androidx.appcompat.widget.l.1
                        @Override // androidx.core.content.res.f.a
                        public final void a(int i4) {
                        }

                        @Override // androidx.core.content.res.f.a
                        public final void a(Typeface typeface) {
                            Typeface typeface2 = typeface;
                            if (Build.VERSION.SDK_INT >= 28) {
                                int i4 = i2;
                                typeface2 = typeface;
                                if (i4 != -1) {
                                    typeface2 = Typeface.create(typeface, i4, (i3 & 2) != 0);
                                }
                            }
                            l lVar = l.this;
                            WeakReference weakReference2 = weakReference;
                            if (lVar.f1111d) {
                                lVar.f1110c = typeface2;
                                TextView textView = (TextView) weakReference2.get();
                                if (textView != null) {
                                    textView.setTypeface(typeface2, lVar.f1109b);
                                }
                            }
                        }
                    });
                    if (a3 != null) {
                        if (Build.VERSION.SDK_INT < 28 || this.m == -1) {
                            this.f1110c = a3;
                        } else {
                            this.f1110c = Typeface.create(Typeface.create(a3, 0), this.m, (this.f1109b & 2) != 0);
                        }
                    }
                    this.f1111d = this.f1110c == null;
                } catch (Resources.NotFoundException | UnsupportedOperationException e) {
                }
            }
            if (this.f1110c == null && (d2 = abVar.d(i)) != null) {
                if (Build.VERSION.SDK_INT < 28 || this.m == -1) {
                    this.f1110c = Typeface.create(d2, this.f1109b);
                    return;
                }
                Typeface create = Typeface.create(d2, 0);
                int i4 = this.m;
                if ((this.f1109b & 2) != 0) {
                    z = true;
                }
                this.f1110c = Typeface.create(create, i4, z);
            }
        } else if (abVar.g(a.j.TextAppearance_android_typeface)) {
            this.f1111d = false;
            int a4 = abVar.a(a.j.TextAppearance_android_typeface, 1);
            if (a4 == 1) {
                this.f1110c = Typeface.SANS_SERIF;
            } else if (a4 == 2) {
                this.f1110c = Typeface.SERIF;
            } else if (a4 == 3) {
                this.f1110c = Typeface.MONOSPACE;
            }
        }
    }

    private void a(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (Build.VERSION.SDK_INT >= 17 && (drawable5 != null || drawable6 != null)) {
            Drawable[] compoundDrawablesRelative = this.e.getCompoundDrawablesRelative();
            TextView textView = this.e;
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
                Drawable[] compoundDrawablesRelative2 = this.e.getCompoundDrawablesRelative();
                if (!(compoundDrawablesRelative2[0] == null && compoundDrawablesRelative2[2] == null)) {
                    TextView textView2 = this.e;
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
            Drawable[] compoundDrawables = this.e.getCompoundDrawables();
            TextView textView3 = this.e;
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

    private void a(Drawable drawable, z zVar) {
        if (drawable != null && zVar != null) {
            f.a(drawable, zVar, this.e.getDrawableState());
        }
    }

    private void b(int i, float f) {
        this.f1108a.a(i, f);
    }

    private void c() {
        z zVar = this.l;
        this.f = zVar;
        this.g = zVar;
        this.h = zVar;
        this.i = zVar;
        this.j = zVar;
        this.k = zVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        if (!(this.f == null && this.g == null && this.h == null && this.i == null)) {
            Drawable[] compoundDrawables = this.e.getCompoundDrawables();
            a(compoundDrawables[0], this.f);
            a(compoundDrawables[1], this.g);
            a(compoundDrawables[2], this.h);
            a(compoundDrawables[3], this.i);
        }
        if (Build.VERSION.SDK_INT < 17) {
            return;
        }
        if (this.j != null || this.k != null) {
            Drawable[] compoundDrawablesRelative = this.e.getCompoundDrawablesRelative();
            a(compoundDrawablesRelative[0], this.j);
            a(compoundDrawablesRelative[2], this.k);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        this.f1108a.a(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, float f) {
        if (!b.f2058d && !this.f1108a.b()) {
            b(i, f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        this.f1108a.a(i, i2, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Context context, int i) {
        String d2;
        ColorStateList e;
        ab a2 = ab.a(context, i, a.j.TextAppearance);
        if (a2.g(a.j.TextAppearance_textAllCaps)) {
            a(a2.a(a.j.TextAppearance_textAllCaps, false));
        }
        if (Build.VERSION.SDK_INT < 23 && a2.g(a.j.TextAppearance_android_textColor) && (e = a2.e(a.j.TextAppearance_android_textColor)) != null) {
            this.e.setTextColor(e);
        }
        if (a2.g(a.j.TextAppearance_android_textSize) && a2.e(a.j.TextAppearance_android_textSize, -1) == 0) {
            this.e.setTextSize(0, BitmapDescriptorFactory.HUE_RED);
        }
        a(context, a2);
        if (Build.VERSION.SDK_INT >= 26 && a2.g(a.j.TextAppearance_fontVariationSettings) && (d2 = a2.d(a.j.TextAppearance_fontVariationSettings)) != null) {
            this.e.setFontVariationSettings(d2);
        }
        a2.f1044a.recycle();
        Typeface typeface = this.f1110c;
        if (typeface != null) {
            this.e.setTypeface(typeface, this.f1109b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(ColorStateList colorStateList) {
        if (this.l == null) {
            this.l = new z();
        }
        this.l.f1152a = colorStateList;
        this.l.f1155d = colorStateList != null;
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(PorterDuff.Mode mode) {
        if (this.l == null) {
            this.l = new z();
        }
        this.l.f1153b = mode;
        this.l.f1154c = mode != null;
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(AttributeSet attributeSet, int i) {
        String str;
        String str2;
        boolean z;
        ColorStateList colorStateList;
        boolean z2;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        Context context = this.e.getContext();
        f b2 = f.b();
        ab a2 = ab.a(context, attributeSet, a.j.AppCompatTextHelper, i, 0);
        TextView textView = this.e;
        v.a(textView, textView.getContext(), a.j.AppCompatTextHelper, attributeSet, a2.f1044a, i);
        int g = a2.g(a.j.AppCompatTextHelper_android_textAppearance, -1);
        if (a2.g(a.j.AppCompatTextHelper_android_drawableLeft)) {
            this.f = a(context, b2, a2.g(a.j.AppCompatTextHelper_android_drawableLeft, 0));
        }
        if (a2.g(a.j.AppCompatTextHelper_android_drawableTop)) {
            this.g = a(context, b2, a2.g(a.j.AppCompatTextHelper_android_drawableTop, 0));
        }
        if (a2.g(a.j.AppCompatTextHelper_android_drawableRight)) {
            this.h = a(context, b2, a2.g(a.j.AppCompatTextHelper_android_drawableRight, 0));
        }
        if (a2.g(a.j.AppCompatTextHelper_android_drawableBottom)) {
            this.i = a(context, b2, a2.g(a.j.AppCompatTextHelper_android_drawableBottom, 0));
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (a2.g(a.j.AppCompatTextHelper_android_drawableStart)) {
                this.j = a(context, b2, a2.g(a.j.AppCompatTextHelper_android_drawableStart, 0));
            }
            if (a2.g(a.j.AppCompatTextHelper_android_drawableEnd)) {
                this.k = a(context, b2, a2.g(a.j.AppCompatTextHelper_android_drawableEnd, 0));
            }
        }
        a2.f1044a.recycle();
        boolean z3 = this.e.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (g != -1) {
            ab a3 = ab.a(context, g, a.j.TextAppearance);
            if (z3 || !a3.g(a.j.TextAppearance_textAllCaps)) {
                z = false;
                z2 = false;
            } else {
                z = a3.a(a.j.TextAppearance_textAllCaps, false);
                z2 = true;
            }
            a(context, a3);
            if (Build.VERSION.SDK_INT < 23) {
                colorStateList3 = a3.g(a.j.TextAppearance_android_textColor) ? a3.e(a.j.TextAppearance_android_textColor) : null;
                colorStateList2 = a3.g(a.j.TextAppearance_android_textColorHint) ? a3.e(a.j.TextAppearance_android_textColorHint) : null;
                colorStateList = a3.g(a.j.TextAppearance_android_textColorLink) ? a3.e(a.j.TextAppearance_android_textColorLink) : null;
            } else {
                colorStateList2 = null;
                colorStateList = null;
                colorStateList3 = null;
            }
            str2 = a3.g(a.j.TextAppearance_textLocale) ? a3.d(a.j.TextAppearance_textLocale) : null;
            str = (Build.VERSION.SDK_INT < 26 || !a3.g(a.j.TextAppearance_fontVariationSettings)) ? null : a3.d(a.j.TextAppearance_fontVariationSettings);
            a3.f1044a.recycle();
        } else {
            colorStateList2 = null;
            str = null;
            z = false;
            colorStateList = null;
            str2 = null;
            z2 = false;
            colorStateList3 = null;
        }
        ab a4 = ab.a(context, attributeSet, a.j.TextAppearance, i, 0);
        boolean z4 = z;
        boolean z5 = z2;
        if (!z3) {
            z4 = z;
            z5 = z2;
            if (a4.g(a.j.TextAppearance_textAllCaps)) {
                z4 = a4.a(a.j.TextAppearance_textAllCaps, false);
                z5 = true;
            }
        }
        ColorStateList colorStateList4 = colorStateList2;
        ColorStateList colorStateList5 = colorStateList;
        ColorStateList colorStateList6 = colorStateList3;
        if (Build.VERSION.SDK_INT < 23) {
            if (a4.g(a.j.TextAppearance_android_textColor)) {
                colorStateList3 = a4.e(a.j.TextAppearance_android_textColor);
            }
            if (a4.g(a.j.TextAppearance_android_textColorHint)) {
                colorStateList2 = a4.e(a.j.TextAppearance_android_textColorHint);
            }
            colorStateList4 = colorStateList2;
            colorStateList5 = colorStateList;
            colorStateList6 = colorStateList3;
            if (a4.g(a.j.TextAppearance_android_textColorLink)) {
                colorStateList5 = a4.e(a.j.TextAppearance_android_textColorLink);
                colorStateList6 = colorStateList3;
                colorStateList4 = colorStateList2;
            }
        }
        if (a4.g(a.j.TextAppearance_textLocale)) {
            str2 = a4.d(a.j.TextAppearance_textLocale);
        }
        String str3 = str;
        if (Build.VERSION.SDK_INT >= 26) {
            str3 = str;
            if (a4.g(a.j.TextAppearance_fontVariationSettings)) {
                str3 = a4.d(a.j.TextAppearance_fontVariationSettings);
            }
        }
        if (Build.VERSION.SDK_INT >= 28 && a4.g(a.j.TextAppearance_android_textSize) && a4.e(a.j.TextAppearance_android_textSize, -1) == 0) {
            this.e.setTextSize(0, BitmapDescriptorFactory.HUE_RED);
        }
        a(context, a4);
        a4.f1044a.recycle();
        if (colorStateList6 != null) {
            this.e.setTextColor(colorStateList6);
        }
        if (colorStateList4 != null) {
            this.e.setHintTextColor(colorStateList4);
        }
        if (colorStateList5 != null) {
            this.e.setLinkTextColor(colorStateList5);
        }
        if (!z3 && z5) {
            a(z4);
        }
        Typeface typeface = this.f1110c;
        if (typeface != null) {
            if (this.m == -1) {
                this.e.setTypeface(typeface, this.f1109b);
            } else {
                this.e.setTypeface(typeface);
            }
        }
        if (str3 != null) {
            this.e.setFontVariationSettings(str3);
        }
        if (str2 != null) {
            if (Build.VERSION.SDK_INT >= 24) {
                this.e.setTextLocales(LocaleList.forLanguageTags(str2));
            } else if (Build.VERSION.SDK_INT >= 21) {
                this.e.setTextLocale(Locale.forLanguageTag(str2.substring(0, str2.indexOf(44))));
            }
        }
        this.f1108a.a(attributeSet, i);
        if (b.f2058d && this.f1108a.f1116a != 0) {
            int[] iArr = this.f1108a.e;
            if (iArr.length > 0) {
                if (this.e.getAutoSizeStepGranularity() != -1.0f) {
                    this.e.setAutoSizeTextTypeUniformWithConfiguration(Math.round(this.f1108a.f1118c), Math.round(this.f1108a.f1119d), Math.round(this.f1108a.f1117b), 0);
                } else {
                    this.e.setAutoSizeTextTypeUniformWithPresetSizes(iArr, 0);
                }
            }
        }
        ab a5 = ab.a(context, attributeSet, a.j.AppCompatTextView);
        int g2 = a5.g(a.j.AppCompatTextView_drawableLeftCompat, -1);
        Drawable a6 = g2 != -1 ? b2.a(context, g2) : null;
        int g3 = a5.g(a.j.AppCompatTextView_drawableTopCompat, -1);
        Drawable a7 = g3 != -1 ? b2.a(context, g3) : null;
        int g4 = a5.g(a.j.AppCompatTextView_drawableRightCompat, -1);
        Drawable a8 = g4 != -1 ? b2.a(context, g4) : null;
        int g5 = a5.g(a.j.AppCompatTextView_drawableBottomCompat, -1);
        Drawable a9 = g5 != -1 ? b2.a(context, g5) : null;
        int g6 = a5.g(a.j.AppCompatTextView_drawableStartCompat, -1);
        Drawable a10 = g6 != -1 ? b2.a(context, g6) : null;
        int g7 = a5.g(a.j.AppCompatTextView_drawableEndCompat, -1);
        a(a6, a7, a8, a9, a10, g7 != -1 ? b2.a(context, g7) : null);
        if (a5.g(a.j.AppCompatTextView_drawableTint)) {
            h.a(this.e, a5.e(a.j.AppCompatTextView_drawableTint));
        }
        if (a5.g(a.j.AppCompatTextView_drawableTintMode)) {
            h.a(this.e, p.a(a5.a(a.j.AppCompatTextView_drawableTintMode, -1), null));
        }
        int e = a5.e(a.j.AppCompatTextView_firstBaselineToTopHeight, -1);
        int e2 = a5.e(a.j.AppCompatTextView_lastBaselineToBottomHeight, -1);
        int e3 = a5.e(a.j.AppCompatTextView_lineHeight, -1);
        a5.f1044a.recycle();
        if (e != -1) {
            h.b(this.e, e);
        }
        if (e2 != -1) {
            h.c(this.e, e2);
        }
        if (e3 != -1) {
            h.d(this.e, e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z) {
        this.e.setAllCaps(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int[] iArr, int i) throws IllegalArgumentException {
        this.f1108a.a(iArr, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        if (!b.f2058d) {
            this.f1108a.a();
        }
    }
}
