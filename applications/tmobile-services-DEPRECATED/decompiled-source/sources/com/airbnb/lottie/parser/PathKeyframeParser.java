package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.animation.keyframe.PathKeyframe;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Utils;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/PathKeyframeParser.class */
class PathKeyframeParser {
    private PathKeyframeParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static PathKeyframe m15824a(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        return new PathKeyframe(lottieComposition, KeyframeParser.m15841b(jsonReader, lottieComposition, Utils.m15693e(), PathParser.f6321a, jsonReader.mo15802B() == JsonReader.Token.BEGIN_OBJECT));
    }
}
