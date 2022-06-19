package com.google.android.gms.internal.ads;

import java.io.File;
import java.io.FilenameFilter;
import java.util.Objects;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ny2.class */
public final class ny2 implements FilenameFilter {

    /* renamed from: a */
    private final Pattern f27369a;

    public ny2(Pattern pattern) {
        Objects.requireNonNull(pattern);
        this.f27369a = pattern;
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        return this.f27369a.matcher(str).matches();
    }
}
