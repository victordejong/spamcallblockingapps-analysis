package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mo3.class */
public final class mo3 extends AbstractC7169y4 {

    /* renamed from: f */
    private final Resources f26696f;

    /* renamed from: g */
    private final String f26697g;

    /* renamed from: h */
    private Uri f26698h;

    /* renamed from: i */
    private AssetFileDescriptor f26699i;

    /* renamed from: j */
    private InputStream f26700j;

    /* renamed from: k */
    private long f26701k;

    /* renamed from: l */
    private boolean f26702l;

    public mo3(Context context) {
        super(false);
        this.f26696f = context.getResources();
        this.f26697g = context.getPackageName();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7207z5
    /* renamed from: c */
    public final int mo8335c(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f26701k;
        if (j == 0) {
            return -1;
        }
        int i3 = i2;
        if (j != -1) {
            try {
                i3 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new zzli(null, e, 2000);
            }
        }
        InputStream inputStream = this.f26700j;
        int i4 = C7101wa.f31475a;
        int read = inputStream.read(bArr, i, i3);
        if (read == -1) {
            if (this.f26701k != -1) {
                throw new zzli("End of stream reached having not read sufficient data.", new EOFException(), 2000);
            }
            return -1;
        }
        long j2 = this.f26701k;
        if (j2 != -1) {
            this.f26701k = j2 - read;
        }
        m8961r(read);
        return read;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x003f, code lost:
        if (r0.matches("\\d+") != false) goto L96;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0252  */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo8334e(com.google.android.gms.internal.ads.C6472fb r7) {
        /*
            Method dump skipped, instructions count: 651
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.mo3.mo8334e(com.google.android.gms.internal.ads.fb):long");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: g */
    public final void mo8333g() {
        this.f26698h = null;
        try {
            try {
                InputStream inputStream = this.f26700j;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f26700j = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f26699i;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.f26699i = null;
                        if (!this.f26702l) {
                            return;
                        }
                        this.f26702l = false;
                        m8960s();
                    } catch (IOException e) {
                        throw new zzli(null, e, 2000);
                    }
                } finally {
                    this.f26699i = null;
                    if (this.f26702l) {
                        this.f26702l = false;
                        m8960s();
                    }
                }
            } catch (IOException e2) {
                throw new zzli(null, e2, 2000);
            }
        } catch (Throwable th) {
            this.f26700j = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f26699i;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new zzli(null, e3, 2000);
                }
            } catch (Throwable th2) {
                this.f26699i = null;
                if (this.f26702l) {
                    this.f26702l = false;
                    m8960s();
                }
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    public final Uri zzi() {
        return this.f26698h;
    }
}
