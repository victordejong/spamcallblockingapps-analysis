package org.bouncycastle.asn1.x509;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERBMPString;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERUTF8String;
import org.bouncycastle.asn1.DERVisibleString;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x509/DisplayText.class */
public class DisplayText extends ASN1Encodable implements ASN1Choice {
    public static final int CONTENT_TYPE_BMPSTRING = 1;
    public static final int CONTENT_TYPE_IA5STRING = 0;
    public static final int CONTENT_TYPE_UTF8STRING = 2;
    public static final int CONTENT_TYPE_VISIBLESTRING = 3;
    public static final int DISPLAY_TEXT_MAXIMUM_SIZE = 200;
    public int contentType;
    public ASN1String contents;

    public DisplayText(int i, String str) {
        String substring = str.length() > 200 ? str.substring(0, DISPLAY_TEXT_MAXIMUM_SIZE) : str;
        this.contentType = i;
        this.contents = i != 0 ? i != 1 ? i != 2 ? i != 3 ? new DERUTF8String(substring) : new DERVisibleString(substring) : new DERUTF8String(substring) : new DERBMPString(substring) : new DERIA5String(substring);
    }

    public DisplayText(String str) {
        String substring = str.length() > 200 ? str.substring(0, DISPLAY_TEXT_MAXIMUM_SIZE) : str;
        this.contentType = 2;
        this.contents = new DERUTF8String(substring);
    }

    private DisplayText(ASN1String aSN1String) {
        this.contents = aSN1String;
    }

    public static DisplayText getInstance(Object obj) {
        if (obj instanceof ASN1String) {
            return new DisplayText((ASN1String) obj);
        }
        if (obj instanceof DisplayText) {
            return (DisplayText) obj;
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static DisplayText getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(aSN1TaggedObject.getObject());
    }

    public String getString() {
        return this.contents.getString();
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        return (DERObject) this.contents;
    }
}
