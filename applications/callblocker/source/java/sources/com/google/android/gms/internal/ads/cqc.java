package com.google.android.gms.internal.ads;

import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqc.class */
public final class cqc implements FilenameFilter {

    /* renamed from: a */
    private final Pattern f13535a;

    public cqc(Pattern pattern) {
        this.f13535a = (Pattern) cor.m10936a(pattern);
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(@NullableDecl File file, String str) {
        return this.f13535a.matcher(str).matches();
    }
}
