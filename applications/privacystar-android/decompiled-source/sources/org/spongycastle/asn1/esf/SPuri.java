package org.spongycastle.asn1.esf;

import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERIA5String;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/esf/SPuri.class */
public class SPuri {
    private DERIA5String uri;

    public SPuri(DERIA5String dERIA5String) {
        this.uri = dERIA5String;
    }

    public static SPuri getInstance(Object obj) {
        if (obj instanceof SPuri) {
            return (SPuri) obj;
        }
        if (obj instanceof DERIA5String) {
            return new SPuri(DERIA5String.getInstance(obj));
        }
        return null;
    }

    public DERIA5String getUri() {
        return this.uri;
    }

    public ASN1Primitive toASN1Primitive() {
        return this.uri.toASN1Primitive();
    }
}
