package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ecc.class */
public final class ecc implements ecb {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f27608a;

    /* renamed from: b  reason: collision with root package name */
    private Uri f27609b;

    /* renamed from: c  reason: collision with root package name */
    private int f27610c;

    /* renamed from: d  reason: collision with root package name */
    private int f27611d;

    public ecc(byte[] bArr) {
        ecr.a(bArr);
        ecr.a(bArr.length > 0);
        this.f27608a = bArr;
    }

    @Override // com.google.android.gms.internal.ads.ecb
    public final int a(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f27611d;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(this.f27608a, this.f27610c, bArr, i, min);
        this.f27610c += min;
        this.f27611d -= min;
        return min;
    }

    @Override // com.google.android.gms.internal.ads.ecb
    public final long a(ecf ecfVar) throws IOException {
        this.f27609b = ecfVar.f27616a;
        this.f27610c = (int) ecfVar.f27619d;
        int length = (int) (ecfVar.e == -1 ? this.f27608a.length - ecfVar.f27619d : ecfVar.e);
        this.f27611d = length;
        if (length > 0 && this.f27610c + length <= this.f27608a.length) {
            return length;
        }
        int i = this.f27610c;
        long j = ecfVar.e;
        int length2 = this.f27608a.length;
        StringBuilder sb = new StringBuilder(77);
        sb.append("Unsatisfiable range: [");
        sb.append(i);
        sb.append(", ");
        sb.append(j);
        sb.append("], length: ");
        sb.append(length2);
        throw new IOException(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.ecb
    public final Uri a() {
        return this.f27609b;
    }

    @Override // com.google.android.gms.internal.ads.ecb
    public final void c() throws IOException {
        this.f27609b = null;
    }
}
