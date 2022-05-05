package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/FloatParser.class */
public class FloatParser implements ValueParser<Float> {

    /* renamed from: a */
    public static final FloatParser f6295a = new FloatParser();

    private FloatParser() {
    }

    /* renamed from: b */
    public Float mo15811a(JsonReader jsonReader, float f) throws IOException {
        return Float.valueOf(JsonUtils.m15843g(jsonReader) * f);
    }
}
