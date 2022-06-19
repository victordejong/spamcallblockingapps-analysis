package com.google.firebase.crashlytics.internal.persistence;

import java.io.File;
import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$Lambda$4.class */
public final /* synthetic */ class CrashlyticsReportPersistence$$Lambda$4 implements Comparator {
    private static final CrashlyticsReportPersistence$$Lambda$4 instance = new CrashlyticsReportPersistence$$Lambda$4();

    private CrashlyticsReportPersistence$$Lambda$4() {
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        return CrashlyticsReportPersistence.oldestEventFileFirst((File) obj, (File) obj2);
    }
}
