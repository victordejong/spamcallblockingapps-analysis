package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/an0.class */
final class an0 implements AbstractC7098w7 {

    /* renamed from: b */
    private final AbstractC7098w7 f20051b;

    /* renamed from: c */
    private final long f20052c;

    /* renamed from: d */
    private final AbstractC7098w7 f20053d;

    /* renamed from: e */
    private long f20054e;

    /* renamed from: f */
    private Uri f20055f;

    public an0(AbstractC7098w7 abstractC7098w7, int i, AbstractC7098w7 abstractC7098w72) {
        this.f20051b = abstractC7098w7;
        this.f20052c = i;
        this.f20053d = abstractC7098w72;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC7207z5
    /* renamed from: c */
    public final int mo8335c(byte[] bArr, int i, int i2) {
        int i3;
        char c = this.f20054e;
        long j = this.f20052c;
        if (c < j) {
            i3 = this.f20051b.mo8335c(bArr, i, (int) Math.min(i2, j - c));
            c = this.f20054e + i3;
            this.f20054e = c;
        } else {
            i3 = 0;
        }
        int i4 = i3;
        if (c >= this.f20052c) {
            int mo8335c = this.f20053d.mo8335c(bArr, i + i3, i2 - i3);
            this.f20054e += mo8335c;
            i4 = i3 + mo8335c;
        }
        return i4;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: d */
    public final Map<String, List<String>> mo8435d() {
        return zzfon.zza();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r1v8, types: [long] */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v10 */
    /* JADX WARN: Type inference failed for: r21v11 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r21v5 */
    /* JADX WARN: Type inference failed for: r21v6 */
    /* JADX WARN: Type inference failed for: r21v7 */
    /* JADX WARN: Type inference failed for: r21v9 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: e */
    public final long mo8334e(C6472fb c6472fb) {
        C6472fb c6472fb2;
        this.f20055f = c6472fb.f22761a;
        long j = c6472fb.f22766f;
        long j2 = this.f20052c;
        C6472fb c6472fb3 = null;
        if (j >= j2) {
            c6472fb2 = null;
        } else {
            long j3 = c6472fb.f22767g;
            c6472fb2 = new C6472fb(c6472fb.f22761a, null, j, j, j3 != -1 ? Math.min(j3, j2 - j) : j2 - j, null, 0);
        }
        long j4 = c6472fb.f22767g;
        if (j4 == -1 || c6472fb.f22766f + j4 > this.f20052c) {
            long max = Math.max(this.f20052c, c6472fb.f22766f);
            long j5 = c6472fb.f22767g;
            c6472fb3 = new C6472fb(c6472fb.f22761a, null, max, max, ((j5 > (-1L) ? 1 : (j5 == (-1L) ? 0 : -1)) != 0 ? Math.min(j5, (c6472fb.f22766f + j5) - this.f20052c) : true) == true ? 1L : 0L, null, 0);
        }
        ?? r15 = 0;
        ?? mo8334e = c6472fb2 != null ? this.f20051b.mo8334e(c6472fb2) : (char) 0;
        if (c6472fb3 != null) {
            r15 = this.f20053d.mo8334e(c6472fb3);
        }
        this.f20054e = c6472fb.f22766f;
        if (mo8334e == -1 || r15 == -1) {
            return -1L;
        }
        return mo8334e + r15;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: f */
    public final void mo8765f(AbstractC6816ol abstractC6816ol) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: g */
    public final void mo8333g() {
        this.f20051b.mo8333g();
        this.f20053d.mo8333g();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    public final Uri zzi() {
        return this.f20055f;
    }
}
