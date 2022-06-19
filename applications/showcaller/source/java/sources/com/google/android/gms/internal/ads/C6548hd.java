package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* renamed from: com.google.android.gms.internal.ads.hd */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hd.class */
public final class C6548hd extends C6362cd {

    /* renamed from: b */
    public final C6474fd f23852b = new C6474fd();

    /* renamed from: c */
    public ByteBuffer f23853c;

    /* renamed from: d */
    public long f23854d;

    public C6548hd(int i) {
    }

    /* renamed from: j */
    private final ByteBuffer m14712j(int i) {
        ByteBuffer byteBuffer = this.f23853c;
        int capacity = byteBuffer == null ? 0 : byteBuffer.capacity();
        StringBuilder sb = new StringBuilder(44);
        sb.append("Buffer too small (");
        sb.append(capacity);
        sb.append(" < ");
        sb.append(i);
        sb.append(")");
        throw new IllegalStateException(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.C6362cd
    /* renamed from: a */
    public final void mo14715a() {
        super.mo14715a();
        ByteBuffer byteBuffer = this.f23853c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    /* renamed from: h */
    public final void m14714h(int i) {
        ByteBuffer byteBuffer = this.f23853c;
        if (byteBuffer == null) {
            this.f23853c = m14712j(i);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = this.f23853c.position();
        int i2 = i + position;
        if (capacity >= i2) {
            return;
        }
        ByteBuffer m14712j = m14712j(i2);
        if (position > 0) {
            this.f23853c.position(0);
            this.f23853c.limit(position);
            m14712j.put(this.f23853c);
        }
        this.f23853c = m14712j;
    }

    /* renamed from: i */
    public final boolean m14713i() {
        return m16081g(1073741824);
    }
}
