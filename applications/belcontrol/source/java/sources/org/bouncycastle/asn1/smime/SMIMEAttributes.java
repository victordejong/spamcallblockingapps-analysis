package org.bouncycastle.asn1.smime;

import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/smime/SMIMEAttributes.class */
public interface SMIMEAttributes {
    public static final DERObjectIdentifier smimeCapabilities = PKCSObjectIdentifiers.pkcs_9_at_smimeCapabilities;
    public static final DERObjectIdentifier encrypKeyPref = PKCSObjectIdentifiers.id_aa_encrypKeyPref;
}
