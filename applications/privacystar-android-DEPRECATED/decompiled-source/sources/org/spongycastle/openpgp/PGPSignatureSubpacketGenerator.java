package org.spongycastle.openpgp;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.spongycastle.bcpg.SignatureSubpacket;
import org.spongycastle.bcpg.sig.EmbeddedSignature;
import org.spongycastle.bcpg.sig.Exportable;
import org.spongycastle.bcpg.sig.Features;
import org.spongycastle.bcpg.sig.IssuerKeyID;
import org.spongycastle.bcpg.sig.KeyExpirationTime;
import org.spongycastle.bcpg.sig.KeyFlags;
import org.spongycastle.bcpg.sig.NotationData;
import org.spongycastle.bcpg.sig.PreferredAlgorithms;
import org.spongycastle.bcpg.sig.PrimaryUserID;
import org.spongycastle.bcpg.sig.Revocable;
import org.spongycastle.bcpg.sig.RevocationKey;
import org.spongycastle.bcpg.sig.RevocationReason;
import org.spongycastle.bcpg.sig.SignatureCreationTime;
import org.spongycastle.bcpg.sig.SignatureExpirationTime;
import org.spongycastle.bcpg.sig.SignerUserID;
import org.spongycastle.bcpg.sig.TrustSignature;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPSignatureSubpacketGenerator.class */
public class PGPSignatureSubpacketGenerator {
    List list = new ArrayList();

    public PGPSignatureSubpacketVector generate() {
        return new PGPSignatureSubpacketVector((SignatureSubpacket[]) this.list.toArray(new SignatureSubpacket[this.list.size()]));
    }

    public void setEmbeddedSignature(boolean z, PGPSignature pGPSignature) throws IOException {
        byte[] encoded = pGPSignature.getEncoded();
        byte[] bArr = encoded.length - 1 > 256 ? new byte[encoded.length - 3] : new byte[encoded.length - 2];
        System.arraycopy(encoded, encoded.length - bArr.length, bArr, 0, bArr.length);
        this.list.add(new EmbeddedSignature(z, false, bArr));
    }

    public void setExportable(boolean z, boolean z2) {
        this.list.add(new Exportable(z, z2));
    }

    public void setFeature(boolean z, byte b) {
        this.list.add(new Features(z, b));
    }

    public void setIssuerKeyID(boolean z, long j) {
        this.list.add(new IssuerKeyID(z, j));
    }

    public void setKeyExpirationTime(boolean z, long j) {
        this.list.add(new KeyExpirationTime(z, j));
    }

    public void setKeyFlags(boolean z, int i) {
        this.list.add(new KeyFlags(z, i));
    }

    public void setNotationData(boolean z, boolean z2, String str, String str2) {
        this.list.add(new NotationData(z, z2, str, str2));
    }

    public void setPreferredCompressionAlgorithms(boolean z, int[] iArr) {
        this.list.add(new PreferredAlgorithms(22, z, iArr));
    }

    public void setPreferredHashAlgorithms(boolean z, int[] iArr) {
        this.list.add(new PreferredAlgorithms(21, z, iArr));
    }

    public void setPreferredSymmetricAlgorithms(boolean z, int[] iArr) {
        this.list.add(new PreferredAlgorithms(11, z, iArr));
    }

    public void setPrimaryUserID(boolean z, boolean z2) {
        this.list.add(new PrimaryUserID(z, z2));
    }

    public void setRevocable(boolean z, boolean z2) {
        this.list.add(new Revocable(z, z2));
    }

    public void setRevocationKey(boolean z, int i, byte[] bArr) {
        this.list.add(new RevocationKey(z, Byte.MIN_VALUE, i, bArr));
    }

    public void setRevocationReason(boolean z, byte b, String str) {
        this.list.add(new RevocationReason(z, b, str));
    }

    public void setSignatureCreationTime(boolean z, Date date) {
        this.list.add(new SignatureCreationTime(z, date));
    }

    public void setSignatureExpirationTime(boolean z, long j) {
        this.list.add(new SignatureExpirationTime(z, j));
    }

    public void setSignerUserID(boolean z, String str) {
        if (str == null) {
            throw new IllegalArgumentException("attempt to set null SignerUserID");
        }
        this.list.add(new SignerUserID(z, str));
    }

    public void setSignerUserID(boolean z, byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("attempt to set null SignerUserID");
        }
        this.list.add(new SignerUserID(z, false, bArr));
    }

    public void setTrust(boolean z, int i, int i2) {
        this.list.add(new TrustSignature(z, i, i2));
    }
}
