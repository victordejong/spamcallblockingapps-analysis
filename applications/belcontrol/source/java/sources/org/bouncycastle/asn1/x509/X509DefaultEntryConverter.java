package org.bouncycastle.asn1.x509;

import java.io.IOException;
import org.bouncycastle.asn1.DERGeneralizedTime;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERPrintableString;
import org.bouncycastle.asn1.DERUTF8String;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x509/X509DefaultEntryConverter.class */
public class X509DefaultEntryConverter extends X509NameEntryConverter {
    @Override // org.bouncycastle.asn1.x509.X509NameEntryConverter
    public DERObject getConvertedValue(DERObjectIdentifier dERObjectIdentifier, String str) {
        if (str.length() != 0 && str.charAt(0) == '#') {
            try {
                return convertHexEncoded(str, 1);
            } catch (IOException e) {
                throw new RuntimeException("can't recode value for oid " + dERObjectIdentifier.getId());
            }
        }
        String str2 = str;
        if (str.length() != 0) {
            str2 = str;
            if (str.charAt(0) == '\\') {
                str2 = str.substring(1);
            }
        }
        return (dERObjectIdentifier.equals(X509Name.EmailAddress) || dERObjectIdentifier.equals(X509Name.f7270DC)) ? new DERIA5String(str2) : dERObjectIdentifier.equals(X509Name.DATE_OF_BIRTH) ? new DERGeneralizedTime(str2) : (dERObjectIdentifier.equals(X509Name.f7268C) || dERObjectIdentifier.equals(X509Name.f7275SN) || dERObjectIdentifier.equals(X509Name.DN_QUALIFIER) || dERObjectIdentifier.equals(X509Name.TELEPHONE_NUMBER)) ? new DERPrintableString(str2) : new DERUTF8String(str2);
    }
}
