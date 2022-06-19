package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.view.Surface;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcis.class */
public abstract class zzcis {
    @VisibleForTesting
    public static final AtomicInteger zza = new AtomicInteger(0);
    @VisibleForTesting
    public static final AtomicInteger zzb = new AtomicInteger(0);

    public static int zzP() {
        return zza.get();
    }

    public static int zzQ() {
        return zzb.get();
    }

    public abstract boolean zzA();

    public abstract int zzB();

    public abstract long zzC();

    public abstract boolean zzD();

    public abstract void zzE(boolean z);

    public abstract void zzF(int i);

    public abstract void zzG(int i);

    public abstract long zzH();

    public abstract long zzI();

    public abstract long zzJ();

    public abstract long zzK();

    public abstract int zzL();

    public abstract void zzM(boolean z);

    public abstract long zzN();

    public abstract long zzO();

    public abstract void zzp(Uri[] uriArr, String str);

    public abstract void zzq(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z);

    public abstract void zzr(zzcir zzcirVar);

    public abstract void zzs();

    public abstract void zzt(Surface surface, boolean z) throws IOException;

    public abstract void zzu(float f, boolean z) throws IOException;

    public abstract void zzv();

    public abstract void zzw(long j);

    public abstract void zzx(int i);

    public abstract void zzy(int i);

    public abstract void zzz(int i);
}
