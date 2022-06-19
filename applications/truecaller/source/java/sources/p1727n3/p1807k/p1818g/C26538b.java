package p1727n3.p1807k.p1818g;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.k.g.b */
/* loaded from: classes-dex2jar.jar:n3/k/g/b.class */
public class C26538b implements Spannable {

    /* renamed from: n3.k.g.b$a */
    /* loaded from: classes-dex2jar.jar:n3/k/g/b$a.class */
    public static final class C26539a {

        /* renamed from: a */
        public final TextPaint f74364a;

        /* renamed from: b */
        public final TextDirectionHeuristic f74365b;

        /* renamed from: c */
        public final int f74366c;

        /* renamed from: d */
        public final int f74367d;

        public C26539a(PrecomputedText.Params params) {
            this.f74364a = params.getTextPaint();
            this.f74365b = params.getTextDirection();
            this.f74366c = params.getBreakStrategy();
            this.f74367d = params.getHyphenationFrequency();
            int i = Build.VERSION.SDK_INT;
        }

        public C26539a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            if (Build.VERSION.SDK_INT >= 29) {
                new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(textDirectionHeuristic).build();
            }
            this.f74364a = textPaint;
            this.f74365b = textDirectionHeuristic;
            this.f74366c = i;
            this.f74367d = i2;
        }

        /* renamed from: a */
        public boolean m1705a(C26539a c26539a) {
            int i = Build.VERSION.SDK_INT;
            if (this.f74366c == c26539a.f74366c && this.f74367d == c26539a.f74367d && this.f74364a.getTextSize() == c26539a.f74364a.getTextSize() && this.f74364a.getTextScaleX() == c26539a.f74364a.getTextScaleX() && this.f74364a.getTextSkewX() == c26539a.f74364a.getTextSkewX() && this.f74364a.getLetterSpacing() == c26539a.f74364a.getLetterSpacing() && TextUtils.equals(this.f74364a.getFontFeatureSettings(), c26539a.f74364a.getFontFeatureSettings()) && this.f74364a.getFlags() == c26539a.f74364a.getFlags()) {
                if (i >= 24) {
                    if (!this.f74364a.getTextLocales().equals(c26539a.f74364a.getTextLocales())) {
                        return false;
                    }
                } else if (!this.f74364a.getTextLocale().equals(c26539a.f74364a.getTextLocale())) {
                    return false;
                }
                return this.f74364a.getTypeface() == null ? c26539a.f74364a.getTypeface() == null : this.f74364a.getTypeface().equals(c26539a.f74364a.getTypeface());
            }
            return false;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C26539a)) {
                return false;
            }
            C26539a c26539a = (C26539a) obj;
            return m1705a(c26539a) && this.f74365b == c26539a.f74365b;
        }

        public int hashCode() {
            return Build.VERSION.SDK_INT >= 24 ? Objects.hash(Float.valueOf(this.f74364a.getTextSize()), Float.valueOf(this.f74364a.getTextScaleX()), Float.valueOf(this.f74364a.getTextSkewX()), Float.valueOf(this.f74364a.getLetterSpacing()), Integer.valueOf(this.f74364a.getFlags()), this.f74364a.getTextLocales(), this.f74364a.getTypeface(), Boolean.valueOf(this.f74364a.isElegantTextHeight()), this.f74365b, Integer.valueOf(this.f74366c), Integer.valueOf(this.f74367d)) : Objects.hash(Float.valueOf(this.f74364a.getTextSize()), Float.valueOf(this.f74364a.getTextScaleX()), Float.valueOf(this.f74364a.getTextSkewX()), Float.valueOf(this.f74364a.getLetterSpacing()), Integer.valueOf(this.f74364a.getFlags()), this.f74364a.getTextLocale(), this.f74364a.getTypeface(), Boolean.valueOf(this.f74364a.isElegantTextHeight()), this.f74365b, Integer.valueOf(this.f74366c), Integer.valueOf(this.f74367d));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            StringBuilder m8728C = C22128a.m8728C("textSize=");
            m8728C.append(this.f74364a.getTextSize());
            sb.append(m8728C.toString());
            sb.append(", textScaleX=" + this.f74364a.getTextScaleX());
            sb.append(", textSkewX=" + this.f74364a.getTextSkewX());
            int i = Build.VERSION.SDK_INT;
            StringBuilder m8728C2 = C22128a.m8728C(", letterSpacing=");
            m8728C2.append(this.f74364a.getLetterSpacing());
            sb.append(m8728C2.toString());
            sb.append(", elegantTextHeight=" + this.f74364a.isElegantTextHeight());
            if (i >= 24) {
                StringBuilder m8728C3 = C22128a.m8728C(", textLocale=");
                m8728C3.append(this.f74364a.getTextLocales());
                sb.append(m8728C3.toString());
            } else {
                StringBuilder m8728C4 = C22128a.m8728C(", textLocale=");
                m8728C4.append(this.f74364a.getTextLocale());
                sb.append(m8728C4.toString());
            }
            StringBuilder m8728C5 = C22128a.m8728C(", typeface=");
            m8728C5.append(this.f74364a.getTypeface());
            sb.append(m8728C5.toString());
            if (i >= 26) {
                StringBuilder m8728C6 = C22128a.m8728C(", variationSettings=");
                m8728C6.append(this.f74364a.getFontVariationSettings());
                sb.append(m8728C6.toString());
            }
            StringBuilder m8728C7 = C22128a.m8728C(", textDir=");
            m8728C7.append(this.f74365b);
            sb.append(m8728C7.toString());
            sb.append(", breakStrategy=" + this.f74366c);
            sb.append(", hyphenationFrequency=" + this.f74367d);
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
