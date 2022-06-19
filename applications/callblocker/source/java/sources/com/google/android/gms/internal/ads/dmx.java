package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dmx.class */
public final class dmx extends dmp {

    /* renamed from: b */
    public ByteBuffer f14880b;

    /* renamed from: c */
    public long f14881c;

    /* renamed from: a */
    public final dms f14879a = new dms();

    /* renamed from: d */
    private final int f14882d = 0;

    public dmx(int i) {
    }

    /* renamed from: e */
    private final ByteBuffer m9077e(int i) {
        throw new IllegalStateException(new StringBuilder(44).append("Buffer too small (").append(this.f14880b == null ? 0 : this.f14880b.capacity()).append(" < ").append(i).append(")").toString());
    }

    @Override // com.google.android.gms.internal.ads.dmp
    /* renamed from: a */
    public final void mo9080a() {
        super.mo9080a();
        if (this.f14880b != null) {
            this.f14880b.clear();
        }
    }

    /* renamed from: d */
    public final void m9079d(int i) {
        if (this.f14880b == null) {
            this.f14880b = m9077e(i);
            return;
        }
        int capacity = this.f14880b.capacity();
        int position = this.f14880b.position();
        int i2 = position + i;
        if (capacity >= i2) {
            return;
        }
        ByteBuffer m9077e = m9077e(i2);
        if (position > 0) {
            this.f14880b.position(0);
            this.f14880b.limit(position);
            m9077e.put(this.f14880b);
        }
        this.f14880b = m9077e;
    }

    /* renamed from: e */
    public final boolean m9078e() {
        return m9106c(1073741824);
    }
}
