package com.google.android.gms.internal.ads;

import android.net.Uri;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sl0.class */
final class sl0 implements AbstractC6886qh {

    /* renamed from: b */
    private final AbstractC6886qh f29562b;

    /* renamed from: c */
    private final long f29563c;

    /* renamed from: d */
    private final AbstractC6886qh f29564d;

    /* renamed from: e */
    private long f29565e;

    /* renamed from: f */
    private Uri f29566f;

    public sl0(AbstractC6886qh abstractC6886qh, int i, AbstractC6886qh abstractC6886qh2) {
        this.f29562b = abstractC6886qh;
        this.f29563c = i;
        this.f29564d = abstractC6886qh2;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC6886qh
    /* renamed from: b */
    public final int mo10691b(byte[] bArr, int i, int i2) {
        int i3;
        char c = this.f29565e;
        long j = this.f29563c;
        if (c < j) {
            i3 = this.f29562b.mo10691b(bArr, i, (int) Math.min(i2, j - c));
            c = this.f29565e + i3;
            this.f29565e = c;
        } else {
            i3 = 0;
        }
        int i4 = i3;
        if (c >= this.f29563c) {
            int mo10691b = this.f29564d.mo10691b(bArr, i + i3, i2 - i3);
            this.f29565e += mo10691b;
            i4 = i3 + mo10691b;
        }
        return i4;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6886qh
    /* renamed from: c */
    public final Uri mo10690c() {
        return this.f29566f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r17v10 */
    /* JADX WARN: Type inference failed for: r17v11 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Type inference failed for: r17v7 */
    /* JADX WARN: Type inference failed for: r17v8 */
    /* JADX WARN: Type inference failed for: r17v9 */
    /* JADX WARN: Type inference failed for: r1v7, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC6886qh
    /* renamed from: d */
    public final long mo10689d(C6923rh c6923rh) {
        C6923rh c6923rh2;
        this.f29566f = c6923rh.f28950a;
        long j = c6923rh.f28952c;
        long j2 = this.f29563c;
        C6923rh c6923rh3 = null;
        if (j >= j2) {
            c6923rh2 = null;
        } else {
            long j3 = c6923rh.f28953d;
            c6923rh2 = new C6923rh(c6923rh.f28950a, null, j, j, j3 != -1 ? Math.min(j3, j2 - j) : j2 - j, null, 0);
        }
        long j4 = c6923rh.f28953d;
        if (j4 == -1 || c6923rh.f28952c + j4 > this.f29563c) {
            long max = Math.max(this.f29563c, c6923rh.f28952c);
            long j5 = c6923rh.f28953d;
            c6923rh3 = new C6923rh(c6923rh.f28950a, null, max, max, ((j5 > (-1L) ? 1 : (j5 == (-1L) ? 0 : -1)) != 0 ? Math.min(j5, (c6923rh.f28952c + j5) - this.f29563c) : true) == true ? 1L : 0L, null, 0);
        }
        ?? r15 = 0;
        ?? mo10689d = c6923rh2 != null ? this.f29562b.mo10689d(c6923rh2) : (char) 0;
        if (c6923rh3 != null) {
            r15 = this.f29564d.mo10689d(c6923rh3);
        }
        this.f29565e = c6923rh.f28952c;
        if (r15 == -1) {
            return -1L;
        }
        return mo10689d + r15;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6886qh
    /* renamed from: e */
    public final void mo10688e() {
        this.f29562b.mo10688e();
        this.f29564d.mo10688e();
    }
}
