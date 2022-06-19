package com.google.android.gms.internal.ads;

import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdye.class */
public final class zzdye implements FilenameFilter {
    private final Pattern zzhlm;

    public zzdye(Pattern pattern) {
        this.zzhlm = (Pattern) zzdwl.checkNotNull(pattern);
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(@NullableDecl File file, String str) {
        return this.zzhlm.matcher(str).matches();
    }
}
