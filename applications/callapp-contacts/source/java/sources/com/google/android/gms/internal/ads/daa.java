package com.google.android.gms.internal.ads;

import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/daa.class */
public final class daa implements FilenameFilter {

    /* renamed from: a */
    private final Pattern f46844a;

    public daa(Pattern pattern) {
        this.f46844a = (Pattern) cyg.m17060a(pattern);
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        return this.f46844a.matcher(str).matches();
    }
}
