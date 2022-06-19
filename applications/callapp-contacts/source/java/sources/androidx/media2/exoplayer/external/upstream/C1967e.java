package androidx.media2.exoplayer.external.upstream;

import android.net.Uri;
import android.util.Base64;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.io.IOException;
import java.net.URLDecoder;
/* renamed from: androidx.media2.exoplayer.external.upstream.e */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/e.class */
public final class C1967e extends AbstractC1966d {

    /* renamed from: a */
    private C1971h f7942a;

    /* renamed from: b */
    private byte[] f7943b;

    /* renamed from: c */
    private int f7944c;

    /* renamed from: d */
    private int f7945d;

    public C1967e() {
        super(false);
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final int mo41197a(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f7944c - this.f7945d;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(C1996ac.m41659a(this.f7943b), this.f7945d, bArr, i, min);
        this.f7945d += min;
        m41743a(min);
        return min;
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final long mo41199a(C1971h c1971h) throws IOException {
        m41741d();
        this.f7942a = c1971h;
        this.f7945d = (int) c1971h.f7957f;
        Uri uri = c1971h.f7952a;
        String scheme = uri.getScheme();
        if (!"data".equals(scheme)) {
            String valueOf = String.valueOf(scheme);
            throw new ParserException(valueOf.length() != 0 ? "Unsupported scheme: ".concat(valueOf) : new String("Unsupported scheme: "));
        }
        String[] m41654a = C1996ac.m41654a(uri.getSchemeSpecificPart(), ",");
        if (m41654a.length != 2) {
            String valueOf2 = String.valueOf(uri);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf2).length() + 23);
            sb.append("Unexpected URI format: ");
            sb.append(valueOf2);
            throw new ParserException(sb.toString());
        }
        String str = m41654a[1];
        if (m41654a[0].contains(";base64")) {
            try {
                this.f7943b = Base64.decode(str, 0);
            } catch (IllegalArgumentException e) {
                String valueOf3 = String.valueOf(str);
                throw new ParserException(valueOf3.length() != 0 ? "Error while parsing Base64 encoded string: ".concat(valueOf3) : new String("Error while parsing Base64 encoded string: "), e);
            }
        } else {
            this.f7943b = C1996ac.m41623c(URLDecoder.decode(str, "US-ASCII"));
        }
        int length = c1971h.f7958g != -1 ? ((int) c1971h.f7958g) + this.f7945d : this.f7943b.length;
        this.f7944c = length;
        if (length > this.f7943b.length || this.f7945d > length) {
            this.f7943b = null;
            throw new DataSourceException(0);
        }
        m41742b(c1971h);
        return this.f7944c - this.f7945d;
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final Uri mo41200a() {
        C1971h c1971h = this.f7942a;
        if (c1971h != null) {
            return c1971h.f7952a;
        }
        return null;
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: c */
    public final void mo41196c() {
        if (this.f7943b != null) {
            this.f7943b = null;
            m41740e();
        }
        this.f7942a = null;
    }
}
