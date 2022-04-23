package org.spongycastle.asn1.x500.style;

import java.util.Hashtable;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.DERPrintableString;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x500.RDN;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.asn1.x500.X500NameStyle;
import org.spongycastle.asn1.x509.X509ObjectIdentifiers;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/x500/style/BCStyle.class */
public class BCStyle extends AbstractX500NameStyle {

    /* renamed from: C */
    public static final ASN1ObjectIdentifier f916C = new ASN1ObjectIdentifier("2.5.4.6").intern();

    /* renamed from: O */
    public static final ASN1ObjectIdentifier f921O = new ASN1ObjectIdentifier("2.5.4.10").intern();

    /* renamed from: OU */
    public static final ASN1ObjectIdentifier f922OU = new ASN1ObjectIdentifier("2.5.4.11").intern();

    /* renamed from: T */
    public static final ASN1ObjectIdentifier f925T = new ASN1ObjectIdentifier("2.5.4.12").intern();

    /* renamed from: CN */
    public static final ASN1ObjectIdentifier f917CN = new ASN1ObjectIdentifier("2.5.4.3").intern();

    /* renamed from: SN */
    public static final ASN1ObjectIdentifier f923SN = new ASN1ObjectIdentifier("2.5.4.5").intern();
    public static final ASN1ObjectIdentifier STREET = new ASN1ObjectIdentifier("2.5.4.9").intern();
    public static final ASN1ObjectIdentifier SERIALNUMBER = f923SN;

    /* renamed from: L */
    public static final ASN1ObjectIdentifier f920L = new ASN1ObjectIdentifier("2.5.4.7").intern();

    /* renamed from: ST */
    public static final ASN1ObjectIdentifier f924ST = new ASN1ObjectIdentifier("2.5.4.8").intern();
    public static final ASN1ObjectIdentifier SURNAME = new ASN1ObjectIdentifier("2.5.4.4").intern();
    public static final ASN1ObjectIdentifier GIVENNAME = new ASN1ObjectIdentifier("2.5.4.42").intern();
    public static final ASN1ObjectIdentifier INITIALS = new ASN1ObjectIdentifier("2.5.4.43").intern();
    public static final ASN1ObjectIdentifier GENERATION = new ASN1ObjectIdentifier("2.5.4.44").intern();
    public static final ASN1ObjectIdentifier UNIQUE_IDENTIFIER = new ASN1ObjectIdentifier("2.5.4.45").intern();
    public static final ASN1ObjectIdentifier BUSINESS_CATEGORY = new ASN1ObjectIdentifier("2.5.4.15").intern();
    public static final ASN1ObjectIdentifier POSTAL_CODE = new ASN1ObjectIdentifier("2.5.4.17").intern();
    public static final ASN1ObjectIdentifier DN_QUALIFIER = new ASN1ObjectIdentifier("2.5.4.46").intern();
    public static final ASN1ObjectIdentifier PSEUDONYM = new ASN1ObjectIdentifier("2.5.4.65").intern();
    public static final ASN1ObjectIdentifier DATE_OF_BIRTH = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.1").intern();
    public static final ASN1ObjectIdentifier PLACE_OF_BIRTH = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.2").intern();
    public static final ASN1ObjectIdentifier GENDER = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.3").intern();
    public static final ASN1ObjectIdentifier COUNTRY_OF_CITIZENSHIP = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.4").intern();
    public static final ASN1ObjectIdentifier COUNTRY_OF_RESIDENCE = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.5").intern();
    public static final ASN1ObjectIdentifier NAME_AT_BIRTH = new ASN1ObjectIdentifier("1.3.36.8.3.14").intern();
    public static final ASN1ObjectIdentifier POSTAL_ADDRESS = new ASN1ObjectIdentifier("2.5.4.16").intern();
    public static final ASN1ObjectIdentifier DMD_NAME = new ASN1ObjectIdentifier("2.5.4.54").intern();
    public static final ASN1ObjectIdentifier TELEPHONE_NUMBER = X509ObjectIdentifiers.id_at_telephoneNumber;
    public static final ASN1ObjectIdentifier NAME = X509ObjectIdentifiers.id_at_name;
    public static final ASN1ObjectIdentifier ORGANIZATION_IDENTIFIER = X509ObjectIdentifiers.id_at_organizationIdentifier;
    public static final ASN1ObjectIdentifier EmailAddress = PKCSObjectIdentifiers.pkcs_9_at_emailAddress;
    public static final ASN1ObjectIdentifier UnstructuredName = PKCSObjectIdentifiers.pkcs_9_at_unstructuredName;
    public static final ASN1ObjectIdentifier UnstructuredAddress = PKCSObjectIdentifiers.pkcs_9_at_unstructuredAddress;

    /* renamed from: E */
    public static final ASN1ObjectIdentifier f919E = EmailAddress;

    /* renamed from: DC */
    public static final ASN1ObjectIdentifier f918DC = new ASN1ObjectIdentifier("0.9.2342.19200300.100.1.25");
    public static final ASN1ObjectIdentifier UID = new ASN1ObjectIdentifier("0.9.2342.19200300.100.1.1");
    private static final Hashtable DefaultSymbols = new Hashtable();
    private static final Hashtable DefaultLookUp = new Hashtable();
    public static final X500NameStyle INSTANCE = new BCStyle();
    protected final Hashtable defaultSymbols = copyHashTable(DefaultSymbols);
    protected final Hashtable defaultLookUp = copyHashTable(DefaultLookUp);

    static {
        DefaultSymbols.put(f916C, "C");
        DefaultSymbols.put(f921O, "O");
        DefaultSymbols.put(f925T, "T");
        DefaultSymbols.put(f922OU, "OU");
        DefaultSymbols.put(f917CN, "CN");
        DefaultSymbols.put(f920L, "L");
        DefaultSymbols.put(f924ST, "ST");
        DefaultSymbols.put(f923SN, "SERIALNUMBER");
        DefaultSymbols.put(EmailAddress, "E");
        DefaultSymbols.put(f918DC, "DC");
        DefaultSymbols.put(UID, "UID");
        DefaultSymbols.put(STREET, "STREET");
        DefaultSymbols.put(SURNAME, "SURNAME");
        DefaultSymbols.put(GIVENNAME, "GIVENNAME");
        DefaultSymbols.put(INITIALS, "INITIALS");
        DefaultSymbols.put(GENERATION, "GENERATION");
        DefaultSymbols.put(UnstructuredAddress, "unstructuredAddress");
        DefaultSymbols.put(UnstructuredName, "unstructuredName");
        DefaultSymbols.put(UNIQUE_IDENTIFIER, "UniqueIdentifier");
        DefaultSymbols.put(DN_QUALIFIER, "DN");
        DefaultSymbols.put(PSEUDONYM, "Pseudonym");
        DefaultSymbols.put(POSTAL_ADDRESS, "PostalAddress");
        DefaultSymbols.put(NAME_AT_BIRTH, "NameAtBirth");
        DefaultSymbols.put(COUNTRY_OF_CITIZENSHIP, "CountryOfCitizenship");
        DefaultSymbols.put(COUNTRY_OF_RESIDENCE, "CountryOfResidence");
        DefaultSymbols.put(GENDER, "Gender");
        DefaultSymbols.put(PLACE_OF_BIRTH, "PlaceOfBirth");
        DefaultSymbols.put(DATE_OF_BIRTH, "DateOfBirth");
        DefaultSymbols.put(POSTAL_CODE, "PostalCode");
        DefaultSymbols.put(BUSINESS_CATEGORY, "BusinessCategory");
        DefaultSymbols.put(TELEPHONE_NUMBER, "TelephoneNumber");
        DefaultSymbols.put(NAME, "Name");
        DefaultSymbols.put(ORGANIZATION_IDENTIFIER, "organizationIdentifier");
        DefaultLookUp.put("c", f916C);
        DefaultLookUp.put("o", f921O);
        DefaultLookUp.put("t", f925T);
        DefaultLookUp.put("ou", f922OU);
        DefaultLookUp.put("cn", f917CN);
        DefaultLookUp.put("l", f920L);
        DefaultLookUp.put("st", f924ST);
        DefaultLookUp.put("sn", f923SN);
        DefaultLookUp.put("serialnumber", f923SN);
        DefaultLookUp.put("street", STREET);
        DefaultLookUp.put("emailaddress", f919E);
        DefaultLookUp.put("dc", f918DC);
        DefaultLookUp.put("e", f919E);
        DefaultLookUp.put("uid", UID);
        DefaultLookUp.put("surname", SURNAME);
        DefaultLookUp.put("givenname", GIVENNAME);
        DefaultLookUp.put("initials", INITIALS);
        DefaultLookUp.put("generation", GENERATION);
        DefaultLookUp.put("unstructuredaddress", UnstructuredAddress);
        DefaultLookUp.put("unstructuredname", UnstructuredName);
        DefaultLookUp.put("uniqueidentifier", UNIQUE_IDENTIFIER);
        DefaultLookUp.put("dn", DN_QUALIFIER);
        DefaultLookUp.put("pseudonym", PSEUDONYM);
        DefaultLookUp.put("postaladdress", POSTAL_ADDRESS);
        DefaultLookUp.put("nameofbirth", NAME_AT_BIRTH);
        DefaultLookUp.put("countryofcitizenship", COUNTRY_OF_CITIZENSHIP);
        DefaultLookUp.put("countryofresidence", COUNTRY_OF_RESIDENCE);
        DefaultLookUp.put("gender", GENDER);
        DefaultLookUp.put("placeofbirth", PLACE_OF_BIRTH);
        DefaultLookUp.put("dateofbirth", DATE_OF_BIRTH);
        DefaultLookUp.put("postalcode", POSTAL_CODE);
        DefaultLookUp.put("businesscategory", BUSINESS_CATEGORY);
        DefaultLookUp.put("telephonenumber", TELEPHONE_NUMBER);
        DefaultLookUp.put("name", NAME);
        DefaultLookUp.put("organizationidentifier", ORGANIZATION_IDENTIFIER);
    }

    @Override // org.spongycastle.asn1.x500.X500NameStyle
    public ASN1ObjectIdentifier attrNameToOID(String str) {
        return IETFUtils.decodeAttrName(str, this.defaultLookUp);
    }

    @Override // org.spongycastle.asn1.x500.style.AbstractX500NameStyle
    protected ASN1Encodable encodeStringValue(ASN1ObjectIdentifier aSN1ObjectIdentifier, String str) {
        return (aSN1ObjectIdentifier.equals(EmailAddress) || aSN1ObjectIdentifier.equals(f918DC)) ? new DERIA5String(str) : aSN1ObjectIdentifier.equals(DATE_OF_BIRTH) ? new ASN1GeneralizedTime(str) : (aSN1ObjectIdentifier.equals(f916C) || aSN1ObjectIdentifier.equals(f923SN) || aSN1ObjectIdentifier.equals(DN_QUALIFIER) || aSN1ObjectIdentifier.equals(TELEPHONE_NUMBER)) ? new DERPrintableString(str) : super.encodeStringValue(aSN1ObjectIdentifier, str);
    }

    @Override // org.spongycastle.asn1.x500.X500NameStyle
    public RDN[] fromString(String str) {
        return IETFUtils.rDNsFromString(str, this);
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
        boolean z = true;
        for (RDN rdn : x500Name.getRDNs()) {
            if (z) {
                z = false;
            } else {
                stringBuffer.append(',');
            }
            IETFUtils.appendRDN(stringBuffer, rdn, this.defaultSymbols);
        }
        return stringBuffer.toString();
    }
}
