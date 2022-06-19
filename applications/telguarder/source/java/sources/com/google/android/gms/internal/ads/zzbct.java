package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbct.class */
final class zzbct implements zzon {
    private Uri uri;
    private final zzon zzepf;
    private final long zzepg;
    private final zzon zzeph;
    private long zzepi;

    public zzbct(zzon zzonVar, int i, zzon zzonVar2) {
        this.zzepf = zzonVar;
        this.zzepg = i;
        this.zzeph = zzonVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final void close() throws IOException {
        this.zzepf.close();
        this.zzeph.close();
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        long j = this.zzepi;
        long j2 = this.zzepg;
        if (j < j2) {
            i3 = this.zzepf.read(bArr, i, (int) Math.min(i2, j2 - j));
            this.zzepi += i3;
        } else {
            i3 = 0;
        }
        int i4 = i3;
        if (this.zzepi >= this.zzepg) {
            int read = this.zzeph.read(bArr, i + i3, i2 - i3);
            i4 = i3 + read;
            this.zzepi += read;
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
    @Override // com.google.android.gms.internal.ads.zzon
    public final long zza(zzos zzosVar) throws IOException {
        zzos zzosVar2;
        this.uri = zzosVar.uri;
        zzos zzosVar3 = null;
        if (zzosVar.position >= this.zzepg) {
            zzosVar2 = null;
        } else {
            long j = zzosVar.position;
            zzosVar2 = new zzos(zzosVar.uri, j, zzosVar.zzco != -1 ? Math.min(zzosVar.zzco, this.zzepg - j) : this.zzepg - j, null);
        }
        if (zzosVar.zzco == -1 || zzosVar.position + zzosVar.zzco > this.zzepg) {
            zzosVar3 = new zzos(zzosVar.uri, Math.max(this.zzepg, zzosVar.position), ((zzosVar.zzco > (-1L) ? 1 : (zzosVar.zzco == (-1L) ? 0 : -1)) != 0 ? Math.min(zzosVar.zzco, (zzosVar.position + zzosVar.zzco) - this.zzepg) : true) == true ? 1L : 0L, null);
        }
        ?? r11 = 0;
        ?? zza = zzosVar2 != null ? this.zzepf.zza(zzosVar2) : (char) 0;
        if (zzosVar3 != null) {
            r11 = this.zzeph.zza(zzosVar3);
        }
        this.zzepi = zzosVar.position;
        if (zza == -1 || r11 == -1) {
            return -1L;
        }
        return zza + r11;
    }
}
