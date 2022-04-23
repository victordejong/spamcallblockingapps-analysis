package org.spongycastle.cms;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.BEROctetStringGenerator;
import org.spongycastle.asn1.BERSet;
import org.spongycastle.asn1.DERSet;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.cms.CMSObjectIdentifiers;
import org.spongycastle.asn1.cms.ContentInfo;
import org.spongycastle.asn1.cms.OtherRevocationInfoFormat;
import org.spongycastle.asn1.ocsp.OCSPResponse;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.cert.X509AttributeCertificateHolder;
import org.spongycastle.cert.X509CRLHolder;
import org.spongycastle.cert.X509CertificateHolder;
import org.spongycastle.operator.DigestCalculator;
import org.spongycastle.util.Store;
import org.spongycastle.util.Strings;
import org.spongycastle.util.p039io.Streams;
import org.spongycastle.util.p039io.TeeInputStream;
import org.spongycastle.util.p039io.TeeOutputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/CMSUtils.class */
public class CMSUtils {
    private static final Set<String> des = new HashSet();

    static {
        des.add("DES");
        des.add("DESEDE");
        des.add(OIWObjectIdentifiers.desCBC.getId());
        des.add(PKCSObjectIdentifiers.des_EDE3_CBC.getId());
        des.add(PKCSObjectIdentifiers.des_EDE3_CBC.getId());
        des.add(PKCSObjectIdentifiers.id_alg_CMS3DESwrap.getId());
    }

    CMSUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static InputStream attachDigestsToInputStream(Collection collection, InputStream inputStream) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            inputStream = new TeeInputStream(inputStream, ((DigestCalculator) it.next()).getOutputStream());
        }
        return inputStream;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static OutputStream attachSignersToOutputStream(Collection collection, OutputStream outputStream) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            outputStream = getSafeTeeOutputStream(outputStream, ((SignerInfoGenerator) it.next()).getCalculatingOutputStream());
        }
        return outputStream;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static OutputStream createBEROctetOutputStream(OutputStream outputStream, int i, boolean z, int i2) throws IOException {
        BEROctetStringGenerator bEROctetStringGenerator = new BEROctetStringGenerator(outputStream, i, z);
        return i2 != 0 ? bEROctetStringGenerator.getOctetOutputStream(new byte[i2]) : bEROctetStringGenerator.getOctetOutputStream();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ASN1Set createBerSetFromList(List list) {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            aSN1EncodableVector.add((ASN1Encodable) it.next());
        }
        return new BERSet(aSN1EncodableVector);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ASN1Set createDerSetFromList(List list) {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            aSN1EncodableVector.add((ASN1Encodable) it.next());
        }
        return new DERSet(aSN1EncodableVector);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List getAttributeCertificatesFromStore(Store store) throws CMSException {
        ArrayList arrayList = new ArrayList();
        try {
            for (X509AttributeCertificateHolder x509AttributeCertificateHolder : store.getMatches(null)) {
                arrayList.add(new DERTaggedObject(false, 2, x509AttributeCertificateHolder.toASN1Structure()));
            }
            return arrayList;
        } catch (ClassCastException e) {
            throw new CMSException("error processing certs", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List getCRLsFromStore(Store store) throws CMSException {
        ArrayList arrayList = new ArrayList();
        try {
            for (Object obj : store.getMatches(null)) {
                if (obj instanceof X509CRLHolder) {
                    arrayList.add(((X509CRLHolder) obj).toASN1Structure());
                } else if (obj instanceof OtherRevocationInfoFormat) {
                    OtherRevocationInfoFormat instance = OtherRevocationInfoFormat.getInstance(obj);
                    validateInfoFormat(instance);
                    arrayList.add(new DERTaggedObject(false, 1, instance));
                } else if (obj instanceof ASN1TaggedObject) {
                    arrayList.add(obj);
                }
            }
            return arrayList;
        } catch (ClassCastException e) {
            throw new CMSException("error processing certs", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List getCertificatesFromStore(Store store) throws CMSException {
        ArrayList arrayList = new ArrayList();
        try {
            for (X509CertificateHolder x509CertificateHolder : store.getMatches(null)) {
                arrayList.add(x509CertificateHolder.toASN1Structure());
            }
            return arrayList;
        } catch (ClassCastException e) {
            throw new CMSException("error processing certs", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Collection getOthersFromStore(ASN1ObjectIdentifier aSN1ObjectIdentifier, Store store) {
        ArrayList arrayList = new ArrayList();
        for (ASN1Encodable aSN1Encodable : store.getMatches(null)) {
            OtherRevocationInfoFormat otherRevocationInfoFormat = new OtherRevocationInfoFormat(aSN1ObjectIdentifier, aSN1Encodable);
            validateInfoFormat(otherRevocationInfoFormat);
            arrayList.add(new DERTaggedObject(false, 1, otherRevocationInfoFormat));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static OutputStream getSafeOutputStream(OutputStream outputStream) {
        OutputStream outputStream2 = outputStream;
        if (outputStream == null) {
            outputStream2 = new NullOutputStream();
        }
        return outputStream2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static OutputStream getSafeTeeOutputStream(OutputStream outputStream, OutputStream outputStream2) {
        return outputStream == null ? getSafeOutputStream(outputStream2) : outputStream2 == null ? getSafeOutputStream(outputStream) : new TeeOutputStream(outputStream, outputStream2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isDES(String str) {
        return des.contains(Strings.toUpperCase(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0044, code lost:
        if (r0 == null) goto L_0x0047;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isEquivalent(org.spongycastle.asn1.x509.AlgorithmIdentifier r3, org.spongycastle.asn1.x509.AlgorithmIdentifier r4) {
        /*
            r0 = 0
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r3
            if (r0 == 0) goto L_0x005d
            r0 = r4
            if (r0 != 0) goto L_0x000f
            goto L_0x005d
        L_0x000f:
            r0 = r3
            org.spongycastle.asn1.ASN1ObjectIdentifier r0 = r0.getAlgorithm()
            r1 = r4
            org.spongycastle.asn1.ASN1ObjectIdentifier r1 = r1.getAlgorithm()
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x001f
            r0 = 0
            return r0
        L_0x001f:
            r0 = r3
            org.spongycastle.asn1.ASN1Encodable r0 = r0.getParameters()
            r3 = r0
            r0 = r4
            org.spongycastle.asn1.ASN1Encodable r0 = r0.getParameters()
            r4 = r0
            r0 = r3
            if (r0 == 0) goto L_0x004b
            r0 = r3
            r1 = r4
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0047
            r0 = r6
            r5 = r0
            r0 = r3
            org.spongycastle.asn1.DERNull r1 = org.spongycastle.asn1.DERNull.INSTANCE
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0049
            r0 = r6
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0049
        L_0x0047:
            r0 = 1
            r5 = r0
        L_0x0049:
            r0 = r5
            return r0
        L_0x004b:
            r0 = r4
            if (r0 == 0) goto L_0x0059
            r0 = r4
            org.spongycastle.asn1.DERNull r1 = org.spongycastle.asn1.DERNull.INSTANCE
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x005b
        L_0x0059:
            r0 = 1
            r5 = r0
        L_0x005b:
            r0 = r5
            return r0
        L_0x005d:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.cms.CMSUtils.isEquivalent(org.spongycastle.asn1.x509.AlgorithmIdentifier, org.spongycastle.asn1.x509.AlgorithmIdentifier):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ContentInfo readContentInfo(InputStream inputStream) throws CMSException {
        return readContentInfo(new ASN1InputStream(inputStream));
    }

    private static ContentInfo readContentInfo(ASN1InputStream aSN1InputStream) throws CMSException {
        try {
            return ContentInfo.getInstance(aSN1InputStream.readObject());
        } catch (IOException e) {
            throw new CMSException("IOException reading content.", e);
        } catch (ClassCastException e2) {
            throw new CMSException("Malformed content.", e2);
        } catch (IllegalArgumentException e3) {
            throw new CMSException("Malformed content.", e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ContentInfo readContentInfo(byte[] bArr) throws CMSException {
        return readContentInfo(new ASN1InputStream(bArr));
    }

    public static byte[] streamToByteArray(InputStream inputStream) throws IOException {
        return Streams.readAll(inputStream);
    }

    public static byte[] streamToByteArray(InputStream inputStream, int i) throws IOException {
        return Streams.readAllLimited(inputStream, i);
    }

    private static void validateInfoFormat(OtherRevocationInfoFormat otherRevocationInfoFormat) {
        if (CMSObjectIdentifiers.id_ri_ocsp_response.equals(otherRevocationInfoFormat.getInfoFormat()) && OCSPResponse.getInstance(otherRevocationInfoFormat.getInfo()).getResponseStatus().getValue().intValue() != 0) {
            throw new IllegalArgumentException("cannot add unsuccessful OCSP response to CMS SignedData");
        }
    }
}
