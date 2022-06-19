package p020b.p041h.p048j;

import android.annotation.SuppressLint;
import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import p020b.p041h.p049k.C1592c;
/* renamed from: b.h.j.c */
/* loaded from: classes-dex2jar.jar:b/h/j/c.class */
public class C1578c implements Spannable {

    /* renamed from: d */
    private static final Object f6161d = new Object();

    /* renamed from: e */
    private final Spannable f6162e;

    /* renamed from: f */
    private final C1579a f6163f;

    /* renamed from: g */
    private final PrecomputedText f6164g;

    /* renamed from: b.h.j.c$a */
    /* loaded from: classes-dex2jar.jar:b/h/j/c$a.class */
    public static final class C1579a {

        /* renamed from: a */
        private final TextPaint f6165a;

        /* renamed from: b */
        private final TextDirectionHeuristic f6166b;

        /* renamed from: c */
        private final int f6167c;

        /* renamed from: d */
        private final int f6168d;

        /* renamed from: e */
        final PrecomputedText.Params f6169e;

        /* renamed from: b.h.j.c$a$a */
        /* loaded from: classes-dex2jar.jar:b/h/j/c$a$a.class */
        public static class C1580a {

            /* renamed from: a */
            private final TextPaint f6170a;

            /* renamed from: b */
            private TextDirectionHeuristic f6171b;

            /* renamed from: c */
            private int f6172c;

            /* renamed from: d */
            private int f6173d;

            public C1580a(TextPaint textPaint) {
                this.f6170a = textPaint;
                int i = Build.VERSION.SDK_INT;
                if (i >= 23) {
                    this.f6172c = 1;
                    this.f6173d = 1;
                } else {
                    this.f6173d = 0;
                    this.f6172c = 0;
                }
                if (i >= 18) {
                    this.f6171b = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                } else {
                    this.f6171b = null;
                }
            }

            /* renamed from: a */
            public C1579a m29682a() {
                return new C1579a(this.f6170a, this.f6171b, this.f6172c, this.f6173d);
            }

            /* renamed from: b */
            public C1580a m29681b(int i) {
                this.f6172c = i;
                return this;
            }

            /* renamed from: c */
            public C1580a m29680c(int i) {
                this.f6173d = i;
                return this;
            }

            /* renamed from: d */
            public C1580a m29679d(TextDirectionHeuristic textDirectionHeuristic) {
                this.f6171b = textDirectionHeuristic;
                return this;
            }
        }

        public C1579a(PrecomputedText.Params params) {
            this.f6165a = params.getTextPaint();
            this.f6166b = params.getTextDirection();
            this.f6167c = params.getBreakStrategy();
            this.f6168d = params.getHyphenationFrequency();
            this.f6169e = Build.VERSION.SDK_INT < 29 ? null : params;
        }

        @SuppressLint({"NewApi"})
        C1579a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f6169e = new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(textDirectionHeuristic).build();
            } else {
                this.f6169e = null;
            }
            this.f6165a = textPaint;
            this.f6166b = textDirectionHeuristic;
            this.f6167c = i;
            this.f6168d = i2;
        }

        /* renamed from: a */
        public boolean m29687a(C1579a c1579a) {
            int i = Build.VERSION.SDK_INT;
            if ((i < 23 || (this.f6167c == c1579a.m29686b() && this.f6168d == c1579a.m29685c())) && this.f6165a.getTextSize() == c1579a.m29683e().getTextSize() && this.f6165a.getTextScaleX() == c1579a.m29683e().getTextScaleX() && this.f6165a.getTextSkewX() == c1579a.m29683e().getTextSkewX()) {
                if ((i >= 21 && (this.f6165a.getLetterSpacing() != c1579a.m29683e().getLetterSpacing() || !TextUtils.equals(this.f6165a.getFontFeatureSettings(), c1579a.m29683e().getFontFeatureSettings()))) || this.f6165a.getFlags() != c1579a.m29683e().getFlags()) {
                    return false;
                }
                if (i >= 24) {
                    if (!this.f6165a.getTextLocales().equals(c1579a.m29683e().getTextLocales())) {
                        return false;
                    }
                } else if (i >= 17 && !this.f6165a.getTextLocale().equals(c1579a.m29683e().getTextLocale())) {
                    return false;
                }
                return this.f6165a.getTypeface() == null ? c1579a.m29683e().getTypeface() == null : this.f6165a.getTypeface().equals(c1579a.m29683e().getTypeface());
            }
            return false;
        }

        /* renamed from: b */
        public int m29686b() {
            return this.f6167c;
        }

        /* renamed from: c */
        public int m29685c() {
            return this.f6168d;
        }

        /* renamed from: d */
        public TextDirectionHeuristic m29684d() {
            return this.f6166b;
        }

        /* renamed from: e */
        public TextPaint m29683e() {
            return this.f6165a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C1579a)) {
                return false;
            }
            C1579a c1579a = (C1579a) obj;
            if (!m29687a(c1579a)) {
                return false;
            }
            return Build.VERSION.SDK_INT < 18 || this.f6166b == c1579a.m29684d();
        }

        public int hashCode() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                return C1592c.m29667b(Float.valueOf(this.f6165a.getTextSize()), Float.valueOf(this.f6165a.getTextScaleX()), Float.valueOf(this.f6165a.getTextSkewX()), Float.valueOf(this.f6165a.getLetterSpacing()), Integer.valueOf(this.f6165a.getFlags()), this.f6165a.getTextLocales(), this.f6165a.getTypeface(), Boolean.valueOf(this.f6165a.isElegantTextHeight()), this.f6166b, Integer.valueOf(this.f6167c), Integer.valueOf(this.f6168d));
            }
            if (i >= 21) {
                return C1592c.m29667b(Float.valueOf(this.f6165a.getTextSize()), Float.valueOf(this.f6165a.getTextScaleX()), Float.valueOf(this.f6165a.getTextSkewX()), Float.valueOf(this.f6165a.getLetterSpacing()), Integer.valueOf(this.f6165a.getFlags()), this.f6165a.getTextLocale(), this.f6165a.getTypeface(), Boolean.valueOf(this.f6165a.isElegantTextHeight()), this.f6166b, Integer.valueOf(this.f6167c), Integer.valueOf(this.f6168d));
            }
            if (i < 18 && i < 17) {
                return C1592c.m29667b(Float.valueOf(this.f6165a.getTextSize()), Float.valueOf(this.f6165a.getTextScaleX()), Float.valueOf(this.f6165a.getTextSkewX()), Integer.valueOf(this.f6165a.getFlags()), this.f6165a.getTypeface(), this.f6166b, Integer.valueOf(this.f6167c), Integer.valueOf(this.f6168d));
            }
            return C1592c.m29667b(Float.valueOf(this.f6165a.getTextSize()), Float.valueOf(this.f6165a.getTextScaleX()), Float.valueOf(this.f6165a.getTextSkewX()), Integer.valueOf(this.f6165a.getFlags()), this.f6165a.getTextLocale(), this.f6165a.getTypeface(), this.f6166b, Integer.valueOf(this.f6167c), Integer.valueOf(this.f6168d));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            sb.append("textSize=" + this.f6165a.getTextSize());
            sb.append(", textScaleX=" + this.f6165a.getTextScaleX());
            sb.append(", textSkewX=" + this.f6165a.getTextSkewX());
            int i = Build.VERSION.SDK_INT;
            if (i >= 21) {
                sb.append(", letterSpacing=" + this.f6165a.getLetterSpacing());
                sb.append(", elegantTextHeight=" + this.f6165a.isElegantTextHeight());
            }
            if (i >= 24) {
                sb.append(", textLocale=" + this.f6165a.getTextLocales());
            } else if (i >= 17) {
                sb.append(", textLocale=" + this.f6165a.getTextLocale());
            }
            sb.append(", typeface=" + this.f6165a.getTypeface());
            if (i >= 26) {
                sb.append(", variationSettings=" + this.f6165a.getFontVariationSettings());
            }
            sb.append(", textDir=" + this.f6166b);
            sb.append(", breakStrategy=" + this.f6167c);
            sb.append(", hyphenationFrequency=" + this.f6168d);
            sb.append("}");
            return sb.toString();
        }
    }

    /* renamed from: a */
    public C1579a m29689a() {
        return this.f6163f;
    }

    /* renamed from: b */
    public PrecomputedText m29688b() {
        Spannable spannable = this.f6162e;
        if (spannable instanceof PrecomputedText) {
            return (PrecomputedText) spannable;
        }
        return null;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.f6162e.charAt(i);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f6162e.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f6162e.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f6162e.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    @SuppressLint({"NewApi"})
    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        return Build.VERSION.SDK_INT >= 29 ? (T[]) this.f6164g.getSpans(i, i2, cls) : (T[]) this.f6162e.getSpans(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f6162e.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i, int i2, Class cls) {
        return this.f6162e.nextSpanTransition(i, i2, cls);
    }

    @Override // android.text.Spannable
    @SuppressLint({"NewApi"})
    public void removeSpan(Object obj) {
        if (!(obj instanceof MetricAffectingSpan)) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f6164g.removeSpan(obj);
                return;
            } else {
                this.f6162e.removeSpan(obj);
                return;
            }
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
    }

    @Override // android.text.Spannable
    @SuppressLint({"NewApi"})
    public void setSpan(Object obj, int i, int i2, int i3) {
        if (!(obj instanceof MetricAffectingSpan)) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f6164g.setSpan(obj, i, i2, i3);
                return;
            } else {
                this.f6162e.setSpan(obj, i, i2, i3);
                return;
            }
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return this.f6162e.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.f6162e.toString();
    }
}
