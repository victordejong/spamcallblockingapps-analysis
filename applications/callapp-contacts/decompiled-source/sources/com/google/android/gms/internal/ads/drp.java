package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drp.class */
public class drp extends drr implements aqp {
    private apo f;
    private String g;
    private boolean h;
    private long i;

    public drp(String str) {
        this.g = str;
    }

    @Override // com.google.android.gms.internal.ads.aqp
    public final String a() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.ads.aqp
    public final void a(apo apoVar) {
        this.f = apoVar;
    }

    @Override // com.google.android.gms.internal.ads.drr
    public final void a(drt drtVar, long j, alm almVar) throws IOException {
        this.f27135b = drtVar;
        this.f27136c = drtVar.b();
        this.f27137d = this.f27136c - ((this.h || 8 + j >= 4294967296L) ? 16 : 8);
        drtVar.a(drtVar.b() + j);
        this.e = drtVar.b();
        this.f27134a = almVar;
    }

    @Override // com.google.android.gms.internal.ads.aqp
    public final void a(drt drtVar, ByteBuffer byteBuffer, long j, alm almVar) throws IOException {
        this.i = drtVar.b() - byteBuffer.remaining();
        this.h = byteBuffer.remaining() == 16;
        a(drtVar, j, almVar);
    }
}
