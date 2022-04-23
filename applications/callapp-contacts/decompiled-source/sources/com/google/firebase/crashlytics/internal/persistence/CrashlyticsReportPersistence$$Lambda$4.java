package com.google.firebase.crashlytics.internal.persistence;

import java.io.File;
import java.util.Comparator;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$Lambda$4.class */
final /* synthetic */ class CrashlyticsReportPersistence$$Lambda$4 implements Comparator {
    private static final CrashlyticsReportPersistence$$Lambda$4 instance = new CrashlyticsReportPersistence$$Lambda$4();

    private CrashlyticsReportPersistence$$Lambda$4() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return CrashlyticsReportPersistence.access$lambda$1((File) obj, (File) obj2);
    }
}
