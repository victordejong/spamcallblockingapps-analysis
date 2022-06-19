package org.bouncycastle.crypto.tls;

import java.util.Vector;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/CertificateRequest.class */
public class CertificateRequest {
    private Vector certificateAuthorities;
    private short[] certificateTypes;

    public CertificateRequest(short[] sArr, Vector vector) {
        this.certificateTypes = sArr;
        this.certificateAuthorities = vector;
    }

    public Vector getCertificateAuthorities() {
        return this.certificateAuthorities;
    }

    public short[] getCertificateTypes() {
        return this.certificateTypes;
    }
}
