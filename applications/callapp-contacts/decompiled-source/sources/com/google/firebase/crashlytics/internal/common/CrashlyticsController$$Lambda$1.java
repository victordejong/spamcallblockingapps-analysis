package com.google.firebase.crashlytics.internal.common;

import java.io.File;
import java.io.FilenameFilter;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CrashlyticsController$$Lambda$1.class */
final /* synthetic */ class CrashlyticsController$$Lambda$1 implements FilenameFilter {
    private static final CrashlyticsController$$Lambda$1 instance = new CrashlyticsController$$Lambda$1();

    private CrashlyticsController$$Lambda$1() {
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        return CrashlyticsController.lambda$static$0(file, str);
    }
}
