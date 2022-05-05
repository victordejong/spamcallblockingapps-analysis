package org.spongycastle.asn1.util;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Primitive;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/util/DERDump.class */
public class DERDump extends ASN1Dump {
    public static String dumpAsString(ASN1Encodable aSN1Encodable) {
        StringBuffer stringBuffer = new StringBuffer();
        _dumpAsString("", false, aSN1Encodable.toASN1Primitive(), stringBuffer);
        return stringBuffer.toString();
    }

    public static String dumpAsString(ASN1Primitive aSN1Primitive) {
        StringBuffer stringBuffer = new StringBuffer();
        _dumpAsString("", false, aSN1Primitive, stringBuffer);
        return stringBuffer.toString();
    }
}
