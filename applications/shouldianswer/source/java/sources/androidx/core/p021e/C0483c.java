package androidx.core.p021e;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import androidx.core.p022f.C0497c;
import java.util.concurrent.Executor;
/* renamed from: androidx.core.e.c */
/* loaded from: classes-dex2jar.jar:androidx/core/e/c.class */
public class C0483c implements Spannable {

    /* renamed from: a */
    private static final Object f1775a = new Object();

    /* renamed from: b */
    private static Executor f1776b = null;

    /* renamed from: c */
    private final Spannable f1777c;

    /* renamed from: d */
    private final C0484a f1778d;

    /* renamed from: androidx.core.e.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/c$a.class */
    public static final class C0484a {

        /* renamed from: a */
        final PrecomputedText.Params f1779a = null;

        /* renamed from: b */
        private final TextPaint f1780b;

        /* renamed from: c */
        private final TextDirectionHeuristic f1781c;

        /* renamed from: d */
        private final int f1782d;

        /* renamed from: e */
        private final int f1783e;

        /* renamed from: androidx.core.e.c$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/core/e/c$a$a.class */
        public static class C0485a {

            /* renamed from: a */
            private final TextPaint f1784a;

            /* renamed from: b */
            private TextDirectionHeuristic f1785b;

            /* renamed from: c */
            private int f1786c;

            /* renamed from: d */
            private int f1787d;

            public C0485a(TextPaint textPaint) {
                this.f1784a = textPaint;
                if (Build.VERSION.SDK_INT >= 23) {
                    this.f1786c = 1;
                    this.f1787d = 1;
                } else {
                    this.f1787d = 0;
                    this.f1786c = 0;
                }
                if (Build.VERSION.SDK_INT >= 18) {
                    this.f1785b = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                } else {
                    this.f1785b = null;
                }
            }

            /* renamed from: a */
            public C0485a m6481a(int i) {
                this.f1786c = i;
                return this;
            }

            /* renamed from: a */
            public C0485a m6480a(TextDirectionHeuristic textDirectionHeuristic) {
                this.f1785b = textDirectionHeuristic;
                return this;
            }

            /* renamed from: a */
            public C0484a m6482a() {
                return new C0484a(this.f1784a, this.f1785b, this.f1786c, this.f1787d);
            }

            /* renamed from: b */
            public C0485a m6479b(int i) {
                this.f1787d = i;
                return this;
            }
        }

        public C0484a(PrecomputedText.Params params) {
            this.f1780b = params.getTextPaint();
            this.f1781c = params.getTextDirection();
            this.f1782d = params.getBreakStrategy();
            this.f1783e = params.getHyphenationFrequency();
        }

        C0484a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            this.f1780b = textPaint;
            this.f1781c = textDirectionHeuristic;
            this.f1782d = i;
            this.f1783e = i2;
        }

        /* renamed from: a */
        public TextPaint m6487a() {
            return this.f1780b;
        }

        /* renamed from: a */
        public boolean m6486a(C0484a c0484a) {
            PrecomputedText.Params params = this.f1779a;
            if (params != null) {
                return params.equals(c0484a.f1779a);
            }
            if ((Build.VERSION.SDK_INT >= 23 && (this.f1782d != c0484a.m6484c() || this.f1783e != c0484a.m6483d())) || this.f1780b.getTextSize() != c0484a.m6487a().getTextSize() || this.f1780b.getTextScaleX() != c0484a.m6487a().getTextScaleX() || this.f1780b.getTextSkewX() != c0484a.m6487a().getTextSkewX()) {
                return false;
            }
            if ((Build.VERSION.SDK_INT >= 21 && (this.f1780b.getLetterSpacing() != c0484a.m6487a().getLetterSpacing() || !TextUtils.equals(this.f1780b.getFontFeatureSettings(), c0484a.m6487a().getFontFeatureSettings()))) || this.f1780b.getFlags() != c0484a.m6487a().getFlags()) {
                return false;
            }
            if (Build.VERSION.SDK_INT >= 24) {
                if (!this.f1780b.getTextLocales().equals(c0484a.m6487a().getTextLocales())) {
                    return false;
                }
            } else if (Build.VERSION.SDK_INT >= 17 && !this.f1780b.getTextLocale().equals(c0484a.m6487a().getTextLocale())) {
                return false;
            }
            return this.f1780b.getTypeface() == null ? c0484a.m6487a().getTypeface() == null : this.f1780b.getTypeface().equals(c0484a.m6487a().getTypeface());
        }

        /* renamed from: b */
        public TextDirectionHeuristic m6485b() {
            return this.f1781c;
        }

        /* renamed from: c */
        public int m6484c() {
            return this.f1782d;
        }

        /* renamed from: d */
        public int m6483d() {
            return this.f1783e;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0484a)) {
                return false;
            }
            C0484a c0484a = (C0484a) obj;
            if (!m6486a(c0484a)) {
                return false;
            }
            return Build.VERSION.SDK_INT < 18 || this.f1781c == c0484a.m6485b();
        }

        public int hashCode() {
            if (Build.VERSION.SDK_INT >= 24) {
                return C0497c.m6467a(Float.valueOf(this.f1780b.getTextSize()), Float.valueOf(this.f1780b.getTextScaleX()), Float.valueOf(this.f1780b.getTextSkewX()), Float.valueOf(this.f1780b.getLetterSpacing()), Integer.valueOf(this.f1780b.getFlags()), this.f1780b.getTextLocales(), this.f1780b.getTypeface(), Boolean.valueOf(this.f1780b.isElegantTextHeight()), this.f1781c, Integer.valueOf(this.f1782d), Integer.valueOf(this.f1783e));
            }
            if (Build.VERSION.SDK_INT >= 21) {
                return C0497c.m6467a(Float.valueOf(this.f1780b.getTextSize()), Float.valueOf(this.f1780b.getTextScaleX()), Float.valueOf(this.f1780b.getTextSkewX()), Float.valueOf(this.f1780b.getLetterSpacing()), Integer.valueOf(this.f1780b.getFlags()), this.f1780b.getTextLocale(), this.f1780b.getTypeface(), Boolean.valueOf(this.f1780b.isElegantTextHeight()), this.f1781c, Integer.valueOf(this.f1782d), Integer.valueOf(this.f1783e));
            }
            if (Build.VERSION.SDK_INT < 18 && Build.VERSION.SDK_INT < 17) {
                return C0497c.m6467a(Float.valueOf(this.f1780b.getTextSize()), Float.valueOf(this.f1780b.getTextScaleX()), Float.valueOf(this.f1780b.getTextSkewX()), Integer.valueOf(this.f1780b.getFlags()), this.f1780b.getTypeface(), this.f1781c, Integer.valueOf(this.f1782d), Integer.valueOf(this.f1783e));
            }
            return C0497c.m6467a(Float.valueOf(this.f1780b.getTextSize()), Float.valueOf(this.f1780b.getTextScaleX()), Float.valueOf(this.f1780b.getTextSkewX()), Integer.valueOf(this.f1780b.getFlags()), this.f1780b.getTextLocale(), this.f1780b.getTypeface(), this.f1781c, Integer.valueOf(this.f1782d), Integer.valueOf(this.f1783e));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            sb.append("textSize=" + this.f1780b.getTextSize());
            sb.append(", textScaleX=" + this.f1780b.getTextScaleX());
            sb.append(", textSkewX=" + this.f1780b.getTextSkewX());
            if (Build.VERSION.SDK_INT >= 21) {
                sb.append(", letterSpacing=" + this.f1780b.getLetterSpacing());
                sb.append(", elegantTextHeight=" + this.f1780b.isElegantTextHeight());
            }
            if (Build.VERSION.SDK_INT >= 24) {
                sb.append(", textLocale=" + this.f1780b.getTextLocales());
            } else if (Build.VERSION.SDK_INT >= 17) {
                sb.append(", textLocale=" + this.f1780b.getTextLocale());
            }
            sb.append(", typeface=" + this.f1780b.getTypeface());
            if (Build.VERSION.SDK_INT >= 26) {
                sb.append(", variationSettings=" + this.f1780b.getFontVariationSettings());
            }
            sb.append(", textDir=" + this.f1781c);
            sb.append(", breakStrategy=" + this.f1782d);
            sb.append(", hyphenationFrequency=" + this.f1783e);
            sb.append("}");
            return sb.toString();
        }
    }

    /* renamed from: a */
    public C0484a m6488a() {
        return this.f1778d;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.f1777c.charAt(i);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f1777c.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f1777c.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f1777c.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        return (T[]) this.f1777c.getSpans(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f1777c.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i, int i2, Class cls) {
        return this.f1777c.nextSpanTransition(i, i2, cls);
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        if (!(obj instanceof MetricAffectingSpan)) {
            this.f1777c.removeSpan(obj);
            return;
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i, int i2, int i3) {
        if (!(obj instanceof MetricAffectingSpan)) {
            this.f1777c.setSpan(obj, i, i2, i3);
            return;
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return this.f1777c.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.f1777c.toString();
    }
}
