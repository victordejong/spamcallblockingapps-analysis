package org.bouncycastle.asn1.x509.qualified;

import com.millennialmedia.internal.PlayList;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x509/qualified/ETSIQCObjectIdentifiers.class */
public interface ETSIQCObjectIdentifiers {
    public static final ASN1ObjectIdentifier id_etsi_qcs;
    public static final ASN1ObjectIdentifier id_etsi_qcs_LimiteValue;
    public static final ASN1ObjectIdentifier id_etsi_qcs_QcCompliance;
    public static final ASN1ObjectIdentifier id_etsi_qcs_QcSSCD;
    public static final ASN1ObjectIdentifier id_etsi_qcs_RetentionPeriod;

    static {
        ASN1ObjectIdentifier aSN1ObjectIdentifier = new ASN1ObjectIdentifier("0.4.0.1862.1");
        id_etsi_qcs = aSN1ObjectIdentifier;
        id_etsi_qcs_QcCompliance = aSN1ObjectIdentifier.branch("1");
        id_etsi_qcs_LimiteValue = aSN1ObjectIdentifier.branch(PlayList.VERSION);
        id_etsi_qcs_RetentionPeriod = aSN1ObjectIdentifier.branch("3");
        id_etsi_qcs_QcSSCD = aSN1ObjectIdentifier.branch("4");
    }
}
