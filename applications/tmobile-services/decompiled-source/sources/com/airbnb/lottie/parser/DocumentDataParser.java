package com.airbnb.lottie.parser;

import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/DocumentDataParser.class */
public class DocumentDataParser implements ValueParser<DocumentData> {

    /* renamed from: a */
    public static final DocumentDataParser f6293a = new DocumentDataParser();

    /* renamed from: b */
    private static final JsonReader.Options f6294b = JsonReader.Options.m15804a("t", "f", "s", "j", "tr", "lh", "ls", "fc", "sc", "sw", "of");

    private DocumentDataParser() {
    }

    /* renamed from: b */
    public DocumentData mo15811a(JsonReader jsonReader, float f) throws IOException {
        DocumentData.Justification justification = DocumentData.Justification.CENTER;
        jsonReader.mo15792d();
        String str = null;
        String str2 = null;
        float f2 = 0.0f;
        int i = 0;
        float f3 = 0.0f;
        float f4 = 0.0f;
        int i2 = 0;
        int i3 = 0;
        float f5 = 0.0f;
        boolean z = true;
        while (jsonReader.mo15785k()) {
            switch (jsonReader.mo15801J(f6294b)) {
                case 0:
                    str = jsonReader.mo15779q();
                    break;
                case 1:
                    str2 = jsonReader.mo15779q();
                    break;
                case 2:
                    f2 = (float) jsonReader.mo15783m();
                    break;
                case 3:
                    int o = jsonReader.mo15782o();
                    if (o <= DocumentData.Justification.CENTER.ordinal() && o >= 0) {
                        justification = DocumentData.Justification.values()[o];
                        break;
                    } else {
                        justification = DocumentData.Justification.CENTER;
                        break;
                    }
                case 4:
                    i = jsonReader.mo15782o();
                    break;
                case 5:
                    f3 = (float) jsonReader.mo15783m();
                    break;
                case 6:
                    f4 = (float) jsonReader.mo15783m();
                    break;
                case 7:
                    i2 = JsonUtils.m15846d(jsonReader);
                    break;
                case 8:
                    i3 = JsonUtils.m15846d(jsonReader);
                    break;
                case 9:
                    f5 = (float) jsonReader.mo15783m();
                    break;
                case 10:
                    z = jsonReader.mo15784l();
                    break;
                default:
                    jsonReader.mo15800K();
                    jsonReader.mo15799L();
                    break;
            }
        }
        jsonReader.mo15788h();
        return new DocumentData(str, str2, f2, justification, i, f3, f4, i2, i3, f5, z);
    }
}
