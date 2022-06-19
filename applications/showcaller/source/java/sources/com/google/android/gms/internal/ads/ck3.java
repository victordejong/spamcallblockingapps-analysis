package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ck3.class */
final class ck3 implements AbstractC7098w7 {

    /* renamed from: b */
    private final AbstractC7098w7 f21277b;

    /* renamed from: c */
    private final int f21278c;

    /* renamed from: d */
    private final bk3 f21279d;

    /* renamed from: e */
    private final byte[] f21280e;

    /* renamed from: f */
    private int f21281f;

    public ck3(AbstractC7098w7 abstractC7098w7, int i, bk3 bk3Var) {
        C7173y8.m8898a(i > 0);
        this.f21277b = abstractC7098w7;
        this.f21278c = i;
        this.f21279d = bk3Var;
        this.f21280e = new byte[1];
        this.f21281f = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0085, code lost:
        if (r15 <= 0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0088, code lost:
        r0 = r15 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0093, code lost:
        if (r0[r0] != 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0096, code lost:
        r15 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x009f, code lost:
        if (r15 <= 0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a2, code lost:
        r6.f21279d.mo14347a(new com.google.android.gms.internal.ads.C6694la(r0, r15));
     */
    @Override // com.google.android.gms.internal.ads.AbstractC7207z5
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo8335c(byte[] r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ck3.mo8335c(byte[], int, int):int");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: d */
    public final Map<String, List<String>> mo8435d() {
        return this.f21277b.mo8435d();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: e */
    public final long mo8334e(C6472fb c6472fb) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: f */
    public final void mo8765f(AbstractC6816ol abstractC6816ol) {
        Objects.requireNonNull(abstractC6816ol);
        this.f21277b.mo8765f(abstractC6816ol);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: g */
    public final void mo8333g() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    public final Uri zzi() {
        return this.f21277b.zzi();
    }
}
