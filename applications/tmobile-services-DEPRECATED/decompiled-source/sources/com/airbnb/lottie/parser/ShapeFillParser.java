package com.airbnb.lottie.parser;

import android.graphics.Path;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.content.ShapeFill;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.value.Keyframe;
import java.io.IOException;
import java.util.Collections;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/ShapeFillParser.class */
public class ShapeFillParser {

    /* renamed from: a */
    private static final JsonReader.Options f6329a = JsonReader.Options.m15804a("nm", "c", "o", "fillEnabled", "r", "hd");

    private ShapeFillParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static ShapeFill m15816a(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        AnimatableIntegerValue animatableIntegerValue = null;
        String str = null;
        AnimatableColorValue animatableColorValue = null;
        int i = 1;
        boolean z = false;
        boolean z2 = false;
        while (jsonReader.mo15785k()) {
            int J = jsonReader.mo15801J(f6329a);
            if (J == 0) {
                str = jsonReader.mo15779q();
            } else if (J == 1) {
                animatableColorValue = AnimatableValueParser.m15871c(jsonReader, lottieComposition);
            } else if (J == 2) {
                animatableIntegerValue = AnimatableValueParser.m15866h(jsonReader, lottieComposition);
            } else if (J == 3) {
                z = jsonReader.mo15784l();
            } else if (J == 4) {
                i = jsonReader.mo15782o();
            } else if (J != 5) {
                jsonReader.mo15800K();
                jsonReader.mo15799L();
            } else {
                z2 = jsonReader.mo15784l();
            }
        }
        return new ShapeFill(str, z, i == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD, animatableColorValue, animatableIntegerValue == null ? new AnimatableIntegerValue(Collections.singletonList(new Keyframe(100))) : animatableIntegerValue, z2);
    }
}
