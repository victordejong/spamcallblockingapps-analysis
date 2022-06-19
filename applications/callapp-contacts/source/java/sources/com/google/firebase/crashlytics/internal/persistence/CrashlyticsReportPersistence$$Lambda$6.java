package com.google.firebase.crashlytics.internal.persistence;

import java.io.File;
import java.io.FilenameFilter;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$Lambda$6.class */
final /* synthetic */ class CrashlyticsReportPersistence$$Lambda$6 implements FilenameFilter {
    private static final CrashlyticsReportPersistence$$Lambda$6 instance = new CrashlyticsReportPersistence$$Lambda$6();

    private CrashlyticsReportPersistence$$Lambda$6() {
    }

    public static FilenameFilter lambdaFactory$() {
        return instance;
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        boolean startsWith;
        startsWith = str.startsWith(CrashlyticsReportPersistence.EVENT_FILE_NAME_PREFIX);
        return startsWith;
    }
}
