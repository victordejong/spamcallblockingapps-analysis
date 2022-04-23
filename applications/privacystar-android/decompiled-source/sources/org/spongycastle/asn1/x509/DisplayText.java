package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1String;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERBMPString;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.DERUTF8String;
import org.spongycastle.asn1.DERVisibleString;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/x509/DisplayText.class */
public class DisplayText extends ASN1Object implements ASN1Choice {
    public static final int CONTENT_TYPE_BMPSTRING = 1;
    public static final int CONTENT_TYPE_IA5STRING = 0;
    public static final int CONTENT_TYPE_UTF8STRING = 2;
    public static final int CONTENT_TYPE_VISIBLESTRING = 3;
    public static final int DISPLAY_TEXT_MAXIMUM_SIZE = 200;
    int contentType;
    ASN1String contents;

    public DisplayText(int i, String str) {
        String substring = str.length() > 200 ? str.substring(0, 200) : str;
        this.contentType = i;
        switch (i) {
            case 0:
                this.contents = new DERIA5String(substring);
                return;
            case 1:
                this.contents = new DERBMPString(substring);
                return;
            case 2:
                this.contents = new DERUTF8String(substring);
                return;
            case 3:
                this.contents = new DERVisibleString(substring);
                return;
            default:
                this.contents = new DERUTF8String(substring);
                return;
        }
    }

    public DisplayText(String str) {
        String substring = str.length() > 200 ? str.substring(0, 200) : str;
        this.contentType = 2;
        this.contents = new DERUTF8String(substring);
    }

    private DisplayText(ASN1String aSN1String) {
        this.contents = aSN1String;
        if (aSN1String instanceof DERUTF8String) {
            this.contentType = 2;
        } else if (aSN1String instanceof DERBMPString) {
            this.contentType = 1;
        } else if (aSN1String instanceof DERIA5String) {
            this.contentType = 0;
        } else if (aSN1String instanceof DERVisibleString) {
            this.contentType = 3;
        } else {
            throw new IllegalArgumentException("unknown STRING type in DisplayText");
        }
    }

    public static DisplayText getInstance(Object obj) {
        if (obj instanceof ASN1String) {
            return new DisplayText((ASN1String) obj);
        }
        if (obj == null || (obj instanceof DisplayText)) {
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

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return (ASN1Primitive) this.contents;
    }
}
