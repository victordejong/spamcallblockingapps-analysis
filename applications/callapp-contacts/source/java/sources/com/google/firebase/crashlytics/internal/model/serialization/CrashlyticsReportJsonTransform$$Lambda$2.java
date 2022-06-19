package com.google.firebase.crashlytics.internal.model.serialization;

import android.util.JsonReader;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform$$Lambda$2.class */
public final /* synthetic */ class CrashlyticsReportJsonTransform$$Lambda$2 implements CrashlyticsReportJsonTransform.ObjectParser {
    private static final CrashlyticsReportJsonTransform$$Lambda$2 instance = new CrashlyticsReportJsonTransform$$Lambda$2();

    private CrashlyticsReportJsonTransform$$Lambda$2() {
    }

    @Override // com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform.ObjectParser
    public final Object parse(JsonReader jsonReader) {
        CrashlyticsReport.FilesPayload.File parseFile;
        parseFile = CrashlyticsReportJsonTransform.parseFile(jsonReader);
        return parseFile;
    }
}
