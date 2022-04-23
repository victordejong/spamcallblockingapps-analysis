package p131c.p161d.p170b.p224d.p252g.p253a;

import java.io.FilterInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
/* renamed from: c.d.b.d.g.a.a9 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/a9.class */
public final class C3347a9 extends FilterInputStream {

    /* renamed from: a */
    public final HttpURLConnection f12072a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C3347a9(java.net.HttpURLConnection r4) {
        /*
            r3 = this;
            r0 = r3
            r1 = r4
            java.io.InputStream r1 = com.google.android.gms.internal.ads.zzbd.m15810b(r1)
            r0.<init>(r1)
            r0 = r3
            r1 = r4
            r0.f12072a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.C3347a9.<init>(java.net.HttpURLConnection):void");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        this.f12072a.disconnect();
    }
}
