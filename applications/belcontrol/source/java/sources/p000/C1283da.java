package p000;

import android.annotation.SuppressLint;
import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
/* renamed from: da */
/* loaded from: classes-dex2jar.jar:da.class */
public class C1283da implements Spannable {

    /* renamed from: a */
    public final Spannable f5799a;

    /* renamed from: b */
    public final C1284a f5800b;

    /* renamed from: c */
    public final PrecomputedText f5801c;

    /* renamed from: da$a */
    /* loaded from: classes-dex2jar.jar:da$a.class */
    public static final class C1284a {

        /* renamed from: a */
        public final TextPaint f5802a;

        /* renamed from: b */
        public final TextDirectionHeuristic f5803b;

        /* renamed from: c */
        public final int f5804c;

        /* renamed from: d */
        public final int f5805d;

        /* renamed from: da$a$a */
        /* loaded from: classes-dex2jar.jar:da$a$a.class */
        public static class C1285a {

            /* renamed from: a */
            public final TextPaint f5806a;

            /* renamed from: b */
            public TextDirectionHeuristic f5807b;

            /* renamed from: c */
            public int f5808c;

            /* renamed from: d */
            public int f5809d;

            public C1285a(TextPaint textPaint) {
                this.f5806a = textPaint;
                int i = Build.VERSION.SDK_INT;
                if (i >= 23) {
                    this.f5808c = 1;
                    this.f5809d = 1;
                } else {
                    this.f5809d = 0;
                    this.f5808c = 0;
                }
                this.f5807b = i >= 18 ? TextDirectionHeuristics.FIRSTSTRONG_LTR : null;
            }

            /* renamed from: a */
            public C1284a m2719a() {
                return new C1284a(this.f5806a, this.f5807b, this.f5808c, this.f5809d);
            }

            /* renamed from: b */
            public C1285a m2718b(int i) {
                this.f5808c = i;
                return this;
            }

            /* renamed from: c */
            public C1285a m2717c(int i) {
                this.f5809d = i;
                return this;
            }

            /* renamed from: d */
            public C1285a m2716d(TextDirectionHeuristic textDirectionHeuristic) {
                this.f5807b = textDirectionHeuristic;
                return this;
            }
        }

        public C1284a(PrecomputedText.Params params) {
            this.f5802a = params.getTextPaint();
            this.f5803b = params.getTextDirection();
            this.f5804c = params.getBreakStrategy();
            this.f5805d = params.getHyphenationFrequency();
            int i = Build.VERSION.SDK_INT;
        }

        @SuppressLint({"NewApi"})
        public C1284a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            if (Build.VERSION.SDK_INT >= 29) {
                new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(textDirectionHeuristic).build();
            }
            this.f5802a = textPaint;
            this.f5803b = textDirectionHeuristic;
            this.f5804c = i;
            this.f5805d = i2;
        }

        /* renamed from: a */
        public boolean m2724a(C1284a c1284a) {
            int i = Build.VERSION.SDK_INT;
            if ((i < 23 || (this.f5804c == c1284a.m2723b() && this.f5805d == c1284a.m2722c())) && this.f5802a.getTextSize() == c1284a.m2720e().getTextSize() && this.f5802a.getTextScaleX() == c1284a.m2720e().getTextScaleX() && this.f5802a.getTextSkewX() == c1284a.m2720e().getTextSkewX()) {
                if ((i >= 21 && (this.f5802a.getLetterSpacing() != c1284a.m2720e().getLetterSpacing() || !TextUtils.equals(this.f5802a.getFontFeatureSettings(), c1284a.m2720e().getFontFeatureSettings()))) || this.f5802a.getFlags() != c1284a.m2720e().getFlags()) {
                    return false;
                }
                if (i >= 24) {
                    if (!this.f5802a.getTextLocales().equals(c1284a.m2720e().getTextLocales())) {
                        return false;
                    }
                } else if (i >= 17 && !this.f5802a.getTextLocale().equals(c1284a.m2720e().getTextLocale())) {
                    return false;
                }
                return this.f5802a.getTypeface() == null ? c1284a.m2720e().getTypeface() == null : this.f5802a.getTypeface().equals(c1284a.m2720e().getTypeface());
            }
            return false;
        }

        /* renamed from: b */
        public int m2723b() {
            return this.f5804c;
        }

        /* renamed from: c */
        public int m2722c() {
            return this.f5805d;
        }

        /* renamed from: d */
        public TextDirectionHeuristic m2721d() {
            return this.f5803b;
        }

        /* renamed from: e */
        public TextPaint m2720e() {
            return this.f5802a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C1284a)) {
                return false;
            }
            C1284a c1284a = (C1284a) obj;
            if (!m2724a(c1284a)) {
                return false;
            }
            return Build.VERSION.SDK_INT < 18 || this.f5803b == c1284a.m2721d();
        }

        public int hashCode() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                return ja.b(new Object[]{Float.valueOf(this.f5802a.getTextSize()), Float.valueOf(this.f5802a.getTextScaleX()), Float.valueOf(this.f5802a.getTextSkewX()), Float.valueOf(this.f5802a.getLetterSpacing()), Integer.valueOf(this.f5802a.getFlags()), this.f5802a.getTextLocales(), this.f5802a.getTypeface(), Boolean.valueOf(this.f5802a.isElegantTextHeight()), this.f5803b, Integer.valueOf(this.f5804c), Integer.valueOf(this.f5805d)});
            }
            if (i >= 21) {
                return ja.b(new Object[]{Float.valueOf(this.f5802a.getTextSize()), Float.valueOf(this.f5802a.getTextScaleX()), Float.valueOf(this.f5802a.getTextSkewX()), Float.valueOf(this.f5802a.getLetterSpacing()), Integer.valueOf(this.f5802a.getFlags()), this.f5802a.getTextLocale(), this.f5802a.getTypeface(), Boolean.valueOf(this.f5802a.isElegantTextHeight()), this.f5803b, Integer.valueOf(this.f5804c), Integer.valueOf(this.f5805d)});
            }
            if (i < 18 && i < 17) {
                return ja.b(new Object[]{Float.valueOf(this.f5802a.getTextSize()), Float.valueOf(this.f5802a.getTextScaleX()), Float.valueOf(this.f5802a.getTextSkewX()), Integer.valueOf(this.f5802a.getFlags()), this.f5802a.getTypeface(), this.f5803b, Integer.valueOf(this.f5804c), Integer.valueOf(this.f5805d)});
            }
            return ja.b(new Object[]{Float.valueOf(this.f5802a.getTextSize()), Float.valueOf(this.f5802a.getTextScaleX()), Float.valueOf(this.f5802a.getTextSkewX()), Integer.valueOf(this.f5802a.getFlags()), this.f5802a.getTextLocale(), this.f5802a.getTypeface(), this.f5803b, Integer.valueOf(this.f5804c), Integer.valueOf(this.f5805d)});
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0144  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String toString() {
            /*
                Method dump skipped, instructions count: 471
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p000.C1283da.C1284a.toString():java.lang.String");
        }
    }

    /* renamed from: a */
    public C1284a m2726a() {
        return this.f5800b;
    }

    /* renamed from: b */
    public PrecomputedText m2725b() {
        Spannable spannable = this.f5799a;
        if (spannable instanceof PrecomputedText) {
            return (PrecomputedText) spannable;
        }
        return null;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.f5799a.charAt(i);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f5799a.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f5799a.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f5799a.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    @SuppressLint({"NewApi"})
    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        return Build.VERSION.SDK_INT >= 29 ? (T[]) this.f5801c.getSpans(i, i2, cls) : (T[]) this.f5799a.getSpans(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f5799a.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i, int i2, Class cls) {
        return this.f5799a.nextSpanTransition(i, i2, cls);
    }

    @Override // android.text.Spannable
    @SuppressLint({"NewApi"})
    public void removeSpan(Object obj) {
        if (!(obj instanceof MetricAffectingSpan)) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f5801c.removeSpan(obj);
                return;
            } else {
                this.f5799a.removeSpan(obj);
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
                this.f5801c.setSpan(obj, i, i2, i3);
                return;
            } else {
                this.f5799a.setSpan(obj, i, i2, i3);
                return;
            }
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return this.f5799a.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.f5799a.toString();
    }
}
