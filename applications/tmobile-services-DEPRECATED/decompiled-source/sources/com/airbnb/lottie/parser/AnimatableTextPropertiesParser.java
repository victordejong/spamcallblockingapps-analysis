package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextProperties;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/AnimatableTextPropertiesParser.class */
public class AnimatableTextPropertiesParser {

    /* renamed from: a */
    private static JsonReader.Options f6286a = JsonReader.Options.m15804a("a");

    /* renamed from: b */
    private static JsonReader.Options f6287b = JsonReader.Options.m15804a("fc", "sc", "sw", "t");

    private AnimatableTextPropertiesParser() {
    }

    /* renamed from: a */
    public static AnimatableTextProperties m15882a(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        jsonReader.mo15792d();
        AnimatableTextProperties animatableTextProperties = null;
        while (jsonReader.mo15785k()) {
            if (jsonReader.mo15801J(f6286a) != 0) {
                jsonReader.mo15800K();
                jsonReader.mo15799L();
            } else {
                animatableTextProperties = m15881b(jsonReader, lottieComposition);
            }
        }
        jsonReader.mo15788h();
        return animatableTextProperties == null ? new AnimatableTextProperties(null, null, null, null) : animatableTextProperties;
    }

    /* renamed from: b */
    private static AnimatableTextProperties m15881b(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        jsonReader.mo15792d();
        AnimatableColorValue animatableColorValue = null;
        AnimatableColorValue animatableColorValue2 = null;
        AnimatableFloatValue animatableFloatValue = null;
        AnimatableFloatValue animatableFloatValue2 = null;
        while (jsonReader.mo15785k()) {
            int J = jsonReader.mo15801J(f6287b);
            if (J == 0) {
                animatableColorValue = AnimatableValueParser.m15871c(jsonReader, lottieComposition);
            } else if (J == 1) {
                animatableColorValue2 = AnimatableValueParser.m15871c(jsonReader, lottieComposition);
            } else if (J == 2) {
                animatableFloatValue = AnimatableValueParser.m15869e(jsonReader, lottieComposition);
            } else if (J != 3) {
                jsonReader.mo15800K();
                jsonReader.mo15799L();
            } else {
                animatableFloatValue2 = AnimatableValueParser.m15869e(jsonReader, lottieComposition);
            }
        }
        jsonReader.mo15788h();
        return new AnimatableTextProperties(animatableColorValue, animatableColorValue2, animatableFloatValue, animatableFloatValue2);
    }
}
