package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dxm.class */
public final class dxm extends dxg {

    /* renamed from: c  reason: collision with root package name */
    public ByteBuffer f27376c;

    /* renamed from: d  reason: collision with root package name */
    public long f27377d;

    /* renamed from: b  reason: collision with root package name */
    public final dxj f27375b = new dxj();
    private final int e = 0;

    public dxm(int i) {
    }

    @Override // com.google.android.gms.internal.ads.dxg
    public final void a() {
        super.a();
        ByteBuffer byteBuffer = this.f27376c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ByteBuffer b(int i) {
        ByteBuffer byteBuffer = this.f27376c;
        int capacity = byteBuffer == null ? 0 : byteBuffer.capacity();
        StringBuilder sb = new StringBuilder(44);
        sb.append("Buffer too small (");
        sb.append(capacity);
        sb.append(" < ");
        sb.append(i);
        sb.append(")");
        throw new IllegalStateException(sb.toString());
    }

    public final boolean e() {
        return a(1073741824);
    }
}
