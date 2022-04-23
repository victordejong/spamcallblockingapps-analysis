package p131c.p161d.p170b.p188c.p201f1.p202u;

import android.net.Uri;
/* renamed from: c.d.b.c.f1.u.i */
/* loaded from: classes-dex2jar.jar:c/d/b/c/f1/u/i.class */
public final class C2851i {

    /* renamed from: a */
    public static final AbstractC2849g f10375a = C2842a.f10338a;

    /* renamed from: a */
    public static String m28859a(Uri uri) {
        return uri.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r2 = r2;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m28857a(java.io.IOException r2) {
        /*
        L_0x0000:
            r0 = r2
            if (r0 == 0) goto L_0x001f
            r0 = r2
            boolean r0 = r0 instanceof com.google.android.exoplayer2.upstream.DataSourceException
            if (r0 == 0) goto L_0x0017
            r0 = r2
            com.google.android.exoplayer2.upstream.DataSourceException r0 = (com.google.android.exoplayer2.upstream.DataSourceException) r0
            int r0 = r0.reason
            if (r0 != 0) goto L_0x0017
            r0 = 1
            return r0
        L_0x0017:
            r0 = r2
            java.lang.Throwable r0 = r0.getCause()
            r2 = r0
            goto L_0x0000
        L_0x001f:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p201f1.p202u.C2851i.m28857a(java.io.IOException):boolean");
    }
}
