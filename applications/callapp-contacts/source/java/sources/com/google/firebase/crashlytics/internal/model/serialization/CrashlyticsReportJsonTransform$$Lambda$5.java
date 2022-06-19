package com.google.firebase.crashlytics.internal.model.serialization;

import android.util.JsonReader;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform$$Lambda$5.class */
public final /* synthetic */ class CrashlyticsReportJsonTransform$$Lambda$5 implements CrashlyticsReportJsonTransform.ObjectParser {
    private static final CrashlyticsReportJsonTransform$$Lambda$5 instance = new CrashlyticsReportJsonTransform$$Lambda$5();

    private CrashlyticsReportJsonTransform$$Lambda$5() {
    }

    public static CrashlyticsReportJsonTransform.ObjectParser lambdaFactory$() {
        return instance;
    }

    @Override // com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform.ObjectParser
    public final Object parse(JsonReader jsonReader) {
        CrashlyticsReport.Session.Event.Application.Execution.BinaryImage parseEventBinaryImage;
        parseEventBinaryImage = CrashlyticsReportJsonTransform.parseEventBinaryImage(jsonReader);
        return parseEventBinaryImage;
    }
}
