package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.ads.oh */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/oh.class */
public final class C6812oh implements AbstractC6886qh {

    /* renamed from: b */
    private final byte[] f27538b;

    /* renamed from: c */
    private Uri f27539c;

    /* renamed from: d */
    private int f27540d;

    /* renamed from: e */
    private int f27541e;

    public C6812oh(byte[] bArr) {
        Objects.requireNonNull(bArr);
        C6367ci.m16042a(bArr.length > 0);
        this.f27538b = bArr;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6886qh
    /* renamed from: b */
    public final int mo10691b(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f27541e;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(this.f27538b, this.f27540d, bArr, i, min);
        this.f27540d += min;
        this.f27541e -= min;
        return min;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6886qh
    /* renamed from: c */
    public final Uri mo10690c() {
        return this.f27539c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC6886qh
    /* renamed from: d */
    public final long mo10689d(C6923rh c6923rh) {
        this.f27539c = c6923rh.f28950a;
        long j = c6923rh.f28952c;
        int i = (int) j;
        this.f27540d = i;
        ?? r0 = c6923rh.f28953d;
        int length = r0 == -1 ? this.f27538b.length - j : r0;
        this.f27541e = length;
        if (length <= 0 || i + length > this.f27538b.length) {
            int length2 = this.f27538b.length;
            StringBuilder sb = new StringBuilder(77);
            sb.append("Unsatisfiable range: [");
            sb.append(i);
            sb.append(", ");
            sb.append((long) r0);
            sb.append("], length: ");
            sb.append(length2);
            throw new IOException(sb.toString());
        }
        return length;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6886qh
    /* renamed from: e */
    public final void mo10688e() {
        this.f27539c = null;
    }
}
