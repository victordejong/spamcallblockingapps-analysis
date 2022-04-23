package org.spongycastle.asn1.x500.style;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Encoding;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1String;
import org.spongycastle.asn1.DERUniversalString;
import org.spongycastle.asn1.x500.AttributeTypeAndValue;
import org.spongycastle.asn1.x500.RDN;
import org.spongycastle.asn1.x500.X500NameBuilder;
import org.spongycastle.asn1.x500.X500NameStyle;
import org.spongycastle.util.Strings;
import org.spongycastle.util.encoders.Hex;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/x500/style/IETFUtils.class */
public class IETFUtils {
    public static void appendRDN(StringBuffer stringBuffer, RDN rdn, Hashtable hashtable) {
        if (rdn.isMultiValued()) {
            AttributeTypeAndValue[] typesAndValues = rdn.getTypesAndValues();
            boolean z = true;
            for (int i = 0; i != typesAndValues.length; i++) {
                if (z) {
                    z = false;
                } else {
                    stringBuffer.append('+');
                }
                appendTypeAndValue(stringBuffer, typesAndValues[i], hashtable);
            }
        } else if (rdn.getFirst() != null) {
            appendTypeAndValue(stringBuffer, rdn.getFirst(), hashtable);
        }
    }

    public static void appendTypeAndValue(StringBuffer stringBuffer, AttributeTypeAndValue attributeTypeAndValue, Hashtable hashtable) {
        String str = (String) hashtable.get(attributeTypeAndValue.getType());
        if (str != null) {
            stringBuffer.append(str);
        } else {
            stringBuffer.append(attributeTypeAndValue.getType().getId());
        }
        stringBuffer.append('=');
        stringBuffer.append(valueToString(attributeTypeAndValue.getValue()));
    }

    private static boolean atvAreEqual(AttributeTypeAndValue attributeTypeAndValue, AttributeTypeAndValue attributeTypeAndValue2) {
        if (attributeTypeAndValue == attributeTypeAndValue2) {
            return true;
        }
        return attributeTypeAndValue != null && attributeTypeAndValue2 != null && attributeTypeAndValue.getType().equals(attributeTypeAndValue2.getType()) && canonicalize(valueToString(attributeTypeAndValue.getValue())).equals(canonicalize(valueToString(attributeTypeAndValue2.getValue())));
    }

    private static String bytesToString(byte[] bArr) {
        char[] cArr = new char[bArr.length];
        for (int i = 0; i != cArr.length; i++) {
            cArr[i] = (char) (bArr[i] & 255);
        }
        return new String(cArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a5, code lost:
        if (r7 < (r5.length() - 1)) goto L_0x00a8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String canonicalize(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 182
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.asn1.x500.style.IETFUtils.canonicalize(java.lang.String):java.lang.String");
    }

    private static int convertHex(char c) {
        return ('0' > c || c > '9') ? ('a' > c || c > 'f') ? (c - 'A') + 10 : (c - 'a') + 10 : c - '0';
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

    private static ASN1Primitive decodeObject(String str) {
        try {
            return ASN1Primitive.fromByteArray(Hex.decode(str.substring(1)));
        } catch (IOException e) {
            throw new IllegalStateException("unknown encoding in name: " + e);
        }
    }

    public static String[] findAttrNamesForOID(ASN1ObjectIdentifier aSN1ObjectIdentifier, Hashtable hashtable) {
        Enumeration elements = hashtable.elements();
        int i = 0;
        int i2 = 0;
        while (elements.hasMoreElements()) {
            if (aSN1ObjectIdentifier.equals(elements.nextElement())) {
                i2++;
            }
        }
        String[] strArr = new String[i2];
        Enumeration keys = hashtable.keys();
        while (keys.hasMoreElements()) {
            String str = (String) keys.nextElement();
            if (aSN1ObjectIdentifier.equals(hashtable.get(str))) {
                strArr[i] = str;
                i++;
            }
        }
        return strArr;
    }

    private static boolean isHexDigit(char c) {
        return ('0' <= c && c <= '9') || ('a' <= c && c <= 'f') || ('A' <= c && c <= 'F');
    }

    public static boolean rDNAreEqual(RDN rdn, RDN rdn2) {
        if (rdn.isMultiValued()) {
            if (!rdn2.isMultiValued()) {
                return false;
            }
            AttributeTypeAndValue[] typesAndValues = rdn.getTypesAndValues();
            AttributeTypeAndValue[] typesAndValues2 = rdn2.getTypesAndValues();
            if (typesAndValues.length != typesAndValues2.length) {
                return false;
            }
            for (int i = 0; i != typesAndValues.length; i++) {
                if (!atvAreEqual(typesAndValues[i], typesAndValues2[i])) {
                    return false;
                }
            }
            return true;
        } else if (!rdn2.isMultiValued()) {
            return atvAreEqual(rdn.getFirst(), rdn2.getFirst());
        } else {
            return false;
        }
    }

    public static RDN[] rDNsFromString(String str, X500NameStyle x500NameStyle) {
        X500NameTokenizer x500NameTokenizer = new X500NameTokenizer(str);
        X500NameBuilder x500NameBuilder = new X500NameBuilder(x500NameStyle);
        while (x500NameTokenizer.hasMoreTokens()) {
            String nextToken = x500NameTokenizer.nextToken();
            if (nextToken.indexOf(43) > 0) {
                X500NameTokenizer x500NameTokenizer2 = new X500NameTokenizer(nextToken, '+');
                X500NameTokenizer x500NameTokenizer3 = new X500NameTokenizer(x500NameTokenizer2.nextToken(), '=');
                String nextToken2 = x500NameTokenizer3.nextToken();
                if (!x500NameTokenizer3.hasMoreTokens()) {
                    throw new IllegalArgumentException("badly formatted directory string");
                }
                String nextToken3 = x500NameTokenizer3.nextToken();
                ASN1ObjectIdentifier attrNameToOID = x500NameStyle.attrNameToOID(nextToken2.trim());
                if (x500NameTokenizer2.hasMoreTokens()) {
                    Vector vector = new Vector();
                    Vector vector2 = new Vector();
                    vector.addElement(attrNameToOID);
                    vector2.addElement(unescape(nextToken3));
                    while (x500NameTokenizer2.hasMoreTokens()) {
                        X500NameTokenizer x500NameTokenizer4 = new X500NameTokenizer(x500NameTokenizer2.nextToken(), '=');
                        String nextToken4 = x500NameTokenizer4.nextToken();
                        if (!x500NameTokenizer4.hasMoreTokens()) {
                            throw new IllegalArgumentException("badly formatted directory string");
                        }
                        String nextToken5 = x500NameTokenizer4.nextToken();
                        vector.addElement(x500NameStyle.attrNameToOID(nextToken4.trim()));
                        vector2.addElement(unescape(nextToken5));
                    }
                    x500NameBuilder.addMultiValuedRDN(toOIDArray(vector), toValueArray(vector2));
                } else {
                    x500NameBuilder.addRDN(attrNameToOID, unescape(nextToken3));
                }
            } else {
                X500NameTokenizer x500NameTokenizer5 = new X500NameTokenizer(nextToken, '=');
                String nextToken6 = x500NameTokenizer5.nextToken();
                if (!x500NameTokenizer5.hasMoreTokens()) {
                    throw new IllegalArgumentException("badly formatted directory string");
                }
                x500NameBuilder.addRDN(x500NameStyle.attrNameToOID(nextToken6.trim()), unescape(x500NameTokenizer5.nextToken()));
            }
        }
        return x500NameBuilder.build().getRDNs();
    }

    public static String stripInternalSpaces(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        if (str.length() != 0) {
            char charAt = str.charAt(0);
            stringBuffer.append(charAt);
            for (int i = 1; i < str.length(); i++) {
                charAt = str.charAt(i);
                if (charAt != ' ' || charAt != ' ') {
                    stringBuffer.append(charAt);
                }
            }
        }
        return stringBuffer.toString();
    }

    private static ASN1ObjectIdentifier[] toOIDArray(Vector vector) {
        ASN1ObjectIdentifier[] aSN1ObjectIdentifierArr = new ASN1ObjectIdentifier[vector.size()];
        for (int i = 0; i != aSN1ObjectIdentifierArr.length; i++) {
            aSN1ObjectIdentifierArr[i] = (ASN1ObjectIdentifier) vector.elementAt(i);
        }
        return aSN1ObjectIdentifierArr;
    }

    private static String[] toValueArray(Vector vector) {
        String[] strArr = new String[vector.size()];
        for (int i = 0; i != strArr.length; i++) {
            strArr[i] = (String) vector.elementAt(i);
        }
        return strArr;
    }

    private static String unescape(String str) {
        int i;
        if (str.length() == 0 || (str.indexOf(92) < 0 && str.indexOf(34) < 0)) {
            return str.trim();
        }
        char[] charArray = str.toCharArray();
        StringBuffer stringBuffer = new StringBuffer(str.length());
        if (charArray[0] == '\\' && charArray[1] == '#') {
            i = 2;
            stringBuffer.append("\\#");
        } else {
            i = 0;
        }
        boolean z = false;
        boolean z2 = false;
        int i2 = 0;
        boolean z3 = false;
        char c = 0;
        while (i != charArray.length) {
            char c2 = charArray[i];
            if (c2 != ' ') {
                z3 = true;
            }
            if (c2 != '\"') {
                if (c2 == '\\' && !z && !z2) {
                    i2 = stringBuffer.length();
                    z = true;
                    c = c;
                } else if (c2 == ' ' && !z && !z3) {
                    z = z;
                    c = c;
                } else if (!z || !isHexDigit(c2)) {
                    stringBuffer.append(c2);
                } else if (c != 0) {
                    stringBuffer.append((char) ((convertHex(c) * 16) + convertHex(c2)));
                    z = false;
                    c = 0;
                } else {
                    c = c2;
                    z = z;
                }
                i++;
            } else if (!z) {
                z2 = !z2;
            } else {
                stringBuffer.append(c2);
            }
            z = false;
            c = c;
            i++;
        }
        if (stringBuffer.length() > 0) {
            while (stringBuffer.charAt(stringBuffer.length() - 1) == ' ' && i2 != stringBuffer.length() - 1) {
                stringBuffer.setLength(stringBuffer.length() - 1);
            }
        }
        return stringBuffer.toString();
    }

    public static ASN1Encodable valueFromHexString(String str, int i) throws IOException {
        byte[] bArr = new byte[(str.length() - i) / 2];
        for (int i2 = 0; i2 != bArr.length; i2++) {
            int i3 = (i2 * 2) + i;
            char charAt = str.charAt(i3);
            bArr[i2] = (byte) (convertHex(str.charAt(i3 + 1)) | (convertHex(charAt) << 4));
        }
        return ASN1Primitive.fromByteArray(bArr);
    }

    public static String valueToString(ASN1Encodable aSN1Encodable) {
        int i;
        StringBuffer stringBuffer = new StringBuffer();
        if (!(aSN1Encodable instanceof ASN1String) || (aSN1Encodable instanceof DERUniversalString)) {
            try {
                stringBuffer.append("#" + bytesToString(Hex.encode(aSN1Encodable.toASN1Primitive().getEncoded(ASN1Encoding.DER))));
            } catch (IOException e) {
                throw new IllegalArgumentException("Other value has no encoded form");
            }
        } else {
            String string = ((ASN1String) aSN1Encodable).getString();
            if (string.length() <= 0 || string.charAt(0) != '#') {
                stringBuffer.append(string);
            } else {
                stringBuffer.append("\\" + string);
            }
        }
        int length = stringBuffer.length();
        int i2 = 2;
        if (!(stringBuffer.length() >= 2 && stringBuffer.charAt(0) == '\\' && stringBuffer.charAt(1) == '#')) {
            i2 = 0;
        }
        while (i2 != length) {
            if (!(stringBuffer.charAt(i2) == ',' || stringBuffer.charAt(i2) == '\"' || stringBuffer.charAt(i2) == '\\' || stringBuffer.charAt(i2) == '+' || stringBuffer.charAt(i2) == '=' || stringBuffer.charAt(i2) == '<' || stringBuffer.charAt(i2) == '>')) {
                i = i2;
                length = length;
                if (stringBuffer.charAt(i2) != ';') {
                    i2 = i + 1;
                }
            }
            stringBuffer.insert(i2, "\\");
            i = i2 + 1;
            length++;
            i2 = i + 1;
        }
        if (stringBuffer.length() > 0) {
            for (int i3 = 0; stringBuffer.length() > i3 && stringBuffer.charAt(i3) == ' '; i3 += 2) {
                stringBuffer.insert(i3, "\\");
            }
        }
        for (int length2 = stringBuffer.length() - 1; length2 >= 0 && stringBuffer.charAt(length2) == ' '; length2--) {
            stringBuffer.insert(length2, '\\');
        }
        return stringBuffer.toString();
    }
}
