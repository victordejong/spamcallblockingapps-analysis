package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/PointFParser.class */
public class PointFParser implements ValueParser<PointF> {

    /* renamed from: a */
    public static final PointFParser f6322a = new PointFParser();

    private PointFParser() {
    }

    /* renamed from: b */
    public PointF mo15811a(JsonReader jsonReader, float f) throws IOException {
        JsonReader.Token B = jsonReader.mo15802B();
        if (!(B == JsonReader.Token.BEGIN_ARRAY || B == JsonReader.Token.BEGIN_OBJECT)) {
            if (B == JsonReader.Token.NUMBER) {
                PointF pointF = new PointF(((float) jsonReader.mo15783m()) * f, ((float) jsonReader.mo15783m()) * f);
                while (jsonReader.mo15785k()) {
                    jsonReader.mo15799L();
                }
                return pointF;
            }
            throw new IllegalArgumentException("Cannot convert json to point. Next token is " + B);
        }
        return JsonUtils.m15845e(jsonReader, f);
    }
}
