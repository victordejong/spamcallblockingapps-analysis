package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.animation.keyframe.PathKeyframe;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.value.Keyframe;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/KeyframesParser.class */
class KeyframesParser {

    /* renamed from: a */
    static JsonReader.Options f6311a = JsonReader.Options.m15804a("k");

    private KeyframesParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T> List<Keyframe<T>> m15836a(JsonReader jsonReader, LottieComposition lottieComposition, float f, ValueParser<T> valueParser) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.mo15802B() == JsonReader.Token.STRING) {
            lottieComposition.m16346a("Lottie doesn't support expressions.");
            return arrayList;
        }
        jsonReader.mo15792d();
        while (jsonReader.mo15785k()) {
            if (jsonReader.mo15801J(f6311a) != 0) {
                jsonReader.mo15799L();
            } else if (jsonReader.mo15802B() == JsonReader.Token.BEGIN_ARRAY) {
                jsonReader.mo15794b();
                if (jsonReader.mo15802B() == JsonReader.Token.NUMBER) {
                    arrayList.add(KeyframeParser.m15841b(jsonReader, lottieComposition, f, valueParser, false));
                } else {
                    while (jsonReader.mo15785k()) {
                        arrayList.add(KeyframeParser.m15841b(jsonReader, lottieComposition, f, valueParser, true));
                    }
                }
                jsonReader.mo15790e();
            } else {
                arrayList.add(KeyframeParser.m15841b(jsonReader, lottieComposition, f, valueParser, false));
            }
        }
        jsonReader.mo15788h();
        m15835b(arrayList);
        return arrayList;
    }

    /* renamed from: b */
    public static <T> void m15835b(List<? extends Keyframe<T>> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        while (true) {
            i = size - 1;
            if (i2 >= i) {
                break;
            }
            Keyframe keyframe = (Keyframe) list.get(i2);
            int i3 = i2 + 1;
            Keyframe keyframe2 = (Keyframe) list.get(i3);
            keyframe.f6411f = Float.valueOf(keyframe2.f6410e);
            i2 = i3;
            if (keyframe.f6408c == null) {
                T t = keyframe2.f6407b;
                i2 = i3;
                if (t != null) {
                    keyframe.f6408c = t;
                    i2 = i3;
                    if (keyframe instanceof PathKeyframe) {
                        ((PathKeyframe) keyframe).m16133i();
                        i2 = i3;
                    }
                }
            }
        }
        Keyframe keyframe3 = (Keyframe) list.get(i);
        if ((keyframe3.f6407b == null || keyframe3.f6408c == null) && list.size() > 1) {
            list.remove(keyframe3);
        }
    }
}
