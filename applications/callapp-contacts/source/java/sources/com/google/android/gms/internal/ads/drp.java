package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drp.class */
public class drp extends drr implements aqp {

    /* renamed from: f */
    private apo f47461f;

    /* renamed from: g */
    private String f47462g;

    /* renamed from: h */
    private boolean f47463h;

    /* renamed from: i */
    private long f47464i;

    public drp(String str) {
        this.f47462g = str;
    }

    @Override // com.google.android.gms.internal.ads.aqp
    /* renamed from: a */
    public final String mo15807a() {
        return this.f47462g;
    }

    @Override // com.google.android.gms.internal.ads.aqp
    /* renamed from: a */
    public final void mo15806a(apo apoVar) {
        this.f47461f = apoVar;
    }

    @Override // com.google.android.gms.internal.ads.drr
    /* renamed from: a */
    public final void mo15801a(drt drtVar, long j, alm almVar) throws IOException {
        this.f47479b = drtVar;
        this.f47480c = drtVar.mo15793b();
        this.f47481d = this.f47480c - ((this.f47463h || 8 + j >= 4294967296L) ? 16 : 8);
        drtVar.mo15796a(drtVar.mo15793b() + j);
        this.f47482e = drtVar.mo15793b();
        this.f47478a = almVar;
    }

    @Override // com.google.android.gms.internal.ads.aqp
    /* renamed from: a */
    public final void mo15805a(drt drtVar, ByteBuffer byteBuffer, long j, alm almVar) throws IOException {
        this.f47464i = drtVar.mo15793b() - byteBuffer.remaining();
        this.f47463h = byteBuffer.remaining() == 16;
        mo15801a(drtVar, j, almVar);
    }
}
