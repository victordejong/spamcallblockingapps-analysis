package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.model.CubicCurveData;
import com.airbnb.lottie.model.content.ShapeData;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.MiscUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/ShapeDataParser.class */
public class ShapeDataParser implements ValueParser<ShapeData> {

    /* renamed from: a */
    public static final ShapeDataParser f6327a = new ShapeDataParser();

    /* renamed from: b */
    private static final JsonReader.Options f6328b = JsonReader.Options.m15804a("c", "v", "i", "o");

    private ShapeDataParser() {
    }

    /* renamed from: b */
    public ShapeData mo15811a(JsonReader jsonReader, float f) throws IOException {
        if (jsonReader.mo15802B() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.mo15794b();
        }
        jsonReader.mo15792d();
        List<PointF> list = null;
        List<PointF> list2 = null;
        List<PointF> list3 = null;
        boolean z = false;
        while (jsonReader.mo15785k()) {
            int J = jsonReader.mo15801J(f6328b);
            if (J == 0) {
                z = jsonReader.mo15784l();
            } else if (J == 1) {
                list = JsonUtils.m15844f(jsonReader, f);
            } else if (J == 2) {
                list2 = JsonUtils.m15844f(jsonReader, f);
            } else if (J != 3) {
                jsonReader.mo15800K();
                jsonReader.mo15799L();
            } else {
                list3 = JsonUtils.m15844f(jsonReader, f);
            }
        }
        jsonReader.mo15788h();
        if (jsonReader.mo15802B() == JsonReader.Token.END_ARRAY) {
            jsonReader.mo15790e();
        }
        if (list == null || list2 == null || list3 == null) {
            throw new IllegalArgumentException("Shape data was missing information.");
        } else if (list.isEmpty()) {
            return new ShapeData(new PointF(), false, Collections.emptyList());
        } else {
            int size = list.size();
            PointF pointF = list.get(0);
            ArrayList arrayList = new ArrayList(size);
            for (int i = 1; i < size; i++) {
                PointF pointF2 = list.get(i);
                int i2 = i - 1;
                arrayList.add(new CubicCurveData(MiscUtils.m15710a(list.get(i2), list3.get(i2)), MiscUtils.m15710a(pointF2, list2.get(i)), pointF2));
            }
            if (z) {
                PointF pointF3 = list.get(0);
                int i3 = size - 1;
                arrayList.add(new CubicCurveData(MiscUtils.m15710a(list.get(i3), list3.get(i3)), MiscUtils.m15710a(pointF3, list2.get(0)), pointF3));
            }
            return new ShapeData(pointF, z, arrayList);
        }
    }
}
