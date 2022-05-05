package org.spongycastle.openpgp;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import org.spongycastle.bcpg.SignaturePacket;
import org.spongycastle.bcpg.SignatureSubpacket;
import org.spongycastle.bcpg.sig.Features;
import org.spongycastle.bcpg.sig.IssuerKeyID;
import org.spongycastle.bcpg.sig.KeyExpirationTime;
import org.spongycastle.bcpg.sig.KeyFlags;
import org.spongycastle.bcpg.sig.NotationData;
import org.spongycastle.bcpg.sig.PreferredAlgorithms;
import org.spongycastle.bcpg.sig.PrimaryUserID;
import org.spongycastle.bcpg.sig.SignatureCreationTime;
import org.spongycastle.bcpg.sig.SignatureExpirationTime;
import org.spongycastle.bcpg.sig.SignerUserID;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPSignatureSubpacketVector.class */
public class PGPSignatureSubpacketVector {
    SignatureSubpacket[] packets;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PGPSignatureSubpacketVector(SignatureSubpacket[] signatureSubpacketArr) {
        this.packets = signatureSubpacketArr;
    }

    public int[] getCriticalTags() {
        int i = 0;
        for (int i2 = 0; i2 != this.packets.length; i2++) {
            i = i;
            if (this.packets[i2].isCritical()) {
                i++;
            }
        }
        int[] iArr = new int[i];
        int i3 = 0;
        for (int i4 = 0; i4 != this.packets.length; i4++) {
            i3 = i3;
            if (this.packets[i4].isCritical()) {
                iArr[i3] = this.packets[i4].getType();
                i3++;
            }
        }
        return iArr;
    }

    public PGPSignatureList getEmbeddedSignatures() throws PGPException {
        SignatureSubpacket[] subpackets = getSubpackets(32);
        ArrayList arrayList = new ArrayList();
        for (SignatureSubpacket signatureSubpacket : subpackets) {
            try {
                arrayList.add(new PGPSignature(SignaturePacket.fromByteArray(signatureSubpacket.getData())));
            } catch (IOException e) {
                throw new PGPException("Unable to parse signature packet: " + e.getMessage(), e);
            }
        }
        return new PGPSignatureList((PGPSignature[]) arrayList.toArray(new PGPSignature[arrayList.size()]));
    }

    public Features getFeatures() {
        SignatureSubpacket subpacket = getSubpacket(30);
        if (subpacket == null) {
            return null;
        }
        return new Features(subpacket.isCritical(), subpacket.isLongLength(), subpacket.getData());
    }

    public long getIssuerKeyID() {
        SignatureSubpacket subpacket = getSubpacket(16);
        if (subpacket == null) {
            return 0L;
        }
        return ((IssuerKeyID) subpacket).getKeyID();
    }

    public long getKeyExpirationTime() {
        SignatureSubpacket subpacket = getSubpacket(9);
        if (subpacket == null) {
            return 0L;
        }
        return ((KeyExpirationTime) subpacket).getTime();
    }

    public int getKeyFlags() {
        SignatureSubpacket subpacket = getSubpacket(27);
        if (subpacket == null) {
            return 0;
        }
        return ((KeyFlags) subpacket).getFlags();
    }

    public NotationData[] getNotationDataOccurences() {
        return getNotationDataOccurrences();
    }

    public NotationData[] getNotationDataOccurrences() {
        SignatureSubpacket[] subpackets = getSubpackets(20);
        NotationData[] notationDataArr = new NotationData[subpackets.length];
        for (int i = 0; i < subpackets.length; i++) {
            notationDataArr[i] = (NotationData) subpackets[i];
        }
        return notationDataArr;
    }

    public int[] getPreferredCompressionAlgorithms() {
        SignatureSubpacket subpacket = getSubpacket(22);
        if (subpacket == null) {
            return null;
        }
        return ((PreferredAlgorithms) subpacket).getPreferences();
    }

    public int[] getPreferredHashAlgorithms() {
        SignatureSubpacket subpacket = getSubpacket(21);
        if (subpacket == null) {
            return null;
        }
        return ((PreferredAlgorithms) subpacket).getPreferences();
    }

    public int[] getPreferredSymmetricAlgorithms() {
        SignatureSubpacket subpacket = getSubpacket(11);
        if (subpacket == null) {
            return null;
        }
        return ((PreferredAlgorithms) subpacket).getPreferences();
    }

    public Date getSignatureCreationTime() {
        SignatureSubpacket subpacket = getSubpacket(2);
        if (subpacket == null) {
            return null;
        }
        return ((SignatureCreationTime) subpacket).getTime();
    }

    public long getSignatureExpirationTime() {
        SignatureSubpacket subpacket = getSubpacket(3);
        if (subpacket == null) {
            return 0L;
        }
        return ((SignatureExpirationTime) subpacket).getTime();
    }

    public String getSignerUserID() {
        SignatureSubpacket subpacket = getSubpacket(28);
        if (subpacket == null) {
            return null;
        }
        return ((SignerUserID) subpacket).getID();
    }

    public SignatureSubpacket getSubpacket(int i) {
        for (int i2 = 0; i2 != this.packets.length; i2++) {
            if (this.packets[i2].getType() == i) {
                return this.packets[i2];
            }
        }
        return null;
    }

    public SignatureSubpacket[] getSubpackets(int i) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 != this.packets.length; i2++) {
            if (this.packets[i2].getType() == i) {
                arrayList.add(this.packets[i2]);
            }
        }
        return (SignatureSubpacket[]) arrayList.toArray(new SignatureSubpacket[0]);
    }

    public boolean hasSubpacket(int i) {
        return getSubpacket(i) != null;
    }

    public boolean isPrimaryUserID() {
        PrimaryUserID primaryUserID = (PrimaryUserID) getSubpacket(25);
        if (primaryUserID != null) {
            return primaryUserID.isPrimaryUserID();
        }
        return false;
    }

    public int size() {
        return this.packets.length;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SignatureSubpacket[] toSubpacketArray() {
        return this.packets;
    }
}
