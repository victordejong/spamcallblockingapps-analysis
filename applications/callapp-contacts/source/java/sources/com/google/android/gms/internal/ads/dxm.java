package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dxm.class */
public final class dxm extends dxg {

    /* renamed from: c */
    public ByteBuffer f47974c;

    /* renamed from: d */
    public long f47975d;

    /* renamed from: b */
    public final dxj f47973b = new dxj();

    /* renamed from: e */
    private final int f47976e = 0;

    public dxm(int i) {
    }

    @Override // com.google.android.gms.internal.ads.dxg
    /* renamed from: a */
    public final void mo15511a() {
        super.mo15511a();
        ByteBuffer byteBuffer = this.f47974c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    /* renamed from: b */
    public final ByteBuffer m15510b(int i) {
        ByteBuffer byteBuffer = this.f47974c;
        int capacity = byteBuffer == null ? 0 : byteBuffer.capacity();
        StringBuilder sb = new StringBuilder(44);
        sb.append("Buffer too small (");
        sb.append(capacity);
        sb.append(" < ");
        sb.append(i);
        sb.append(")");
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: e */
    public final boolean m15509e() {
        return m15524a(1073741824);
    }
}
