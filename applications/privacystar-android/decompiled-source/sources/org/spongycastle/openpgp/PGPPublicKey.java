package org.spongycastle.openpgp;

import com.privacystar.core.util.DateUtil;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.spongycastle.asn1.p022x9.ECNamedCurveTable;
import org.spongycastle.bcpg.BCPGKey;
import org.spongycastle.bcpg.BCPGOutputStream;
import org.spongycastle.bcpg.ContainedPacket;
import org.spongycastle.bcpg.DSAPublicBCPGKey;
import org.spongycastle.bcpg.ECPublicBCPGKey;
import org.spongycastle.bcpg.ElGamalPublicBCPGKey;
import org.spongycastle.bcpg.PublicKeyAlgorithmTags;
import org.spongycastle.bcpg.PublicKeyPacket;
import org.spongycastle.bcpg.RSAPublicBCPGKey;
import org.spongycastle.bcpg.TrustPacket;
import org.spongycastle.bcpg.UserAttributePacket;
import org.spongycastle.bcpg.UserIDPacket;
import org.spongycastle.openpgp.operator.KeyFingerPrintCalculator;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPPublicKey.class */
public class PGPPublicKey implements PublicKeyAlgorithmTags {
    private static final int[] MASTER_KEY_CERTIFICATION_TYPES = {19, 18, 17, 16};
    private byte[] fingerprint;
    List idSigs;
    List idTrusts;
    List ids;
    private long keyID;
    List keySigs;
    private int keyStrength;
    PublicKeyPacket publicPk;
    List subSigs;
    TrustPacket trustPk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PGPPublicKey(PublicKeyPacket publicKeyPacket, TrustPacket trustPacket, List list, List list2, List list3, List list4, KeyFingerPrintCalculator keyFingerPrintCalculator) throws PGPException {
        this.keySigs = new ArrayList();
        this.ids = new ArrayList();
        this.idTrusts = new ArrayList();
        this.idSigs = new ArrayList();
        this.subSigs = null;
        this.publicPk = publicKeyPacket;
        this.trustPk = trustPacket;
        this.keySigs = list;
        this.ids = list2;
        this.idTrusts = list3;
        this.idSigs = list4;
        init(keyFingerPrintCalculator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PGPPublicKey(PublicKeyPacket publicKeyPacket, TrustPacket trustPacket, List list, KeyFingerPrintCalculator keyFingerPrintCalculator) throws PGPException {
        this.keySigs = new ArrayList();
        this.ids = new ArrayList();
        this.idTrusts = new ArrayList();
        this.idSigs = new ArrayList();
        this.subSigs = null;
        this.publicPk = publicKeyPacket;
        this.trustPk = trustPacket;
        this.subSigs = list;
        init(keyFingerPrintCalculator);
    }

    public PGPPublicKey(PublicKeyPacket publicKeyPacket, KeyFingerPrintCalculator keyFingerPrintCalculator) throws PGPException {
        this.keySigs = new ArrayList();
        this.ids = new ArrayList();
        this.idTrusts = new ArrayList();
        this.idSigs = new ArrayList();
        this.subSigs = null;
        this.publicPk = publicKeyPacket;
        this.ids = new ArrayList();
        this.idSigs = new ArrayList();
        init(keyFingerPrintCalculator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PGPPublicKey(PGPPublicKey pGPPublicKey) {
        this.keySigs = new ArrayList();
        this.ids = new ArrayList();
        this.idTrusts = new ArrayList();
        this.idSigs = new ArrayList();
        this.subSigs = null;
        this.publicPk = pGPPublicKey.publicPk;
        this.keySigs = new ArrayList(pGPPublicKey.keySigs);
        this.ids = new ArrayList(pGPPublicKey.ids);
        this.idTrusts = new ArrayList(pGPPublicKey.idTrusts);
        this.idSigs = new ArrayList(pGPPublicKey.idSigs.size());
        for (int i = 0; i != pGPPublicKey.idSigs.size(); i++) {
            this.idSigs.add(new ArrayList((ArrayList) pGPPublicKey.idSigs.get(i)));
        }
        if (pGPPublicKey.subSigs != null) {
            this.subSigs = new ArrayList(pGPPublicKey.subSigs.size());
            for (int i2 = 0; i2 != pGPPublicKey.subSigs.size(); i2++) {
                this.subSigs.add(pGPPublicKey.subSigs.get(i2));
            }
        }
        this.fingerprint = pGPPublicKey.fingerprint;
        this.keyID = pGPPublicKey.keyID;
        this.keyStrength = pGPPublicKey.keyStrength;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PGPPublicKey(PGPPublicKey pGPPublicKey, TrustPacket trustPacket, List list) {
        this.keySigs = new ArrayList();
        this.ids = new ArrayList();
        this.idTrusts = new ArrayList();
        this.idSigs = new ArrayList();
        this.subSigs = null;
        this.publicPk = pGPPublicKey.publicPk;
        this.trustPk = trustPacket;
        this.subSigs = list;
        this.fingerprint = pGPPublicKey.fingerprint;
        this.keyID = pGPPublicKey.keyID;
        this.keyStrength = pGPPublicKey.keyStrength;
    }

    private static PGPPublicKey addCert(PGPPublicKey pGPPublicKey, Object obj, PGPSignature pGPSignature) {
        PGPPublicKey pGPPublicKey2 = new PGPPublicKey(pGPPublicKey);
        List list = null;
        for (int i = 0; i != pGPPublicKey2.ids.size(); i++) {
            if (obj.equals(pGPPublicKey2.ids.get(i))) {
                list = (List) pGPPublicKey2.idSigs.get(i);
            }
        }
        if (list != null) {
            list.add(pGPSignature);
        } else {
            ArrayList arrayList = new ArrayList();
            arrayList.add(pGPSignature);
            pGPPublicKey2.ids.add(obj);
            pGPPublicKey2.idTrusts.add(null);
            pGPPublicKey2.idSigs.add(arrayList);
        }
        return pGPPublicKey2;
    }

    public static PGPPublicKey addCertification(PGPPublicKey pGPPublicKey, String str, PGPSignature pGPSignature) {
        return addCert(pGPPublicKey, new UserIDPacket(str), pGPSignature);
    }

    public static PGPPublicKey addCertification(PGPPublicKey pGPPublicKey, PGPSignature pGPSignature) {
        if (pGPPublicKey.isMasterKey()) {
            if (pGPSignature.getSignatureType() == 40) {
                throw new IllegalArgumentException("signature type incorrect for master key revocation.");
            }
        } else if (pGPSignature.getSignatureType() == 32) {
            throw new IllegalArgumentException("signature type incorrect for sub-key revocation.");
        }
        PGPPublicKey pGPPublicKey2 = new PGPPublicKey(pGPPublicKey);
        if (pGPPublicKey2.subSigs != null) {
            pGPPublicKey2.subSigs.add(pGPSignature);
        } else {
            pGPPublicKey2.keySigs.add(pGPSignature);
        }
        return pGPPublicKey2;
    }

    public static PGPPublicKey addCertification(PGPPublicKey pGPPublicKey, PGPUserAttributeSubpacketVector pGPUserAttributeSubpacketVector, PGPSignature pGPSignature) {
        return addCert(pGPPublicKey, pGPUserAttributeSubpacketVector, pGPSignature);
    }

    public static PGPPublicKey addCertification(PGPPublicKey pGPPublicKey, byte[] bArr, PGPSignature pGPSignature) {
        return addCert(pGPPublicKey, new UserIDPacket(bArr), pGPSignature);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long getExpirationTimeFromSig(boolean r6, int r7) {
        /*
            r5 = this;
            r0 = r5
            r1 = r7
            java.util.Iterator r0 = r0.getSignaturesOfType(r1)
            r8 = r0
            r0 = -1
            r9 = r0
        L_0x000b:
            r0 = r8
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x005b
            r0 = r8
            java.lang.Object r0 = r0.next()
            org.spongycastle.openpgp.PGPSignature r0 = (org.spongycastle.openpgp.PGPSignature) r0
            r11 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0030
            r0 = r11
            long r0 = r0.getKeyID()
            r1 = r5
            long r1 = r1.getKeyID()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x000b
        L_0x0030:
            r0 = r11
            org.spongycastle.openpgp.PGPSignatureSubpacketVector r0 = r0.getHashedSubPackets()
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x0059
            r0 = r11
            long r0 = r0.getKeyExpirationTime()
            r12 = r0
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0052
            r0 = r12
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x000b
        L_0x0052:
            r0 = r12
            r9 = r0
            goto L_0x000b
        L_0x0059:
            r0 = 0
            return r0
        L_0x005b:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.openpgp.PGPPublicKey.getExpirationTimeFromSig(boolean, int):long");
    }

    private Iterator getSignaturesForID(UserIDPacket userIDPacket) {
        for (int i = 0; i != this.ids.size(); i++) {
            if (userIDPacket.equals(this.ids.get(i))) {
                return ((ArrayList) this.idSigs.get(i)).iterator();
            }
        }
        return null;
    }

    private void init(KeyFingerPrintCalculator keyFingerPrintCalculator) throws PGPException {
        BCPGKey key = this.publicPk.getKey();
        this.fingerprint = keyFingerPrintCalculator.calculateFingerprint(this.publicPk);
        if (this.publicPk.getVersion() <= 3) {
            RSAPublicBCPGKey rSAPublicBCPGKey = (RSAPublicBCPGKey) key;
            this.keyID = rSAPublicBCPGKey.getModulus().longValue();
            this.keyStrength = rSAPublicBCPGKey.getModulus().bitLength();
            return;
        }
        this.keyID = ((this.fingerprint[this.fingerprint.length - 3] & 255) << 16) | ((this.fingerprint[this.fingerprint.length - 8] & 255) << 56) | ((this.fingerprint[this.fingerprint.length - 7] & 255) << 48) | ((this.fingerprint[this.fingerprint.length - 6] & 255) << 40) | ((this.fingerprint[this.fingerprint.length - 5] & 255) << 32) | ((this.fingerprint[this.fingerprint.length - 4] & 255) << 24) | ((this.fingerprint[this.fingerprint.length - 2] & 255) << 8) | (this.fingerprint[this.fingerprint.length - 1] & 255);
        if (key instanceof RSAPublicBCPGKey) {
            this.keyStrength = ((RSAPublicBCPGKey) key).getModulus().bitLength();
        } else if (key instanceof DSAPublicBCPGKey) {
            this.keyStrength = ((DSAPublicBCPGKey) key).getP().bitLength();
        } else if (key instanceof ElGamalPublicBCPGKey) {
            this.keyStrength = ((ElGamalPublicBCPGKey) key).getP().bitLength();
        } else if (key instanceof ECPublicBCPGKey) {
            this.keyStrength = ECNamedCurveTable.getByOID(((ECPublicBCPGKey) key).getCurveOID()).getCurve().getFieldSize();
        }
    }

    private static PGPPublicKey removeCert(PGPPublicKey pGPPublicKey, Object obj) {
        PGPPublicKey pGPPublicKey2 = new PGPPublicKey(pGPPublicKey);
        boolean z = false;
        for (int i = 0; i < pGPPublicKey2.ids.size(); i++) {
            if (obj.equals(pGPPublicKey2.ids.get(i))) {
                pGPPublicKey2.ids.remove(i);
                pGPPublicKey2.idTrusts.remove(i);
                pGPPublicKey2.idSigs.remove(i);
                z = true;
            }
        }
        if (!z) {
            return null;
        }
        return pGPPublicKey2;
    }

    private static PGPPublicKey removeCert(PGPPublicKey pGPPublicKey, Object obj, PGPSignature pGPSignature) {
        PGPPublicKey pGPPublicKey2 = new PGPPublicKey(pGPPublicKey);
        boolean z = false;
        for (int i = 0; i < pGPPublicKey2.ids.size(); i++) {
            if (obj.equals(pGPPublicKey2.ids.get(i))) {
                z = ((List) pGPPublicKey2.idSigs.get(i)).remove(pGPSignature);
            }
        }
        if (!z) {
            return null;
        }
        return pGPPublicKey2;
    }

    public static PGPPublicKey removeCertification(PGPPublicKey pGPPublicKey, String str) {
        return removeCert(pGPPublicKey, new UserIDPacket(str));
    }

    public static PGPPublicKey removeCertification(PGPPublicKey pGPPublicKey, String str, PGPSignature pGPSignature) {
        return removeCert(pGPPublicKey, new UserIDPacket(str), pGPSignature);
    }

    public static PGPPublicKey removeCertification(PGPPublicKey pGPPublicKey, PGPSignature pGPSignature) {
        PGPPublicKey pGPPublicKey2 = new PGPPublicKey(pGPPublicKey);
        boolean remove = pGPPublicKey2.subSigs != null ? pGPPublicKey2.subSigs.remove(pGPSignature) : pGPPublicKey2.keySigs.remove(pGPSignature);
        PGPPublicKey pGPPublicKey3 = pGPPublicKey2;
        if (!remove) {
            Iterator userIDs = pGPPublicKey.getUserIDs();
            boolean z = remove;
            while (userIDs.hasNext()) {
                UserIDPacket userIDPacket = (UserIDPacket) userIDs.next();
                Iterator signaturesForID = pGPPublicKey.getSignaturesForID(userIDPacket);
                boolean z2 = z;
                PGPPublicKey pGPPublicKey4 = pGPPublicKey2;
                while (true) {
                    pGPPublicKey2 = pGPPublicKey4;
                    z = z2;
                    if (signaturesForID.hasNext()) {
                        if (pGPSignature == signaturesForID.next()) {
                            z2 = true;
                            pGPPublicKey4 = removeCertification(pGPPublicKey4, userIDPacket.getRawID(), pGPSignature);
                        }
                    }
                }
            }
            pGPPublicKey3 = pGPPublicKey2;
            if (!z) {
                Iterator userAttributes = pGPPublicKey.getUserAttributes();
                while (true) {
                    pGPPublicKey3 = pGPPublicKey2;
                    if (!userAttributes.hasNext()) {
                        break;
                    }
                    PGPUserAttributeSubpacketVector pGPUserAttributeSubpacketVector = (PGPUserAttributeSubpacketVector) userAttributes.next();
                    Iterator signaturesForUserAttribute = pGPPublicKey.getSignaturesForUserAttribute(pGPUserAttributeSubpacketVector);
                    PGPPublicKey pGPPublicKey5 = pGPPublicKey2;
                    while (true) {
                        pGPPublicKey2 = pGPPublicKey5;
                        if (signaturesForUserAttribute.hasNext()) {
                            if (pGPSignature == signaturesForUserAttribute.next()) {
                                pGPPublicKey5 = removeCertification(pGPPublicKey5, pGPUserAttributeSubpacketVector, pGPSignature);
                            }
                        }
                    }
                }
            }
        }
        return pGPPublicKey3;
    }

    public static PGPPublicKey removeCertification(PGPPublicKey pGPPublicKey, PGPUserAttributeSubpacketVector pGPUserAttributeSubpacketVector) {
        return removeCert(pGPPublicKey, pGPUserAttributeSubpacketVector);
    }

    public static PGPPublicKey removeCertification(PGPPublicKey pGPPublicKey, PGPUserAttributeSubpacketVector pGPUserAttributeSubpacketVector, PGPSignature pGPSignature) {
        return removeCert(pGPPublicKey, pGPUserAttributeSubpacketVector, pGPSignature);
    }

    public static PGPPublicKey removeCertification(PGPPublicKey pGPPublicKey, byte[] bArr) {
        return removeCert(pGPPublicKey, new UserIDPacket(bArr));
    }

    public static PGPPublicKey removeCertification(PGPPublicKey pGPPublicKey, byte[] bArr, PGPSignature pGPSignature) {
        return removeCert(pGPPublicKey, new UserIDPacket(bArr), pGPSignature);
    }

    public void encode(OutputStream outputStream) throws IOException {
        BCPGOutputStream bCPGOutputStream = outputStream instanceof BCPGOutputStream ? (BCPGOutputStream) outputStream : new BCPGOutputStream(outputStream);
        bCPGOutputStream.writePacket(this.publicPk);
        if (this.trustPk != null) {
            bCPGOutputStream.writePacket(this.trustPk);
        }
        if (this.subSigs == null) {
            for (int i = 0; i != this.keySigs.size(); i++) {
                ((PGPSignature) this.keySigs.get(i)).encode(bCPGOutputStream);
            }
            for (int i2 = 0; i2 != this.ids.size(); i2++) {
                if (this.ids.get(i2) instanceof UserIDPacket) {
                    bCPGOutputStream.writePacket((UserIDPacket) this.ids.get(i2));
                } else {
                    bCPGOutputStream.writePacket(new UserAttributePacket(((PGPUserAttributeSubpacketVector) this.ids.get(i2)).toSubpacketArray()));
                }
                if (this.idTrusts.get(i2) != null) {
                    bCPGOutputStream.writePacket((ContainedPacket) this.idTrusts.get(i2));
                }
                List list = (List) this.idSigs.get(i2);
                for (int i3 = 0; i3 != list.size(); i3++) {
                    ((PGPSignature) list.get(i3)).encode(bCPGOutputStream);
                }
            }
            return;
        }
        for (int i4 = 0; i4 != this.subSigs.size(); i4++) {
            ((PGPSignature) this.subSigs.get(i4)).encode(bCPGOutputStream);
        }
    }

    public int getAlgorithm() {
        return this.publicPk.getAlgorithm();
    }

    public int getBitStrength() {
        return this.keyStrength;
    }

    public Date getCreationTime() {
        return this.publicPk.getTime();
    }

    public byte[] getEncoded() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        encode(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public byte[] getFingerprint() {
        byte[] bArr = new byte[this.fingerprint.length];
        System.arraycopy(this.fingerprint, 0, bArr, 0, bArr.length);
        return bArr;
    }

    public long getKeyID() {
        return this.keyID;
    }

    public Iterator getKeySignatures() {
        if (this.subSigs != null) {
            return this.subSigs.iterator();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.keySigs);
        return arrayList.iterator();
    }

    public PublicKeyPacket getPublicKeyPacket() {
        return this.publicPk;
    }

    public Iterator getRawUserIDs() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i != this.ids.size(); i++) {
            if (this.ids.get(i) instanceof UserIDPacket) {
                arrayList.add(((UserIDPacket) this.ids.get(i)).getRawID());
            }
        }
        return arrayList.iterator();
    }

    public Iterator getSignatures() {
        if (this.subSigs != null) {
            return this.subSigs.iterator();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.keySigs);
        for (int i = 0; i != this.idSigs.size(); i++) {
            arrayList.addAll((Collection) this.idSigs.get(i));
        }
        return arrayList.iterator();
    }

    public Iterator getSignaturesForID(String str) {
        return getSignaturesForID(new UserIDPacket(str));
    }

    public Iterator getSignaturesForID(byte[] bArr) {
        return getSignaturesForID(new UserIDPacket(bArr));
    }

    public Iterator getSignaturesForUserAttribute(PGPUserAttributeSubpacketVector pGPUserAttributeSubpacketVector) {
        for (int i = 0; i != this.ids.size(); i++) {
            if (pGPUserAttributeSubpacketVector.equals(this.ids.get(i))) {
                return ((ArrayList) this.idSigs.get(i)).iterator();
            }
        }
        return null;
    }

    public Iterator getSignaturesOfType(int i) {
        ArrayList arrayList = new ArrayList();
        Iterator signatures = getSignatures();
        while (signatures.hasNext()) {
            PGPSignature pGPSignature = (PGPSignature) signatures.next();
            if (pGPSignature.getSignatureType() == i) {
                arrayList.add(pGPSignature);
            }
        }
        return arrayList.iterator();
    }

    public byte[] getTrustData() {
        if (this.trustPk == null) {
            return null;
        }
        return Arrays.clone(this.trustPk.getLevelAndTrustAmount());
    }

    public Iterator getUserAttributes() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i != this.ids.size(); i++) {
            if (this.ids.get(i) instanceof PGPUserAttributeSubpacketVector) {
                arrayList.add(this.ids.get(i));
            }
        }
        return arrayList.iterator();
    }

    public Iterator getUserIDs() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i != this.ids.size(); i++) {
            if (this.ids.get(i) instanceof UserIDPacket) {
                arrayList.add(((UserIDPacket) this.ids.get(i)).getID());
            }
        }
        return arrayList.iterator();
    }

    public int getValidDays() {
        if (this.publicPk.getVersion() <= 3) {
            return this.publicPk.getValidDays();
        }
        long validSeconds = getValidSeconds();
        int validSeconds2 = (int) (getValidSeconds() / DateUtil.DAY_IN_SECONDS);
        if (validSeconds % DateUtil.DAY_IN_SECONDS <= 0 || validSeconds2 != 0) {
            return validSeconds2;
        }
        return 1;
    }

    public long getValidSeconds() {
        if (this.publicPk.getVersion() <= 3) {
            return this.publicPk.getValidDays() * 24 * 60 * 60;
        }
        if (isMasterKey()) {
            for (int i = 0; i != MASTER_KEY_CERTIFICATION_TYPES.length; i++) {
                long expirationTimeFromSig = getExpirationTimeFromSig(true, MASTER_KEY_CERTIFICATION_TYPES[i]);
                if (expirationTimeFromSig >= 0) {
                    return expirationTimeFromSig;
                }
            }
            return 0L;
        }
        long expirationTimeFromSig2 = getExpirationTimeFromSig(false, 24);
        if (expirationTimeFromSig2 >= 0) {
            return expirationTimeFromSig2;
        }
        return 0L;
    }

    public int getVersion() {
        return this.publicPk.getVersion();
    }

    public boolean hasRevocation() {
        boolean z;
        boolean z2 = false;
        boolean z3 = false;
        if (!isMasterKey()) {
            int i = 0;
            while (true) {
                z = z2;
                if (z2) {
                    break;
                }
                z = z2;
                if (i >= this.subSigs.size()) {
                    break;
                }
                int i2 = i + 1;
                if (((PGPSignature) this.subSigs.get(i)).getSignatureType() == 40) {
                    i = i2;
                    z2 = true;
                } else {
                    i = i2;
                }
            }
        } else {
            int i3 = 0;
            while (true) {
                z = z3;
                if (z3) {
                    break;
                }
                z = z3;
                if (i3 >= this.keySigs.size()) {
                    break;
                }
                int i4 = i3 + 1;
                if (((PGPSignature) this.keySigs.get(i3)).getSignatureType() == 32) {
                    i3 = i4;
                    z3 = true;
                } else {
                    i3 = i4;
                }
            }
        }
        return z;
    }

    public boolean isEncryptionKey() {
        int algorithm = this.publicPk.getAlgorithm();
        boolean z = true;
        if (algorithm != 1) {
            z = true;
            if (algorithm != 2) {
                z = true;
                if (algorithm != 16) {
                    z = true;
                    if (algorithm != 20) {
                        z = algorithm == 18;
                    }
                }
            }
        }
        return z;
    }

    public boolean isMasterKey() {
        return this.subSigs == null;
    }

    public boolean isRevoked() {
        return hasRevocation();
    }
}
