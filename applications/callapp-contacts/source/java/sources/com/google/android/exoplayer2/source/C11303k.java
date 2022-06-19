package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.AbstractC11567h;
import com.google.android.exoplayer2.upstream.AbstractC11590v;
import com.google.android.exoplayer2.upstream.C11570j;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11628u;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.source.k */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/k.class */
final class C11303k implements AbstractC11567h {

    /* renamed from: a */
    private final AbstractC11567h f37106a;

    /* renamed from: b */
    private final int f37107b;

    /* renamed from: c */
    private final AbstractC11304a f37108c;

    /* renamed from: d */
    private final byte[] f37109d;

    /* renamed from: e */
    private int f37110e;

    /* renamed from: com.google.android.exoplayer2.source.k$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/k$a.class */
    public interface AbstractC11304a {
        /* renamed from: a */
        void mo20866a(C11628u c11628u);
    }

    public C11303k(AbstractC11567h abstractC11567h, int i, AbstractC11304a abstractC11304a) {
        C11593a.m20022a(i > 0);
        this.f37106a = abstractC11567h;
        this.f37107b = i;
        this.f37108c = abstractC11304a;
        this.f37109d = new byte[1];
        this.f37110e = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0086, code lost:
        if (r16 <= 0) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0090, code lost:
        if (r0[r16 - 1] != 0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0093, code lost:
        r16 = r16 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x009b, code lost:
        if (r16 <= 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x009e, code lost:
        r6.f37108c.mo20866a(new com.google.android.exoplayer2.util.C11628u(r0, r16));
     */
    @Override // com.google.android.exoplayer2.upstream.AbstractC11563e
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo20033a(byte[] r7, int r8, int r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.C11303k.mo20033a(byte[], int, int):int");
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final long mo20035a(C11570j c11570j) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final Uri mo20036a() {
        return this.f37106a.mo20036a();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final void mo20034a(AbstractC11590v abstractC11590v) {
        C11593a.m20020b(abstractC11590v);
        this.f37106a.mo20034a(abstractC11590v);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: b */
    public final Map<String, List<String>> mo20032b() {
        return this.f37106a.mo20032b();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: c */
    public final void mo20031c() {
        throw new UnsupportedOperationException();
    }
}
