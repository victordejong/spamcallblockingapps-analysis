package com.google.android.exoplayer2.p242b1;

import java.nio.ByteBuffer;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: com.google.android.exoplayer2.b1.e */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/b1/e.class */
public class C4858e extends AbstractC4852a {

    /* renamed from: d */
    public final C4853b f14774d = new C4853b();

    /* renamed from: e */
    public ByteBuffer f14775e;

    /* renamed from: f */
    public long f14776f;

    /* renamed from: g */
    public ByteBuffer f14777g;

    /* renamed from: h */
    private final int f14778h;

    public C4858e(int i) {
        this.f14778h = i;
    }

    /* renamed from: g */
    private ByteBuffer m21429g(int i) {
        int i2 = this.f14778h;
        if (i2 == 1) {
            return ByteBuffer.allocate(i);
        }
        if (i2 == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        ByteBuffer byteBuffer = this.f14775e;
        int capacity = byteBuffer == null ? 0 : byteBuffer.capacity();
        throw new IllegalStateException("Buffer too small (" + capacity + " < " + i + ")");
    }

    /* renamed from: l */
    public static C4858e m21424l() {
        return new C4858e(0);
    }

    @Override // com.google.android.exoplayer2.p242b1.AbstractC4852a
    public void clear() {
        super.clear();
        ByteBuffer byteBuffer = this.f14775e;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f14777g;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
    }

    @EnsuresNonNull({"data"})
    /* renamed from: h */
    public void m21428h(int i) {
        ByteBuffer byteBuffer = this.f14775e;
        if (byteBuffer == null) {
            this.f14775e = m21429g(i);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = this.f14775e.position();
        int i2 = i + position;
        if (capacity >= i2) {
            return;
        }
        ByteBuffer m21429g = m21429g(i2);
        if (position > 0) {
            this.f14775e.flip();
            m21429g.put(this.f14775e);
        }
        this.f14775e = m21429g;
    }

    /* renamed from: i */
    public final void m21427i() {
        this.f14775e.flip();
        ByteBuffer byteBuffer = this.f14777g;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
    }

    /* renamed from: j */
    public final boolean m21426j() {
        return getFlag(1073741824);
    }

    /* renamed from: k */
    public final boolean m21425k() {
        return this.f14775e == null && this.f14778h == 0;
    }

    @EnsuresNonNull({"supplementalData"})
    /* renamed from: m */
    public void m21423m(int i) {
        ByteBuffer byteBuffer = this.f14777g;
        if (byteBuffer == null || byteBuffer.capacity() < i) {
            this.f14777g = ByteBuffer.allocate(i);
        } else {
            this.f14777g.clear();
        }
    }
}
