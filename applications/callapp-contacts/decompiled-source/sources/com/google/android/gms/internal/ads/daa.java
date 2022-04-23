package com.google.android.gms.internal.ads;

import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/daa.class */
public final class daa implements FilenameFilter {

    /* renamed from: a  reason: collision with root package name */
    private final Pattern f26632a;

    public daa(Pattern pattern) {
        this.f26632a = (Pattern) cyg.a(pattern);
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        return this.f26632a.matcher(str).matches();
    }
}
