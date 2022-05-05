package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.value.ScaleXY;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/ScaleXYParser.class */
public class ScaleXYParser implements ValueParser<ScaleXY> {

    /* renamed from: a */
    public static final ScaleXYParser f6326a = new ScaleXYParser();

    private ScaleXYParser() {
    }

    /* renamed from: b */
    public ScaleXY mo15811a(JsonReader jsonReader, float f) throws IOException {
        boolean z = jsonReader.mo15802B() == JsonReader.Token.BEGIN_ARRAY;
        if (z) {
            jsonReader.mo15794b();
        }
        float m = (float) jsonReader.mo15783m();
        float m2 = (float) jsonReader.mo15783m();
        while (jsonReader.mo15785k()) {
            jsonReader.mo15799L();
        }
        if (z) {
            jsonReader.mo15790e();
        }
        return new ScaleXY((m / 100.0f) * f, (m2 / 100.0f) * f);
    }
}
