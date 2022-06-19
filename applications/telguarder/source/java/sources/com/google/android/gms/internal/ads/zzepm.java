package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepm.class */
public abstract class zzepm extends zzepk implements zzbs {
    private int flags;
    private int version;

    public zzepm(String str) {
        super(str);
    }

    public final int getVersion() {
        if (!this.zzjay) {
            zzbmj();
        }
        return this.version;
    }

    public final long zzr(ByteBuffer byteBuffer) {
        this.version = zzbp.zza(byteBuffer.get());
        this.flags = (zzbp.zzg(byteBuffer) << 8) + 0 + zzbp.zza(byteBuffer.get());
        return 4L;
    }
}
