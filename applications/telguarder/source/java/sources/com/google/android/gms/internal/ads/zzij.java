package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzij.class */
public interface zzij {
    public static final ByteBuffer zzajc = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    void flush();

    boolean isActive();

    void reset();

    boolean zzb(int i, int i2, int i3) throws zzii;

    boolean zzfe();

    int zzfj();

    int zzfk();

    void zzfl();

    ByteBuffer zzfm();

    void zzn(ByteBuffer byteBuffer);
}
