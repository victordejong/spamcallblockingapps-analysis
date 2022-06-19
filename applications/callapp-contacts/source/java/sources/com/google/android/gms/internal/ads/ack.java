package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ack.class */
final class ack implements ecb {

    /* renamed from: a */
    private final ecb f39904a;

    /* renamed from: b */
    private final long f39905b;

    /* renamed from: c */
    private final ecb f39906c;

    /* renamed from: d */
    private long f39907d;

    /* renamed from: e */
    private Uri f39908e;

    public ack(ecb ecbVar, int i, ecb ecbVar2) {
        this.f39904a = ecbVar;
        this.f39905b = i;
        this.f39906c = ecbVar2;
    }

    @Override // com.google.android.gms.internal.ads.ecb
    /* renamed from: a */
    public final int mo15278a(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        long j = this.f39907d;
        long j2 = this.f39905b;
        if (j < j2) {
            i3 = this.f39904a.mo15278a(bArr, i, (int) Math.min(i2, j2 - j));
            this.f39907d += i3;
        } else {
            i3 = 0;
        }
        int i4 = i3;
        if (this.f39907d >= this.f39905b) {
            int mo15278a = this.f39906c.mo15278a(bArr, i + i3, i2 - i3);
            i4 = i3 + mo15278a;
            this.f39907d += mo15278a;
        }
        return i4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r1v8, types: [long] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [long] */
    @Override // com.google.android.gms.internal.ads.ecb
    /* renamed from: a */
    public final long mo15281a(ecf ecfVar) throws IOException {
        ecf ecfVar2;
        this.f39908e = ecfVar.f48662a;
        ecf ecfVar3 = null;
        if (ecfVar.f48665d >= this.f39905b) {
            ecfVar2 = null;
        } else {
            long j = ecfVar.f48665d;
            ecfVar2 = new ecf(ecfVar.f48662a, j, ecfVar.f48666e != -1 ? Math.min(ecfVar.f48666e, this.f39905b - j) : this.f39905b - j, null);
        }
        if (ecfVar.f48666e == -1 || ecfVar.f48665d + ecfVar.f48666e > this.f39905b) {
            ecfVar3 = new ecf(ecfVar.f48662a, Math.max(this.f39905b, ecfVar.f48665d), ((ecfVar.f48666e > (-1L) ? 1 : (ecfVar.f48666e == (-1L) ? 0 : -1)) != 0 ? Math.min(ecfVar.f48666e, (ecfVar.f48665d + ecfVar.f48666e) - this.f39905b) : true) == true ? 1L : 0L, null);
        }
        ?? r11 = 0;
        ?? mo15281a = ecfVar2 != null ? this.f39904a.mo15281a(ecfVar2) : (char) 0;
        if (ecfVar3 != null) {
            r11 = this.f39906c.mo15281a(ecfVar3);
        }
        this.f39907d = ecfVar.f48665d;
        if (mo15281a == -1 || r11 == -1) {
            return -1L;
        }
        return mo15281a + r11;
    }

    @Override // com.google.android.gms.internal.ads.ecb
    /* renamed from: a */
    public final Uri mo15282a() {
        return this.f39908e;
    }

    @Override // com.google.android.gms.internal.ads.ecb
    /* renamed from: c */
    public final void mo15276c() throws IOException {
        this.f39904a.mo15276c();
        this.f39906c.mo15276c();
    }
}
