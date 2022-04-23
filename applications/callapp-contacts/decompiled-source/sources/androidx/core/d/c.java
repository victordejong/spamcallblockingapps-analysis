package androidx.core.d;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/core/d/c.class */
public final class c implements Spannable {

    /* renamed from: b  reason: collision with root package name */
    private static final Object f1866b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static Executor f1867c;

    /* renamed from: a  reason: collision with root package name */
    public final a f1868a;

    /* renamed from: d  reason: collision with root package name */
    private final Spannable f1869d;
    private final int[] e;
    private final PrecomputedText f;

    /* loaded from: classes-dex2jar.jar:androidx/core/d/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final TextPaint f1870a;

        /* renamed from: b  reason: collision with root package name */
        public final TextDirectionHeuristic f1871b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1872c;

        /* renamed from: d  reason: collision with root package name */
        public final int f1873d;
        final PrecomputedText.Params e;

        /* renamed from: androidx.core.d.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:androidx/core/d/c$a$a.class */
        public static final class C0047a {

            /* renamed from: a  reason: collision with root package name */
            public final TextPaint f1874a;

            /* renamed from: b  reason: collision with root package name */
            public TextDirectionHeuristic f1875b;

            /* renamed from: c  reason: collision with root package name */
            public int f1876c;

            /* renamed from: d  reason: collision with root package name */
            public int f1877d;

            public C0047a(TextPaint textPaint) {
                this.f1874a = textPaint;
                if (Build.VERSION.SDK_INT >= 23) {
                    this.f1876c = 1;
                    this.f1877d = 1;
                } else {
                    this.f1877d = 0;
                    this.f1876c = 0;
                }
                if (Build.VERSION.SDK_INT >= 18) {
                    this.f1875b = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                } else {
                    this.f1875b = null;
                }
            }
        }

        public a(PrecomputedText.Params params) {
            this.f1870a = params.getTextPaint();
            this.f1871b = params.getTextDirection();
            this.f1872c = params.getBreakStrategy();
            this.f1873d = params.getHyphenationFrequency();
            this.e = Build.VERSION.SDK_INT < 29 ? null : params;
        }

        public a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.e = new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(textDirectionHeuristic).build();
            } else {
                this.e = null;
            }
            this.f1870a = textPaint;
            this.f1871b = textDirectionHeuristic;
            this.f1872c = i;
            this.f1873d = i2;
        }

        public final boolean a(a aVar) {
            if ((Build.VERSION.SDK_INT >= 23 && (this.f1872c != aVar.f1872c || this.f1873d != aVar.f1873d)) || this.f1870a.getTextSize() != aVar.f1870a.getTextSize() || this.f1870a.getTextScaleX() != aVar.f1870a.getTextScaleX() || this.f1870a.getTextSkewX() != aVar.f1870a.getTextSkewX()) {
                return false;
            }
            if ((Build.VERSION.SDK_INT >= 21 && (this.f1870a.getLetterSpacing() != aVar.f1870a.getLetterSpacing() || !TextUtils.equals(this.f1870a.getFontFeatureSettings(), aVar.f1870a.getFontFeatureSettings()))) || this.f1870a.getFlags() != aVar.f1870a.getFlags()) {
                return false;
            }
            if (Build.VERSION.SDK_INT >= 24) {
                if (!this.f1870a.getTextLocales().equals(aVar.f1870a.getTextLocales())) {
                    return false;
                }
            } else if (Build.VERSION.SDK_INT >= 17 && !this.f1870a.getTextLocale().equals(aVar.f1870a.getTextLocale())) {
                return false;
            }
            return this.f1870a.getTypeface() == null ? aVar.f1870a.getTypeface() == null : this.f1870a.getTypeface().equals(aVar.f1870a.getTypeface());
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (!a(aVar)) {
                return false;
            }
            return Build.VERSION.SDK_INT < 18 || this.f1871b == aVar.f1871b;
        }

        public final int hashCode() {
            if (Build.VERSION.SDK_INT >= 24) {
                return androidx.core.e.a.a(Float.valueOf(this.f1870a.getTextSize()), Float.valueOf(this.f1870a.getTextScaleX()), Float.valueOf(this.f1870a.getTextSkewX()), Float.valueOf(this.f1870a.getLetterSpacing()), Integer.valueOf(this.f1870a.getFlags()), this.f1870a.getTextLocales(), this.f1870a.getTypeface(), Boolean.valueOf(this.f1870a.isElegantTextHeight()), this.f1871b, Integer.valueOf(this.f1872c), Integer.valueOf(this.f1873d));
            }
            if (Build.VERSION.SDK_INT >= 21) {
                return androidx.core.e.a.a(Float.valueOf(this.f1870a.getTextSize()), Float.valueOf(this.f1870a.getTextScaleX()), Float.valueOf(this.f1870a.getTextSkewX()), Float.valueOf(this.f1870a.getLetterSpacing()), Integer.valueOf(this.f1870a.getFlags()), this.f1870a.getTextLocale(), this.f1870a.getTypeface(), Boolean.valueOf(this.f1870a.isElegantTextHeight()), this.f1871b, Integer.valueOf(this.f1872c), Integer.valueOf(this.f1873d));
            }
            if (Build.VERSION.SDK_INT < 18 && Build.VERSION.SDK_INT < 17) {
                return androidx.core.e.a.a(Float.valueOf(this.f1870a.getTextSize()), Float.valueOf(this.f1870a.getTextScaleX()), Float.valueOf(this.f1870a.getTextSkewX()), Integer.valueOf(this.f1870a.getFlags()), this.f1870a.getTypeface(), this.f1871b, Integer.valueOf(this.f1872c), Integer.valueOf(this.f1873d));
            }
            return androidx.core.e.a.a(Float.valueOf(this.f1870a.getTextSize()), Float.valueOf(this.f1870a.getTextScaleX()), Float.valueOf(this.f1870a.getTextSkewX()), Integer.valueOf(this.f1870a.getFlags()), this.f1870a.getTextLocale(), this.f1870a.getTypeface(), this.f1871b, Integer.valueOf(this.f1872c), Integer.valueOf(this.f1873d));
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("{");
            sb.append("textSize=" + this.f1870a.getTextSize());
            sb.append(", textScaleX=" + this.f1870a.getTextScaleX());
            sb.append(", textSkewX=" + this.f1870a.getTextSkewX());
            if (Build.VERSION.SDK_INT >= 21) {
                sb.append(", letterSpacing=" + this.f1870a.getLetterSpacing());
                sb.append(", elegantTextHeight=" + this.f1870a.isElegantTextHeight());
            }
            if (Build.VERSION.SDK_INT >= 24) {
                sb.append(", textLocale=" + this.f1870a.getTextLocales());
            } else if (Build.VERSION.SDK_INT >= 17) {
                sb.append(", textLocale=" + this.f1870a.getTextLocale());
            }
            sb.append(", typeface=" + this.f1870a.getTypeface());
            if (Build.VERSION.SDK_INT >= 26) {
                sb.append(", variationSettings=" + this.f1870a.getFontVariationSettings());
            }
            sb.append(", textDir=" + this.f1871b);
            sb.append(", breakStrategy=" + this.f1872c);
            sb.append(", hyphenationFrequency=" + this.f1873d);
            sb.append("}");
            return sb.toString();
        }
    }

    private c(PrecomputedText precomputedText, a aVar) {
        this.f1869d = precomputedText;
        this.f1868a = aVar;
        this.e = null;
        this.f = Build.VERSION.SDK_INT < 29 ? null : precomputedText;
    }

    private c(CharSequence charSequence, a aVar, int[] iArr) {
        this.f1869d = new SpannableString(charSequence);
        this.f1868a = aVar;
        this.e = iArr;
        this.f = null;
    }

    public final PrecomputedText a() {
        Spannable spannable = this.f1869d;
        if (spannable instanceof PrecomputedText) {
            return (PrecomputedText) spannable;
        }
        return null;
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i) {
        return this.f1869d.charAt(i);
    }

    @Override // android.text.Spanned
    public final int getSpanEnd(Object obj) {
        return this.f1869d.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanFlags(Object obj) {
        return this.f1869d.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanStart(Object obj) {
        return this.f1869d.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public final <T> T[] getSpans(int i, int i2, Class<T> cls) {
        return Build.VERSION.SDK_INT >= 29 ? (T[]) this.f.getSpans(i, i2, cls) : (T[]) this.f1869d.getSpans(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.f1869d.length();
    }

    @Override // android.text.Spanned
    public final int nextSpanTransition(int i, int i2, Class cls) {
        return this.f1869d.nextSpanTransition(i, i2, cls);
    }

    @Override // android.text.Spannable
    public final void removeSpan(Object obj) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        } else if (Build.VERSION.SDK_INT >= 29) {
            this.f.removeSpan(obj);
        } else {
            this.f1869d.removeSpan(obj);
        }
    }

    @Override // android.text.Spannable
    public final void setSpan(Object obj, int i, int i2, int i3) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        } else if (Build.VERSION.SDK_INT >= 29) {
            this.f.setSpan(obj, i, i2, i3);
        } else {
            this.f1869d.setSpan(obj, i, i2, i3);
        }
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i, int i2) {
        return this.f1869d.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return this.f1869d.toString();
    }
}
