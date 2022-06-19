package com.google.firebase.crashlytics.internal.persistence;

import java.io.File;
import java.io.FilenameFilter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$Lambda$1.class */
public final /* synthetic */ class CrashlyticsReportPersistence$$Lambda$1 implements FilenameFilter {
    private final String arg$1;

    private CrashlyticsReportPersistence$$Lambda$1(String str) {
        this.arg$1 = str;
    }

    public static FilenameFilter lambdaFactory$(String str) {
        return new CrashlyticsReportPersistence$$Lambda$1(str);
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        boolean startsWith;
        startsWith = str.startsWith(this.arg$1);
        return startsWith;
    }
}
