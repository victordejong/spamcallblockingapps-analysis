package androidx.core.text;

import android.annotation.SuppressLint;
import android.os.Build;
import android.text.Layout;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.p004os.TraceCompat;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
/* loaded from: classes-dex2jar.jar:androidx/core/text/PrecomputedTextCompat.class */
public class PrecomputedTextCompat implements Spannable {
    @NonNull

    /* renamed from: f */
    private final Spannable f3175f;
    @NonNull

    /* renamed from: g */
    private final Params f3176g;
    @Nullable

    /* renamed from: h */
    private final PrecomputedText f3177h;

    /* loaded from: classes-dex2jar.jar:androidx/core/text/PrecomputedTextCompat$Params.class */
    public static final class Params {
        @NonNull

        /* renamed from: a */
        private final TextPaint f3178a;
        @Nullable

        /* renamed from: b */
        private final TextDirectionHeuristic f3179b;

        /* renamed from: c */
        private final int f3180c;

        /* renamed from: d */
        private final int f3181d;

        /* renamed from: e */
        final PrecomputedText.Params f3182e;

        /* loaded from: classes-dex2jar.jar:androidx/core/text/PrecomputedTextCompat$Params$Builder.class */
        public static class Builder {
            @NonNull

            /* renamed from: a */
            private final TextPaint f3183a;

            /* renamed from: b */
            private TextDirectionHeuristic f3184b;

            /* renamed from: c */
            private int f3185c;

            /* renamed from: d */
            private int f3186d;

            public Builder(@NonNull TextPaint textPaint) {
                this.f3183a = textPaint;
                if (Build.VERSION.SDK_INT >= 23) {
                    this.f3185c = 1;
                    this.f3186d = 1;
                } else {
                    this.f3186d = 0;
                    this.f3185c = 0;
                }
                if (Build.VERSION.SDK_INT >= 18) {
                    this.f3184b = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                } else {
                    this.f3184b = null;
                }
            }

            @NonNull
            /* renamed from: a */
            public Params m19366a() {
                return new Params(this.f3183a, this.f3184b, this.f3185c, this.f3186d);
            }

            @RequiresApi
            /* renamed from: b */
            public Builder m19365b(int i) {
                this.f3185c = i;
                return this;
            }

            @RequiresApi
            /* renamed from: c */
            public Builder m19364c(int i) {
                this.f3186d = i;
                return this;
            }

            @RequiresApi
            /* renamed from: d */
            public Builder m19363d(@NonNull TextDirectionHeuristic textDirectionHeuristic) {
                this.f3184b = textDirectionHeuristic;
                return this;
            }
        }

        @RequiresApi
        public Params(@NonNull PrecomputedText.Params params) {
            this.f3178a = params.getTextPaint();
            this.f3179b = params.getTextDirection();
            this.f3180c = params.getBreakStrategy();
            this.f3181d = params.getHyphenationFrequency();
            this.f3182e = Build.VERSION.SDK_INT < 29 ? null : params;
        }

        @SuppressLint({"NewApi"})
        Params(@NonNull TextPaint textPaint, @NonNull TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f3182e = new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(textDirectionHeuristic).build();
            } else {
                this.f3182e = null;
            }
            this.f3178a = textPaint;
            this.f3179b = textDirectionHeuristic;
            this.f3180c = i;
            this.f3181d = i2;
        }

        @RestrictTo
        /* renamed from: a */
        public boolean m19371a(@NonNull Params params) {
            if ((Build.VERSION.SDK_INT >= 23 && (this.f3180c != params.m19370b() || this.f3181d != params.m19369c())) || this.f3178a.getTextSize() != params.m19367e().getTextSize() || this.f3178a.getTextScaleX() != params.m19367e().getTextScaleX() || this.f3178a.getTextSkewX() != params.m19367e().getTextSkewX()) {
                return false;
            }
            if ((Build.VERSION.SDK_INT >= 21 && (this.f3178a.getLetterSpacing() != params.m19367e().getLetterSpacing() || !TextUtils.equals(this.f3178a.getFontFeatureSettings(), params.m19367e().getFontFeatureSettings()))) || this.f3178a.getFlags() != params.m19367e().getFlags()) {
                return false;
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                if (!this.f3178a.getTextLocales().equals(params.m19367e().getTextLocales())) {
                    return false;
                }
            } else if (i >= 17 && !this.f3178a.getTextLocale().equals(params.m19367e().getTextLocale())) {
                return false;
            }
            return this.f3178a.getTypeface() == null ? params.m19367e().getTypeface() == null : this.f3178a.getTypeface().equals(params.m19367e().getTypeface());
        }

        @RequiresApi
        /* renamed from: b */
        public int m19370b() {
            return this.f3180c;
        }

        @RequiresApi
        /* renamed from: c */
        public int m19369c() {
            return this.f3181d;
        }

        @Nullable
        @RequiresApi
        /* renamed from: d */
        public TextDirectionHeuristic m19368d() {
            return this.f3179b;
        }

        @NonNull
        /* renamed from: e */
        public TextPaint m19367e() {
            return this.f3178a;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Params)) {
                return false;
            }
            Params params = (Params) obj;
            if (!m19371a(params)) {
                return false;
            }
            return Build.VERSION.SDK_INT < 18 || this.f3179b == params.m19368d();
        }

        public int hashCode() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                return ObjectsCompat.m19345b(Float.valueOf(this.f3178a.getTextSize()), Float.valueOf(this.f3178a.getTextScaleX()), Float.valueOf(this.f3178a.getTextSkewX()), Float.valueOf(this.f3178a.getLetterSpacing()), Integer.valueOf(this.f3178a.getFlags()), this.f3178a.getTextLocales(), this.f3178a.getTypeface(), Boolean.valueOf(this.f3178a.isElegantTextHeight()), this.f3179b, Integer.valueOf(this.f3180c), Integer.valueOf(this.f3181d));
            }
            if (i >= 21) {
                return ObjectsCompat.m19345b(Float.valueOf(this.f3178a.getTextSize()), Float.valueOf(this.f3178a.getTextScaleX()), Float.valueOf(this.f3178a.getTextSkewX()), Float.valueOf(this.f3178a.getLetterSpacing()), Integer.valueOf(this.f3178a.getFlags()), this.f3178a.getTextLocale(), this.f3178a.getTypeface(), Boolean.valueOf(this.f3178a.isElegantTextHeight()), this.f3179b, Integer.valueOf(this.f3180c), Integer.valueOf(this.f3181d));
            }
            if (i < 18 && i < 17) {
                return ObjectsCompat.m19345b(Float.valueOf(this.f3178a.getTextSize()), Float.valueOf(this.f3178a.getTextScaleX()), Float.valueOf(this.f3178a.getTextSkewX()), Integer.valueOf(this.f3178a.getFlags()), this.f3178a.getTypeface(), this.f3179b, Integer.valueOf(this.f3180c), Integer.valueOf(this.f3181d));
            }
            return ObjectsCompat.m19345b(Float.valueOf(this.f3178a.getTextSize()), Float.valueOf(this.f3178a.getTextScaleX()), Float.valueOf(this.f3178a.getTextSkewX()), Integer.valueOf(this.f3178a.getFlags()), this.f3178a.getTextLocale(), this.f3178a.getTypeface(), this.f3179b, Integer.valueOf(this.f3180c), Integer.valueOf(this.f3181d));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            sb.append("textSize=" + this.f3178a.getTextSize());
            sb.append(", textScaleX=" + this.f3178a.getTextScaleX());
            sb.append(", textSkewX=" + this.f3178a.getTextSkewX());
            if (Build.VERSION.SDK_INT >= 21) {
                sb.append(", letterSpacing=" + this.f3178a.getLetterSpacing());
                sb.append(", elegantTextHeight=" + this.f3178a.isElegantTextHeight());
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                sb.append(", textLocale=" + this.f3178a.getTextLocales());
            } else if (i >= 17) {
                sb.append(", textLocale=" + this.f3178a.getTextLocale());
            }
            sb.append(", typeface=" + this.f3178a.getTypeface());
            if (Build.VERSION.SDK_INT >= 26) {
                sb.append(", variationSettings=" + this.f3178a.getFontVariationSettings());
            }
            sb.append(", textDir=" + this.f3179b);
            sb.append(", breakStrategy=" + this.f3180c);
            sb.append(", hyphenationFrequency=" + this.f3181d);
            sb.append("}");
            return sb.toString();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask.class */
    private static class PrecomputedTextFutureTask extends FutureTask<PrecomputedTextCompat> {

        /* loaded from: classes-dex2jar.jar:androidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback.class */
        private static class PrecomputedTextCallback implements Callable<PrecomputedTextCompat> {

            /* renamed from: f */
            private Params f3187f;

            /* renamed from: g */
            private CharSequence f3188g;

            /* renamed from: a */
            public PrecomputedTextCompat call() throws Exception {
                return PrecomputedTextCompat.m19374a(this.f3188g, this.f3187f);
            }
        }
    }

    @RequiresApi
    private PrecomputedTextCompat(@NonNull PrecomputedText precomputedText, @NonNull Params params) {
        this.f3175f = precomputedText;
        this.f3176g = params;
        this.f3177h = Build.VERSION.SDK_INT < 29 ? null : precomputedText;
    }

    private PrecomputedTextCompat(@NonNull CharSequence charSequence, @NonNull Params params, @NonNull int[] iArr) {
        this.f3175f = new SpannableString(charSequence);
        this.f3176g = params;
        this.f3177h = null;
    }

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    public static PrecomputedTextCompat m19374a(@NonNull CharSequence charSequence, @NonNull Params params) {
        Preconditions.m19337d(charSequence);
        Preconditions.m19337d(params);
        try {
            TraceCompat.m19438a("PrecomputedText");
            if (Build.VERSION.SDK_INT < 29 || params.f3182e == null) {
                ArrayList arrayList = new ArrayList();
                int length = charSequence.length();
                int i = 0;
                while (i < length) {
                    int indexOf = TextUtils.indexOf(charSequence, '\n', i, length);
                    i = indexOf < 0 ? length : indexOf + 1;
                    arrayList.add(Integer.valueOf(i));
                }
                int[] iArr = new int[arrayList.size()];
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    iArr[i2] = ((Integer) arrayList.get(i2)).intValue();
                }
                if (Build.VERSION.SDK_INT >= 23) {
                    StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), params.m19367e(), Api.BaseClientBuilder.API_PRIORITY_OTHER).setBreakStrategy(params.m19370b()).setHyphenationFrequency(params.m19369c()).setTextDirection(params.m19368d()).build();
                } else if (Build.VERSION.SDK_INT >= 21) {
                    new StaticLayout(charSequence, params.m19367e(), Api.BaseClientBuilder.API_PRIORITY_OTHER, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                }
                PrecomputedTextCompat precomputedTextCompat = new PrecomputedTextCompat(charSequence, params, iArr);
                TraceCompat.m19437b();
                return precomputedTextCompat;
            }
            PrecomputedTextCompat precomputedTextCompat2 = new PrecomputedTextCompat(PrecomputedText.create(charSequence, params.f3182e), params);
            TraceCompat.m19437b();
            return precomputedTextCompat2;
        } catch (Throwable th) {
            TraceCompat.m19437b();
            throw th;
        }
    }

    @NonNull
    /* renamed from: b */
    public Params m19373b() {
        return this.f3176g;
    }

    @Nullable
    @RequiresApi
    @RestrictTo
    /* renamed from: c */
    public PrecomputedText m19372c() {
        Spannable spannable = this.f3175f;
        if (spannable instanceof PrecomputedText) {
            return (PrecomputedText) spannable;
        }
        return null;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.f3175f.charAt(i);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f3175f.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f3175f.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f3175f.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    @SuppressLint({"NewApi"})
    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        return Build.VERSION.SDK_INT >= 29 ? (T[]) this.f3177h.getSpans(i, i2, cls) : (T[]) this.f3175f.getSpans(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f3175f.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i, int i2, Class cls) {
        return this.f3175f.nextSpanTransition(i, i2, cls);
    }

    @Override // android.text.Spannable
    @SuppressLint({"NewApi"})
    public void removeSpan(Object obj) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        } else if (Build.VERSION.SDK_INT >= 29) {
            this.f3177h.removeSpan(obj);
        } else {
            this.f3175f.removeSpan(obj);
        }
    }

    @Override // android.text.Spannable
    @SuppressLint({"NewApi"})
    public void setSpan(Object obj, int i, int i2, int i3) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        } else if (Build.VERSION.SDK_INT >= 29) {
            this.f3177h.setSpan(obj, i, i2, i3);
        } else {
            this.f3175f.setSpan(obj, i, i2, i3);
        }
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return this.f3175f.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    @NonNull
    public String toString() {
        return this.f3175f.toString();
    }
}
