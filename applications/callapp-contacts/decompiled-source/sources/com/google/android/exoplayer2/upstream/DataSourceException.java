package com.google.android.exoplayer2.upstream;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/DataSourceException.class */
public final class DataSourceException extends IOException {

    /* renamed from: a  reason: collision with root package name */
    public final int f22095a;

    public DataSourceException(int i) {
        this.f22095a = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r2 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.io.IOException r2) {
        /*
        L_0x0000:
            r0 = r2
            if (r0 == 0) goto L_0x001f
            r0 = r2
            boolean r0 = r0 instanceof com.google.android.exoplayer2.upstream.DataSourceException
            if (r0 == 0) goto L_0x0017
            r0 = r2
            com.google.android.exoplayer2.upstream.DataSourceException r0 = (com.google.android.exoplayer2.upstream.DataSourceException) r0
            int r0 = r0.f22095a
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.DataSourceException.a(java.io.IOException):boolean");
    }
}
