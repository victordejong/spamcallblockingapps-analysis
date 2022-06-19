package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ecc.class */
public final class ecc implements ecb {

    /* renamed from: a */
    private final byte[] f48650a;

    /* renamed from: b */
    private Uri f48651b;

    /* renamed from: c */
    private int f48652c;

    /* renamed from: d */
    private int f48653d;

    public ecc(byte[] bArr) {
        ecr.m15251a(bArr);
        ecr.m15249a(bArr.length > 0);
        this.f48650a = bArr;
    }

    @Override // com.google.android.gms.internal.ads.ecb
    /* renamed from: a */
    public final int mo15278a(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f48653d;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(this.f48650a, this.f48652c, bArr, i, min);
        this.f48652c += min;
        this.f48653d -= min;
        return min;
    }

    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    @Override // com.google.android.gms.internal.ads.ecb
    /* renamed from: a */
    public final long mo15281a(ecf ecfVar) throws IOException {
        this.f48651b = ecfVar.f48662a;
        this.f48652c = (int) ecfVar.f48665d;
        int length = ecfVar.f48666e == -1 ? this.f48650a.length - ecfVar.f48665d : ecfVar.f48666e;
        this.f48653d = length;
        if (length <= 0 || this.f48652c + length > this.f48650a.length) {
            int i = this.f48652c;
            long j = ecfVar.f48666e;
            int length2 = this.f48650a.length;
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

    @Override // com.google.android.gms.internal.ads.ecb
    /* renamed from: a */
    public final Uri mo15282a() {
        return this.f48651b;
    }

    @Override // com.google.android.gms.internal.ads.ecb
    /* renamed from: c */
    public final void mo15276c() throws IOException {
        this.f48651b = null;
    }
}
