package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ack.class */
final class ack implements ecb {

    /* renamed from: a  reason: collision with root package name */
    private final ecb f23101a;

    /* renamed from: b  reason: collision with root package name */
    private final long f23102b;

    /* renamed from: c  reason: collision with root package name */
    private final ecb f23103c;

    /* renamed from: d  reason: collision with root package name */
    private long f23104d;
    private Uri e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ack(ecb ecbVar, int i, ecb ecbVar2) {
        this.f23101a = ecbVar;
        this.f23102b = i;
        this.f23103c = ecbVar2;
    }

    @Override // com.google.android.gms.internal.ads.ecb
    public final int a(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        long j = this.f23104d;
        long j2 = this.f23102b;
        if (j < j2) {
            i3 = this.f23101a.a(bArr, i, (int) Math.min(i2, j2 - j));
            this.f23104d += i3;
        } else {
            i3 = 0;
        }
        int i4 = i3;
        if (this.f23104d >= this.f23102b) {
            int a2 = this.f23103c.a(bArr, i + i3, i2 - i3);
            i4 = i3 + a2;
            this.f23104d += a2;
        }
        return i4;
    }

    @Override // com.google.android.gms.internal.ads.ecb
    public final long a(ecf ecfVar) throws IOException {
        ecf ecfVar2;
        this.e = ecfVar.f27616a;
        ecf ecfVar3 = null;
        if (ecfVar.f27619d >= this.f23102b) {
            ecfVar2 = null;
        } else {
            long j = ecfVar.f27619d;
            ecfVar2 = new ecf(ecfVar.f27616a, j, ecfVar.e != -1 ? Math.min(ecfVar.e, this.f23102b - j) : this.f23102b - j, null);
        }
        if (ecfVar.e == -1 || ecfVar.f27619d + ecfVar.e > this.f23102b) {
            ecfVar3 = new ecf(ecfVar.f27616a, Math.max(this.f23102b, ecfVar.f27619d), ecfVar.e != -1 ? Math.min(ecfVar.e, (ecfVar.f27619d + ecfVar.e) - this.f23102b) : -1L, null);
        }
        long j2 = 0;
        long a2 = ecfVar2 != null ? this.f23101a.a(ecfVar2) : 0L;
        if (ecfVar3 != null) {
            j2 = this.f23103c.a(ecfVar3);
        }
        this.f23104d = ecfVar.f27619d;
        if (a2 == -1 || j2 == -1) {
            return -1L;
        }
        return a2 + j2;
    }

    @Override // com.google.android.gms.internal.ads.ecb
    public final Uri a() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.ads.ecb
    public final void c() throws IOException {
        this.f23101a.c();
        this.f23103c.c();
    }
}
