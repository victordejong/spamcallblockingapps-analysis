package com.airbnb.lottie.parser;

import android.graphics.Path;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableGradientColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.model.content.GradientFill;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.value.Keyframe;
import java.io.IOException;
import java.util.Collections;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/GradientFillParser.class */
public class GradientFillParser {

    /* renamed from: a */
    private static final JsonReader.Options f6300a = JsonReader.Options.m15804a("nm", "g", "o", "t", "s", "e", "r", "hd");

    /* renamed from: b */
    private static final JsonReader.Options f6301b = JsonReader.Options.m15804a("p", "k");

    private GradientFillParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static GradientFill m15852a(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        Path.FillType fillType = Path.FillType.WINDING;
        AnimatableIntegerValue animatableIntegerValue = null;
        String str = null;
        AnimatablePointValue animatablePointValue = null;
        AnimatablePointValue animatablePointValue2 = null;
        boolean z = false;
        AnimatableGradientColorValue animatableGradientColorValue = null;
        GradientType gradientType = null;
        while (jsonReader.mo15785k()) {
            switch (jsonReader.mo15801J(f6300a)) {
                case 0:
                    str = jsonReader.mo15779q();
                    break;
                case 1:
                    int i = -1;
                    jsonReader.mo15792d();
                    while (jsonReader.mo15785k()) {
                        int J = jsonReader.mo15801J(f6301b);
                        if (J == 0) {
                            i = jsonReader.mo15782o();
                        } else if (J != 1) {
                            jsonReader.mo15800K();
                            jsonReader.mo15799L();
                        } else {
                            animatableGradientColorValue = AnimatableValueParser.m15867g(jsonReader, lottieComposition, i);
                        }
                    }
                    jsonReader.mo15788h();
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
                    fillType = jsonReader.mo15782o() == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD;
                    break;
                case 7:
                    z = jsonReader.mo15784l();
                    break;
                default:
                    jsonReader.mo15800K();
                    jsonReader.mo15799L();
                    break;
            }
        }
        return new GradientFill(str, gradientType, fillType, animatableGradientColorValue, animatableIntegerValue == null ? new AnimatableIntegerValue(Collections.singletonList(new Keyframe(100))) : animatableIntegerValue, animatablePointValue, animatablePointValue2, null, null, z);
    }
}
