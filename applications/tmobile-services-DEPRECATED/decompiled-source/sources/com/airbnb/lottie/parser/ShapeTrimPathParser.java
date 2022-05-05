package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/ShapeTrimPathParser.class */
class ShapeTrimPathParser {

    /* renamed from: a */
    private static JsonReader.Options f6334a = JsonReader.Options.m15804a("s", "e", "o", "nm", "m", "hd");

    private ShapeTrimPathParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static ShapeTrimPath m15812a(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        String str = null;
        ShapeTrimPath.Type type = null;
        AnimatableFloatValue animatableFloatValue = null;
        AnimatableFloatValue animatableFloatValue2 = null;
        AnimatableFloatValue animatableFloatValue3 = null;
        boolean z = false;
        while (jsonReader.mo15785k()) {
            int J = jsonReader.mo15801J(f6334a);
            if (J == 0) {
                animatableFloatValue = AnimatableValueParser.m15868f(jsonReader, lottieComposition, false);
            } else if (J == 1) {
                animatableFloatValue2 = AnimatableValueParser.m15868f(jsonReader, lottieComposition, false);
            } else if (J == 2) {
                animatableFloatValue3 = AnimatableValueParser.m15868f(jsonReader, lottieComposition, false);
            } else if (J == 3) {
                str = jsonReader.mo15779q();
            } else if (J == 4) {
                type = ShapeTrimPath.Type.forId(jsonReader.mo15782o());
            } else if (J != 5) {
                jsonReader.mo15799L();
            } else {
                z = jsonReader.mo15784l();
            }
        }
        return new ShapeTrimPath(str, type, animatableFloatValue, animatableFloatValue2, animatableFloatValue3, z);
    }
}
