package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.view.Surface;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcky.class */
public abstract class zzcky {
    @VisibleForTesting
    public static final AtomicInteger zza = new AtomicInteger(0);
    @VisibleForTesting
    public static final AtomicInteger zzb = new AtomicInteger(0);

    public static int zzq() {
        return zza.get();
    }

    public static int zzs() {
        return zzb.get();
    }

    public abstract void zzA(Uri[] uriArr, String str);

    public abstract void zzB(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z);

    public abstract void zzC();

    public abstract void zzD(long j);

    public abstract void zzE(int i);

    public abstract void zzF(int i);

    public abstract void zzG(zzckx zzckxVar);

    public abstract void zzH(int i);

    public abstract void zzI(int i);

    public abstract void zzJ(boolean z);

    public abstract void zzK(boolean z);

    public abstract void zzL(int i);

    public abstract void zzM(Surface surface, boolean z) throws IOException;

    public abstract void zzN(float f, boolean z) throws IOException;

    public abstract void zzO();

    public abstract boolean zzP();

    public abstract boolean zzQ();

    public abstract int zzp();

    public abstract int zzr();

    public abstract long zzt();

    public abstract long zzu();

    public abstract long zzv();

    public abstract long zzw();

    public abstract long zzx();

    public abstract long zzy();

    public abstract long zzz();
}
