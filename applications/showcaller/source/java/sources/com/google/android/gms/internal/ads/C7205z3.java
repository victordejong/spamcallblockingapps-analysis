package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: com.google.android.gms.internal.ads.z3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/z3.class */
public class C7205z3 extends a24 {

    /* renamed from: b */
    public final C7202z0 f32797b = new C7202z0();

    /* renamed from: c */
    public ByteBuffer f32798c;

    /* renamed from: d */
    public boolean f32799d;

    /* renamed from: e */
    public long f32800e;

    /* renamed from: f */
    public ByteBuffer f32801f;

    /* renamed from: g */
    private final int f32802g;

    public C7205z3(int i, int i2) {
        this.f32802g = i;
    }

    /* renamed from: l */
    private final ByteBuffer m8533l(int i) {
        int i2 = this.f32802g;
        if (i2 == 1) {
            return ByteBuffer.allocate(i);
        }
        if (i2 == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        ByteBuffer byteBuffer = this.f32798c;
        throw new zzae(byteBuffer == null ? 0 : byteBuffer.capacity(), i);
    }

    @Override // com.google.android.gms.internal.ads.a24
    /* renamed from: a */
    public void mo8537a() {
        super.mo8537a();
        ByteBuffer byteBuffer = this.f32798c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f32801f;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.f32799d = false;
    }

    @EnsuresNonNull({"data"})
    /* renamed from: i */
    public final void m8536i(int i) {
        ByteBuffer byteBuffer = this.f32798c;
        if (byteBuffer == null) {
            this.f32798c = m8533l(i);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = byteBuffer.position();
        int i2 = i + position;
        if (capacity >= i2) {
            this.f32798c = byteBuffer;
            return;
        }
        ByteBuffer m8533l = m8533l(i2);
        m8533l.order(byteBuffer.order());
        if (position > 0) {
            byteBuffer.flip();
            m8533l.put(byteBuffer);
        }
        this.f32798c = m8533l;
    }

    /* renamed from: j */
    public final boolean m8535j() {
        return m16708h(1073741824);
    }

    /* renamed from: k */
    public final void m8534k() {
        ByteBuffer byteBuffer = this.f32798c;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.f32801f;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }
}
