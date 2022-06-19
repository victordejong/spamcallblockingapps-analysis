package org.bouncycastle.asn1.x509;

import java.io.IOException;
import java.util.StringTokenizer;
import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.util.IPAddress;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x509/GeneralName.class */
public class GeneralName extends ASN1Encodable implements ASN1Choice {
    public static final int dNSName = 2;
    public static final int directoryName = 4;
    public static final int ediPartyName = 5;
    public static final int iPAddress = 7;
    public static final int otherName = 0;
    public static final int registeredID = 8;
    public static final int rfc822Name = 1;
    public static final int uniformResourceIdentifier = 6;
    public static final int x400Address = 3;
    public DEREncodable obj;
    public int tag;

    public GeneralName(int i, String str) {
        DERObjectIdentifier dERObjectIdentifier;
        this.tag = i;
        if (i == 1 || i == 2 || i == 6) {
            dERObjectIdentifier = new DERIA5String(str);
        } else if (i == 8) {
            dERObjectIdentifier = new DERObjectIdentifier(str);
        } else if (i != 4) {
            if (i != 7) {
                throw new IllegalArgumentException("can't process String for tag: " + i);
            }
            byte[] generalNameEncoding = toGeneralNameEncoding(str);
            if (generalNameEncoding == null) {
                throw new IllegalArgumentException("IP Address is invalid");
            }
            this.obj = new DEROctetString(generalNameEncoding);
            return;
        } else {
            dERObjectIdentifier = new X509Name(str);
        }
        this.obj = dERObjectIdentifier;
    }

    public GeneralName(int i, ASN1Encodable aSN1Encodable) {
        this.obj = aSN1Encodable;
        this.tag = i;
    }

    public GeneralName(DERObject dERObject, int i) {
        this.obj = dERObject;
        this.tag = i;
    }

    public GeneralName(X500Name x500Name) {
        this.obj = x500Name;
        this.tag = 4;
    }

    public GeneralName(X509Name x509Name) {
        this.obj = x509Name;
        this.tag = 4;
    }

    private void copyInts(int[] iArr, byte[] bArr, int i) {
        for (int i2 = 0; i2 != iArr.length; i2++) {
            int i3 = i2 * 2;
            bArr[i3 + i] = (byte) (iArr[i2] >> 8);
            bArr[i3 + 1 + i] = (byte) iArr[i2];
        }
    }

    public static GeneralName getInstance(Object obj) {
        if (obj == null || (obj instanceof GeneralName)) {
            return (GeneralName) obj;
        }
        if (obj instanceof ASN1TaggedObject) {
            ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) obj;
            int tagNo = aSN1TaggedObject.getTagNo();
            switch (tagNo) {
                case 0:
                    return new GeneralName(tagNo, ASN1Sequence.getInstance(aSN1TaggedObject, false));
                case 1:
                    return new GeneralName(tagNo, DERIA5String.getInstance(aSN1TaggedObject, false));
                case 2:
                    return new GeneralName(tagNo, DERIA5String.getInstance(aSN1TaggedObject, false));
                case 3:
                    throw new IllegalArgumentException("unknown tag: " + tagNo);
                case 4:
                    return new GeneralName(tagNo, X509Name.getInstance(aSN1TaggedObject, true));
                case 5:
                    return new GeneralName(tagNo, ASN1Sequence.getInstance(aSN1TaggedObject, false));
                case 6:
                    return new GeneralName(tagNo, DERIA5String.getInstance(aSN1TaggedObject, false));
                case 7:
                    return new GeneralName(tagNo, ASN1OctetString.getInstance(aSN1TaggedObject, false));
                case 8:
                    return new GeneralName(tagNo, DERObjectIdentifier.getInstance(aSN1TaggedObject, false));
            }
        }
        if (obj instanceof byte[]) {
            try {
                return getInstance(ASN1Object.fromByteArray((byte[]) obj));
            } catch (IOException e) {
                throw new IllegalArgumentException("unable to parse encoded general name");
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
    }

    public static GeneralName getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1TaggedObject.getInstance(aSN1TaggedObject, true));
    }

    private void parseIPv4(String str, byte[] bArr, int i) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, "./");
        int i2 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            bArr[i2 + i] = (byte) Integer.parseInt(stringTokenizer.nextToken());
            i2++;
        }
    }

    private void parseIPv4Mask(String str, byte[] bArr, int i) {
        int i2;
        int parseInt = Integer.parseInt(str);
        for (int i3 = 0; i3 != parseInt; i3++) {
            bArr[(i3 / 8) + i] = (byte) (bArr[i2] | (1 << (i3 % 8)));
        }
    }

    private int[] parseIPv6(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ":", true);
        int[] iArr = new int[8];
        if (str.charAt(0) == ':' && str.charAt(1) == ':') {
            stringTokenizer.nextToken();
        }
        int i = -1;
        int i2 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            if (nextToken.equals(":")) {
                iArr[i2] = 0;
                i = i2;
                i2++;
            } else if (nextToken.indexOf(46) < 0) {
                iArr[i2] = Integer.parseInt(nextToken, 16);
                if (stringTokenizer.hasMoreTokens()) {
                    stringTokenizer.nextToken();
                }
                i2++;
            } else {
                StringTokenizer stringTokenizer2 = new StringTokenizer(nextToken, ".");
                int i3 = i2 + 1;
                iArr[i2] = (Integer.parseInt(stringTokenizer2.nextToken()) << 8) | Integer.parseInt(stringTokenizer2.nextToken());
                i2 = i3 + 1;
                iArr[i3] = Integer.parseInt(stringTokenizer2.nextToken()) | (Integer.parseInt(stringTokenizer2.nextToken()) << 8);
            }
        }
        if (i2 != 8) {
            int i4 = i2 - i;
            int i5 = 8 - i4;
            System.arraycopy(iArr, i, iArr, i5, i4);
            while (i != i5) {
                iArr[i] = 0;
                i++;
            }
        }
        return iArr;
    }

    private int[] parseMask(String str) {
        int[] iArr = new int[8];
        int parseInt = Integer.parseInt(str);
        for (int i = 0; i != parseInt; i++) {
            int i2 = i / 16;
            iArr[i2] = iArr[i2] | (1 << (i % 16));
        }
        return iArr;
    }

    private byte[] toGeneralNameEncoding(String str) {
        if (IPAddress.isValidIPv6WithNetmask(str) || IPAddress.isValidIPv6(str)) {
            int indexOf = str.indexOf(47);
            if (indexOf < 0) {
                byte[] bArr = new byte[16];
                copyInts(parseIPv6(str), bArr, 0);
                return bArr;
            }
            byte[] bArr2 = new byte[32];
            copyInts(parseIPv6(str.substring(0, indexOf)), bArr2, 0);
            String substring = str.substring(indexOf + 1);
            copyInts(substring.indexOf(58) > 0 ? parseIPv6(substring) : parseMask(substring), bArr2, 16);
            return bArr2;
        } else if (!IPAddress.isValidIPv4WithNetmask(str) && !IPAddress.isValidIPv4(str)) {
            return null;
        } else {
            int indexOf2 = str.indexOf(47);
            if (indexOf2 < 0) {
                byte[] bArr3 = new byte[4];
                parseIPv4(str, bArr3, 0);
                return bArr3;
            }
            byte[] bArr4 = new byte[8];
            parseIPv4(str.substring(0, indexOf2), bArr4, 0);
            String substring2 = str.substring(indexOf2 + 1);
            if (substring2.indexOf(46) > 0) {
                parseIPv4(substring2, bArr4, 4);
            } else {
                parseIPv4Mask(substring2, bArr4, 4);
            }
            return bArr4;
        }
    }

    public DEREncodable getName() {
        return this.obj;
    }

    public int getTagNo() {
        return this.tag;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        return this.tag == 4 ? new DERTaggedObject(true, this.tag, this.obj) : new DERTaggedObject(false, this.tag, this.obj);
    }

    public String toString() {
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.tag);
        stringBuffer.append(": ");
        int i = this.tag;
        if (i != 1 && i != 2) {
            if (i == 4) {
                str = X509Name.getInstance(this.obj).toString();
            } else if (i != 6) {
                str = this.obj.toString();
            }
            stringBuffer.append(str);
            return stringBuffer.toString();
        }
        str = DERIA5String.getInstance(this.obj).getString();
        stringBuffer.append(str);
        return stringBuffer.toString();
    }
}
