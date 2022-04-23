package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeog.class */
public class zzeog extends zzeoi implements zzbp {

    /* renamed from: h */
    public String f28110h;

    /* renamed from: i */
    public boolean f28111i;

    public zzeog(String str) {
        this.f28110h = str;
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    /* renamed from: a */
    public final void mo12213a(zzbs zzbsVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzeoi
    /* renamed from: a */
    public final void mo12210a(zzeok zzeokVar, long j, zzbo zzboVar) throws IOException {
        this.f28114b = zzeokVar;
        this.f28116d = zzeokVar.position();
        if (!this.f28111i) {
        }
        zzeokVar.mo12207b(zzeokVar.position() + j);
        this.f28117e = zzeokVar.position();
        this.f28113a = zzboVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    /* renamed from: a */
    public final void mo12212a(zzeok zzeokVar, ByteBuffer byteBuffer, long j, zzbo zzboVar) throws IOException {
        zzeokVar.position();
        byteBuffer.remaining();
        this.f28111i = byteBuffer.remaining() == 16;
        mo12210a(zzeokVar, j, zzboVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final String getType() {
        return this.f28110h;
    }
}
