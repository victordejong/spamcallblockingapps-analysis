package com.google.android.gms.internal.mlkit_common;

import android.system.Os;
import android.system.OsConstants;
import android.system.StructStat;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzj.class */
public final class zzj {
    public final long zza;
    public final long zzb;
    public final boolean zzc;

    /* JADX INFO: Access modifiers changed from: private */
    public zzj(long j, long j2, boolean z) {
        this.zza = j;
        this.zzb = j2;
        this.zzc = z;
    }

    public static zzj zza(FileDescriptor fileDescriptor) throws IOException {
        StructStat structStat = (StructStat) zza(new Callable(fileDescriptor) { // from class: com.google.android.gms.internal.mlkit_common.zzi
            private final FileDescriptor zza;

            {
                this.zza = fileDescriptor;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return Os.fstat(this.zza);
            }
        });
        return new zzj(structStat.st_dev, structStat.st_ino, OsConstants.S_ISLNK(structStat.st_mode));
    }

    public static zzj zza(String str) throws IOException {
        StructStat structStat = (StructStat) zza(new Callable(str) { // from class: com.google.android.gms.internal.mlkit_common.zzl
            private final String zza;

            {
                this.zza = str;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return Os.lstat(this.zza);
            }
        });
        return new zzj(structStat.st_dev, structStat.st_ino, OsConstants.S_ISLNK(structStat.st_mode));
    }

    private static <T> T zza(Callable<T> callable) throws IOException {
        try {
            return callable.call();
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }
}
