package com.google.android.gms.internal.ads;

import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sx1.class */
public final class sx1 implements FilenameFilter {

    /* renamed from: a */
    private final Pattern f8578a;

    public sx1(Pattern pattern) {
        pattern.getClass();
        this.f8578a = pattern;
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(@NullableDecl File file, String str) {
        return this.f8578a.matcher(str).matches();
    }
}
