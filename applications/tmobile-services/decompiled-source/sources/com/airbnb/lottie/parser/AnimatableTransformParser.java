package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatablePathValue;
import com.airbnb.lottie.model.animatable.AnimatableScaleValue;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.value.Keyframe;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/AnimatableTransformParser.class */
public class AnimatableTransformParser {

    /* renamed from: a */
    private static JsonReader.Options f6288a = JsonReader.Options.m15804a("a", "p", "s", "rz", "r", "o", "so", "eo", "sk", "sa");

    /* renamed from: b */
    private static JsonReader.Options f6289b = JsonReader.Options.m15804a("k");

    private AnimatableTransformParser() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0029, code lost:
        if (r4.mo16062b().get(0).f6407b.equals(0.0f, 0.0f) != false) goto L_0x002c;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m15880a(com.airbnb.lottie.model.animatable.AnimatablePathValue r4) {
        /*
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x002c
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0.mo16061c()
            if (r0 == 0) goto L_0x002e
            r0 = r5
            r6 = r0
            r0 = r4
            java.util.List r0 = r0.mo16062b()
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            com.airbnb.lottie.value.Keyframe r0 = (com.airbnb.lottie.value.Keyframe) r0
            T r0 = r0.f6407b
            android.graphics.PointF r0 = (android.graphics.PointF) r0
            r1 = 0
            r2 = 0
            boolean r0 = r0.equals(r1, r2)
            if (r0 == 0) goto L_0x002e
        L_0x002c:
            r0 = 1
            r6 = r0
        L_0x002e:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.AnimatableTransformParser.m15880a(com.airbnb.lottie.model.animatable.AnimatablePathValue):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0036, code lost:
        if (r4.mo16062b().get(0).f6407b.equals(0.0f, 0.0f) != false) goto L_0x0039;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m15879b(com.airbnb.lottie.model.animatable.AnimatableValue<android.graphics.PointF, android.graphics.PointF> r4) {
        /*
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0039
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof com.airbnb.lottie.model.animatable.AnimatableSplitDimensionPathValue
            if (r0 != 0) goto L_0x003b
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0.mo16061c()
            if (r0 == 0) goto L_0x003b
            r0 = r5
            r6 = r0
            r0 = r4
            java.util.List r0 = r0.mo16062b()
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            com.airbnb.lottie.value.Keyframe r0 = (com.airbnb.lottie.value.Keyframe) r0
            T r0 = r0.f6407b
            android.graphics.PointF r0 = (android.graphics.PointF) r0
            r1 = 0
            r2 = 0
            boolean r0 = r0.equals(r1, r2)
            if (r0 == 0) goto L_0x003b
        L_0x0039:
            r0 = 1
            r6 = r0
        L_0x003b:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.AnimatableTransformParser.m15879b(com.airbnb.lottie.model.animatable.AnimatableValue):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0029, code lost:
        if (r3.mo16062b().get(0).f6407b.floatValue() == 0.0f) goto L_0x002c;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m15878c(com.airbnb.lottie.model.animatable.AnimatableFloatValue r3) {
        /*
            r0 = 0
            r4 = r0
            r0 = r3
            if (r0 == 0) goto L_0x002c
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.mo16061c()
            if (r0 == 0) goto L_0x002e
            r0 = r4
            r5 = r0
            r0 = r3
            java.util.List r0 = r0.mo16062b()
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            com.airbnb.lottie.value.Keyframe r0 = (com.airbnb.lottie.value.Keyframe) r0
            T r0 = r0.f6407b
            java.lang.Float r0 = (java.lang.Float) r0
            float r0 = r0.floatValue()
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x002e
        L_0x002c:
            r0 = 1
            r5 = r0
        L_0x002e:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.AnimatableTransformParser.m15878c(com.airbnb.lottie.model.animatable.AnimatableFloatValue):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0029, code lost:
        if (r4.mo16062b().get(0).f6407b.m15653a(1.0f, 1.0f) != false) goto L_0x002c;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m15877d(com.airbnb.lottie.model.animatable.AnimatableScaleValue r4) {
        /*
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x002c
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0.mo16061c()
            if (r0 == 0) goto L_0x002e
            r0 = r5
            r6 = r0
            r0 = r4
            java.util.List r0 = r0.mo16062b()
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            com.airbnb.lottie.value.Keyframe r0 = (com.airbnb.lottie.value.Keyframe) r0
            T r0 = r0.f6407b
            com.airbnb.lottie.value.ScaleXY r0 = (com.airbnb.lottie.value.ScaleXY) r0
            r1 = 1065353216(0x3f800000, float:1.0)
            r2 = 1065353216(0x3f800000, float:1.0)
            boolean r0 = r0.m15653a(r1, r2)
            if (r0 == 0) goto L_0x002e
        L_0x002c:
            r0 = 1
            r6 = r0
        L_0x002e:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.AnimatableTransformParser.m15877d(com.airbnb.lottie.model.animatable.AnimatableScaleValue):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0029, code lost:
        if (r3.mo16062b().get(0).f6407b.floatValue() == 0.0f) goto L_0x002c;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m15876e(com.airbnb.lottie.model.animatable.AnimatableFloatValue r3) {
        /*
            r0 = 0
            r4 = r0
            r0 = r3
            if (r0 == 0) goto L_0x002c
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.mo16061c()
            if (r0 == 0) goto L_0x002e
            r0 = r4
            r5 = r0
            r0 = r3
            java.util.List r0 = r0.mo16062b()
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            com.airbnb.lottie.value.Keyframe r0 = (com.airbnb.lottie.value.Keyframe) r0
            T r0 = r0.f6407b
            java.lang.Float r0 = (java.lang.Float) r0
            float r0 = r0.floatValue()
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x002e
        L_0x002c:
            r0 = 1
            r5 = r0
        L_0x002e:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.AnimatableTransformParser.m15876e(com.airbnb.lottie.model.animatable.AnimatableFloatValue):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0029, code lost:
        if (r3.mo16062b().get(0).f6407b.floatValue() == 0.0f) goto L_0x002c;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m15875f(com.airbnb.lottie.model.animatable.AnimatableFloatValue r3) {
        /*
            r0 = 0
            r4 = r0
            r0 = r3
            if (r0 == 0) goto L_0x002c
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.mo16061c()
            if (r0 == 0) goto L_0x002e
            r0 = r4
            r5 = r0
            r0 = r3
            java.util.List r0 = r0.mo16062b()
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            com.airbnb.lottie.value.Keyframe r0 = (com.airbnb.lottie.value.Keyframe) r0
            T r0 = r0.f6407b
            java.lang.Float r0 = (java.lang.Float) r0
            float r0 = r0.floatValue()
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x002e
        L_0x002c:
            r0 = 1
            r5 = r0
        L_0x002e:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.AnimatableTransformParser.m15875f(com.airbnb.lottie.model.animatable.AnimatableFloatValue):boolean");
    }

    /* renamed from: g */
    public static AnimatableTransform m15874g(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        boolean z = jsonReader.mo15802B() == JsonReader.Token.BEGIN_OBJECT;
        if (z) {
            jsonReader.mo15792d();
        }
        AnimatableFloatValue animatableFloatValue = null;
        AnimatablePathValue animatablePathValue = null;
        AnimatableValue<PointF, PointF> animatableValue = null;
        AnimatableScaleValue animatableScaleValue = null;
        AnimatableFloatValue animatableFloatValue2 = null;
        AnimatableFloatValue animatableFloatValue3 = null;
        AnimatableIntegerValue animatableIntegerValue = null;
        AnimatableFloatValue animatableFloatValue4 = null;
        AnimatableFloatValue animatableFloatValue5 = null;
        while (jsonReader.mo15785k()) {
            switch (jsonReader.mo15801J(f6288a)) {
                case 0:
                    jsonReader.mo15792d();
                    while (jsonReader.mo15785k()) {
                        if (jsonReader.mo15801J(f6289b) != 0) {
                            jsonReader.mo15800K();
                            jsonReader.mo15799L();
                        } else {
                            animatablePathValue = AnimatablePathValueParser.m15884a(jsonReader, lottieComposition);
                        }
                    }
                    jsonReader.mo15788h();
                    continue;
                case 1:
                    animatableValue = AnimatablePathValueParser.m15883b(jsonReader, lottieComposition);
                    continue;
                case 2:
                    animatableScaleValue = AnimatableValueParser.m15864j(jsonReader, lottieComposition);
                    continue;
                case 3:
                    lottieComposition.m16346a("Lottie doesn't support 3D layers.");
                    break;
                case 4:
                    break;
                case 5:
                    animatableIntegerValue = AnimatableValueParser.m15866h(jsonReader, lottieComposition);
                    continue;
                case 6:
                    animatableFloatValue4 = AnimatableValueParser.m15868f(jsonReader, lottieComposition, false);
                    continue;
                case 7:
                    animatableFloatValue5 = AnimatableValueParser.m15868f(jsonReader, lottieComposition, false);
                    continue;
                case 8:
                    animatableFloatValue2 = AnimatableValueParser.m15868f(jsonReader, lottieComposition, false);
                    continue;
                case 9:
                    animatableFloatValue3 = AnimatableValueParser.m15868f(jsonReader, lottieComposition, false);
                    continue;
                default:
                    jsonReader.mo15800K();
                    jsonReader.mo15799L();
                    continue;
            }
            animatableFloatValue = AnimatableValueParser.m15868f(jsonReader, lottieComposition, false);
            if (animatableFloatValue.mo16062b().isEmpty()) {
                animatableFloatValue.mo16062b().add(new Keyframe<>(lottieComposition, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(lottieComposition.m16341f())));
            } else if (animatableFloatValue.mo16062b().get(0).f6407b == null) {
                animatableFloatValue.mo16062b().set(0, new Keyframe<>(lottieComposition, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(lottieComposition.m16341f())));
            }
        }
        if (z) {
            jsonReader.mo15788h();
        }
        AnimatablePathValue animatablePathValue2 = m15880a(animatablePathValue) ? null : animatablePathValue;
        AnimatableValue<PointF, PointF> animatableValue2 = m15879b(animatableValue) ? null : animatableValue;
        AnimatableFloatValue animatableFloatValue6 = m15878c(animatableFloatValue) ? null : animatableFloatValue;
        AnimatableScaleValue animatableScaleValue2 = animatableScaleValue;
        if (m15877d(animatableScaleValue)) {
            animatableScaleValue2 = null;
        }
        if (m15875f(animatableFloatValue2)) {
            animatableFloatValue2 = null;
        }
        if (m15876e(animatableFloatValue3)) {
            animatableFloatValue3 = null;
        }
        return new AnimatableTransform(animatablePathValue2, animatableValue2, animatableScaleValue2, animatableFloatValue6, animatableIntegerValue, animatableFloatValue4, animatableFloatValue5, animatableFloatValue2, animatableFloatValue3);
    }
}
