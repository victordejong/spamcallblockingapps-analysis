package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rn3.class */
public final class rn3 extends AbstractC7169y4 {

    /* renamed from: f */
    private final ContentResolver f29052f;

    /* renamed from: g */
    private Uri f29053g;

    /* renamed from: h */
    private AssetFileDescriptor f29054h;

    /* renamed from: i */
    private FileInputStream f29055i;

    /* renamed from: j */
    private long f29056j;

    /* renamed from: k */
    private boolean f29057k;

    public rn3(Context context) {
        super(false);
        this.f29052f = context.getContentResolver();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7207z5
    /* renamed from: c */
    public final int mo8335c(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f29056j;
        if (j == 0) {
            return -1;
        }
        int i3 = i2;
        if (j != -1) {
            try {
                i3 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new zzkl(e, 2000);
            }
        }
        FileInputStream fileInputStream = this.f29055i;
        int i4 = C7101wa.f31475a;
        int read = fileInputStream.read(bArr, i, i3);
        if (read == -1) {
            return -1;
        }
        long j2 = this.f29056j;
        if (j2 != -1) {
            this.f29056j = j2 - read;
        }
        m8961r(read);
        return read;
    }

    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* JADX WARN: Type inference failed for: r0v81, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: e */
    public final long mo8334e(C6472fb c6472fb) {
        IOException e;
        AssetFileDescriptor assetFileDescriptor;
        char c;
        try {
            try {
                Uri uri = c6472fb.f22761a;
                this.f29053g = uri;
                m8963p(c6472fb);
                if ("content".equals(c6472fb.f22761a.getScheme())) {
                    Bundle bundle = new Bundle();
                    if (C7101wa.f31475a >= 31) {
                        qn3.m11831a(bundle);
                    }
                    assetFileDescriptor = this.f29052f.openTypedAssetFileDescriptor(uri, "*/*", bundle);
                } else {
                    assetFileDescriptor = this.f29052f.openAssetFileDescriptor(uri, "r");
                }
                this.f29054h = assetFileDescriptor;
                if (assetFileDescriptor == null) {
                    String valueOf = String.valueOf(uri);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 36);
                    sb.append("Could not open file descriptor for: ");
                    sb.append(valueOf);
                    try {
                        throw new zzkl(new IOException(sb.toString()), 2000);
                    } catch (IOException e2) {
                        e = e2;
                        int i = 2000;
                        if (true == (e instanceof FileNotFoundException)) {
                            i = 2005;
                        }
                        throw new zzkl(e, i);
                    }
                }
                long length = assetFileDescriptor.getLength();
                FileInputStream fileInputStream = new FileInputStream(assetFileDescriptor.getFileDescriptor());
                this.f29055i = fileInputStream;
                int i2 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
                if (i2 != 0 && c6472fb.f22766f > length) {
                    throw new zzkl(null, 2008);
                }
                long startOffset = assetFileDescriptor.getStartOffset();
                long skip = fileInputStream.skip(c6472fb.f22766f + startOffset) - startOffset;
                if (skip != c6472fb.f22766f) {
                    throw new zzkl(null, 2008);
                }
                if (i2 == 0) {
                    FileChannel channel = fileInputStream.getChannel();
                    long size = channel.size();
                    if (size == 0) {
                        this.f29056j = -1L;
                        c = 65535;
                    } else {
                        c = size - channel.position();
                        this.f29056j = c;
                        if (c < 0) {
                            throw new zzkl(null, 2008);
                        }
                    }
                } else {
                    c = length - skip;
                    this.f29056j = c;
                    if (c < 0) {
                        throw new zzkl(null, 2008);
                    }
                }
                ?? r0 = c6472fb.f22767g;
                if (r0 != -1) {
                    char c2 = r0;
                    if (c != -1) {
                        c2 = Math.min((long) c, (long) r0);
                    }
                    this.f29056j = c2;
                }
                this.f29057k = true;
                m8962q(c6472fb);
                long j = c6472fb.f22767g;
                return j != -1 ? j : this.f29056j;
            } catch (zzkl e3) {
                throw e3;
            }
        } catch (IOException e4) {
            e = e4;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: g */
    public final void mo8333g() {
        this.f29053g = null;
        try {
            try {
                FileInputStream fileInputStream = this.f29055i;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.f29055i = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f29054h;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.f29054h = null;
                        if (!this.f29057k) {
                            return;
                        }
                        this.f29057k = false;
                        m8960s();
                    } catch (IOException e) {
                        throw new zzkl(e, 2000);
                    }
                } finally {
                    this.f29054h = null;
                    if (this.f29057k) {
                        this.f29057k = false;
                        m8960s();
                    }
                }
            } catch (IOException e2) {
                throw new zzkl(e2, 2000);
            }
        } catch (Throwable th) {
            this.f29055i = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f29054h;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    throw th;
                } catch (Throwable th2) {
                    this.f29054h = null;
                    if (this.f29057k) {
                        this.f29057k = false;
                        m8960s();
                    }
                    throw th2;
                }
            } catch (IOException e3) {
                throw new zzkl(e3, 2000);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    public final Uri zzi() {
        return this.f29053g;
    }
}
