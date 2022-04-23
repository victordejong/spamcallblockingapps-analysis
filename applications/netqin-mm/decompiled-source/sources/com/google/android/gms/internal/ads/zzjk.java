package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzjk.class */
public final class zzjk extends zzjh {

    /* renamed from: b */
    public final zzjg f28408b = new zzjg();

    /* renamed from: c */
    public ByteBuffer f28409c;

    /* renamed from: d */
    public long f28410d;

    public zzjk(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzjh
    /* renamed from: a */
    public final void mo11909a() {
        super.mo11909a();
        ByteBuffer byteBuffer = this.f28409c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    /* renamed from: d */
    public final void m11908d(int i) throws IllegalStateException {
        ByteBuffer byteBuffer = this.f28409c;
        if (byteBuffer != null) {
            int capacity = byteBuffer.capacity();
            int position = this.f28409c.position() + i;
            if (capacity < position) {
                m11906e(position);
                throw null;
            }
            return;
        }
        m11906e(i);
        throw null;
    }

    /* renamed from: e */
    public final ByteBuffer m11906e(int i) {
        ByteBuffer byteBuffer = this.f28409c;
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
    public final boolean m11907e() {
        return m11911c(1073741824);
    }
}
