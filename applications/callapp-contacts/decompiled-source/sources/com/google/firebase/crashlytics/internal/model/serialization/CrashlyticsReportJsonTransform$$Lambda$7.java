package com.google.firebase.crashlytics.internal.model.serialization;

import android.util.JsonReader;
import com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform$$Lambda$7.class */
final /* synthetic */ class CrashlyticsReportJsonTransform$$Lambda$7 implements CrashlyticsReportJsonTransform.ObjectParser {
    private static final CrashlyticsReportJsonTransform$$Lambda$7 instance = new CrashlyticsReportJsonTransform$$Lambda$7();

    private CrashlyticsReportJsonTransform$$Lambda$7() {
    }

    @Override // com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform.ObjectParser
    public final Object parse(JsonReader jsonReader) {
        return CrashlyticsReportJsonTransform.access$lambda$6(jsonReader);
    }
}
