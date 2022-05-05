package org.spongycastle.asn1.iana;

import com.privacystar.core.util.CampaignUtil;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/iana/IANAObjectIdentifiers.class */
public interface IANAObjectIdentifiers {
    public static final ASN1ObjectIdentifier internet = new ASN1ObjectIdentifier("1.3.6.1");
    public static final ASN1ObjectIdentifier directory = internet.branch("1");
    public static final ASN1ObjectIdentifier mgmt = internet.branch("2");
    public static final ASN1ObjectIdentifier experimental = internet.branch(CampaignUtil.CAMPAIGN_ACTION_DASHBOARD);
    public static final ASN1ObjectIdentifier _private = internet.branch(CampaignUtil.CAMPAIGN_ACTION_WALKTHROUGH);
    public static final ASN1ObjectIdentifier security = internet.branch(CampaignUtil.CAMPAIGN_ACTION_PROTECTION);
    public static final ASN1ObjectIdentifier SNMPv2 = internet.branch(CampaignUtil.CAMPAIGN_ACTION_STATE);
    public static final ASN1ObjectIdentifier mail = internet.branch(CampaignUtil.CAMPAIGN_ACTION_BLOCK);
    public static final ASN1ObjectIdentifier security_mechanisms = security.branch(CampaignUtil.CAMPAIGN_ACTION_PROTECTION);
    public static final ASN1ObjectIdentifier security_nametypes = security.branch(CampaignUtil.CAMPAIGN_ACTION_STATE);
    public static final ASN1ObjectIdentifier pkix = security_mechanisms.branch(CampaignUtil.CAMPAIGN_ACTION_STATE);
    public static final ASN1ObjectIdentifier ipsec = security_mechanisms.branch(CampaignUtil.CAMPAIGN_ACTION_APPROVED);
    public static final ASN1ObjectIdentifier isakmpOakley = ipsec.branch("1");
    public static final ASN1ObjectIdentifier hmacMD5 = isakmpOakley.branch("1");
    public static final ASN1ObjectIdentifier hmacSHA1 = isakmpOakley.branch("2");
    public static final ASN1ObjectIdentifier hmacTIGER = isakmpOakley.branch(CampaignUtil.CAMPAIGN_ACTION_DASHBOARD);
    public static final ASN1ObjectIdentifier hmacRIPEMD160 = isakmpOakley.branch(CampaignUtil.CAMPAIGN_ACTION_WALKTHROUGH);
}
