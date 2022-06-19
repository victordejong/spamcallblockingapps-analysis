package androidx.core.p024f;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import androidx.core.p025g.C0521c;
import java.util.concurrent.Executor;
/* renamed from: androidx.core.f.c */
/* loaded from: classes-dex2jar.jar:androidx/core/f/c.class */
public class C0507c implements Spannable {

    /* renamed from: a */
    private static final Object f1926a = new Object();

    /* renamed from: b */
    private static Executor f1927b = null;

    /* renamed from: c */
    private final Spannable f1928c;

    /* renamed from: d */
    private final C0508a f1929d;

    /* renamed from: androidx.core.f.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/f/c$a.class */
    public static final class C0508a {

        /* renamed from: a */
        final PrecomputedText.Params f1930a = null;

        /* renamed from: b */
        private final TextPaint f1931b;

        /* renamed from: c */
        private final TextDirectionHeuristic f1932c;

        /* renamed from: d */
        private final int f1933d;

        /* renamed from: e */
        private final int f1934e;

        /* renamed from: androidx.core.f.c$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/core/f/c$a$a.class */
        public static class C0509a {

            /* renamed from: a */
            private final TextPaint f1935a;

            /* renamed from: b */
            private TextDirectionHeuristic f1936b;

            /* renamed from: c */
            private int f1937c;

            /* renamed from: d */
            private int f1938d;

            public C0509a(TextPaint textPaint) {
                this.f1935a = textPaint;
                if (Build.VERSION.SDK_INT >= 23) {
                    this.f1937c = 1;
                    this.f1938d = 1;
                } else {
                    this.f1938d = 0;
                    this.f1937c = 0;
                }
                if (Build.VERSION.SDK_INT >= 18) {
                    this.f1936b = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                } else {
                    this.f1936b = null;
                }
            }

            /* renamed from: a */
            public C0509a m20661a(int i) {
                this.f1937c = i;
                return this;
            }

            /* renamed from: a */
            public C0509a m20660a(TextDirectionHeuristic textDirectionHeuristic) {
                this.f1936b = textDirectionHeuristic;
                return this;
            }

            /* renamed from: a */
            public C0508a m20662a() {
                return new C0508a(this.f1935a, this.f1936b, this.f1937c, this.f1938d);
            }

            /* renamed from: b */
            public C0509a m20659b(int i) {
                this.f1938d = i;
                return this;
            }
        }

        public C0508a(PrecomputedText.Params params) {
            this.f1931b = params.getTextPaint();
            this.f1932c = params.getTextDirection();
            this.f1933d = params.getBreakStrategy();
            this.f1934e = params.getHyphenationFrequency();
        }

        C0508a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            this.f1931b = textPaint;
            this.f1932c = textDirectionHeuristic;
            this.f1933d = i;
            this.f1934e = i2;
        }

        /* renamed from: a */
        public TextPaint m20667a() {
            return this.f1931b;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0036, code lost:
            if (r3.f1934e == r4.m20663d()) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x00a4, code lost:
            if (android.text.TextUtils.equals(r3.f1931b.getFontFeatureSettings(), r4.m20667a().getFontFeatureSettings()) != false) goto L25;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x00d5, code lost:
            if (r3.f1931b.getTextLocales().equals(r4.m20667a().getTextLocales()) != false) goto L31;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00eb, code lost:
            if (r4.m20667a().getTypeface() == null) goto L35;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean m20666a(androidx.core.p024f.C0507c.C0508a r4) {
            /*
                Method dump skipped, instructions count: 301
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.p024f.C0507c.C0508a.m20666a(androidx.core.f.c$a):boolean");
        }

        /* renamed from: b */
        public TextDirectionHeuristic m20665b() {
            return this.f1932c;
        }

        /* renamed from: c */
        public int m20664c() {
            return this.f1933d;
        }

        /* renamed from: d */
        public int m20663d() {
            return this.f1934e;
        }

        public boolean equals(Object obj) {
            boolean z;
            if (obj == this) {
                z = true;
            } else if (!(obj instanceof C0508a)) {
                z = false;
            } else {
                C0508a c0508a = (C0508a) obj;
                if (!m20666a(c0508a)) {
                    z = false;
                } else {
                    z = true;
                    if (Build.VERSION.SDK_INT >= 18) {
                        z = true;
                        if (this.f1932c != c0508a.m20665b()) {
                            z = false;
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return Build.VERSION.SDK_INT >= 24 ? C0521c.m20647a(Float.valueOf(this.f1931b.getTextSize()), Float.valueOf(this.f1931b.getTextScaleX()), Float.valueOf(this.f1931b.getTextSkewX()), Float.valueOf(this.f1931b.getLetterSpacing()), Integer.valueOf(this.f1931b.getFlags()), this.f1931b.getTextLocales(), this.f1931b.getTypeface(), Boolean.valueOf(this.f1931b.isElegantTextHeight()), this.f1932c, Integer.valueOf(this.f1933d), Integer.valueOf(this.f1934e)) : Build.VERSION.SDK_INT >= 21 ? C0521c.m20647a(Float.valueOf(this.f1931b.getTextSize()), Float.valueOf(this.f1931b.getTextScaleX()), Float.valueOf(this.f1931b.getTextSkewX()), Float.valueOf(this.f1931b.getLetterSpacing()), Integer.valueOf(this.f1931b.getFlags()), this.f1931b.getTextLocale(), this.f1931b.getTypeface(), Boolean.valueOf(this.f1931b.isElegantTextHeight()), this.f1932c, Integer.valueOf(this.f1933d), Integer.valueOf(this.f1934e)) : Build.VERSION.SDK_INT >= 18 ? C0521c.m20647a(Float.valueOf(this.f1931b.getTextSize()), Float.valueOf(this.f1931b.getTextScaleX()), Float.valueOf(this.f1931b.getTextSkewX()), Integer.valueOf(this.f1931b.getFlags()), this.f1931b.getTextLocale(), this.f1931b.getTypeface(), this.f1932c, Integer.valueOf(this.f1933d), Integer.valueOf(this.f1934e)) : Build.VERSION.SDK_INT >= 17 ? C0521c.m20647a(Float.valueOf(this.f1931b.getTextSize()), Float.valueOf(this.f1931b.getTextScaleX()), Float.valueOf(this.f1931b.getTextSkewX()), Integer.valueOf(this.f1931b.getFlags()), this.f1931b.getTextLocale(), this.f1931b.getTypeface(), this.f1932c, Integer.valueOf(this.f1933d), Integer.valueOf(this.f1934e)) : C0521c.m20647a(Float.valueOf(this.f1931b.getTextSize()), Float.valueOf(this.f1931b.getTextScaleX()), Float.valueOf(this.f1931b.getTextSkewX()), Integer.valueOf(this.f1931b.getFlags()), this.f1931b.getTypeface(), this.f1932c, Integer.valueOf(this.f1933d), Integer.valueOf(this.f1934e));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            sb.append("textSize=" + this.f1931b.getTextSize());
            sb.append(", textScaleX=" + this.f1931b.getTextScaleX());
            sb.append(", textSkewX=" + this.f1931b.getTextSkewX());
            if (Build.VERSION.SDK_INT >= 21) {
                sb.append(", letterSpacing=" + this.f1931b.getLetterSpacing());
                sb.append(", elegantTextHeight=" + this.f1931b.isElegantTextHeight());
            }
            if (Build.VERSION.SDK_INT >= 24) {
                sb.append(", textLocale=" + this.f1931b.getTextLocales());
            } else if (Build.VERSION.SDK_INT >= 17) {
                sb.append(", textLocale=" + this.f1931b.getTextLocale());
            }
            sb.append(", typeface=" + this.f1931b.getTypeface());
            if (Build.VERSION.SDK_INT >= 26) {
                sb.append(", variationSettings=" + this.f1931b.getFontVariationSettings());
            }
            sb.append(", textDir=" + this.f1932c);
            sb.append(", breakStrategy=" + this.f1933d);
            sb.append(", hyphenationFrequency=" + this.f1934e);
            sb.append("}");
            return sb.toString();
        }
    }

    /* renamed from: a */
    public C0508a m20668a() {
        return this.f1929d;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.f1928c.charAt(i);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f1928c.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f1928c.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f1928c.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        return (T[]) this.f1928c.getSpans(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f1928c.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i, int i2, Class cls) {
        return this.f1928c.nextSpanTransition(i, i2, cls);
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        }
        this.f1928c.removeSpan(obj);
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i, int i2, int i3) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        }
        this.f1928c.setSpan(obj, i, i2, i3);
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return this.f1928c.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.f1928c.toString();
    }
}
