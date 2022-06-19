package org.bouncycastle.asn1.x500.style;

import java.io.IOException;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.x500.AttributeTypeAndValue;
import org.bouncycastle.asn1.x500.RDN;
import org.bouncycastle.asn1.x500.X500NameBuilder;
import org.bouncycastle.asn1.x500.X500NameStyle;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.encoders.Hex;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x500/style/IETFUtils.class */
public class IETFUtils {
    public static void appendTypeAndValue(StringBuffer stringBuffer, AttributeTypeAndValue attributeTypeAndValue, Hashtable hashtable) {
        String str = (String) hashtable.get(attributeTypeAndValue.getType());
        if (str == null) {
            str = attributeTypeAndValue.getType().getId();
        }
        stringBuffer.append(str);
        stringBuffer.append('=');
        stringBuffer.append(valueToString(attributeTypeAndValue.getValue()));
    }

    private static String bytesToString(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length];
        for (int i = 0; i != length; i++) {
            cArr[i] = (char) (bArr[i] & 255);
        }
        return new String(cArr);
    }

    public static String canonicalize(String str) {
        String lowerCase = Strings.toLowerCase(str.trim());
        String str2 = lowerCase;
        if (lowerCase.length() > 0) {
            str2 = lowerCase;
            if (lowerCase.charAt(0) == '#') {
                ASN1Object decodeObject = decodeObject(lowerCase);
                str2 = lowerCase;
                if (decodeObject instanceof ASN1String) {
                    str2 = Strings.toLowerCase(((ASN1String) decodeObject).getString().trim());
                }
            }
        }
        return stripInternalSpaces(str2);
    }

    public static ASN1ObjectIdentifier decodeAttrName(String str, Hashtable hashtable) {
        if (Strings.toUpperCase(str).startsWith("OID.")) {
            return new ASN1ObjectIdentifier(str.substring(4));
        }
        if (str.charAt(0) >= '0' && str.charAt(0) <= '9') {
            return new ASN1ObjectIdentifier(str);
        }
        ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) hashtable.get(Strings.toLowerCase(str));
        if (aSN1ObjectIdentifier != null) {
            return aSN1ObjectIdentifier;
        }
        throw new IllegalArgumentException("Unknown object id - " + str + " - passed to distinguished name");
    }

    private static ASN1Object decodeObject(String str) {
        try {
            return ASN1Object.fromByteArray(Hex.decode(str.substring(1)));
        } catch (IOException e) {
            throw new IllegalStateException("unknown encoding in name: " + e);
        }
    }

    public static RDN[] rDNsFromString(String str, X500NameStyle x500NameStyle) {
        X500NameTokenizer x500NameTokenizer = new X500NameTokenizer(str);
        X500NameBuilder x500NameBuilder = new X500NameBuilder(x500NameStyle);
        while (x500NameTokenizer.hasMoreTokens()) {
            String nextToken = x500NameTokenizer.nextToken();
            int indexOf = nextToken.indexOf(61);
            if (indexOf == -1) {
                throw new IllegalArgumentException("badly formated directory string");
            }
            String substring = nextToken.substring(0, indexOf);
            String substring2 = nextToken.substring(indexOf + 1);
            ASN1ObjectIdentifier attrNameToOID = x500NameStyle.attrNameToOID(substring);
            if (substring2.indexOf(43) > 0) {
                X500NameTokenizer x500NameTokenizer2 = new X500NameTokenizer(substring2, '+');
                String nextToken2 = x500NameTokenizer2.nextToken();
                Vector vector = new Vector();
                Vector vector2 = new Vector();
                while (true) {
                    vector.addElement(attrNameToOID);
                    vector2.addElement(nextToken2);
                    if (!x500NameTokenizer2.hasMoreTokens()) {
                        break;
                    }
                    String nextToken3 = x500NameTokenizer2.nextToken();
                    int indexOf2 = nextToken3.indexOf(61);
                    String substring3 = nextToken3.substring(0, indexOf2);
                    nextToken2 = nextToken3.substring(indexOf2 + 1);
                    attrNameToOID = x500NameStyle.attrNameToOID(substring3);
                }
                x500NameBuilder.addMultiValuedRDN(toOIDArray(vector), toValueArray(vector2));
            } else {
                x500NameBuilder.addRDN(attrNameToOID, substring2);
            }
        }
        return x500NameBuilder.build().getRDNs();
    }

    public static String stripInternalSpaces(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        if (str.length() != 0) {
            char charAt = str.charAt(0);
            stringBuffer.append(charAt);
            int i = 1;
            while (true) {
                char c = charAt;
                if (i >= str.length()) {
                    break;
                }
                charAt = str.charAt(i);
                if (c != ' ' || charAt != ' ') {
                    stringBuffer.append(charAt);
                }
                i++;
            }
        }
        return stringBuffer.toString();
    }

    private static ASN1ObjectIdentifier[] toOIDArray(Vector vector) {
        int size = vector.size();
        ASN1ObjectIdentifier[] aSN1ObjectIdentifierArr = new ASN1ObjectIdentifier[size];
        for (int i = 0; i != size; i++) {
            aSN1ObjectIdentifierArr[i] = (ASN1ObjectIdentifier) vector.elementAt(i);
        }
        return aSN1ObjectIdentifierArr;
    }

    private static String[] toValueArray(Vector vector) {
        int size = vector.size();
        String[] strArr = new String[size];
        for (int i = 0; i != size; i++) {
            strArr[i] = (String) vector.elementAt(i);
        }
        return strArr;
    }

    public static ASN1Encodable valueFromHexString(String str, int i) {
        String lowerCase = Strings.toLowerCase(str);
        int length = (lowerCase.length() - i) / 2;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 != length; i2++) {
            int i3 = (i2 * 2) + i;
            char charAt = lowerCase.charAt(i3);
            char charAt2 = lowerCase.charAt(i3 + 1);
            if (charAt < 'a') {
                bArr[i2] = (byte) ((charAt - '0') << 4);
            } else {
                bArr[i2] = (byte) (((charAt - 'a') + 10) << 4);
            }
            if (charAt2 < 'a') {
                bArr[i2] = (byte) (((byte) (charAt2 - '0')) | bArr[i2]);
            } else {
                bArr[i2] = (byte) (((byte) ((charAt2 - 'a') + 10)) | bArr[i2]);
            }
        }
        return ASN1Object.fromByteArray(bArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String valueToString(org.bouncycastle.asn1.ASN1Encodable r4) {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x500.style.IETFUtils.valueToString(org.bouncycastle.asn1.ASN1Encodable):java.lang.String");
    }
}
