package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.Base64;
import java.net.URLDecoder;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sn3.class */
public final class sn3 extends AbstractC7169y4 {

    /* renamed from: f */
    private C6472fb f29586f;

    /* renamed from: g */
    private byte[] f29587g;

    /* renamed from: h */
    private int f29588h;

    /* renamed from: i */
    private int f29589i;

    public sn3() {
        super(false);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7207z5
    /* renamed from: c */
    public final int mo8335c(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f29589i;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(C7101wa.m9719I(this.f29587g), this.f29588h, bArr, i, min);
        this.f29588h += min;
        this.f29589i -= min;
        m8961r(min);
        return min;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: e */
    public final long mo8334e(C6472fb c6472fb) {
        m8963p(c6472fb);
        this.f29586f = c6472fb;
        Uri uri = c6472fb.f22761a;
        String scheme = uri.getScheme();
        boolean equals = "data".equals(scheme);
        String valueOf = String.valueOf(scheme);
        C7173y8.m8897b(equals, valueOf.length() != 0 ? "Unsupported scheme: ".concat(valueOf) : new String("Unsupported scheme: "));
        String[] m9703Y = C7101wa.m9703Y(uri.getSchemeSpecificPart(), ",");
        if (m9703Y.length != 2) {
            String valueOf2 = String.valueOf(uri);
            valueOf2.length();
            throw zzaha.zza("Unexpected URI format: ".concat(valueOf2), null);
        }
        String str = m9703Y[1];
        if (m9703Y[0].contains(";base64")) {
            try {
                this.f29587g = Base64.decode(str, 0);
            } catch (IllegalArgumentException e) {
                String valueOf3 = String.valueOf(str);
                throw zzaha.zza(valueOf3.length() != 0 ? "Error while parsing Base64 encoded string: ".concat(valueOf3) : new String("Error while parsing Base64 encoded string: "), e);
            }
        } else {
            this.f29587g = C7101wa.m9704X(URLDecoder.decode(str, lu2.f26278a.name()));
        }
        long j = c6472fb.f22766f;
        int length = this.f29587g.length;
        if (j > length) {
            this.f29587g = null;
            throw new zzak(2008);
        }
        int i = (int) j;
        this.f29588h = i;
        int i2 = length - i;
        this.f29589i = i2;
        long j2 = c6472fb.f22767g;
        if (j2 != -1) {
            this.f29589i = (int) Math.min(i2, j2);
        }
        m8962q(c6472fb);
        long j3 = c6472fb.f22767g;
        return j3 != -1 ? j3 : this.f29589i;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: g */
    public final void mo8333g() {
        if (this.f29587g != null) {
            this.f29587g = null;
            m8960s();
        }
        this.f29586f = null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    public final Uri zzi() {
        C6472fb c6472fb = this.f29586f;
        if (c6472fb != null) {
            return c6472fb.f22761a;
        }
        return null;
    }
}
