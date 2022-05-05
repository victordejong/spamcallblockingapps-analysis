package com.airbnb.lottie.parser;

import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/FontParser.class */
class FontParser {

    /* renamed from: a */
    private static final JsonReader.Options f6298a = JsonReader.Options.m15804a("fFamily", "fName", "fStyle", "ascent");

    private FontParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Font m15856a(JsonReader jsonReader) throws IOException {
        jsonReader.mo15792d();
        String str = null;
        String str2 = null;
        String str3 = null;
        float f = 0.0f;
        while (jsonReader.mo15785k()) {
            int J = jsonReader.mo15801J(f6298a);
            if (J == 0) {
                str = jsonReader.mo15779q();
            } else if (J == 1) {
                str2 = jsonReader.mo15779q();
            } else if (J == 2) {
                str3 = jsonReader.mo15779q();
            } else if (J != 3) {
                jsonReader.mo15800K();
                jsonReader.mo15799L();
            } else {
                f = (float) jsonReader.mo15783m();
            }
        }
        jsonReader.mo15788h();
        return new Font(str, str2, str3, f);
    }
}
