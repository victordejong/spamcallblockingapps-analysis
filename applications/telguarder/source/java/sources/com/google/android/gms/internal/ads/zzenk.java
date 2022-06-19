package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzenk.class */
final class zzenk extends InputStream {
    private int mark;
    private final /* synthetic */ zzeng zzitt;
    private zzenh zziud;
    private zzejy zziue;
    private int zziuf;
    private int zziug;
    private int zziuh;

    public zzenk(zzeng zzengVar) {
        this.zzitt = zzengVar;
        initialize();
    }

    private final void initialize() {
        zzenh zzenhVar = new zzenh(this.zzitt, null);
        this.zziud = zzenhVar;
        zzejy zzejyVar = (zzejy) zzenhVar.next();
        this.zziue = zzejyVar;
        this.zziuf = zzejyVar.size();
        this.zziug = 0;
        this.zziuh = 0;
    }

    private final void zzbkj() {
        if (this.zziue != null) {
            int i = this.zziug;
            int i2 = this.zziuf;
            if (i != i2) {
                return;
            }
            this.zziuh += i2;
            this.zziug = 0;
            if (!this.zziud.hasNext()) {
                this.zziue = null;
                this.zziuf = 0;
                return;
            }
            zzejy zzejyVar = (zzejy) this.zziud.next();
            this.zziue = zzejyVar;
            this.zziuf = zzejyVar.size();
        }
    }

    private final int zzbkk() {
        return this.zzitt.size() - (this.zziuh + this.zziug);
    }

    private final int zzl(byte[] bArr, int i, int i2) {
        int i3 = i2;
        while (i3 > 0) {
            zzbkj();
            if (this.zziue == null) {
                break;
            }
            int min = Math.min(this.zziuf - this.zziug, i3);
            int i4 = i;
            if (bArr != null) {
                this.zziue.zza(bArr, this.zziug, i, min);
                i4 = i + min;
            }
            this.zziug += min;
            i3 -= min;
            i = i4;
        }
        return i2 - i3;
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        return zzbkk();
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.mark = this.zziuh + this.zziug;
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        zzbkj();
        zzejy zzejyVar = this.zziue;
        if (zzejyVar == null) {
            return -1;
        }
        int i = this.zziug;
        this.zziug = i + 1;
        return zzejyVar.zzfz(i) & 255;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0031, code lost:
        if (zzbkk() == 0) goto L14;
     */
    @Override // java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int read(byte[] r6, int r7, int r8) {
        /*
            r5 = this;
            r0 = r6
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r7
            if (r0 < 0) goto L38
            r0 = r8
            if (r0 < 0) goto L38
            r0 = r8
            r1 = r6
            int r1 = r1.length
            r2 = r7
            int r1 = r1 - r2
            if (r0 > r1) goto L38
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            int r0 = r0.zzl(r1, r2, r3)
            r9 = r0
            r0 = r9
            r7 = r0
            r0 = r9
            if (r0 != 0) goto L36
            r0 = r8
            if (r0 > 0) goto L34
            r0 = r9
            r7 = r0
            r0 = r5
            int r0 = r0.zzbkk()
            if (r0 != 0) goto L36
        L34:
            r0 = -1
            r7 = r0
        L36:
            r0 = r7
            return r0
        L38:
            java.lang.IndexOutOfBoundsException r0 = new java.lang.IndexOutOfBoundsException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzenk.read(byte[], int, int):int");
    }

    @Override // java.io.InputStream
    public final void reset() {
        synchronized (this) {
            initialize();
            zzl(null, 0, this.mark);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.io.InputStream
    public final long skip(long j) {
        if (j >= 0) {
            char c = j;
            if (j > 2147483647L) {
                c = 65535;
            }
            return zzl(null, 0, c);
        }
        throw new IndexOutOfBoundsException();
    }
}
