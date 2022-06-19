package com.google.android.gms.internal.ads;

import java.io.File;
import java.io.FilenameFilter;
import java.util.Objects;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqp.class */
public final class zzfqp implements FilenameFilter {
    private final Pattern zza;

    public zzfqp(Pattern pattern) {
        Objects.requireNonNull(pattern);
        this.zza = pattern;
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        return this.zza.matcher(str).matches();
    }
}
