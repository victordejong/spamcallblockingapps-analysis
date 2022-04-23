package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.h;
import com.google.android.exoplayer2.upstream.j;
import com.google.android.exoplayer2.upstream.v;
import com.google.android.exoplayer2.util.u;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/k.class */
final class k implements h {

    /* renamed from: a  reason: collision with root package name */
    private final h f21614a;

    /* renamed from: b  reason: collision with root package name */
    private final int f21615b;

    /* renamed from: c  reason: collision with root package name */
    private final a f21616c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f21617d;
    private int e;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/k$a.class */
    public interface a {
        void a(u uVar);
    }

    public k(h hVar, int i, a aVar) {
        com.google.android.exoplayer2.util.a.a(i > 0);
        this.f21614a = hVar;
        this.f21615b = i;
        this.f21616c = aVar;
        this.f21617d = new byte[1];
        this.e = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0086, code lost:
        if (r16 <= 0) goto L_0x0099;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0090, code lost:
        if (r0[r16 - 1] != 0) goto L_0x0099;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0093, code lost:
        r16 = r16 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x009b, code lost:
        if (r16 <= 0) goto L_0x00b2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x009e, code lost:
        r6.f21616c.a(new com.google.android.exoplayer2.util.u(r0, r16));
     */
    @Override // com.google.android.exoplayer2.upstream.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(byte[] r7, int r8, int r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.k.a(byte[], int, int):int");
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final long a(j jVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final Uri a() {
        return this.f21614a.a();
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final void a(v vVar) {
        com.google.android.exoplayer2.util.a.b(vVar);
        this.f21614a.a(vVar);
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final Map<String, List<String>> b() {
        return this.f21614a.b();
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final void c() {
        throw new UnsupportedOperationException();
    }
}
