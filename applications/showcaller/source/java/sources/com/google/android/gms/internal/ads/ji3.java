package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ji3.class */
public class ji3 extends mi3 implements o04 {

    /* renamed from: l */
    p04 f24889l;

    /* renamed from: m */
    protected final String f24890m = "moov";

    public ji3(String str) {
    }

    @Override // com.google.android.gms.internal.ads.o04
    /* renamed from: a */
    public final void mo12762a(p04 p04Var) {
        this.f24889l = p04Var;
    }

    @Override // com.google.android.gms.internal.ads.o04
    /* renamed from: b */
    public final String mo12761b() {
        return this.f24890m;
    }

    @Override // com.google.android.gms.internal.ads.o04
    /* renamed from: e */
    public final void mo12760e(ni3 ni3Var, ByteBuffer byteBuffer, long j, l04 l04Var) {
        ni3Var.mo10641c();
        byteBuffer.remaining();
        byteBuffer.remaining();
        this.f26619g = ni3Var;
        this.f26621i = ni3Var.mo10641c();
        ni3Var.mo10638j(ni3Var.mo10641c() + j);
        this.f26622j = ni3Var.mo10641c();
        this.f26618f = l04Var;
    }
}
