package com.airbnb.lottie.parser;

import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.Nullable;
import androidx.collection.SparseArrayCompat;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.value.Keyframe;
import java.io.IOException;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/KeyframeParser.class */
class KeyframeParser {

    /* renamed from: b */
    private static SparseArrayCompat<WeakReference<Interpolator>> f6309b;

    /* renamed from: a */
    private static final Interpolator f6308a = new LinearInterpolator();

    /* renamed from: c */
    static JsonReader.Options f6310c = JsonReader.Options.m15804a("t", "s", "e", "o", "i", "h", "to", "ti");

    KeyframeParser() {
    }

    @Nullable
    /* renamed from: a */
    private static WeakReference<Interpolator> m15842a(int i) {
        WeakReference<Interpolator> f;
        synchronized (KeyframeParser.class) {
            try {
                f = m15838e().m21000f(i);
            } catch (Throwable th) {
                throw th;
            }
        }
        return f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static <T> Keyframe<T> m15841b(JsonReader jsonReader, LottieComposition lottieComposition, float f, ValueParser<T> valueParser, boolean z) throws IOException {
        return z ? m15840c(lottieComposition, jsonReader, f, valueParser) : m15839d(jsonReader, f, valueParser);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0165, code lost:
        if (r10 == null) goto L_0x0168;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static <T> com.airbnb.lottie.value.Keyframe<T> m15840c(com.airbnb.lottie.LottieComposition r9, com.airbnb.lottie.parser.moshi.JsonReader r10, float r11, com.airbnb.lottie.parser.ValueParser<T> r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 553
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.KeyframeParser.m15840c(com.airbnb.lottie.LottieComposition, com.airbnb.lottie.parser.moshi.JsonReader, float, com.airbnb.lottie.parser.ValueParser):com.airbnb.lottie.value.Keyframe");
    }

    /* renamed from: d */
    private static <T> Keyframe<T> m15839d(JsonReader jsonReader, float f, ValueParser<T> valueParser) throws IOException {
        return new Keyframe<>(valueParser.mo15811a(jsonReader, f));
    }

    /* renamed from: e */
    private static SparseArrayCompat<WeakReference<Interpolator>> m15838e() {
        if (f6309b == null) {
            f6309b = new SparseArrayCompat<>();
        }
        return f6309b;
    }

    /* renamed from: f */
    private static void m15837f(int i, WeakReference<Interpolator> weakReference) {
        synchronized (KeyframeParser.class) {
            try {
                f6309b.m20995m(i, weakReference);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
