package com.google.firebase.crashlytics.internal.common;

import java.io.File;
import java.nio.charset.Charset;
/* renamed from: com.google.firebase.crashlytics.internal.common.w */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/w.class */
class C9128w {

    /* renamed from: a */
    private static final Charset f39408a = Charset.forName("UTF-8");

    /* renamed from: b */
    private final File f39409b;

    public C9128w(File file) {
        this.f39409b = file;
    }

    /* renamed from: a */
    public File m1769a(String str) {
        File file = this.f39409b;
        return new File(file, str + "keys.meta");
    }

    /* renamed from: b */
    public File m1768b(String str) {
        File file = this.f39409b;
        return new File(file, str + "user.meta");
    }
}
