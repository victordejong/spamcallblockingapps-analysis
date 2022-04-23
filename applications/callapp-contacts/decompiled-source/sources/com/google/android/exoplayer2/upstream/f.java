package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import android.util.Base64;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.af;
import com.google.common.base.d;
import java.io.IOException;
import java.net.URLDecoder;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/f.class */
public final class f extends d {

    /* renamed from: a  reason: collision with root package name */
    private j f22196a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f22197b;

    /* renamed from: c  reason: collision with root package name */
    private int f22198c;

    /* renamed from: d  reason: collision with root package name */
    private int f22199d;

    public f() {
        super(false);
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public final int a(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f22198c - this.f22199d;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(af.a(this.f22197b), this.f22199d, bArr, i, min);
        this.f22199d += min;
        a(min);
        return min;
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final long a(j jVar) throws IOException {
        d();
        this.f22196a = jVar;
        this.f22199d = (int) jVar.g;
        Uri uri = jVar.f22204a;
        String scheme = uri.getScheme();
        if ("data".equals(scheme)) {
            String[] a2 = af.a(uri.getSchemeSpecificPart(), ",");
            if (a2.length == 2) {
                String str = a2[1];
                if (a2[0].contains(";base64")) {
                    try {
                        this.f22197b = Base64.decode(str, 0);
                    } catch (IllegalArgumentException e) {
                        throw new ParserException("Error while parsing Base64 encoded string: ".concat(String.valueOf(str)), e);
                    }
                } else {
                    this.f22197b = af.c(URLDecoder.decode(str, d.f31918a.name()));
                }
                int length = jVar.h != -1 ? ((int) jVar.h) + this.f22199d : this.f22197b.length;
                this.f22198c = length;
                if (length > this.f22197b.length || this.f22199d > length) {
                    this.f22197b = null;
                    throw new DataSourceException(0);
                }
                b(jVar);
                return this.f22198c - this.f22199d;
            }
            throw new ParserException("Unexpected URI format: ".concat(String.valueOf(uri)));
        }
        throw new ParserException("Unsupported scheme: ".concat(String.valueOf(scheme)));
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final Uri a() {
        j jVar = this.f22196a;
        if (jVar != null) {
            return jVar.f22204a;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final void c() {
        if (this.f22197b != null) {
            this.f22197b = null;
            e();
        }
        this.f22196a = null;
    }
}
