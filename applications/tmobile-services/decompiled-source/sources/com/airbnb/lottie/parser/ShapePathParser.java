package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableShapeValue;
import com.airbnb.lottie.model.content.ShapePath;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/ShapePathParser.class */
class ShapePathParser {

    /* renamed from: a */
    static JsonReader.Options f6331a = JsonReader.Options.m15804a("nm", "ind", "ks", "hd");

    private ShapePathParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static ShapePath m15814a(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        int i = 0;
        String str = null;
        AnimatableShapeValue animatableShapeValue = null;
        boolean z = false;
        while (jsonReader.mo15785k()) {
            int J = jsonReader.mo15801J(f6331a);
            if (J == 0) {
                str = jsonReader.mo15779q();
            } else if (J == 1) {
                i = jsonReader.mo15782o();
            } else if (J == 2) {
                animatableShapeValue = AnimatableValueParser.m15863k(jsonReader, lottieComposition);
            } else if (J != 3) {
                jsonReader.mo15799L();
            } else {
                z = jsonReader.mo15784l();
            }
        }
        return new ShapePath(str, i, animatableShapeValue, z);
    }
}
