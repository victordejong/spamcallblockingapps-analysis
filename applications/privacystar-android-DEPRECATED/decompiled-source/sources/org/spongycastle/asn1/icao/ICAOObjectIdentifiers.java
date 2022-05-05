package org.spongycastle.asn1.icao;

import com.privacystar.core.util.CampaignUtil;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/icao/ICAOObjectIdentifiers.class */
public interface ICAOObjectIdentifiers {
    public static final ASN1ObjectIdentifier id_icao = new ASN1ObjectIdentifier("2.23.136");
    public static final ASN1ObjectIdentifier id_icao_mrtd = id_icao.branch("1");
    public static final ASN1ObjectIdentifier id_icao_mrtd_security = id_icao_mrtd.branch("1");
    public static final ASN1ObjectIdentifier id_icao_ldsSecurityObject = id_icao_mrtd_security.branch("1");
    public static final ASN1ObjectIdentifier id_icao_cscaMasterList = id_icao_mrtd_security.branch("2");
    public static final ASN1ObjectIdentifier id_icao_cscaMasterListSigningKey = id_icao_mrtd_security.branch(CampaignUtil.CAMPAIGN_ACTION_DASHBOARD);
    public static final ASN1ObjectIdentifier id_icao_documentTypeList = id_icao_mrtd_security.branch(CampaignUtil.CAMPAIGN_ACTION_WALKTHROUGH);
    public static final ASN1ObjectIdentifier id_icao_aaProtocolObject = id_icao_mrtd_security.branch(CampaignUtil.CAMPAIGN_ACTION_PROTECTION);
    public static final ASN1ObjectIdentifier id_icao_extensions = id_icao_mrtd_security.branch(CampaignUtil.CAMPAIGN_ACTION_STATE);
    public static final ASN1ObjectIdentifier id_icao_extensions_namechangekeyrollover = id_icao_extensions.branch("1");
}
