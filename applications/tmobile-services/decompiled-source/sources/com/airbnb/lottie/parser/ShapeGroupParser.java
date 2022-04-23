package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.model.content.ShapeGroup;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/ShapeGroupParser.class */
public class ShapeGroupParser {

    /* renamed from: a */
    private static JsonReader.Options f6330a = JsonReader.Options.m15804a("nm", "hd", "it");

    private ShapeGroupParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static ShapeGroup m15815a(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        ArrayList arrayList = new ArrayList();
        String str = null;
        boolean z = false;
        while (jsonReader.mo15785k()) {
            int J = jsonReader.mo15801J(f6330a);
            if (J == 0) {
                str = jsonReader.mo15779q();
            } else if (J == 1) {
                z = jsonReader.mo15784l();
            } else if (J != 2) {
                jsonReader.mo15799L();
            } else {
                jsonReader.mo15794b();
                while (jsonReader.mo15785k()) {
                    ContentModel a = ContentModelParser.m15860a(jsonReader, lottieComposition);
                    if (a != null) {
                        arrayList.add(a);
                    }
                }
                jsonReader.mo15790e();
            }
        }
        return new ShapeGroup(str, arrayList, z);
    }
}
