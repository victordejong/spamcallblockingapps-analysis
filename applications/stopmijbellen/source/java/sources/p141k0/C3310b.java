package p141k0;

import android.os.Build;
import android.support.p012v4.media.C0082b;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import java.util.Objects;
/* renamed from: k0.b */
/* loaded from: classes-dex2jar.jar:k0/b.class */
public class C3310b implements Spannable {

    /* renamed from: k0.b$a */
    /* loaded from: classes-dex2jar.jar:k0/b$a.class */
    public static final class C3311a {

        /* renamed from: a */
        public final TextPaint f11229a;

        /* renamed from: b */
        public final TextDirectionHeuristic f11230b;

        /* renamed from: c */
        public final int f11231c;

        /* renamed from: d */
        public final int f11232d;

        public C3311a(PrecomputedText.Params params) {
            this.f11229a = params.getTextPaint();
            this.f11230b = params.getTextDirection();
            this.f11231c = params.getBreakStrategy();
            this.f11232d = params.getHyphenationFrequency();
        }

        public C3311a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            if (Build.VERSION.SDK_INT >= 29) {
                new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(textDirectionHeuristic).build();
            }
            this.f11229a = textPaint;
            this.f11230b = textDirectionHeuristic;
            this.f11231c = i;
            this.f11232d = i2;
        }

        /* renamed from: a */
        public boolean m2390a(C3311a c3311a) {
            int i = Build.VERSION.SDK_INT;
            if ((i < 23 || (this.f11231c == c3311a.f11231c && this.f11232d == c3311a.f11232d)) && this.f11229a.getTextSize() == c3311a.f11229a.getTextSize() && this.f11229a.getTextScaleX() == c3311a.f11229a.getTextScaleX() && this.f11229a.getTextSkewX() == c3311a.f11229a.getTextSkewX() && this.f11229a.getLetterSpacing() == c3311a.f11229a.getLetterSpacing() && TextUtils.equals(this.f11229a.getFontFeatureSettings(), c3311a.f11229a.getFontFeatureSettings()) && this.f11229a.getFlags() == c3311a.f11229a.getFlags()) {
                if (i >= 24) {
                    if (!this.f11229a.getTextLocales().equals(c3311a.f11229a.getTextLocales())) {
                        return false;
                    }
                } else if (!this.f11229a.getTextLocale().equals(c3311a.f11229a.getTextLocale())) {
                    return false;
                }
                return this.f11229a.getTypeface() == null ? c3311a.f11229a.getTypeface() == null : this.f11229a.getTypeface().equals(c3311a.f11229a.getTypeface());
            }
            return false;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C3311a)) {
                return false;
            }
            C3311a c3311a = (C3311a) obj;
            return m2390a(c3311a) && this.f11230b == c3311a.f11230b;
        }

        public int hashCode() {
            return Build.VERSION.SDK_INT >= 24 ? Objects.hash(Float.valueOf(this.f11229a.getTextSize()), Float.valueOf(this.f11229a.getTextScaleX()), Float.valueOf(this.f11229a.getTextSkewX()), Float.valueOf(this.f11229a.getLetterSpacing()), Integer.valueOf(this.f11229a.getFlags()), this.f11229a.getTextLocales(), this.f11229a.getTypeface(), Boolean.valueOf(this.f11229a.isElegantTextHeight()), this.f11230b, Integer.valueOf(this.f11231c), Integer.valueOf(this.f11232d)) : Objects.hash(Float.valueOf(this.f11229a.getTextSize()), Float.valueOf(this.f11229a.getTextScaleX()), Float.valueOf(this.f11229a.getTextSkewX()), Float.valueOf(this.f11229a.getLetterSpacing()), Integer.valueOf(this.f11229a.getFlags()), this.f11229a.getTextLocale(), this.f11229a.getTypeface(), Boolean.valueOf(this.f11229a.isElegantTextHeight()), this.f11230b, Integer.valueOf(this.f11231c), Integer.valueOf(this.f11232d));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            StringBuilder m8752j = C0082b.m8752j("textSize=");
            m8752j.append(this.f11229a.getTextSize());
            sb.append(m8752j.toString());
            sb.append(", textScaleX=" + this.f11229a.getTextScaleX());
            sb.append(", textSkewX=" + this.f11229a.getTextSkewX());
            int i = Build.VERSION.SDK_INT;
            StringBuilder m8752j2 = C0082b.m8752j(", letterSpacing=");
            m8752j2.append(this.f11229a.getLetterSpacing());
            sb.append(m8752j2.toString());
            sb.append(", elegantTextHeight=" + this.f11229a.isElegantTextHeight());
            if (i >= 24) {
                StringBuilder m8752j3 = C0082b.m8752j(", textLocale=");
                m8752j3.append(this.f11229a.getTextLocales());
                sb.append(m8752j3.toString());
            } else {
                StringBuilder m8752j4 = C0082b.m8752j(", textLocale=");
                m8752j4.append(this.f11229a.getTextLocale());
                sb.append(m8752j4.toString());
            }
            StringBuilder m8752j5 = C0082b.m8752j(", typeface=");
            m8752j5.append(this.f11229a.getTypeface());
            sb.append(m8752j5.toString());
            if (i >= 26) {
                StringBuilder m8752j6 = C0082b.m8752j(", variationSettings=");
                m8752j6.append(this.f11229a.getFontVariationSettings());
                sb.append(m8752j6.toString());
            }
            StringBuilder m8752j7 = C0082b.m8752j(", textDir=");
            m8752j7.append(this.f11230b);
            sb.append(m8752j7.toString());
            sb.append(", breakStrategy=" + this.f11231c);
            sb.append(", hyphenationFrequency=" + this.f11232d);
            sb.append("}");
            return sb.toString();
        }
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        throw null;
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        throw null;
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        throw null;
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        throw null;
    }

    @Override // android.text.Spanned
    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 29) {
            throw null;
        }
        throw null;
    }

    @Override // java.lang.CharSequence
    public int length() {
        throw null;
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i, int i2, Class cls) {
        throw null;
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        if (!(obj instanceof MetricAffectingSpan)) {
            if (Build.VERSION.SDK_INT < 29) {
                throw null;
            }
            throw null;
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i, int i2, int i3) {
        if (!(obj instanceof MetricAffectingSpan)) {
            if (Build.VERSION.SDK_INT < 29) {
                throw null;
            }
            throw null;
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        throw null;
    }

    @Override // java.lang.CharSequence
    public String toString() {
        throw null;
    }
}
