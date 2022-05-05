package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.model.content.RectangleShape;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/RectangleShapeParser.class */
public class RectangleShapeParser {

    /* renamed from: a */
    private static JsonReader.Options f6324a = JsonReader.Options.m15804a("nm", "p", "s", "r", "hd");

    private RectangleShapeParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static RectangleShape m15820a(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        String str = null;
        AnimatableValue<PointF, PointF> animatableValue = null;
        AnimatablePointValue animatablePointValue = null;
        AnimatableFloatValue animatableFloatValue = null;
        boolean z = false;
        while (jsonReader.mo15785k()) {
            int J = jsonReader.mo15801J(f6324a);
            if (J == 0) {
                str = jsonReader.mo15779q();
            } else if (J == 1) {
                animatableValue = AnimatablePathValueParser.m15883b(jsonReader, lottieComposition);
            } else if (J == 2) {
                animatablePointValue = AnimatableValueParser.m15865i(jsonReader, lottieComposition);
            } else if (J == 3) {
                animatableFloatValue = AnimatableValueParser.m15869e(jsonReader, lottieComposition);
            } else if (J != 4) {
                jsonReader.mo15799L();
            } else {
                z = jsonReader.mo15784l();
            }
        }
        return new RectangleShape(str, animatableValue, animatablePointValue, animatableFloatValue, z);
    }
}
