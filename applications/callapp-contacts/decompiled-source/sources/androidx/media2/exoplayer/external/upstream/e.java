package androidx.media2.exoplayer.external.upstream;

import android.net.Uri;
import android.util.Base64;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.util.ac;
import java.io.IOException;
import java.net.URLDecoder;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/e.class */
public final class e extends d {

    /* renamed from: a  reason: collision with root package name */
    private h f4056a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f4057b;

    /* renamed from: c  reason: collision with root package name */
    private int f4058c;

    /* renamed from: d  reason: collision with root package name */
    private int f4059d;

    public e() {
        super(false);
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final int a(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f4058c - this.f4059d;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(ac.a(this.f4057b), this.f4059d, bArr, i, min);
        this.f4059d += min;
        a(min);
        return min;
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final long a(h hVar) throws IOException {
        d();
        this.f4056a = hVar;
        this.f4059d = (int) hVar.f;
        Uri uri = hVar.f4064a;
        String scheme = uri.getScheme();
        if (!"data".equals(scheme)) {
            String valueOf = String.valueOf(scheme);
            throw new ParserException(valueOf.length() != 0 ? "Unsupported scheme: ".concat(valueOf) : new String("Unsupported scheme: "));
        }
        String[] a2 = ac.a(uri.getSchemeSpecificPart(), ",");
        if (a2.length == 2) {
            String str = a2[1];
            if (a2[0].contains(";base64")) {
                try {
                    this.f4057b = Base64.decode(str, 0);
                } catch (IllegalArgumentException e) {
                    String valueOf2 = String.valueOf(str);
                    throw new ParserException(valueOf2.length() != 0 ? "Error while parsing Base64 encoded string: ".concat(valueOf2) : new String("Error while parsing Base64 encoded string: "), e);
                }
            } else {
                this.f4057b = ac.c(URLDecoder.decode(str, "US-ASCII"));
            }
            int length = hVar.g != -1 ? ((int) hVar.g) + this.f4059d : this.f4057b.length;
            this.f4058c = length;
            if (length > this.f4057b.length || this.f4059d > length) {
                this.f4057b = null;
                throw new DataSourceException(0);
            }
            b(hVar);
            return this.f4058c - this.f4059d;
        }
        String valueOf3 = String.valueOf(uri);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf3).length() + 23);
        sb.append("Unexpected URI format: ");
        sb.append(valueOf3);
        throw new ParserException(sb.toString());
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final Uri a() {
        h hVar = this.f4056a;
        if (hVar != null) {
            return hVar.f4064a;
        }
        return null;
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final void c() {
        if (this.f4057b != null) {
            this.f4057b = null;
            e();
        }
        this.f4056a = null;
    }
}
