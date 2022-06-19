package org.bouncycastle.asn1.isismtt.x509;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERPrintableString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x500.DirectoryString;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/isismtt/x509/ProfessionInfo.class */
public class ProfessionInfo extends ASN1Encodable {
    public static final DERObjectIdentifier Notar;
    public static final DERObjectIdentifier Notariatsverwalter;
    public static final DERObjectIdentifier Notariatsverwalterin;
    public static final DERObjectIdentifier Notarin;
    public static final DERObjectIdentifier Notarvertreter;
    public static final DERObjectIdentifier Notarvertreterin;
    public static final DERObjectIdentifier Patentanwalt;
    public static final DERObjectIdentifier Patentanwltin;
    public static final DERObjectIdentifier Rechtsanwalt;
    public static final DERObjectIdentifier Rechtsanwltin;
    public static final DERObjectIdentifier Rechtsbeistand;
    public static final DERObjectIdentifier Steuerberater;
    public static final DERObjectIdentifier Steuerberaterin;
    public static final DERObjectIdentifier Steuerbevollmchtigte;
    public static final DERObjectIdentifier Steuerbevollmchtigter;
    public static final DERObjectIdentifier VereidigteBuchprferin;
    public static final DERObjectIdentifier VereidigterBuchprfer;
    public static final DERObjectIdentifier Wirtschaftsprfer;
    public static final DERObjectIdentifier Wirtschaftsprferin;
    private ASN1OctetString addProfessionInfo;
    private NamingAuthority namingAuthority;
    private ASN1Sequence professionItems;
    private ASN1Sequence professionOIDs;
    private String registrationNumber;

    static {
        StringBuilder sb = new StringBuilder();
        DERObjectIdentifier dERObjectIdentifier = NamingAuthority.id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern;
        sb.append(dERObjectIdentifier);
        sb.append(".1");
        Rechtsanwltin = new DERObjectIdentifier(sb.toString());
        Rechtsanwalt = new DERObjectIdentifier(dERObjectIdentifier + ".2");
        Rechtsbeistand = new DERObjectIdentifier(dERObjectIdentifier + ".3");
        Steuerberaterin = new DERObjectIdentifier(dERObjectIdentifier + ".4");
        Steuerberater = new DERObjectIdentifier(dERObjectIdentifier + ".5");
        Steuerbevollmchtigte = new DERObjectIdentifier(dERObjectIdentifier + ".6");
        Steuerbevollmchtigter = new DERObjectIdentifier(dERObjectIdentifier + ".7");
        Notarin = new DERObjectIdentifier(dERObjectIdentifier + ".8");
        Notar = new DERObjectIdentifier(dERObjectIdentifier + ".9");
        Notarvertreterin = new DERObjectIdentifier(dERObjectIdentifier + ".10");
        Notarvertreter = new DERObjectIdentifier(dERObjectIdentifier + ".11");
        Notariatsverwalterin = new DERObjectIdentifier(dERObjectIdentifier + ".12");
        Notariatsverwalter = new DERObjectIdentifier(dERObjectIdentifier + ".13");
        Wirtschaftsprferin = new DERObjectIdentifier(dERObjectIdentifier + ".14");
        Wirtschaftsprfer = new DERObjectIdentifier(dERObjectIdentifier + ".15");
        VereidigteBuchprferin = new DERObjectIdentifier(dERObjectIdentifier + ".16");
        VereidigterBuchprfer = new DERObjectIdentifier(dERObjectIdentifier + ".17");
        Patentanwltin = new DERObjectIdentifier(dERObjectIdentifier + ".18");
        Patentanwalt = new DERObjectIdentifier(dERObjectIdentifier + ".19");
    }

    private ProfessionInfo(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() > 5) {
            throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.size());
        }
        Enumeration objects = aSN1Sequence.getObjects();
        DEREncodable dEREncodable = (DEREncodable) objects.nextElement();
        DEREncodable dEREncodable2 = dEREncodable;
        if (dEREncodable instanceof ASN1TaggedObject) {
            ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) dEREncodable;
            if (aSN1TaggedObject.getTagNo() != 0) {
                throw new IllegalArgumentException("Bad tag number: " + aSN1TaggedObject.getTagNo());
            }
            this.namingAuthority = NamingAuthority.getInstance(aSN1TaggedObject, true);
            dEREncodable2 = (DEREncodable) objects.nextElement();
        }
        this.professionItems = ASN1Sequence.getInstance(dEREncodable2);
        if (objects.hasMoreElements()) {
            DEREncodable dEREncodable3 = (DEREncodable) objects.nextElement();
            if (dEREncodable3 instanceof ASN1Sequence) {
                this.professionOIDs = ASN1Sequence.getInstance(dEREncodable3);
            } else if (dEREncodable3 instanceof DERPrintableString) {
                this.registrationNumber = DERPrintableString.getInstance(dEREncodable3).getString();
            } else if (!(dEREncodable3 instanceof ASN1OctetString)) {
                throw new IllegalArgumentException("Bad object encountered: " + dEREncodable3.getClass());
            } else {
                this.addProfessionInfo = ASN1OctetString.getInstance(dEREncodable3);
            }
        }
        if (objects.hasMoreElements()) {
            DEREncodable dEREncodable4 = (DEREncodable) objects.nextElement();
            if (dEREncodable4 instanceof DERPrintableString) {
                this.registrationNumber = DERPrintableString.getInstance(dEREncodable4).getString();
            } else if (!(dEREncodable4 instanceof DEROctetString)) {
                throw new IllegalArgumentException("Bad object encountered: " + dEREncodable4.getClass());
            } else {
                this.addProfessionInfo = (DEROctetString) dEREncodable4;
            }
        }
        if (!objects.hasMoreElements()) {
            return;
        }
        DEREncodable dEREncodable5 = (DEREncodable) objects.nextElement();
        if (dEREncodable5 instanceof DEROctetString) {
            this.addProfessionInfo = (DEROctetString) dEREncodable5;
            return;
        }
        throw new IllegalArgumentException("Bad object encountered: " + dEREncodable5.getClass());
    }

    public ProfessionInfo(NamingAuthority namingAuthority, DirectoryString[] directoryStringArr, DERObjectIdentifier[] dERObjectIdentifierArr, String str, ASN1OctetString aSN1OctetString) {
        this.namingAuthority = namingAuthority;
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        for (int i = 0; i != directoryStringArr.length; i++) {
            aSN1EncodableVector.add(directoryStringArr[i]);
        }
        this.professionItems = new DERSequence(aSN1EncodableVector);
        if (dERObjectIdentifierArr != null) {
            ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
            for (int i2 = 0; i2 != dERObjectIdentifierArr.length; i2++) {
                aSN1EncodableVector2.add(dERObjectIdentifierArr[i2]);
            }
            this.professionOIDs = new DERSequence(aSN1EncodableVector2);
        }
        this.registrationNumber = str;
        this.addProfessionInfo = aSN1OctetString;
    }

    public static ProfessionInfo getInstance(Object obj) {
        if (obj == null || (obj instanceof ProfessionInfo)) {
            return (ProfessionInfo) obj;
        }
        if (obj instanceof ASN1Sequence) {
            return new ProfessionInfo((ASN1Sequence) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public ASN1OctetString getAddProfessionInfo() {
        return this.addProfessionInfo;
    }

    public NamingAuthority getNamingAuthority() {
        return this.namingAuthority;
    }

    public DirectoryString[] getProfessionItems() {
        DirectoryString[] directoryStringArr = new DirectoryString[this.professionItems.size()];
        Enumeration objects = this.professionItems.getObjects();
        int i = 0;
        while (objects.hasMoreElements()) {
            directoryStringArr[i] = DirectoryString.getInstance(objects.nextElement());
            i++;
        }
        return directoryStringArr;
    }

    public DERObjectIdentifier[] getProfessionOIDs() {
        ASN1Sequence aSN1Sequence = this.professionOIDs;
        int i = 0;
        if (aSN1Sequence == null) {
            return new DERObjectIdentifier[0];
        }
        DERObjectIdentifier[] dERObjectIdentifierArr = new DERObjectIdentifier[aSN1Sequence.size()];
        Enumeration objects = this.professionOIDs.getObjects();
        while (objects.hasMoreElements()) {
            dERObjectIdentifierArr[i] = DERObjectIdentifier.getInstance(objects.nextElement());
            i++;
        }
        return dERObjectIdentifierArr;
    }

    public String getRegistrationNumber() {
        return this.registrationNumber;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (this.namingAuthority != null) {
            aSN1EncodableVector.add(new DERTaggedObject(true, 0, this.namingAuthority));
        }
        aSN1EncodableVector.add(this.professionItems);
        ASN1Sequence aSN1Sequence = this.professionOIDs;
        if (aSN1Sequence != null) {
            aSN1EncodableVector.add(aSN1Sequence);
        }
        String str = this.registrationNumber;
        if (str != null) {
            aSN1EncodableVector.add(new DERPrintableString(str, true));
        }
        ASN1OctetString aSN1OctetString = this.addProfessionInfo;
        if (aSN1OctetString != null) {
            aSN1EncodableVector.add(aSN1OctetString);
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
