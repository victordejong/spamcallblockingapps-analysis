package org.bouncycastle.voms;

import java.util.List;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.IetfAttrSyntax;
import org.bouncycastle.x509.X509Attribute;
import org.bouncycastle.x509.X509AttributeCertificate;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/voms/VOMSAttribute.class */
public class VOMSAttribute {
    public static final String VOMS_ATTR_OID = "1.3.6.1.4.1.8005.100.100.4";
    private X509AttributeCertificate myAC;
    private String myHostPort;
    private String myVo;
    private Vector myStringList = new Vector();
    private Vector myFQANs = new Vector();

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/voms/VOMSAttribute$FQAN.class */
    public class FQAN {
        public String capability;
        public String fqan;
        public String group;
        public String role;

        public FQAN(String str) {
            VOMSAttribute.this = r4;
            this.fqan = str;
        }

        public FQAN(String str, String str2, String str3) {
            VOMSAttribute.this = r4;
            this.group = str;
            this.role = str2;
            this.capability = str3;
        }

        public String getCapability() {
            if (this.group == null && this.fqan != null) {
                split();
            }
            return this.capability;
        }

        public String getFQAN() {
            String str = this.fqan;
            if (str != null) {
                return str;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(this.group);
            sb.append("/Role=");
            String str2 = this.role;
            if (str2 == null) {
                str2 = "";
            }
            sb.append(str2);
            String str3 = "";
            if (this.capability != null) {
                str3 = "/Capability=" + this.capability;
            }
            sb.append(str3);
            String sb2 = sb.toString();
            this.fqan = sb2;
            return sb2;
        }

        public String getGroup() {
            if (this.group == null && this.fqan != null) {
                split();
            }
            return this.group;
        }

        public String getRole() {
            if (this.group == null && this.fqan != null) {
                split();
            }
            return this.role;
        }

        public void split() {
            this.fqan.length();
            int indexOf = this.fqan.indexOf("/Role=");
            if (indexOf < 0) {
                return;
            }
            this.group = this.fqan.substring(0, indexOf);
            int i = indexOf + 6;
            int indexOf2 = this.fqan.indexOf("/Capability=", i);
            String str = this.fqan;
            String substring = indexOf2 < 0 ? str.substring(i) : str.substring(i, indexOf2);
            if (substring.length() == 0) {
                substring = null;
            }
            this.role = substring;
            String substring2 = indexOf2 < 0 ? null : this.fqan.substring(indexOf2 + 12);
            String str2 = null;
            if (substring2 != null) {
                str2 = substring2.length() == 0 ? null : substring2;
            }
            this.capability = str2;
        }

        public String toString() {
            return getFQAN();
        }
    }

    public VOMSAttribute(X509AttributeCertificate x509AttributeCertificate) {
        if (x509AttributeCertificate != null) {
            this.myAC = x509AttributeCertificate;
            X509Attribute[] attributes = x509AttributeCertificate.getAttributes(VOMS_ATTR_OID);
            if (attributes == null) {
                return;
            }
            for (int i = 0; i != attributes.length; i++) {
                try {
                    IetfAttrSyntax ietfAttrSyntax = new IetfAttrSyntax((ASN1Sequence) attributes[i].getValues()[0]);
                    String string = ((DERIA5String) GeneralName.getInstance(((ASN1Sequence) ietfAttrSyntax.getPolicyAuthority().getDERObject()).getObjectAt(0)).getName()).getString();
                    int indexOf = string.indexOf("://");
                    if (indexOf < 0 || indexOf == string.length() - 1) {
                        throw new IllegalArgumentException("Bad encoding of VOMS policyAuthority : [" + string + "]");
                    }
                    this.myVo = string.substring(0, indexOf);
                    this.myHostPort = string.substring(indexOf + 3);
                    if (ietfAttrSyntax.getValueType() != 1) {
                        throw new IllegalArgumentException("VOMS attribute values are not encoded as octet strings, policyAuthority = " + string);
                    }
                    ASN1OctetString[] aSN1OctetStringArr = (ASN1OctetString[]) ietfAttrSyntax.getValues();
                    for (int i2 = 0; i2 != aSN1OctetStringArr.length; i2++) {
                        String str = new String(aSN1OctetStringArr[i2].getOctets());
                        FQAN fqan = new FQAN(str);
                        if (!this.myStringList.contains(str)) {
                            if (str.startsWith("/" + this.myVo + "/")) {
                                this.myStringList.add(str);
                                this.myFQANs.add(fqan);
                            }
                        }
                    }
                } catch (IllegalArgumentException e) {
                    throw e;
                } catch (Exception e2) {
                    throw new IllegalArgumentException("Badly encoded VOMS extension in AC issued by " + x509AttributeCertificate.getIssuer());
                }
            }
            return;
        }
        throw new IllegalArgumentException("VOMSAttribute: AttributeCertificate is NULL");
    }

    public X509AttributeCertificate getAC() {
        return this.myAC;
    }

    public List getFullyQualifiedAttributes() {
        return this.myStringList;
    }

    public String getHostPort() {
        return this.myHostPort;
    }

    public List getListOfFQAN() {
        return this.myFQANs;
    }

    public String getVO() {
        return this.myVo;
    }

    public String toString() {
        return "VO      :" + this.myVo + "\nHostPort:" + this.myHostPort + "\nFQANs   :" + this.myFQANs;
    }
}
