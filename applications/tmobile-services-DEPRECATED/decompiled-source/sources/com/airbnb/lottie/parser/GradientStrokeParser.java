package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableGradientColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.model.content.GradientStroke;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.value.Keyframe;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/GradientStrokeParser.class */
public class GradientStrokeParser {

    /* renamed from: a */
    private static JsonReader.Options f6302a = JsonReader.Options.m15804a("nm", "g", "o", "t", "s", "e", "w", "lc", "lj", "ml", "hd", "d");

    /* renamed from: b */
    private static final JsonReader.Options f6303b = JsonReader.Options.m15804a("p", "k");

    /* renamed from: c */
    private static final JsonReader.Options f6304c = JsonReader.Options.m15804a("n", "v");

    private GradientStrokeParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static GradientStroke m15851a(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        ArrayList arrayList = new ArrayList();
        String str = null;
        GradientType gradientType = null;
        AnimatableGradientColorValue animatableGradientColorValue = null;
        AnimatablePointValue animatablePointValue = null;
        AnimatablePointValue animatablePointValue2 = null;
        AnimatableFloatValue animatableFloatValue = null;
        ShapeStroke.LineCapType lineCapType = null;
        ShapeStroke.LineJoinType lineJoinType = null;
        float f = 0.0f;
        AnimatableFloatValue animatableFloatValue2 = null;
        boolean z = false;
        AnimatableIntegerValue animatableIntegerValue = null;
        while (jsonReader.mo15785k()) {
            switch (jsonReader.mo15801J(f6302a)) {
                case 0:
                    str = jsonReader.mo15779q();
                    break;
                case 1:
                    int i = -1;
                    jsonReader.mo15792d();
                    AnimatableGradientColorValue animatableGradientColorValue2 = animatableGradientColorValue;
                    while (jsonReader.mo15785k()) {
                        int J = jsonReader.mo15801J(f6303b);
                        if (J == 0) {
                            i = jsonReader.mo15782o();
                        } else if (J != 1) {
                            jsonReader.mo15800K();
                            jsonReader.mo15799L();
                        } else {
                            animatableGradientColorValue2 = AnimatableValueParser.m15867g(jsonReader, lottieComposition, i);
                        }
                    }
                    jsonReader.mo15788h();
                    animatableGradientColorValue = animatableGradientColorValue2;
                    break;
                case 2:
                    animatableIntegerValue = AnimatableValueParser.m15866h(jsonReader, lottieComposition);
                    break;
                case 3:
                    gradientType = jsonReader.mo15782o() == 1 ? GradientType.LINEAR : GradientType.RADIAL;
                    break;
                case 4:
                    animatablePointValue = AnimatableValueParser.m15865i(jsonReader, lottieComposition);
                    break;
                case 5:
                    animatablePointValue2 = AnimatableValueParser.m15865i(jsonReader, lottieComposition);
                    break;
                case 6:
                    animatableFloatValue = AnimatableValueParser.m15869e(jsonReader, lottieComposition);
                    break;
                case 7:
                    lineCapType = ShapeStroke.LineCapType.values()[jsonReader.mo15782o() - 1];
                    break;
                case 8:
                    lineJoinType = ShapeStroke.LineJoinType.values()[jsonReader.mo15782o() - 1];
                    break;
                case 9:
                    f = (float) jsonReader.mo15783m();
                    break;
                case 10:
                    z = jsonReader.mo15784l();
                    break;
                case 11:
                    jsonReader.mo15794b();
                    while (jsonReader.mo15785k()) {
                        jsonReader.mo15792d();
                        String str2 = null;
                        AnimatableFloatValue animatableFloatValue3 = null;
                        while (jsonReader.mo15785k()) {
                            int J2 = jsonReader.mo15801J(f6304c);
                            if (J2 == 0) {
                                str2 = jsonReader.mo15779q();
                            } else if (J2 != 1) {
                                jsonReader.mo15800K();
                                jsonReader.mo15799L();
                            } else {
                                animatableFloatValue3 = AnimatableValueParser.m15869e(jsonReader, lottieComposition);
                            }
                        }
                        jsonReader.mo15788h();
                        if (str2.equals("o")) {
                            animatableFloatValue2 = animatableFloatValue3;
                        } else if (str2.equals("d") || str2.equals("g")) {
                            lottieComposition.m16327t(true);
                            arrayList.add(animatableFloatValue3);
                        }
                    }
                    jsonReader.mo15790e();
                    if (arrayList.size() != 1) {
                        break;
                    } else {
                        arrayList.add(arrayList.get(0));
                        break;
                    }
                default:
                    jsonReader.mo15800K();
                    jsonReader.mo15799L();
                    break;
            }
        }
        AnimatableIntegerValue animatableIntegerValue2 = animatableIntegerValue;
        if (animatableIntegerValue == null) {
            animatableIntegerValue2 = new AnimatableIntegerValue(Collections.singletonList(new Keyframe(100)));
        }
        return new GradientStroke(str, gradientType, animatableGradientColorValue, animatableIntegerValue2, animatablePointValue, animatablePointValue2, animatableFloatValue, lineCapType, lineJoinType, f, arrayList, animatableFloatValue2, z);
    }
}
