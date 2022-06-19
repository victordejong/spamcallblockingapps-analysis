package androidx.core.p035d;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import androidx.core.p036e.C0827a;
import java.util.concurrent.Executor;
/* renamed from: androidx.core.d.c */
/* loaded from: classes-dex2jar.jar:androidx/core/d/c.class */
public final class C0815c implements Spannable {

    /* renamed from: b */
    private static final Object f3528b = new Object();

    /* renamed from: c */
    private static Executor f3529c;

    /* renamed from: a */
    public final C0816a f3530a;

    /* renamed from: d */
    private final Spannable f3531d;

    /* renamed from: e */
    private final int[] f3532e;

    /* renamed from: f */
    private final PrecomputedText f3533f;

    /* renamed from: androidx.core.d.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/d/c$a.class */
    public static final class C0816a {

        /* renamed from: a */
        public final TextPaint f3534a;

        /* renamed from: b */
        public final TextDirectionHeuristic f3535b;

        /* renamed from: c */
        public final int f3536c;

        /* renamed from: d */
        public final int f3537d;

        /* renamed from: e */
        final PrecomputedText.Params f3538e;

        /* renamed from: androidx.core.d.c$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/core/d/c$a$a.class */
        public static final class C0817a {

            /* renamed from: a */
            public final TextPaint f3539a;

            /* renamed from: b */
            public TextDirectionHeuristic f3540b;

            /* renamed from: c */
            public int f3541c;

            /* renamed from: d */
            public int f3542d;

            public C0817a(TextPaint textPaint) {
                this.f3539a = textPaint;
                if (Build.VERSION.SDK_INT >= 23) {
                    this.f3541c = 1;
                    this.f3542d = 1;
                } else {
                    this.f3542d = 0;
                    this.f3541c = 0;
                }
                if (Build.VERSION.SDK_INT >= 18) {
                    this.f3540b = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                } else {
                    this.f3540b = null;
                }
            }
        }

        public C0816a(PrecomputedText.Params params) {
            this.f3534a = params.getTextPaint();
            this.f3535b = params.getTextDirection();
            this.f3536c = params.getBreakStrategy();
            this.f3537d = params.getHyphenationFrequency();
            this.f3538e = Build.VERSION.SDK_INT < 29 ? null : params;
        }

        public C0816a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f3538e = new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(textDirectionHeuristic).build();
            } else {
                this.f3538e = null;
            }
            this.f3534a = textPaint;
            this.f3535b = textDirectionHeuristic;
            this.f3536c = i;
            this.f3537d = i2;
        }

        /* renamed from: a */
        public final boolean m44421a(C0816a c0816a) {
            if ((Build.VERSION.SDK_INT < 23 || (this.f3536c == c0816a.f3536c && this.f3537d == c0816a.f3537d)) && this.f3534a.getTextSize() == c0816a.f3534a.getTextSize() && this.f3534a.getTextScaleX() == c0816a.f3534a.getTextScaleX() && this.f3534a.getTextSkewX() == c0816a.f3534a.getTextSkewX()) {
                if ((Build.VERSION.SDK_INT >= 21 && (this.f3534a.getLetterSpacing() != c0816a.f3534a.getLetterSpacing() || !TextUtils.equals(this.f3534a.getFontFeatureSettings(), c0816a.f3534a.getFontFeatureSettings()))) || this.f3534a.getFlags() != c0816a.f3534a.getFlags()) {
                    return false;
                }
                if (Build.VERSION.SDK_INT >= 24) {
                    if (!this.f3534a.getTextLocales().equals(c0816a.f3534a.getTextLocales())) {
                        return false;
                    }
                } else if (Build.VERSION.SDK_INT >= 17 && !this.f3534a.getTextLocale().equals(c0816a.f3534a.getTextLocale())) {
                    return false;
                }
                return this.f3534a.getTypeface() == null ? c0816a.f3534a.getTypeface() == null : this.f3534a.getTypeface().equals(c0816a.f3534a.getTypeface());
            }
            return false;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0816a)) {
                return false;
            }
            C0816a c0816a = (C0816a) obj;
            if (!m44421a(c0816a)) {
                return false;
            }
            return Build.VERSION.SDK_INT < 18 || this.f3535b == c0816a.f3535b;
        }

        public final int hashCode() {
            if (Build.VERSION.SDK_INT >= 24) {
                return C0827a.m44413a(Float.valueOf(this.f3534a.getTextSize()), Float.valueOf(this.f3534a.getTextScaleX()), Float.valueOf(this.f3534a.getTextSkewX()), Float.valueOf(this.f3534a.getLetterSpacing()), Integer.valueOf(this.f3534a.getFlags()), this.f3534a.getTextLocales(), this.f3534a.getTypeface(), Boolean.valueOf(this.f3534a.isElegantTextHeight()), this.f3535b, Integer.valueOf(this.f3536c), Integer.valueOf(this.f3537d));
            }
            if (Build.VERSION.SDK_INT >= 21) {
                return C0827a.m44413a(Float.valueOf(this.f3534a.getTextSize()), Float.valueOf(this.f3534a.getTextScaleX()), Float.valueOf(this.f3534a.getTextSkewX()), Float.valueOf(this.f3534a.getLetterSpacing()), Integer.valueOf(this.f3534a.getFlags()), this.f3534a.getTextLocale(), this.f3534a.getTypeface(), Boolean.valueOf(this.f3534a.isElegantTextHeight()), this.f3535b, Integer.valueOf(this.f3536c), Integer.valueOf(this.f3537d));
            }
            if (Build.VERSION.SDK_INT < 18 && Build.VERSION.SDK_INT < 17) {
                return C0827a.m44413a(Float.valueOf(this.f3534a.getTextSize()), Float.valueOf(this.f3534a.getTextScaleX()), Float.valueOf(this.f3534a.getTextSkewX()), Integer.valueOf(this.f3534a.getFlags()), this.f3534a.getTypeface(), this.f3535b, Integer.valueOf(this.f3536c), Integer.valueOf(this.f3537d));
            }
            return C0827a.m44413a(Float.valueOf(this.f3534a.getTextSize()), Float.valueOf(this.f3534a.getTextScaleX()), Float.valueOf(this.f3534a.getTextSkewX()), Integer.valueOf(this.f3534a.getFlags()), this.f3534a.getTextLocale(), this.f3534a.getTypeface(), this.f3535b, Integer.valueOf(this.f3536c), Integer.valueOf(this.f3537d));
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("{");
            sb.append("textSize=" + this.f3534a.getTextSize());
            sb.append(", textScaleX=" + this.f3534a.getTextScaleX());
            sb.append(", textSkewX=" + this.f3534a.getTextSkewX());
            if (Build.VERSION.SDK_INT >= 21) {
                sb.append(", letterSpacing=" + this.f3534a.getLetterSpacing());
                sb.append(", elegantTextHeight=" + this.f3534a.isElegantTextHeight());
            }
            if (Build.VERSION.SDK_INT >= 24) {
                sb.append(", textLocale=" + this.f3534a.getTextLocales());
            } else if (Build.VERSION.SDK_INT >= 17) {
                sb.append(", textLocale=" + this.f3534a.getTextLocale());
            }
            sb.append(", typeface=" + this.f3534a.getTypeface());
            if (Build.VERSION.SDK_INT >= 26) {
                sb.append(", variationSettings=" + this.f3534a.getFontVariationSettings());
            }
            sb.append(", textDir=" + this.f3535b);
            sb.append(", breakStrategy=" + this.f3536c);
            sb.append(", hyphenationFrequency=" + this.f3537d);
            sb.append("}");
            return sb.toString();
        }
    }

    private C0815c(PrecomputedText precomputedText, C0816a c0816a) {
        this.f3531d = precomputedText;
        this.f3530a = c0816a;
        this.f3532e = null;
        this.f3533f = Build.VERSION.SDK_INT < 29 ? null : precomputedText;
    }

    private C0815c(CharSequence charSequence, C0816a c0816a, int[] iArr) {
        this.f3531d = new SpannableString(charSequence);
        this.f3530a = c0816a;
        this.f3532e = iArr;
        this.f3533f = null;
    }

    /* renamed from: a */
    public final PrecomputedText m44422a() {
        Spannable spannable = this.f3531d;
        if (spannable instanceof PrecomputedText) {
            return (PrecomputedText) spannable;
        }
        return null;
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i) {
        return this.f3531d.charAt(i);
    }

    @Override // android.text.Spanned
    public final int getSpanEnd(Object obj) {
        return this.f3531d.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanFlags(Object obj) {
        return this.f3531d.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanStart(Object obj) {
        return this.f3531d.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public final <T> T[] getSpans(int i, int i2, Class<T> cls) {
        return Build.VERSION.SDK_INT >= 29 ? (T[]) this.f3533f.getSpans(i, i2, cls) : (T[]) this.f3531d.getSpans(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.f3531d.length();
    }

    @Override // android.text.Spanned
    public final int nextSpanTransition(int i, int i2, Class cls) {
        return this.f3531d.nextSpanTransition(i, i2, cls);
    }

    @Override // android.text.Spannable
    public final void removeSpan(Object obj) {
        if (!(obj instanceof MetricAffectingSpan)) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f3533f.removeSpan(obj);
                return;
            } else {
                this.f3531d.removeSpan(obj);
                return;
            }
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
    }

    @Override // android.text.Spannable
    public final void setSpan(Object obj, int i, int i2, int i3) {
        if (!(obj instanceof MetricAffectingSpan)) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f3533f.setSpan(obj, i, i2, i3);
                return;
            } else {
                this.f3531d.setSpan(obj, i, i2, i3);
                return;
            }
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i, int i2) {
        return this.f3531d.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return this.f3531d.toString();
    }
}
