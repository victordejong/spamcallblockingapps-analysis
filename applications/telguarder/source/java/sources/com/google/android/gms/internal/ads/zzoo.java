package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzoo.class */
public final class zzoo implements zzon {
    private final byte[] data;
    private Uri uri;
    private int zzbib;
    private int zzbic;

    public zzoo(byte[] bArr) {
        zzpg.checkNotNull(bArr);
        zzpg.checkArgument(bArr.length > 0);
        this.data = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final void close() throws IOException {
        this.uri = null;
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.zzbic;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(this.data, this.zzbib, bArr, i, min);
        this.zzbib += min;
        this.zzbic -= min;
        return min;
    }

    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzon
    public final long zza(zzos zzosVar) throws IOException {
        this.uri = zzosVar.uri;
        this.zzbib = (int) zzosVar.position;
        int length = zzosVar.zzco == -1 ? this.data.length - zzosVar.position : zzosVar.zzco;
        this.zzbic = length;
        if (length <= 0 || this.zzbib + length > this.data.length) {
            int i = this.zzbib;
            long j = zzosVar.zzco;
            int length2 = this.data.length;
            StringBuilder sb = new StringBuilder(77);
            sb.append("Unsatisfiable range: [");
            sb.append(i);
            sb.append(", ");
            sb.append(j);
            sb.append("], length: ");
            sb.append(length2);
            throw new IOException(sb.toString());
        }
        return length;
    }
}
