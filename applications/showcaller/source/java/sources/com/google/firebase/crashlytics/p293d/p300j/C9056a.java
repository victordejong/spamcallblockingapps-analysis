package com.google.firebase.crashlytics.p293d.p300j;

import java.io.File;
import java.io.FilenameFilter;
/* renamed from: com.google.firebase.crashlytics.d.j.a */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/j/a.class */
public final /* synthetic */ class C9056a implements FilenameFilter {

    /* renamed from: a */
    private final String f39208a;

    private C9056a(String str) {
        this.f39208a = str;
    }

    /* renamed from: a */
    public static FilenameFilter m2037a(String str) {
        return new C9056a(str);
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        boolean startsWith;
        startsWith = str.startsWith(this.f39208a);
        return startsWith;
    }
}
