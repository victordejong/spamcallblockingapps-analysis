package com.google.firebase.crashlytics.internal.model.serialization;

import android.util.JsonReader;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform$$Lambda$1.class */
public final /* synthetic */ class CrashlyticsReportJsonTransform$$Lambda$1 implements CrashlyticsReportJsonTransform.ObjectParser {
    private static final CrashlyticsReportJsonTransform$$Lambda$1 instance = new CrashlyticsReportJsonTransform$$Lambda$1();

    private CrashlyticsReportJsonTransform$$Lambda$1() {
    }

    @Override // com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform.ObjectParser
    public final Object parse(JsonReader jsonReader) {
        CrashlyticsReport.Session.Event parseEvent;
        parseEvent = CrashlyticsReportJsonTransform.parseEvent(jsonReader);
        return parseEvent;
    }
}
