package com.google.firebase.crashlytics.internal.persistence;

import java.io.File;
import java.io.FilenameFilter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$Lambda$3.class */
public final /* synthetic */ class CrashlyticsReportPersistence$$Lambda$3 implements FilenameFilter {
    private static final CrashlyticsReportPersistence$$Lambda$3 instance = new CrashlyticsReportPersistence$$Lambda$3();

    private CrashlyticsReportPersistence$$Lambda$3() {
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        return CrashlyticsReportPersistence.isNormalPriorityEventFile(file, str);
    }
}
