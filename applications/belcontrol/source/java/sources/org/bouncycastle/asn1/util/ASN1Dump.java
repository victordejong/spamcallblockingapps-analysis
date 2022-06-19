package org.bouncycastle.asn1.util;

import java.io.IOException;
import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.BERApplicationSpecific;
import org.bouncycastle.asn1.BERConstructedOctetString;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.BERSet;
import org.bouncycastle.asn1.BERTaggedObject;
import org.bouncycastle.asn1.DERApplicationSpecific;
import org.bouncycastle.asn1.DERBMPString;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERBoolean;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DEREnumerated;
import org.bouncycastle.asn1.DERExternal;
import org.bouncycastle.asn1.DERGeneralizedTime;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERPrintableString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERSet;
import org.bouncycastle.asn1.DERT61String;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.DERUTCTime;
import org.bouncycastle.asn1.DERUTF8String;
import org.bouncycastle.asn1.DERUnknownTag;
import org.bouncycastle.asn1.DERVisibleString;
import org.bouncycastle.util.encoders.Hex;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/util/ASN1Dump.class */
public class ASN1Dump {
    private static final int SAMPLE_SIZE = 32;
    private static final String TAB = "    ";

    public static void _dumpAsString(String str, boolean z, DERObject dERObject, StringBuffer stringBuffer) {
        String obj;
        StringBuilder sb;
        BigInteger value;
        String str2;
        String outputApplicationSpecific;
        String time;
        String property = System.getProperty("line.separator");
        if (dERObject instanceof ASN1Sequence) {
            Enumeration objects = ((ASN1Sequence) dERObject).getObjects();
            String str3 = str + TAB;
            stringBuffer.append(str);
            stringBuffer.append(dERObject instanceof BERSequence ? "BER Sequence" : dERObject instanceof DERSequence ? "DER Sequence" : "Sequence");
            while (true) {
                stringBuffer.append(property);
                while (objects.hasMoreElements()) {
                    Object nextElement = objects.nextElement();
                    if (nextElement == null || nextElement.equals(new DERNull())) {
                        stringBuffer.append(str3);
                        stringBuffer.append("NULL");
                    } else {
                        _dumpAsString(str3, z, nextElement instanceof DERObject ? (DERObject) nextElement : ((DEREncodable) nextElement).getDERObject(), stringBuffer);
                    }
                }
                return;
            }
        }
        if (dERObject instanceof DERTaggedObject) {
            String str4 = str + TAB;
            stringBuffer.append(str);
            stringBuffer.append(dERObject instanceof BERTaggedObject ? "BER Tagged [" : "Tagged [");
            DERTaggedObject dERTaggedObject = (DERTaggedObject) dERObject;
            stringBuffer.append(Integer.toString(dERTaggedObject.getTagNo()));
            stringBuffer.append(']');
            if (!dERTaggedObject.isExplicit()) {
                stringBuffer.append(" IMPLICIT ");
            }
            stringBuffer.append(property);
            if (!dERTaggedObject.isEmpty()) {
                _dumpAsString(str4, z, dERTaggedObject.getObject(), stringBuffer);
                return;
            } else {
                stringBuffer.append(str4);
                stringBuffer.append("EMPTY");
            }
        } else if (dERObject instanceof BERSet) {
            Enumeration objects2 = ((ASN1Set) dERObject).getObjects();
            String str5 = str + TAB;
            stringBuffer.append(str);
            stringBuffer.append("BER Set");
            while (true) {
                stringBuffer.append(property);
                while (objects2.hasMoreElements()) {
                    Object nextElement2 = objects2.nextElement();
                    if (nextElement2 == null) {
                        break;
                    }
                    _dumpAsString(str5, z, nextElement2 instanceof DERObject ? (DERObject) nextElement2 : ((DEREncodable) nextElement2).getDERObject(), stringBuffer);
                }
                return;
                stringBuffer.append(str5);
                stringBuffer.append("NULL");
            }
        } else if (!(dERObject instanceof DERSet)) {
            if (dERObject instanceof DERObjectIdentifier) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append("ObjectIdentifier(");
                sb2.append(((DERObjectIdentifier) dERObject).getId());
                sb = sb2;
            } else if (dERObject instanceof DERBoolean) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(str);
                sb3.append("Boolean(");
                sb3.append(((DERBoolean) dERObject).isTrue());
                sb = sb3;
            } else {
                if (dERObject instanceof DERInteger) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(str);
                    sb4.append("Integer(");
                    value = ((DERInteger) dERObject).getValue();
                    sb = sb4;
                } else if (dERObject instanceof BERConstructedOctetString) {
                    ASN1OctetString aSN1OctetString = (ASN1OctetString) dERObject;
                    stringBuffer.append(str + "BER Constructed Octet String[" + aSN1OctetString.getOctets().length + "] ");
                    if (z) {
                        outputApplicationSpecific = dumpBinaryDataAsString(str, aSN1OctetString.getOctets());
                        stringBuffer.append(outputApplicationSpecific);
                        return;
                    }
                } else if (!(dERObject instanceof DEROctetString)) {
                    if (dERObject instanceof DERBitString) {
                        DERBitString dERBitString = (DERBitString) dERObject;
                        stringBuffer.append(str + "DER Bit String[" + dERBitString.getBytes().length + ", " + dERBitString.getPadBits() + "] ");
                        if (z) {
                            outputApplicationSpecific = dumpBinaryDataAsString(str, dERBitString.getBytes());
                        }
                    } else {
                        if (dERObject instanceof DERIA5String) {
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append(str);
                            sb5.append("IA5String(");
                            time = ((DERIA5String) dERObject).getString();
                            sb = sb5;
                        } else if (dERObject instanceof DERUTF8String) {
                            StringBuilder sb6 = new StringBuilder();
                            sb6.append(str);
                            sb6.append("UTF8String(");
                            time = ((DERUTF8String) dERObject).getString();
                            sb = sb6;
                        } else if (dERObject instanceof DERPrintableString) {
                            StringBuilder sb7 = new StringBuilder();
                            sb7.append(str);
                            sb7.append("PrintableString(");
                            time = ((DERPrintableString) dERObject).getString();
                            sb = sb7;
                        } else if (dERObject instanceof DERVisibleString) {
                            StringBuilder sb8 = new StringBuilder();
                            sb8.append(str);
                            sb8.append("VisibleString(");
                            time = ((DERVisibleString) dERObject).getString();
                            sb = sb8;
                        } else if (dERObject instanceof DERBMPString) {
                            StringBuilder sb9 = new StringBuilder();
                            sb9.append(str);
                            sb9.append("BMPString(");
                            time = ((DERBMPString) dERObject).getString();
                            sb = sb9;
                        } else if (dERObject instanceof DERT61String) {
                            StringBuilder sb10 = new StringBuilder();
                            sb10.append(str);
                            sb10.append("T61String(");
                            time = ((DERT61String) dERObject).getString();
                            sb = sb10;
                        } else if (dERObject instanceof DERUTCTime) {
                            StringBuilder sb11 = new StringBuilder();
                            sb11.append(str);
                            sb11.append("UTCTime(");
                            time = ((DERUTCTime) dERObject).getTime();
                            sb = sb11;
                        } else if (dERObject instanceof DERGeneralizedTime) {
                            StringBuilder sb12 = new StringBuilder();
                            sb12.append(str);
                            sb12.append("GeneralizedTime(");
                            time = ((DERGeneralizedTime) dERObject).getTime();
                            sb = sb12;
                        } else {
                            if (dERObject instanceof DERUnknownTag) {
                                StringBuilder sb13 = new StringBuilder();
                                sb13.append(str);
                                sb13.append("Unknown ");
                                DERUnknownTag dERUnknownTag = (DERUnknownTag) dERObject;
                                sb13.append(Integer.toString(dERUnknownTag.getTag(), 16));
                                sb13.append(" ");
                                obj = new String(Hex.encode(dERUnknownTag.getData()));
                                sb = sb13;
                            } else {
                                if (dERObject instanceof BERApplicationSpecific) {
                                    str2 = ASN1Encodable.BER;
                                } else if (dERObject instanceof DERApplicationSpecific) {
                                    str2 = ASN1Encodable.DER;
                                } else if (dERObject instanceof DEREnumerated) {
                                    StringBuilder sb14 = new StringBuilder();
                                    sb14.append(str);
                                    sb14.append("DER Enumerated(");
                                    value = ((DEREnumerated) dERObject).getValue();
                                    sb = sb14;
                                } else if (dERObject instanceof DERExternal) {
                                    DERExternal dERExternal = (DERExternal) dERObject;
                                    stringBuffer.append(str + "External " + property);
                                    StringBuilder sb15 = new StringBuilder();
                                    sb15.append(str);
                                    sb15.append(TAB);
                                    String sb16 = sb15.toString();
                                    if (dERExternal.getDirectReference() != null) {
                                        stringBuffer.append(sb16 + "Direct Reference: " + dERExternal.getDirectReference().getId() + property);
                                    }
                                    if (dERExternal.getIndirectReference() != null) {
                                        stringBuffer.append(sb16 + "Indirect Reference: " + dERExternal.getIndirectReference().toString() + property);
                                    }
                                    if (dERExternal.getDataValueDescriptor() != null) {
                                        _dumpAsString(sb16, z, dERExternal.getDataValueDescriptor(), stringBuffer);
                                    }
                                    stringBuffer.append(sb16 + "Encoding: " + dERExternal.getEncoding() + property);
                                    _dumpAsString(sb16, z, dERExternal.getExternalContent(), stringBuffer);
                                    return;
                                } else {
                                    StringBuilder sb17 = new StringBuilder();
                                    sb17.append(str);
                                    obj = dERObject.toString();
                                    sb = sb17;
                                }
                                outputApplicationSpecific = outputApplicationSpecific(str2, str, z, dERObject, property);
                            }
                            sb.append(obj);
                            sb.append(property);
                            outputApplicationSpecific = sb.toString();
                        }
                        sb.append(time);
                        sb.append(") ");
                        sb.append(property);
                        outputApplicationSpecific = sb.toString();
                    }
                    stringBuffer.append(outputApplicationSpecific);
                    return;
                } else {
                    ASN1OctetString aSN1OctetString2 = (ASN1OctetString) dERObject;
                    stringBuffer.append(str + "DER Octet String[" + aSN1OctetString2.getOctets().length + "] ");
                    if (z) {
                        outputApplicationSpecific = dumpBinaryDataAsString(str, aSN1OctetString2.getOctets());
                        stringBuffer.append(outputApplicationSpecific);
                        return;
                    }
                }
                sb.append(value);
            }
            sb.append(")");
            sb.append(property);
            outputApplicationSpecific = sb.toString();
            stringBuffer.append(outputApplicationSpecific);
            return;
        } else {
            Enumeration objects3 = ((ASN1Set) dERObject).getObjects();
            String str6 = str + TAB;
            stringBuffer.append(str);
            stringBuffer.append("DER Set");
            while (true) {
                stringBuffer.append(property);
                while (objects3.hasMoreElements()) {
                    Object nextElement3 = objects3.nextElement();
                    if (nextElement3 == null) {
                        break;
                    }
                    _dumpAsString(str6, z, nextElement3 instanceof DERObject ? (DERObject) nextElement3 : ((DEREncodable) nextElement3).getDERObject(), stringBuffer);
                }
                return;
                stringBuffer.append(str6);
                stringBuffer.append("NULL");
            }
        }
        stringBuffer.append(property);
    }

    private static String calculateAscString(byte[] bArr, int i, int i2) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i3 = i; i3 != i + i2; i3++) {
            if (bArr[i3] >= 32 && bArr[i3] <= 126) {
                stringBuffer.append((char) bArr[i3]);
            }
        }
        return stringBuffer.toString();
    }

    public static String dumpAsString(Object obj) {
        return dumpAsString(obj, false);
    }

    public static String dumpAsString(Object obj, boolean z) {
        DERObject dERObject;
        StringBuffer stringBuffer = new StringBuffer();
        if (obj instanceof DERObject) {
            dERObject = (DERObject) obj;
        } else if (!(obj instanceof DEREncodable)) {
            return "unknown object type " + obj.toString();
        } else {
            dERObject = ((DEREncodable) obj).getDERObject();
        }
        _dumpAsString("", z, dERObject, stringBuffer);
        return stringBuffer.toString();
    }

    private static String dumpBinaryDataAsString(String str, byte[] bArr) {
        String calculateAscString;
        String property = System.getProperty("line.separator");
        StringBuffer stringBuffer = new StringBuffer();
        String str2 = str + TAB;
        stringBuffer.append(property);
        for (int i = 0; i < bArr.length; i += 32) {
            int length = bArr.length;
            stringBuffer.append(str2);
            if (length - i > 32) {
                stringBuffer.append(new String(Hex.encode(bArr, i, 32)));
                stringBuffer.append(TAB);
                calculateAscString = calculateAscString(bArr, i, 32);
            } else {
                stringBuffer.append(new String(Hex.encode(bArr, i, bArr.length - i)));
                for (int length2 = bArr.length - i; length2 != 32; length2++) {
                    stringBuffer.append("  ");
                }
                stringBuffer.append(TAB);
                calculateAscString = calculateAscString(bArr, i, bArr.length - i);
            }
            stringBuffer.append(calculateAscString);
            stringBuffer.append(property);
        }
        return stringBuffer.toString();
    }

    private static String outputApplicationSpecific(String str, String str2, boolean z, DERObject dERObject, String str3) {
        DERApplicationSpecific dERApplicationSpecific = (DERApplicationSpecific) dERObject;
        StringBuffer stringBuffer = new StringBuffer();
        if (!dERApplicationSpecific.isConstructed()) {
            return str2 + str + " ApplicationSpecific[" + dERApplicationSpecific.getApplicationTag() + "] (" + new String(Hex.encode(dERApplicationSpecific.getContents())) + ")" + str3;
        }
        try {
            ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(dERApplicationSpecific.getObject(16));
            stringBuffer.append(str2 + str + " ApplicationSpecific[" + dERApplicationSpecific.getApplicationTag() + "]" + str3);
            Enumeration objects = aSN1Sequence.getObjects();
            while (objects.hasMoreElements()) {
                _dumpAsString(str2 + TAB, z, (DERObject) objects.nextElement(), stringBuffer);
            }
        } catch (IOException e) {
            stringBuffer.append(e);
        }
        return stringBuffer.toString();
    }
}
