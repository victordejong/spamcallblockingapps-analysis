package com.google.android.play.core.internal;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/aq.class */
public final class aq extends ap {

    /* renamed from: a  reason: collision with root package name */
    private final ap f31350a;

    /* renamed from: b  reason: collision with root package name */
    private final long f31351b;

    /* renamed from: c  reason: collision with root package name */
    private final long f31352c;

    public aq(ap apVar, long j, long j2) {
        this.f31350a = apVar;
        long a2 = a(j);
        this.f31351b = a2;
        this.f31352c = a(a2 + j2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long a(long r6) {
        /*
            r5 = this;
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0008
            r0 = 0
            return r0
        L_0x0008:
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = r5
            com.google.android.play.core.internal.ap r1 = r1.f31350a
            long r1 = r1.a()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x001e
            r0 = r5
            com.google.android.play.core.internal.ap r0 = r0.f31350a
            long r0 = r0.a()
            r8 = r0
        L_0x001e:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.internal.aq.a(long):long");
    }

    @Override // com.google.android.play.core.internal.ap
    public final long a() {
        return this.f31352c - this.f31351b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.play.core.internal.ap
    public final InputStream a(long j, long j2) throws IOException {
        long a2 = a(this.f31351b);
        return this.f31350a.a(a2, a(j2 + a2) - a2);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
    }
}
