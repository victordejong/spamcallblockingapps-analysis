package org.spongycastle.asn1.x500.style;

import com.privacystar.core.service.googleplay.p010v3.IABV3Helper;
import java.util.Hashtable;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.DERPrintableString;
import org.spongycastle.asn1.x500.RDN;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.asn1.x500.X500NameStyle;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/x500/style/RFC4519Style.class */
public class RFC4519Style extends AbstractX500NameStyle {
    public static final ASN1ObjectIdentifier businessCategory = new ASN1ObjectIdentifier("2.5.4.15").intern();

    /* renamed from: c */
    public static final ASN1ObjectIdentifier f926c = new ASN1ObjectIdentifier("2.5.4.6").intern();

    /* renamed from: cn */
    public static final ASN1ObjectIdentifier f927cn = new ASN1ObjectIdentifier("2.5.4.3").intern();

    /* renamed from: dc */
    public static final ASN1ObjectIdentifier f928dc = new ASN1ObjectIdentifier("0.9.2342.19200300.100.1.25").intern();
    public static final ASN1ObjectIdentifier description = new ASN1ObjectIdentifier("2.5.4.13").intern();
    public static final ASN1ObjectIdentifier destinationIndicator = new ASN1ObjectIdentifier("2.5.4.27").intern();
    public static final ASN1ObjectIdentifier distinguishedName = new ASN1ObjectIdentifier("2.5.4.49").intern();
    public static final ASN1ObjectIdentifier dnQualifier = new ASN1ObjectIdentifier("2.5.4.46").intern();
    public static final ASN1ObjectIdentifier enhancedSearchGuide = new ASN1ObjectIdentifier("2.5.4.47").intern();
    public static final ASN1ObjectIdentifier facsimileTelephoneNumber = new ASN1ObjectIdentifier("2.5.4.23").intern();
    public static final ASN1ObjectIdentifier generationQualifier = new ASN1ObjectIdentifier("2.5.4.44").intern();
    public static final ASN1ObjectIdentifier givenName = new ASN1ObjectIdentifier("2.5.4.42").intern();
    public static final ASN1ObjectIdentifier houseIdentifier = new ASN1ObjectIdentifier("2.5.4.51").intern();
    public static final ASN1ObjectIdentifier initials = new ASN1ObjectIdentifier("2.5.4.43").intern();
    public static final ASN1ObjectIdentifier internationalISDNNumber = new ASN1ObjectIdentifier("2.5.4.25").intern();

    /* renamed from: l */
    public static final ASN1ObjectIdentifier f929l = new ASN1ObjectIdentifier("2.5.4.7").intern();
    public static final ASN1ObjectIdentifier member = new ASN1ObjectIdentifier("2.5.4.31").intern();
    public static final ASN1ObjectIdentifier name = new ASN1ObjectIdentifier("2.5.4.41").intern();

    /* renamed from: o */
    public static final ASN1ObjectIdentifier f930o = new ASN1ObjectIdentifier("2.5.4.10").intern();

    /* renamed from: ou */
    public static final ASN1ObjectIdentifier f931ou = new ASN1ObjectIdentifier("2.5.4.11").intern();
    public static final ASN1ObjectIdentifier owner = new ASN1ObjectIdentifier("2.5.4.32").intern();
    public static final ASN1ObjectIdentifier physicalDeliveryOfficeName = new ASN1ObjectIdentifier("2.5.4.19").intern();
    public static final ASN1ObjectIdentifier postalAddress = new ASN1ObjectIdentifier("2.5.4.16").intern();
    public static final ASN1ObjectIdentifier postalCode = new ASN1ObjectIdentifier("2.5.4.17").intern();
    public static final ASN1ObjectIdentifier postOfficeBox = new ASN1ObjectIdentifier("2.5.4.18").intern();
    public static final ASN1ObjectIdentifier preferredDeliveryMethod = new ASN1ObjectIdentifier("2.5.4.28").intern();
    public static final ASN1ObjectIdentifier registeredAddress = new ASN1ObjectIdentifier("2.5.4.26").intern();
    public static final ASN1ObjectIdentifier roleOccupant = new ASN1ObjectIdentifier("2.5.4.33").intern();
    public static final ASN1ObjectIdentifier searchGuide = new ASN1ObjectIdentifier("2.5.4.14").intern();
    public static final ASN1ObjectIdentifier seeAlso = new ASN1ObjectIdentifier("2.5.4.34").intern();
    public static final ASN1ObjectIdentifier serialNumber = new ASN1ObjectIdentifier("2.5.4.5").intern();

    /* renamed from: sn */
    public static final ASN1ObjectIdentifier f932sn = new ASN1ObjectIdentifier("2.5.4.4").intern();

    /* renamed from: st */
    public static final ASN1ObjectIdentifier f933st = new ASN1ObjectIdentifier("2.5.4.8").intern();
    public static final ASN1ObjectIdentifier street = new ASN1ObjectIdentifier("2.5.4.9").intern();
    public static final ASN1ObjectIdentifier telephoneNumber = new ASN1ObjectIdentifier("2.5.4.20").intern();
    public static final ASN1ObjectIdentifier teletexTerminalIdentifier = new ASN1ObjectIdentifier("2.5.4.22").intern();
    public static final ASN1ObjectIdentifier telexNumber = new ASN1ObjectIdentifier("2.5.4.21").intern();
    public static final ASN1ObjectIdentifier title = new ASN1ObjectIdentifier("2.5.4.12").intern();
    public static final ASN1ObjectIdentifier uid = new ASN1ObjectIdentifier("0.9.2342.19200300.100.1.1").intern();
    public static final ASN1ObjectIdentifier uniqueMember = new ASN1ObjectIdentifier("2.5.4.50").intern();
    public static final ASN1ObjectIdentifier userPassword = new ASN1ObjectIdentifier("2.5.4.35").intern();
    public static final ASN1ObjectIdentifier x121Address = new ASN1ObjectIdentifier("2.5.4.24").intern();
    public static final ASN1ObjectIdentifier x500UniqueIdentifier = new ASN1ObjectIdentifier("2.5.4.45").intern();
    private static final Hashtable DefaultSymbols = new Hashtable();
    private static final Hashtable DefaultLookUp = new Hashtable();
    public static final X500NameStyle INSTANCE = new RFC4519Style();
    protected final Hashtable defaultSymbols = copyHashTable(DefaultSymbols);
    protected final Hashtable defaultLookUp = copyHashTable(DefaultLookUp);

    static {
        DefaultSymbols.put(businessCategory, "businessCategory");
        DefaultSymbols.put(f926c, "c");
        DefaultSymbols.put(f927cn, "cn");
        DefaultSymbols.put(f928dc, "dc");
        DefaultSymbols.put(description, IABV3Helper.DESCRIPTION);
        DefaultSymbols.put(destinationIndicator, "destinationIndicator");
        DefaultSymbols.put(distinguishedName, "distinguishedName");
        DefaultSymbols.put(dnQualifier, "dnQualifier");
        DefaultSymbols.put(enhancedSearchGuide, "enhancedSearchGuide");
        DefaultSymbols.put(facsimileTelephoneNumber, "facsimileTelephoneNumber");
        DefaultSymbols.put(generationQualifier, "generationQualifier");
        DefaultSymbols.put(givenName, "givenName");
        DefaultSymbols.put(houseIdentifier, "houseIdentifier");
        DefaultSymbols.put(initials, "initials");
        DefaultSymbols.put(internationalISDNNumber, "internationalISDNNumber");
        DefaultSymbols.put(f929l, "l");
        DefaultSymbols.put(member, "member");
        DefaultSymbols.put(name, "name");
        DefaultSymbols.put(f930o, "o");
        DefaultSymbols.put(f931ou, "ou");
        DefaultSymbols.put(owner, "owner");
        DefaultSymbols.put(physicalDeliveryOfficeName, "physicalDeliveryOfficeName");
        DefaultSymbols.put(postalAddress, "postalAddress");
        DefaultSymbols.put(postalCode, "postalCode");
        DefaultSymbols.put(postOfficeBox, "postOfficeBox");
        DefaultSymbols.put(preferredDeliveryMethod, "preferredDeliveryMethod");
        DefaultSymbols.put(registeredAddress, "registeredAddress");
        DefaultSymbols.put(roleOccupant, "roleOccupant");
        DefaultSymbols.put(searchGuide, "searchGuide");
        DefaultSymbols.put(seeAlso, "seeAlso");
        DefaultSymbols.put(serialNumber, "serialNumber");
        DefaultSymbols.put(f932sn, "sn");
        DefaultSymbols.put(f933st, "st");
        DefaultSymbols.put(street, "street");
        DefaultSymbols.put(telephoneNumber, "telephoneNumber");
        DefaultSymbols.put(teletexTerminalIdentifier, "teletexTerminalIdentifier");
        DefaultSymbols.put(telexNumber, "telexNumber");
        DefaultSymbols.put(title, "title");
        DefaultSymbols.put(uid, "uid");
        DefaultSymbols.put(uniqueMember, "uniqueMember");
        DefaultSymbols.put(userPassword, "userPassword");
        DefaultSymbols.put(x121Address, "x121Address");
        DefaultSymbols.put(x500UniqueIdentifier, "x500UniqueIdentifier");
        DefaultLookUp.put("businesscategory", businessCategory);
        DefaultLookUp.put("c", f926c);
        DefaultLookUp.put("cn", f927cn);
        DefaultLookUp.put("dc", f928dc);
        DefaultLookUp.put(IABV3Helper.DESCRIPTION, description);
        DefaultLookUp.put("destinationindicator", destinationIndicator);
        DefaultLookUp.put("distinguishedname", distinguishedName);
        DefaultLookUp.put("dnqualifier", dnQualifier);
        DefaultLookUp.put("enhancedsearchguide", enhancedSearchGuide);
        DefaultLookUp.put("facsimiletelephonenumber", facsimileTelephoneNumber);
        DefaultLookUp.put("generationqualifier", generationQualifier);
        DefaultLookUp.put("givenname", givenName);
        DefaultLookUp.put("houseidentifier", houseIdentifier);
        DefaultLookUp.put("initials", initials);
        DefaultLookUp.put("internationalisdnnumber", internationalISDNNumber);
        DefaultLookUp.put("l", f929l);
        DefaultLookUp.put("member", member);
        DefaultLookUp.put("name", name);
        DefaultLookUp.put("o", f930o);
        DefaultLookUp.put("ou", f931ou);
        DefaultLookUp.put("owner", owner);
        DefaultLookUp.put("physicaldeliveryofficename", physicalDeliveryOfficeName);
        DefaultLookUp.put("postaladdress", postalAddress);
        DefaultLookUp.put("postalcode", postalCode);
        DefaultLookUp.put("postofficebox", postOfficeBox);
        DefaultLookUp.put("preferreddeliverymethod", preferredDeliveryMethod);
        DefaultLookUp.put("registeredaddress", registeredAddress);
        DefaultLookUp.put("roleoccupant", roleOccupant);
        DefaultLookUp.put("searchguide", searchGuide);
        DefaultLookUp.put("seealso", seeAlso);
        DefaultLookUp.put("serialnumber", serialNumber);
        DefaultLookUp.put("sn", f932sn);
        DefaultLookUp.put("st", f933st);
        DefaultLookUp.put("street", street);
        DefaultLookUp.put("telephonenumber", telephoneNumber);
        DefaultLookUp.put("teletexterminalidentifier", teletexTerminalIdentifier);
        DefaultLookUp.put("telexnumber", telexNumber);
        DefaultLookUp.put("title", title);
        DefaultLookUp.put("uid", uid);
        DefaultLookUp.put("uniquemember", uniqueMember);
        DefaultLookUp.put("userpassword", userPassword);
        DefaultLookUp.put("x121address", x121Address);
        DefaultLookUp.put("x500uniqueidentifier", x500UniqueIdentifier);
    }

    protected RFC4519Style() {
    }

    @Override // org.spongycastle.asn1.x500.X500NameStyle
    public ASN1ObjectIdentifier attrNameToOID(String str) {
        return IETFUtils.decodeAttrName(str, this.defaultLookUp);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.spongycastle.asn1.x500.style.AbstractX500NameStyle
    public ASN1Encodable encodeStringValue(ASN1ObjectIdentifier aSN1ObjectIdentifier, String str) {
        return aSN1ObjectIdentifier.equals(f928dc) ? new DERIA5String(str) : (aSN1ObjectIdentifier.equals(f926c) || aSN1ObjectIdentifier.equals(serialNumber) || aSN1ObjectIdentifier.equals(dnQualifier) || aSN1ObjectIdentifier.equals(telephoneNumber)) ? new DERPrintableString(str) : super.encodeStringValue(aSN1ObjectIdentifier, str);
    }

    @Override // org.spongycastle.asn1.x500.X500NameStyle
    public RDN[] fromString(String str) {
        RDN[] rDNsFromString = IETFUtils.rDNsFromString(str, this);
        RDN[] rdnArr = new RDN[rDNsFromString.length];
        for (int i = 0; i != rDNsFromString.length; i++) {
            rdnArr[(rdnArr.length - i) - 1] = rDNsFromString[i];
        }
        return rdnArr;
    }

    @Override // org.spongycastle.asn1.x500.X500NameStyle
    public String[] oidToAttrNames(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return IETFUtils.findAttrNamesForOID(aSN1ObjectIdentifier, this.defaultLookUp);
    }

    @Override // org.spongycastle.asn1.x500.X500NameStyle
    public String oidToDisplayName(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return (String) DefaultSymbols.get(aSN1ObjectIdentifier);
    }

    @Override // org.spongycastle.asn1.x500.X500NameStyle
    public String toString(X500Name x500Name) {
        StringBuffer stringBuffer = new StringBuffer();
        RDN[] rDNs = x500Name.getRDNs();
        int length = rDNs.length;
        boolean z = true;
        while (true) {
            length--;
            if (length < 0) {
                return stringBuffer.toString();
            }
            if (z) {
                z = false;
            } else {
                stringBuffer.append(',');
            }
            IETFUtils.appendRDN(stringBuffer, rDNs[length], this.defaultSymbols);
        }
    }
}
