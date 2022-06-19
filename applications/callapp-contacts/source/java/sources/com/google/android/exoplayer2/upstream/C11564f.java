package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import android.util.Base64;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.C11599af;
import com.google.common.base.C15374d;
import java.io.IOException;
import java.net.URLDecoder;
/* renamed from: com.google.android.exoplayer2.upstream.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/f.class */
public final class C11564f extends AbstractC11562d {

    /* renamed from: a */
    private C11570j f38502a;

    /* renamed from: b */
    private byte[] f38503b;

    /* renamed from: c */
    private int f38504c;

    /* renamed from: d */
    private int f38505d;

    public C11564f() {
        super(false);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11563e
    /* renamed from: a */
    public final int mo20033a(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f38504c - this.f38505d;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(C11599af.m19974a(this.f38503b), this.f38505d, bArr, i, min);
        this.f38505d += min;
        m20084a(min);
        return min;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final long mo20035a(C11570j c11570j) throws IOException {
        m20082d();
        this.f38502a = c11570j;
        this.f38505d = (int) c11570j.f38518g;
        Uri uri = c11570j.f38512a;
        String scheme = uri.getScheme();
        if ("data".equals(scheme)) {
            String[] m19969a = C11599af.m19969a(uri.getSchemeSpecificPart(), ",");
            if (m19969a.length != 2) {
                throw new ParserException("Unexpected URI format: ".concat(String.valueOf(uri)));
            }
            String str = m19969a[1];
            if (m19969a[0].contains(";base64")) {
                try {
                    this.f38503b = Base64.decode(str, 0);
                } catch (IllegalArgumentException e) {
                    throw new ParserException("Error while parsing Base64 encoded string: ".concat(String.valueOf(str)), e);
                }
            } else {
                this.f38503b = C11599af.m19931c(URLDecoder.decode(str, C15374d.f55618a.name()));
            }
            int length = c11570j.f38519h != -1 ? ((int) c11570j.f38519h) + this.f38505d : this.f38503b.length;
            this.f38504c = length;
            if (length > this.f38503b.length || this.f38505d > length) {
                this.f38503b = null;
                throw new DataSourceException(0);
            }
            m20083b(c11570j);
            return this.f38504c - this.f38505d;
        }
        throw new ParserException("Unsupported scheme: ".concat(String.valueOf(scheme)));
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final Uri mo20036a() {
        C11570j c11570j = this.f38502a;
        if (c11570j != null) {
            return c11570j.f38512a;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: c */
    public final void mo20031c() {
        if (this.f38503b != null) {
            this.f38503b = null;
            m20081e();
        }
        this.f38502a = null;
    }
}
