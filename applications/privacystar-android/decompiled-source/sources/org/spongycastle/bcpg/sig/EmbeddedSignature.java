package org.spongycastle.bcpg.sig;

import org.spongycastle.bcpg.SignatureSubpacket;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/sig/EmbeddedSignature.class */
public class EmbeddedSignature extends SignatureSubpacket {
    public EmbeddedSignature(boolean z, boolean z2, byte[] bArr) {
        super(32, z, z2, bArr);
    }
}
