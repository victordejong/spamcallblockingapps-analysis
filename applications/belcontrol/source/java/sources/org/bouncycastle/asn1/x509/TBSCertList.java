package org.bouncycastle.asn1.x509;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x509/TBSCertList.class */
public class TBSCertList extends ASN1Encodable {
    public X509Extensions crlExtensions;
    public X509Name issuer;
    public Time nextUpdate;
    public ASN1Sequence revokedCertificates;
    public ASN1Sequence seq;
    public AlgorithmIdentifier signature;
    public Time thisUpdate;
    public DERInteger version;

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x509/TBSCertList$CRLEntry.class */
    public static class CRLEntry extends ASN1Encodable {
        public X509Extensions crlEntryExtensions;
        public Time revocationDate;
        public ASN1Sequence seq;
        public DERInteger userCertificate;

        public CRLEntry(ASN1Sequence aSN1Sequence) {
            if (aSN1Sequence.size() < 2 || aSN1Sequence.size() > 3) {
                throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.size());
            }
            this.seq = aSN1Sequence;
            this.userCertificate = DERInteger.getInstance(aSN1Sequence.getObjectAt(0));
            this.revocationDate = Time.getInstance(aSN1Sequence.getObjectAt(1));
        }

        public X509Extensions getExtensions() {
            if (this.crlEntryExtensions == null && this.seq.size() == 3) {
                this.crlEntryExtensions = X509Extensions.getInstance(this.seq.getObjectAt(2));
            }
            return this.crlEntryExtensions;
        }

        public Time getRevocationDate() {
            return this.revocationDate;
        }

        public DERInteger getUserCertificate() {
            return this.userCertificate;
        }

        @Override // org.bouncycastle.asn1.ASN1Encodable
        public DERObject toASN1Object() {
            return this.seq;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration.class */
    public class EmptyEnumeration implements Enumeration {
        private EmptyEnumeration() {
            TBSCertList.this = r4;
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return false;
        }

        @Override // java.util.Enumeration
        public Object nextElement() {
            return null;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration.class */
    public class RevokedCertificatesEnumeration implements Enumeration {

        /* renamed from: en */
        private final Enumeration f7267en;

        public RevokedCertificatesEnumeration(Enumeration enumeration) {
            TBSCertList.this = r4;
            this.f7267en = enumeration;
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return this.f7267en.hasMoreElements();
        }

        @Override // java.util.Enumeration
        public Object nextElement() {
            return new CRLEntry(ASN1Sequence.getInstance(this.f7267en.nextElement()));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x009e, code lost:
        if ((r6.getObjectAt(r0) instanceof org.bouncycastle.asn1.x509.Time) != false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TBSCertList(org.bouncycastle.asn1.ASN1Sequence r6) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.TBSCertList.<init>(org.bouncycastle.asn1.ASN1Sequence):void");
    }

    public static TBSCertList getInstance(Object obj) {
        if (obj instanceof TBSCertList) {
            return (TBSCertList) obj;
        }
        if (obj instanceof ASN1Sequence) {
            return new TBSCertList((ASN1Sequence) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    public static TBSCertList getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z));
    }

    public X509Extensions getExtensions() {
        return this.crlExtensions;
    }

    public X509Name getIssuer() {
        return this.issuer;
    }

    public Time getNextUpdate() {
        return this.nextUpdate;
    }

    public Enumeration getRevokedCertificateEnumeration() {
        ASN1Sequence aSN1Sequence = this.revokedCertificates;
        return aSN1Sequence == null ? new EmptyEnumeration() : new RevokedCertificatesEnumeration(aSN1Sequence.getObjects());
    }

    public CRLEntry[] getRevokedCertificates() {
        ASN1Sequence aSN1Sequence = this.revokedCertificates;
        if (aSN1Sequence == null) {
            return new CRLEntry[0];
        }
        int size = aSN1Sequence.size();
        CRLEntry[] cRLEntryArr = new CRLEntry[size];
        for (int i = 0; i < size; i++) {
            cRLEntryArr[i] = new CRLEntry(ASN1Sequence.getInstance(this.revokedCertificates.getObjectAt(i)));
        }
        return cRLEntryArr;
    }

    public AlgorithmIdentifier getSignature() {
        return this.signature;
    }

    public Time getThisUpdate() {
        return this.thisUpdate;
    }

    public int getVersion() {
        return this.version.getValue().intValue() + 1;
    }

    public DERInteger getVersionNumber() {
        return this.version;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        return this.seq;
    }
}
