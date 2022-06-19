package com.google.android.play.core.internal;

import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.google.android.play.core.internal.aq */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/aq.class */
public final class C15026aq extends AbstractC15025ap {

    /* renamed from: a */
    private final AbstractC15025ap f54752a;

    /* renamed from: b */
    private final long f54753b;

    /* renamed from: c */
    private final long f54754c;

    public C15026aq(AbstractC15025ap abstractC15025ap, long j, long j2) {
        this.f54752a = abstractC15025ap;
        long m9581a = m9581a(j);
        this.f54753b = m9581a;
        this.f54754c = m9581a(m9581a + j2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: a */
    private final long m9581a(long j) {
        if (j < 0) {
            return 0L;
        }
        char c = j;
        if (j > this.f54752a.mo9582a()) {
            c = this.f54752a.mo9582a();
        }
        return c;
    }

    @Override // com.google.android.play.core.internal.AbstractC15025ap
    /* renamed from: a */
    public final long mo9582a() {
        return this.f54754c - this.f54753b;
    }

    @Override // com.google.android.play.core.internal.AbstractC15025ap
    /* renamed from: a */
    public final InputStream mo9580a(long j, long j2) throws IOException {
        long m9581a = m9581a(this.f54753b);
        return this.f54752a.mo9580a(m9581a, m9581a(j2 + m9581a) - m9581a);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
    }
}
