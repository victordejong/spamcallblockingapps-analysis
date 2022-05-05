package org.spongycastle.asn1.cms;

import com.privacystar.core.util.CampaignUtil;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/cms/CMSObjectIdentifiers.class */
public interface CMSObjectIdentifiers {
    public static final ASN1ObjectIdentifier data = PKCSObjectIdentifiers.data;
    public static final ASN1ObjectIdentifier signedData = PKCSObjectIdentifiers.signedData;
    public static final ASN1ObjectIdentifier envelopedData = PKCSObjectIdentifiers.envelopedData;
    public static final ASN1ObjectIdentifier signedAndEnvelopedData = PKCSObjectIdentifiers.signedAndEnvelopedData;
    public static final ASN1ObjectIdentifier digestedData = PKCSObjectIdentifiers.digestedData;
    public static final ASN1ObjectIdentifier encryptedData = PKCSObjectIdentifiers.encryptedData;
    public static final ASN1ObjectIdentifier authenticatedData = PKCSObjectIdentifiers.id_ct_authData;
    public static final ASN1ObjectIdentifier compressedData = PKCSObjectIdentifiers.id_ct_compressedData;
    public static final ASN1ObjectIdentifier authEnvelopedData = PKCSObjectIdentifiers.id_ct_authEnvelopedData;
    public static final ASN1ObjectIdentifier timestampedData = PKCSObjectIdentifiers.id_ct_timestampedData;
    public static final ASN1ObjectIdentifier id_ri = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.16");
    public static final ASN1ObjectIdentifier id_ri_ocsp_response = id_ri.branch("2");
    public static final ASN1ObjectIdentifier id_ri_scvp = id_ri.branch(CampaignUtil.CAMPAIGN_ACTION_WALKTHROUGH);
}
