package org.spongycastle.crypto.tls;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/CertChainType.class */
public class CertChainType {
    public static final short individual_certs = 0;
    public static final short pkipath = 1;

    public static boolean isValid(short s) {
        boolean z = true;
        if (s < 0 || s > 1) {
            z = false;
        }
        return z;
    }
}
