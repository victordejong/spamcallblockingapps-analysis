package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzjz.class */
public interface zzjz {
    long getLength();

    long getPosition();

    int read(byte[] bArr, int i, int i2) throws IOException, InterruptedException;

    void readFully(byte[] bArr, int i, int i2) throws IOException, InterruptedException;

    void zza(byte[] bArr, int i, int i2) throws IOException, InterruptedException;

    boolean zza(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException;

    int zzaf(int i) throws IOException, InterruptedException;

    void zzag(int i) throws IOException, InterruptedException;

    void zzah(int i) throws IOException, InterruptedException;

    void zzgq();
}
