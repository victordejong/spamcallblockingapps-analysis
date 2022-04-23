package com.dropbox.core;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/NetworkIOException.class */
public class NetworkIOException extends DbxException {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public NetworkIOException(java.io.IOException r5) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r0 = r0.getMessage()
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r5
            boolean r0 = r0 instanceof javax.net.ssl.SSLHandshakeException
            if (r0 == 0) goto L_0x0054
            r0 = r5
            java.lang.Throwable r0 = r0.getCause()
            r8 = r0
            r0 = r6
            r7 = r0
            r0 = r8
            boolean r0 = r0 instanceof java.security.cert.CertPathValidatorException
            if (r0 == 0) goto L_0x0054
            r0 = r8
            java.security.cert.CertPathValidatorException r0 = (java.security.cert.CertPathValidatorException) r0
            r7 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = "[CERT PATH: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r7
            java.security.cert.CertPath r1 = r1.getCertPath()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = "]"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r0 = r0.toString()
            r7 = r0
        L_0x0054:
            r0 = r4
            r1 = r7
            r2 = r5
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.NetworkIOException.<init>(java.io.IOException):void");
    }

    @Override // java.lang.Throwable
    public /* bridge */ /* synthetic */ Throwable getCause() {
        return (IOException) super.getCause();
    }
}
