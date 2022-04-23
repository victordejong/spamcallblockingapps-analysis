package com.airbnb.lottie.parser;

import com.airbnb.lottie.model.content.MergePaths;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/MergePathsParser.class */
class MergePathsParser {

    /* renamed from: a */
    private static final JsonReader.Options f6320a = JsonReader.Options.m15804a("nm", "mm", "hd");

    private MergePathsParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static MergePaths m15825a(JsonReader jsonReader) throws IOException {
        String str = null;
        MergePaths.MergePathsMode mergePathsMode = null;
        boolean z = false;
        while (jsonReader.mo15785k()) {
            int J = jsonReader.mo15801J(f6320a);
            if (J == 0) {
                str = jsonReader.mo15779q();
            } else if (J == 1) {
                mergePathsMode = MergePaths.MergePathsMode.forId(jsonReader.mo15782o());
            } else if (J != 2) {
                jsonReader.mo15800K();
                jsonReader.mo15799L();
            } else {
                z = jsonReader.mo15784l();
            }
        }
        return new MergePaths(str, mergePathsMode, z);
    }
}
