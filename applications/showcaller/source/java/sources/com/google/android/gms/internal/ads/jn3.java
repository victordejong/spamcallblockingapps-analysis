package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jn3.class */
public final class jn3 extends AbstractC7169y4 {

    /* renamed from: f */
    private final AssetManager f24936f;

    /* renamed from: g */
    private Uri f24937g;

    /* renamed from: h */
    private InputStream f24938h;

    /* renamed from: i */
    private long f24939i;

    /* renamed from: j */
    private boolean f24940j;

    public jn3(Context context) {
        super(false);
        this.f24936f = context.getAssets();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7207z5
    /* renamed from: c */
    public final int mo8335c(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f24939i;
        if (j == 0) {
            return -1;
        }
        int i3 = i2;
        if (j != -1) {
            try {
                i3 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new zzkc(e, 2000);
            }
        }
        InputStream inputStream = this.f24938h;
        int i4 = C7101wa.f31475a;
        int read = inputStream.read(bArr, i, i3);
        if (read == -1) {
            return -1;
        }
        long j2 = this.f24939i;
        if (j2 != -1) {
            this.f24939i = j2 - read;
        }
        m8961r(read);
        return read;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: e */
    public final long mo8334e(C6472fb c6472fb) {
        String str;
        try {
            Uri uri = c6472fb.f22761a;
            this.f24937g = uri;
            String path = uri.getPath();
            Objects.requireNonNull(path);
            if (path.startsWith("/android_asset/")) {
                str = path.substring(15);
            } else {
                str = path;
                if (path.startsWith("/")) {
                    str = path.substring(1);
                }
            }
            m8963p(c6472fb);
            InputStream open = this.f24936f.open(str, 1);
            this.f24938h = open;
            if (open.skip(c6472fb.f22766f) < c6472fb.f22766f) {
                throw new zzkc(null, 2008);
            }
            long j = c6472fb.f22767g;
            if (j != -1) {
                this.f24939i = j;
            } else {
                long available = this.f24938h.available();
                this.f24939i = available;
                if (available == 2147483647L) {
                    this.f24939i = -1L;
                }
            }
            this.f24940j = true;
            m8962q(c6472fb);
            return this.f24939i;
        } catch (zzkc e) {
            throw e;
        } catch (IOException e2) {
            throw new zzkc(e2, true != (e2 instanceof FileNotFoundException) ? 2000 : 2005);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: g */
    public final void mo8333g() {
        this.f24937g = null;
        try {
            try {
                InputStream inputStream = this.f24938h;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f24938h = null;
                if (!this.f24940j) {
                    return;
                }
                this.f24940j = false;
                m8960s();
            } catch (IOException e) {
                throw new zzkc(e, 2000);
            }
        } catch (Throwable th) {
            this.f24938h = null;
            if (this.f24940j) {
                this.f24940j = false;
                m8960s();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    public final Uri zzi() {
        return this.f24937g;
    }
}
