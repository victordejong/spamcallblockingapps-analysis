package com.google.android.play.core.internal;

import java.io.InputStream;
/* renamed from: com.google.android.play.core.internal.g0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/g0.class */
public final class C8489g0 extends AbstractC8486f0 {

    /* renamed from: d */
    private final AbstractC8486f0 f38036d;

    /* renamed from: e */
    private final long f38037e;

    /* renamed from: f */
    private final long f38038f;

    public C8489g0(AbstractC8486f0 abstractC8486f0, long j, long j2) {
        this.f38036d = abstractC8486f0;
        long m3514g = m3514g(j);
        this.f38037e = m3514g;
        this.f38038f = m3514g(m3514g + j2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: g */
    private final long m3514g(long j) {
        if (j < 0) {
            return 0L;
        }
        char c = j;
        if (j > this.f38036d.mo3516a()) {
            c = this.f38036d.mo3516a();
        }
        return c;
    }

    @Override // com.google.android.play.core.internal.AbstractC8486f0
    /* renamed from: a */
    public final long mo3516a() {
        return this.f38038f - this.f38037e;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // com.google.android.play.core.internal.AbstractC8486f0
    /* renamed from: e */
    public final InputStream mo3515e(long j, long j2) {
        long m3514g = m3514g(this.f38037e);
        return this.f38036d.mo3515e(m3514g, m3514g(j2 + m3514g) - m3514g);
    }
}
