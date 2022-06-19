package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepj.class */
public class zzepj extends zzepl implements zzbs {
    private String type;
    private long zzawv;
    private zzbr zzjaw;
    private boolean zzjax;

    public zzepj(String str) {
        this.type = str;
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final String getType() {
        return this.type;
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final void zza(zzbr zzbrVar) {
        this.zzjaw = zzbrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzepl
    public final void zza(zzepn zzepnVar, long j, zzbn zzbnVar) throws IOException {
        this.zzjbd = zzepnVar;
        this.zzjbi = zzepnVar.position();
        this.zzbga = this.zzjbi - ((this.zzjax || 8 + j >= 4294967296L) ? 16 : 8);
        zzepnVar.zzfc(zzepnVar.position() + j);
        this.zzasu = zzepnVar.position();
        this.zzjbg = zzbnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final void zza(zzepn zzepnVar, ByteBuffer byteBuffer, long j, zzbn zzbnVar) throws IOException {
        this.zzawv = zzepnVar.position() - byteBuffer.remaining();
        this.zzjax = byteBuffer.remaining() == 16;
        zza(zzepnVar, j, zzbnVar);
    }
}
