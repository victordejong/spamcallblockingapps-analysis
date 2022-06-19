package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import android.util.Base64;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.C5515h0;
import java.net.URLDecoder;
/* renamed from: com.google.android.exoplayer2.upstream.h */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/h.class */
public final class C5476h extends AbstractC5475g {

    /* renamed from: f */
    private C5481l f17736f;

    /* renamed from: g */
    private byte[] f17737g;

    /* renamed from: h */
    private int f17738h;

    /* renamed from: i */
    private int f17739i;

    public C5476h() {
        super(false);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: b */
    public long mo18949b(C5481l c5481l) {
        m19024f(c5481l);
        this.f17736f = c5481l;
        this.f17739i = (int) c5481l.f17751f;
        Uri uri = c5481l.f17746a;
        String scheme = uri.getScheme();
        if (!"data".equals(scheme)) {
            throw new ParserException("Unsupported scheme: " + scheme);
        }
        String[] m18818n0 = C5515h0.m18818n0(uri.getSchemeSpecificPart(), ",");
        if (m18818n0.length != 2) {
            throw new ParserException("Unexpected URI format: " + uri);
        }
        String str = m18818n0[1];
        if (m18818n0[0].contains(";base64")) {
            try {
                this.f17737g = Base64.decode(str, 0);
            } catch (IllegalArgumentException e) {
                throw new ParserException("Error while parsing Base64 encoded string: " + str, e);
            }
        } else {
            this.f17737g = C5515h0.m18854R(URLDecoder.decode(str, "US-ASCII"));
        }
        long j = c5481l.f17752g;
        int length = j != -1 ? ((int) j) + this.f17739i : this.f17737g.length;
        this.f17738h = length;
        if (length > this.f17737g.length || this.f17739i > length) {
            this.f17737g = null;
            throw new DataSourceException(0);
        }
        m19023g(c5481l);
        return this.f17738h - this.f17739i;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: c */
    public Uri mo18948c() {
        C5481l c5481l = this.f17736f;
        return c5481l != null ? c5481l.f17746a : null;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public void close() {
        if (this.f17737g != null) {
            this.f17737g = null;
            m19025e();
        }
        this.f17736f = null;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f17738h - this.f17739i;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(C5515h0.m18833g(this.f17737g), this.f17739i, bArr, i, min);
        this.f17739i += min;
        m19026d(min);
        return min;
    }
}
