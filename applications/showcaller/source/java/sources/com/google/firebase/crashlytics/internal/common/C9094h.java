package com.google.firebase.crashlytics.internal.common;

import java.io.File;
import java.io.FilenameFilter;
/* renamed from: com.google.firebase.crashlytics.internal.common.h */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/h.class */
final /* synthetic */ class C9094h implements FilenameFilter {

    /* renamed from: a */
    private static final C9094h f39305a = new C9094h();

    private C9094h() {
    }

    /* renamed from: a */
    public static FilenameFilter m1903a() {
        return f39305a;
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        boolean startsWith;
        startsWith = str.startsWith(".ae");
        return startsWith;
    }
}
