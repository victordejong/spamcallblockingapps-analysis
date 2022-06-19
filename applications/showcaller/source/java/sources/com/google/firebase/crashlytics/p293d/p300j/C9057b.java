package com.google.firebase.crashlytics.p293d.p300j;

import java.io.File;
import java.io.FileFilter;
/* renamed from: com.google.firebase.crashlytics.d.j.b */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/j/b.class */
public final /* synthetic */ class C9057b implements FileFilter {

    /* renamed from: a */
    private final String f39209a;

    private C9057b(String str) {
        this.f39209a = str;
    }

    /* renamed from: a */
    public static FileFilter m2036a(String str) {
        return new C9057b(str);
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        return C9062g.m1998u(this.f39209a, file);
    }
}
