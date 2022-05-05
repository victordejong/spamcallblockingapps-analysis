package com.airbnb.lottie.parser;

import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableGradientColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.model.animatable.AnimatableScaleValue;
import com.airbnb.lottie.model.animatable.AnimatableShapeValue;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.Keyframe;
import java.io.IOException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/AnimatableValueParser.class */
public class AnimatableValueParser {
    private AnimatableValueParser() {
    }

    @Nullable
    /* renamed from: a */
    private static <T> List<Keyframe<T>> m15873a(JsonReader jsonReader, float f, LottieComposition lottieComposition, ValueParser<T> valueParser) throws IOException {
        return KeyframesParser.m15836a(jsonReader, lottieComposition, f, valueParser);
    }

    @Nullable
    /* renamed from: b */
    private static <T> List<Keyframe<T>> m15872b(JsonReader jsonReader, LottieComposition lottieComposition, ValueParser<T> valueParser) throws IOException {
        return KeyframesParser.m15836a(jsonReader, lottieComposition, 1.0f, valueParser);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static AnimatableColorValue m15871c(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        return new AnimatableColorValue(m15872b(jsonReader, lottieComposition, ColorParser.f6291a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static AnimatableTextFrame m15870d(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        return new AnimatableTextFrame(m15872b(jsonReader, lottieComposition, DocumentDataParser.f6293a));
    }

    /* renamed from: e */
    public static AnimatableFloatValue m15869e(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        return m15868f(jsonReader, lottieComposition, true);
    }

    /* renamed from: f */
    public static AnimatableFloatValue m15868f(JsonReader jsonReader, LottieComposition lottieComposition, boolean z) throws IOException {
        return new AnimatableFloatValue(m15873a(jsonReader, z ? Utils.m15693e() : 1.0f, lottieComposition, FloatParser.f6295a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static AnimatableGradientColorValue m15867g(JsonReader jsonReader, LottieComposition lottieComposition, int i) throws IOException {
        return new AnimatableGradientColorValue(m15872b(jsonReader, lottieComposition, new GradientColorParser(i)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static AnimatableIntegerValue m15866h(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        return new AnimatableIntegerValue(m15872b(jsonReader, lottieComposition, IntegerParser.f6305a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static AnimatablePointValue m15865i(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        return new AnimatablePointValue(m15873a(jsonReader, Utils.m15693e(), lottieComposition, PointFParser.f6322a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static AnimatableScaleValue m15864j(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        return new AnimatableScaleValue(m15872b(jsonReader, lottieComposition, ScaleXYParser.f6326a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static AnimatableShapeValue m15863k(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        return new AnimatableShapeValue(m15873a(jsonReader, Utils.m15693e(), lottieComposition, ShapeDataParser.f6327a));
    }
}
