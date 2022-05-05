package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/IntegerParser.class */
public class IntegerParser implements ValueParser<Integer> {

    /* renamed from: a */
    public static final IntegerParser f6305a = new IntegerParser();

    private IntegerParser() {
    }

    /* renamed from: b */
    public Integer mo15811a(JsonReader jsonReader, float f) throws IOException {
        return Integer.valueOf(Math.round(JsonUtils.m15843g(jsonReader) * f));
    }
}
