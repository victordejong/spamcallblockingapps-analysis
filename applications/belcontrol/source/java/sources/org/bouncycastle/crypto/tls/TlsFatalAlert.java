package org.bouncycastle.crypto.tls;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/TlsFatalAlert.class */
public class TlsFatalAlert extends IOException {
    private static final long serialVersionUID = 3584313123679111168L;
    private short alertDescription;

    public TlsFatalAlert(short s) {
        this.alertDescription = s;
    }

    public short getAlertDescription() {
        return this.alertDescription;
    }
}
