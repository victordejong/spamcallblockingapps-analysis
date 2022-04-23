package org.spongycastle.crypto.tls;

import java.io.EOFException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/TlsNoCloseNotifyException.class */
public class TlsNoCloseNotifyException extends EOFException {
    public TlsNoCloseNotifyException() {
        super("No close_notify alert received before connection closed");
    }
}
