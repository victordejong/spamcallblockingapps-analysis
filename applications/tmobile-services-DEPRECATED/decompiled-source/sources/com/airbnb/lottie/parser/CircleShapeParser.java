package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.model.content.CircleShape;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/CircleShapeParser.class */
public class CircleShapeParser {

    /* renamed from: a */
    private static JsonReader.Options f6290a = JsonReader.Options.m15804a("nm", "p", "s", "hd", "d");

    private CircleShapeParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static CircleShape m15862a(JsonReader jsonReader, LottieComposition lottieComposition, int i) throws IOException {
        boolean z = i == 3;
        String str = null;
        AnimatableValue<PointF, PointF> animatableValue = null;
        AnimatablePointValue animatablePointValue = null;
        boolean z2 = false;
        while (jsonReader.mo15785k()) {
            int J = jsonReader.mo15801J(f6290a);
            if (J == 0) {
                str = jsonReader.mo15779q();
            } else if (J == 1) {
                animatableValue = AnimatablePathValueParser.m15883b(jsonReader, lottieComposition);
            } else if (J == 2) {
                animatablePointValue = AnimatableValueParser.m15865i(jsonReader, lottieComposition);
            } else if (J == 3) {
                z2 = jsonReader.mo15784l();
            } else if (J != 4) {
                jsonReader.mo15800K();
                jsonReader.mo15799L();
            } else {
                z = jsonReader.mo15782o() == 3;
            }
        }
        return new CircleShape(str, animatableValue, animatablePointValue, z, z2);
    }
}
