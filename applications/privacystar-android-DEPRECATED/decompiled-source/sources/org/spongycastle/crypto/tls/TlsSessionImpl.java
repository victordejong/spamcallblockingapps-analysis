package org.spongycastle.crypto.tls;

import org.spongycastle.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/TlsSessionImpl.class */
public class TlsSessionImpl implements TlsSession {
    final byte[] sessionID;
    SessionParameters sessionParameters;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TlsSessionImpl(byte[] bArr, SessionParameters sessionParameters) {
        if (bArr == null) {
            throw new IllegalArgumentException("'sessionID' cannot be null");
        } else if (bArr.length < 1 || bArr.length > 32) {
            throw new IllegalArgumentException("'sessionID' must have length between 1 and 32 bytes, inclusive");
        } else {
            this.sessionID = Arrays.clone(bArr);
            this.sessionParameters = sessionParameters;
        }
    }

    @Override // org.spongycastle.crypto.tls.TlsSession
    public SessionParameters exportSessionParameters() {
        SessionParameters copy;
        synchronized (this) {
            copy = this.sessionParameters == null ? null : this.sessionParameters.copy();
        }
        return copy;
    }

    @Override // org.spongycastle.crypto.tls.TlsSession
    public byte[] getSessionID() {
        byte[] bArr;
        synchronized (this) {
            bArr = this.sessionID;
        }
        return bArr;
    }

    @Override // org.spongycastle.crypto.tls.TlsSession
    public void invalidate() {
        synchronized (this) {
            if (this.sessionParameters != null) {
                this.sessionParameters.clear();
                this.sessionParameters = null;
            }
        }
    }

    @Override // org.spongycastle.crypto.tls.TlsSession
    public boolean isResumable() {
        boolean z;
        synchronized (this) {
            z = this.sessionParameters != null;
        }
        return z;
    }
}
