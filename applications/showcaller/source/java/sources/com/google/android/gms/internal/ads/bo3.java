package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.io.RandomAccessFile;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bo3.class */
public final class bo3 extends AbstractC7169y4 {

    /* renamed from: f */
    private RandomAccessFile f20542f;

    /* renamed from: g */
    private Uri f20543g;

    /* renamed from: h */
    private long f20544h;

    /* renamed from: i */
    private boolean f20545i;

    public bo3() {
        super(false);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7207z5
    /* renamed from: c */
    public final int mo8335c(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f20544h;
        if (j == 0) {
            return -1;
        }
        try {
            RandomAccessFile randomAccessFile = this.f20542f;
            int i3 = C7101wa.f31475a;
            int read = randomAccessFile.read(bArr, i, (int) Math.min(j, i2));
            if (read > 0) {
                this.f20544h -= read;
                m8961r(read);
            }
            return read;
        } catch (IOException e) {
            throw new zzkw(e, 2000);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d0, code lost:
        if (r0 != false) goto L38;
     */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo8334e(com.google.android.gms.internal.ads.C6472fb r9) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.bo3.mo8334e(com.google.android.gms.internal.ads.fb):long");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: g */
    public final void mo8333g() {
        this.f20543g = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f20542f;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.f20542f = null;
                if (!this.f20545i) {
                    return;
                }
                this.f20545i = false;
                m8960s();
            } catch (IOException e) {
                throw new zzkw(e, 2000);
            }
        } catch (Throwable th) {
            this.f20542f = null;
            if (this.f20545i) {
                this.f20545i = false;
                m8960s();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    public final Uri zzi() {
        return this.f20543g;
    }
}
