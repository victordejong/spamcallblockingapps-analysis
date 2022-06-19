package com.google.android.gms.internal.vision;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzir.class */
public interface zzir<T> {
    boolean equals(T t, T t2);

    int hashCode(T t);

    T newInstance();

    void zza(T t, zzis zzisVar, zzgd zzgdVar) throws IOException;

    void zza(T t, zzkg zzkgVar) throws IOException;

    void zza(T t, byte[] bArr, int i, int i2, zzfb zzfbVar) throws IOException;

    void zzd(T t, T t2);

    void zzg(T t);

    int zzr(T t);

    boolean zzt(T t);
}
