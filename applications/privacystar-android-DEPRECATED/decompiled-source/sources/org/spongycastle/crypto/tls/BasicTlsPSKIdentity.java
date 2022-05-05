package org.spongycastle.crypto.tls;

import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/BasicTlsPSKIdentity.class */
public class BasicTlsPSKIdentity implements TlsPSKIdentity {
    protected byte[] identity;
    protected byte[] psk;

    public BasicTlsPSKIdentity(String str, byte[] bArr) {
        this.identity = Strings.toUTF8ByteArray(str);
        this.psk = Arrays.clone(bArr);
    }

    public BasicTlsPSKIdentity(byte[] bArr, byte[] bArr2) {
        this.identity = Arrays.clone(bArr);
        this.psk = Arrays.clone(bArr2);
    }

    @Override // org.spongycastle.crypto.tls.TlsPSKIdentity
    public byte[] getPSK() {
        return this.psk;
    }

    @Override // org.spongycastle.crypto.tls.TlsPSKIdentity
    public byte[] getPSKIdentity() {
        return this.identity;
    }

    @Override // org.spongycastle.crypto.tls.TlsPSKIdentity
    public void notifyIdentityHint(byte[] bArr) {
    }

    @Override // org.spongycastle.crypto.tls.TlsPSKIdentity
    public void skipIdentityHint() {
    }
}
