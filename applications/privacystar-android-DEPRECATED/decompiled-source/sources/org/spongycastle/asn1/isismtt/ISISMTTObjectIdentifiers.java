package org.spongycastle.asn1.isismtt;

import com.privacystar.core.util.CampaignUtil;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/isismtt/ISISMTTObjectIdentifiers.class */
public interface ISISMTTObjectIdentifiers {
    public static final ASN1ObjectIdentifier id_isismtt = new ASN1ObjectIdentifier("1.3.36.8");
    public static final ASN1ObjectIdentifier id_isismtt_cp = id_isismtt.branch("1");
    public static final ASN1ObjectIdentifier id_isismtt_cp_accredited = id_isismtt_cp.branch("1");
    public static final ASN1ObjectIdentifier id_isismtt_at = id_isismtt.branch(CampaignUtil.CAMPAIGN_ACTION_DASHBOARD);
    public static final ASN1ObjectIdentifier id_isismtt_at_dateOfCertGen = id_isismtt_at.branch("1");
    public static final ASN1ObjectIdentifier id_isismtt_at_procuration = id_isismtt_at.branch("2");
    public static final ASN1ObjectIdentifier id_isismtt_at_admission = id_isismtt_at.branch(CampaignUtil.CAMPAIGN_ACTION_DASHBOARD);
    public static final ASN1ObjectIdentifier id_isismtt_at_monetaryLimit = id_isismtt_at.branch(CampaignUtil.CAMPAIGN_ACTION_WALKTHROUGH);
    public static final ASN1ObjectIdentifier id_isismtt_at_declarationOfMajority = id_isismtt_at.branch(CampaignUtil.CAMPAIGN_ACTION_PROTECTION);
    public static final ASN1ObjectIdentifier id_isismtt_at_iCCSN = id_isismtt_at.branch(CampaignUtil.CAMPAIGN_ACTION_STATE);
    public static final ASN1ObjectIdentifier id_isismtt_at_PKReference = id_isismtt_at.branch(CampaignUtil.CAMPAIGN_ACTION_BLOCK);
    public static final ASN1ObjectIdentifier id_isismtt_at_restriction = id_isismtt_at.branch(CampaignUtil.CAMPAIGN_ACTION_APPROVED);
    public static final ASN1ObjectIdentifier id_isismtt_at_retrieveIfAllowed = id_isismtt_at.branch(CampaignUtil.CAMPAIGN_ACTION_INBOX);
    public static final ASN1ObjectIdentifier id_isismtt_at_requestedCertificate = id_isismtt_at.branch(CampaignUtil.CAMPAIGN_ACTION_INBOX_RATE);
    public static final ASN1ObjectIdentifier id_isismtt_at_namingAuthorities = id_isismtt_at.branch("11");
    public static final ASN1ObjectIdentifier id_isismtt_at_certInDirSince = id_isismtt_at.branch("12");
    public static final ASN1ObjectIdentifier id_isismtt_at_certHash = id_isismtt_at.branch("13");
    public static final ASN1ObjectIdentifier id_isismtt_at_nameAtBirth = id_isismtt_at.branch("14");
    public static final ASN1ObjectIdentifier id_isismtt_at_additionalInformation = id_isismtt_at.branch("15");
    public static final ASN1ObjectIdentifier id_isismtt_at_liabilityLimitationFlag = new ASN1ObjectIdentifier("0.2.262.1.10.12.0");
}
