package com.google.firebase.crashlytics.p293d.p300j;

import java.io.File;
import java.io.FilenameFilter;
/* renamed from: com.google.firebase.crashlytics.d.j.f */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/j/f.class */
final /* synthetic */ class C9061f implements FilenameFilter {

    /* renamed from: a */
    private static final C9061f f39213a = new C9061f();

    private C9061f() {
    }

    /* renamed from: a */
    public static FilenameFilter m2032a() {
        return f39213a;
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        boolean startsWith;
        startsWith = str.startsWith("event");
        return startsWith;
    }
}
