package org.bouncycastle.asn1.x509;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERSet;
import org.bouncycastle.asn1.DERString;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.encoders.Hex;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x509/X509Name.class */
public class X509Name extends ASN1Encodable {
    public static final DERObjectIdentifier BUSINESS_CATEGORY;

    /* renamed from: C */
    public static final DERObjectIdentifier f7268C;

    /* renamed from: CN */
    public static final DERObjectIdentifier f7269CN;
    public static final DERObjectIdentifier COUNTRY_OF_CITIZENSHIP;
    public static final DERObjectIdentifier COUNTRY_OF_RESIDENCE;
    public static final DERObjectIdentifier DATE_OF_BIRTH;

    /* renamed from: DC */
    public static final DERObjectIdentifier f7270DC;
    public static final DERObjectIdentifier DN_QUALIFIER;
    public static final Hashtable DefaultLookUp;
    public static final Hashtable DefaultSymbols;

    /* renamed from: E */
    public static final DERObjectIdentifier f7271E;
    public static final DERObjectIdentifier EmailAddress;
    public static final DERObjectIdentifier GENDER;
    public static final DERObjectIdentifier GENERATION;
    public static final DERObjectIdentifier GIVENNAME;
    public static final DERObjectIdentifier INITIALS;

    /* renamed from: L */
    public static final DERObjectIdentifier f7272L;
    public static final DERObjectIdentifier NAME;
    public static final DERObjectIdentifier NAME_AT_BIRTH;

    /* renamed from: O */
    public static final DERObjectIdentifier f7273O;
    public static final Hashtable OIDLookUp;

    /* renamed from: OU */
    public static final DERObjectIdentifier f7274OU;
    public static final DERObjectIdentifier PLACE_OF_BIRTH;
    public static final DERObjectIdentifier POSTAL_ADDRESS;
    public static final DERObjectIdentifier POSTAL_CODE;
    public static final DERObjectIdentifier PSEUDONYM;
    public static final Hashtable RFC1779Symbols;
    public static final Hashtable RFC2253Symbols;
    public static final DERObjectIdentifier SERIALNUMBER;

    /* renamed from: SN */
    public static final DERObjectIdentifier f7275SN;

    /* renamed from: ST */
    public static final DERObjectIdentifier f7276ST;
    public static final DERObjectIdentifier STREET;
    public static final DERObjectIdentifier SURNAME;
    public static final Hashtable SymbolLookUp;

    /* renamed from: T */
    public static final DERObjectIdentifier f7277T;
    public static final DERObjectIdentifier TELEPHONE_NUMBER;
    public static final DERObjectIdentifier UID;
    public static final DERObjectIdentifier UNIQUE_IDENTIFIER;
    public static final DERObjectIdentifier UnstructuredAddress;
    public static final DERObjectIdentifier UnstructuredName;
    private Vector added;
    private X509NameEntryConverter converter;
    private int hashCodeValue;
    private boolean isHashCodeCalculated;
    private Vector ordering;
    private ASN1Sequence seq;
    private Vector values;
    public static final DERObjectIdentifier DMD_NAME = new DERObjectIdentifier("2.5.4.54");
    public static boolean DefaultReverse = false;
    private static final Boolean TRUE = new Boolean(true);
    private static final Boolean FALSE = new Boolean(false);

    static {
        DERObjectIdentifier dERObjectIdentifier = new DERObjectIdentifier("2.5.4.6");
        f7268C = dERObjectIdentifier;
        DERObjectIdentifier dERObjectIdentifier2 = new DERObjectIdentifier("2.5.4.10");
        f7273O = dERObjectIdentifier2;
        DERObjectIdentifier dERObjectIdentifier3 = new DERObjectIdentifier("2.5.4.11");
        f7274OU = dERObjectIdentifier3;
        DERObjectIdentifier dERObjectIdentifier4 = new DERObjectIdentifier("2.5.4.12");
        f7277T = dERObjectIdentifier4;
        DERObjectIdentifier dERObjectIdentifier5 = new DERObjectIdentifier("2.5.4.3");
        f7269CN = dERObjectIdentifier5;
        DERObjectIdentifier dERObjectIdentifier6 = new DERObjectIdentifier("2.5.4.5");
        f7275SN = dERObjectIdentifier6;
        DERObjectIdentifier dERObjectIdentifier7 = new DERObjectIdentifier("2.5.4.9");
        STREET = dERObjectIdentifier7;
        SERIALNUMBER = dERObjectIdentifier6;
        DERObjectIdentifier dERObjectIdentifier8 = new DERObjectIdentifier("2.5.4.7");
        f7272L = dERObjectIdentifier8;
        DERObjectIdentifier dERObjectIdentifier9 = new DERObjectIdentifier("2.5.4.8");
        f7276ST = dERObjectIdentifier9;
        DERObjectIdentifier dERObjectIdentifier10 = new DERObjectIdentifier("2.5.4.4");
        SURNAME = dERObjectIdentifier10;
        DERObjectIdentifier dERObjectIdentifier11 = new DERObjectIdentifier("2.5.4.42");
        GIVENNAME = dERObjectIdentifier11;
        DERObjectIdentifier dERObjectIdentifier12 = new DERObjectIdentifier("2.5.4.43");
        INITIALS = dERObjectIdentifier12;
        DERObjectIdentifier dERObjectIdentifier13 = new DERObjectIdentifier("2.5.4.44");
        GENERATION = dERObjectIdentifier13;
        DERObjectIdentifier dERObjectIdentifier14 = new DERObjectIdentifier("2.5.4.45");
        UNIQUE_IDENTIFIER = dERObjectIdentifier14;
        DERObjectIdentifier dERObjectIdentifier15 = new DERObjectIdentifier("2.5.4.15");
        BUSINESS_CATEGORY = dERObjectIdentifier15;
        DERObjectIdentifier dERObjectIdentifier16 = new DERObjectIdentifier("2.5.4.17");
        POSTAL_CODE = dERObjectIdentifier16;
        DERObjectIdentifier dERObjectIdentifier17 = new DERObjectIdentifier("2.5.4.46");
        DN_QUALIFIER = dERObjectIdentifier17;
        DERObjectIdentifier dERObjectIdentifier18 = new DERObjectIdentifier("2.5.4.65");
        PSEUDONYM = dERObjectIdentifier18;
        DERObjectIdentifier dERObjectIdentifier19 = new DERObjectIdentifier("1.3.6.1.5.5.7.9.1");
        DATE_OF_BIRTH = dERObjectIdentifier19;
        DERObjectIdentifier dERObjectIdentifier20 = new DERObjectIdentifier("1.3.6.1.5.5.7.9.2");
        PLACE_OF_BIRTH = dERObjectIdentifier20;
        DERObjectIdentifier dERObjectIdentifier21 = new DERObjectIdentifier("1.3.6.1.5.5.7.9.3");
        GENDER = dERObjectIdentifier21;
        DERObjectIdentifier dERObjectIdentifier22 = new DERObjectIdentifier("1.3.6.1.5.5.7.9.4");
        COUNTRY_OF_CITIZENSHIP = dERObjectIdentifier22;
        DERObjectIdentifier dERObjectIdentifier23 = new DERObjectIdentifier("1.3.6.1.5.5.7.9.5");
        COUNTRY_OF_RESIDENCE = dERObjectIdentifier23;
        DERObjectIdentifier dERObjectIdentifier24 = new DERObjectIdentifier("1.3.36.8.3.14");
        NAME_AT_BIRTH = dERObjectIdentifier24;
        DERObjectIdentifier dERObjectIdentifier25 = new DERObjectIdentifier("2.5.4.16");
        POSTAL_ADDRESS = dERObjectIdentifier25;
        ASN1ObjectIdentifier aSN1ObjectIdentifier = X509ObjectIdentifiers.id_at_telephoneNumber;
        TELEPHONE_NUMBER = aSN1ObjectIdentifier;
        ASN1ObjectIdentifier aSN1ObjectIdentifier2 = X509ObjectIdentifiers.id_at_name;
        NAME = aSN1ObjectIdentifier2;
        ASN1ObjectIdentifier aSN1ObjectIdentifier3 = PKCSObjectIdentifiers.pkcs_9_at_emailAddress;
        EmailAddress = aSN1ObjectIdentifier3;
        ASN1ObjectIdentifier aSN1ObjectIdentifier4 = PKCSObjectIdentifiers.pkcs_9_at_unstructuredName;
        UnstructuredName = aSN1ObjectIdentifier4;
        ASN1ObjectIdentifier aSN1ObjectIdentifier5 = PKCSObjectIdentifiers.pkcs_9_at_unstructuredAddress;
        UnstructuredAddress = aSN1ObjectIdentifier5;
        f7271E = aSN1ObjectIdentifier3;
        DERObjectIdentifier dERObjectIdentifier26 = new DERObjectIdentifier("0.9.2342.19200300.100.1.25");
        f7270DC = dERObjectIdentifier26;
        DERObjectIdentifier dERObjectIdentifier27 = new DERObjectIdentifier("0.9.2342.19200300.100.1.1");
        UID = dERObjectIdentifier27;
        Hashtable hashtable = new Hashtable();
        DefaultSymbols = hashtable;
        Hashtable hashtable2 = new Hashtable();
        RFC2253Symbols = hashtable2;
        Hashtable hashtable3 = new Hashtable();
        RFC1779Symbols = hashtable3;
        Hashtable hashtable4 = new Hashtable();
        DefaultLookUp = hashtable4;
        OIDLookUp = hashtable;
        SymbolLookUp = hashtable4;
        hashtable.put(dERObjectIdentifier, "C");
        hashtable.put(dERObjectIdentifier2, "O");
        hashtable.put(dERObjectIdentifier4, "T");
        hashtable.put(dERObjectIdentifier3, "OU");
        hashtable.put(dERObjectIdentifier5, "CN");
        hashtable.put(dERObjectIdentifier8, "L");
        hashtable.put(dERObjectIdentifier9, "ST");
        hashtable.put(dERObjectIdentifier6, "SERIALNUMBER");
        hashtable.put(aSN1ObjectIdentifier3, "E");
        hashtable.put(dERObjectIdentifier26, "DC");
        hashtable.put(dERObjectIdentifier27, "UID");
        hashtable.put(dERObjectIdentifier7, "STREET");
        hashtable.put(dERObjectIdentifier10, "SURNAME");
        hashtable.put(dERObjectIdentifier11, "GIVENNAME");
        hashtable.put(dERObjectIdentifier12, "INITIALS");
        hashtable.put(dERObjectIdentifier13, "GENERATION");
        hashtable.put(aSN1ObjectIdentifier5, "unstructuredAddress");
        hashtable.put(aSN1ObjectIdentifier4, "unstructuredName");
        hashtable.put(dERObjectIdentifier14, "UniqueIdentifier");
        hashtable.put(dERObjectIdentifier17, "DN");
        hashtable.put(dERObjectIdentifier18, "Pseudonym");
        hashtable.put(dERObjectIdentifier25, "PostalAddress");
        hashtable.put(dERObjectIdentifier24, "NameAtBirth");
        hashtable.put(dERObjectIdentifier22, "CountryOfCitizenship");
        hashtable.put(dERObjectIdentifier23, "CountryOfResidence");
        hashtable.put(dERObjectIdentifier21, "Gender");
        hashtable.put(dERObjectIdentifier20, "PlaceOfBirth");
        hashtable.put(dERObjectIdentifier19, "DateOfBirth");
        hashtable.put(dERObjectIdentifier16, "PostalCode");
        hashtable.put(dERObjectIdentifier15, "BusinessCategory");
        hashtable.put(aSN1ObjectIdentifier, "TelephoneNumber");
        hashtable.put(aSN1ObjectIdentifier2, "Name");
        hashtable2.put(dERObjectIdentifier, "C");
        hashtable2.put(dERObjectIdentifier2, "O");
        hashtable2.put(dERObjectIdentifier3, "OU");
        hashtable2.put(dERObjectIdentifier5, "CN");
        hashtable2.put(dERObjectIdentifier8, "L");
        hashtable2.put(dERObjectIdentifier9, "ST");
        hashtable2.put(dERObjectIdentifier7, "STREET");
        hashtable2.put(dERObjectIdentifier26, "DC");
        hashtable2.put(dERObjectIdentifier27, "UID");
        hashtable3.put(dERObjectIdentifier, "C");
        hashtable3.put(dERObjectIdentifier2, "O");
        hashtable3.put(dERObjectIdentifier3, "OU");
        hashtable3.put(dERObjectIdentifier5, "CN");
        hashtable3.put(dERObjectIdentifier8, "L");
        hashtable3.put(dERObjectIdentifier9, "ST");
        hashtable3.put(dERObjectIdentifier7, "STREET");
        hashtable4.put("c", dERObjectIdentifier);
        hashtable4.put("o", dERObjectIdentifier2);
        hashtable4.put("t", dERObjectIdentifier4);
        hashtable4.put("ou", dERObjectIdentifier3);
        hashtable4.put("cn", dERObjectIdentifier5);
        hashtable4.put("l", dERObjectIdentifier8);
        hashtable4.put("st", dERObjectIdentifier9);
        hashtable4.put("sn", dERObjectIdentifier6);
        hashtable4.put("serialnumber", dERObjectIdentifier6);
        hashtable4.put("street", dERObjectIdentifier7);
        hashtable4.put("emailaddress", aSN1ObjectIdentifier3);
        hashtable4.put("dc", dERObjectIdentifier26);
        hashtable4.put("e", aSN1ObjectIdentifier3);
        hashtable4.put("uid", dERObjectIdentifier27);
        hashtable4.put("surname", dERObjectIdentifier10);
        hashtable4.put("givenname", dERObjectIdentifier11);
        hashtable4.put("initials", dERObjectIdentifier12);
        hashtable4.put("generation", dERObjectIdentifier13);
        hashtable4.put("unstructuredaddress", aSN1ObjectIdentifier5);
        hashtable4.put("unstructuredname", aSN1ObjectIdentifier4);
        hashtable4.put("uniqueidentifier", dERObjectIdentifier14);
        hashtable4.put("dn", dERObjectIdentifier17);
        hashtable4.put("pseudonym", dERObjectIdentifier18);
        hashtable4.put("postaladdress", dERObjectIdentifier25);
        hashtable4.put("nameofbirth", dERObjectIdentifier24);
        hashtable4.put("countryofcitizenship", dERObjectIdentifier22);
        hashtable4.put("countryofresidence", dERObjectIdentifier23);
        hashtable4.put("gender", dERObjectIdentifier21);
        hashtable4.put("placeofbirth", dERObjectIdentifier20);
        hashtable4.put("dateofbirth", dERObjectIdentifier19);
        hashtable4.put("postalcode", dERObjectIdentifier16);
        hashtable4.put("businesscategory", dERObjectIdentifier15);
        hashtable4.put("telephonenumber", aSN1ObjectIdentifier);
        hashtable4.put("name", aSN1ObjectIdentifier2);
    }

    public X509Name() {
        this.converter = null;
        this.ordering = new Vector();
        this.values = new Vector();
        this.added = new Vector();
    }

    public X509Name(String str) {
        this(DefaultReverse, DefaultLookUp, str);
    }

    public X509Name(String str, X509NameEntryConverter x509NameEntryConverter) {
        this(DefaultReverse, DefaultLookUp, str, x509NameEntryConverter);
    }

    public X509Name(Hashtable hashtable) {
        this((Vector) null, hashtable);
    }

    public X509Name(Vector vector, Hashtable hashtable) {
        this(vector, hashtable, new X509DefaultEntryConverter());
    }

    public X509Name(Vector vector, Hashtable hashtable, X509NameEntryConverter x509NameEntryConverter) {
        int i;
        this.converter = null;
        this.ordering = new Vector();
        this.values = new Vector();
        this.added = new Vector();
        this.converter = x509NameEntryConverter;
        if (vector == null) {
            Enumeration keys = hashtable.keys();
            while (true) {
                i = 0;
                if (!keys.hasMoreElements()) {
                    break;
                }
                this.ordering.addElement(keys.nextElement());
                this.added.addElement(FALSE);
            }
        } else {
            int i2 = 0;
            while (true) {
                i = 0;
                if (i2 == vector.size()) {
                    break;
                }
                this.ordering.addElement(vector.elementAt(i2));
                this.added.addElement(FALSE);
                i2++;
            }
        }
        while (i != this.ordering.size()) {
            DERObjectIdentifier dERObjectIdentifier = (DERObjectIdentifier) this.ordering.elementAt(i);
            if (hashtable.get(dERObjectIdentifier) == null) {
                throw new IllegalArgumentException("No attribute for object id - " + dERObjectIdentifier.getId() + " - passed to distinguished name");
            }
            this.values.addElement(hashtable.get(dERObjectIdentifier));
            i++;
        }
    }

    public X509Name(Vector vector, Vector vector2) {
        this(vector, vector2, new X509DefaultEntryConverter());
    }

    public X509Name(Vector vector, Vector vector2, X509NameEntryConverter x509NameEntryConverter) {
        this.converter = null;
        this.ordering = new Vector();
        this.values = new Vector();
        this.added = new Vector();
        this.converter = x509NameEntryConverter;
        if (vector.size() == vector2.size()) {
            for (int i = 0; i < vector.size(); i++) {
                this.ordering.addElement(vector.elementAt(i));
                this.values.addElement(vector2.elementAt(i));
                this.added.addElement(FALSE);
            }
            return;
        }
        throw new IllegalArgumentException("oids vector must be same length as values.");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0125  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public X509Name(org.bouncycastle.asn1.ASN1Sequence r5) {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.X509Name.<init>(org.bouncycastle.asn1.ASN1Sequence):void");
    }

    public X509Name(boolean z, String str) {
        this(z, DefaultLookUp, str);
    }

    public X509Name(boolean z, String str, X509NameEntryConverter x509NameEntryConverter) {
        this(z, DefaultLookUp, str, x509NameEntryConverter);
    }

    public X509Name(boolean z, Hashtable hashtable, String str) {
        this(z, hashtable, str, new X509DefaultEntryConverter());
    }

    public X509Name(boolean z, Hashtable hashtable, String str, X509NameEntryConverter x509NameEntryConverter) {
        this.converter = null;
        this.ordering = new Vector();
        this.values = new Vector();
        this.added = new Vector();
        this.converter = x509NameEntryConverter;
        X509NameTokenizer x509NameTokenizer = new X509NameTokenizer(str);
        while (x509NameTokenizer.hasMoreTokens()) {
            String nextToken = x509NameTokenizer.nextToken();
            int indexOf = nextToken.indexOf(61);
            if (indexOf == -1) {
                throw new IllegalArgumentException("badly formated directory string");
            }
            String substring = nextToken.substring(0, indexOf);
            String substring2 = nextToken.substring(indexOf + 1);
            DERObjectIdentifier decodeOID = decodeOID(substring, hashtable);
            if (substring2.indexOf(43) > 0) {
                X509NameTokenizer x509NameTokenizer2 = new X509NameTokenizer(substring2, '+');
                String nextToken2 = x509NameTokenizer2.nextToken();
                this.ordering.addElement(decodeOID);
                this.values.addElement(nextToken2);
                Vector vector = this.added;
                Boolean bool = FALSE;
                while (true) {
                    vector.addElement(bool);
                    if (x509NameTokenizer2.hasMoreTokens()) {
                        String nextToken3 = x509NameTokenizer2.nextToken();
                        int indexOf2 = nextToken3.indexOf(61);
                        String substring3 = nextToken3.substring(0, indexOf2);
                        String substring4 = nextToken3.substring(indexOf2 + 1);
                        this.ordering.addElement(decodeOID(substring3, hashtable));
                        this.values.addElement(substring4);
                        vector = this.added;
                        bool = TRUE;
                    }
                }
            } else {
                this.ordering.addElement(decodeOID);
                this.values.addElement(substring2);
                this.added.addElement(FALSE);
            }
        }
        if (z) {
            Vector vector2 = new Vector();
            Vector vector3 = new Vector();
            Vector vector4 = new Vector();
            int i = 1;
            for (int i2 = 0; i2 < this.ordering.size(); i2++) {
                if (((Boolean) this.added.elementAt(i2)).booleanValue()) {
                    vector2.insertElementAt(this.ordering.elementAt(i2), i);
                    vector3.insertElementAt(this.values.elementAt(i2), i);
                    vector4.insertElementAt(this.added.elementAt(i2), i);
                    i++;
                } else {
                    vector2.insertElementAt(this.ordering.elementAt(i2), 0);
                    vector3.insertElementAt(this.values.elementAt(i2), 0);
                    vector4.insertElementAt(this.added.elementAt(i2), 0);
                    i = 1;
                }
            }
            this.ordering = vector2;
            this.values = vector3;
            this.added = vector4;
        }
    }

    private void appendValue(StringBuffer stringBuffer, Hashtable hashtable, DERObjectIdentifier dERObjectIdentifier, String str) {
        int i;
        int i2;
        String str2 = (String) hashtable.get(dERObjectIdentifier);
        if (str2 == null) {
            str2 = dERObjectIdentifier.getId();
        }
        stringBuffer.append(str2);
        stringBuffer.append('=');
        int length = stringBuffer.length();
        stringBuffer.append(str);
        int length2 = stringBuffer.length();
        int i3 = length2;
        int i4 = length;
        if (str.length() >= 2) {
            i3 = length2;
            i4 = length;
            if (str.charAt(0) == '\\') {
                i3 = length2;
                i4 = length;
                if (str.charAt(1) == '#') {
                    i4 = length + 2;
                    i3 = length2;
                }
            }
        }
        while (i4 != i3) {
            if (stringBuffer.charAt(i4) != ',' && stringBuffer.charAt(i4) != '\"' && stringBuffer.charAt(i4) != '\\' && stringBuffer.charAt(i4) != '+' && stringBuffer.charAt(i4) != '=' && stringBuffer.charAt(i4) != '<' && stringBuffer.charAt(i4) != '>') {
                i2 = i3;
                i = i4;
                if (stringBuffer.charAt(i4) != ';') {
                    i4 = i + 1;
                    i3 = i2;
                }
            }
            stringBuffer.insert(i4, "\\");
            i = i4 + 1;
            i2 = i3 + 1;
            i4 = i + 1;
            i3 = i2;
        }
    }

    private String bytesToString(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length];
        for (int i = 0; i != length; i++) {
            cArr[i] = (char) (bArr[i] & 255);
        }
        return new String(cArr);
    }

    private String canonicalize(String str) {
        String lowerCase = Strings.toLowerCase(str.trim());
        String str2 = lowerCase;
        if (lowerCase.length() > 0) {
            str2 = lowerCase;
            if (lowerCase.charAt(0) == '#') {
                ASN1Object decodeObject = decodeObject(lowerCase);
                str2 = lowerCase;
                if (decodeObject instanceof DERString) {
                    str2 = Strings.toLowerCase(((DERString) decodeObject).getString().trim());
                }
            }
        }
        return str2;
    }

    private DERObjectIdentifier decodeOID(String str, Hashtable hashtable) {
        if (Strings.toUpperCase(str).startsWith("OID.")) {
            return new DERObjectIdentifier(str.substring(4));
        }
        if (str.charAt(0) >= '0' && str.charAt(0) <= '9') {
            return new DERObjectIdentifier(str);
        }
        DERObjectIdentifier dERObjectIdentifier = (DERObjectIdentifier) hashtable.get(Strings.toLowerCase(str));
        if (dERObjectIdentifier != null) {
            return dERObjectIdentifier;
        }
        throw new IllegalArgumentException("Unknown object id - " + str + " - passed to distinguished name");
    }

    private ASN1Object decodeObject(String str) {
        try {
            return ASN1Object.fromByteArray(Hex.decode(str.substring(1)));
        } catch (IOException e) {
            throw new IllegalStateException("unknown encoding in name: " + e);
        }
    }

    private boolean equivalentStrings(String str, String str2) {
        String canonicalize = canonicalize(str);
        String canonicalize2 = canonicalize(str2);
        return canonicalize.equals(canonicalize2) || stripInternalSpaces(canonicalize).equals(stripInternalSpaces(canonicalize2));
    }

    public static X509Name getInstance(Object obj) {
        if (obj == null || (obj instanceof X509Name)) {
            return (X509Name) obj;
        }
        if (obj instanceof X500Name) {
            return new X509Name(ASN1Sequence.getInstance(((X500Name) obj).getDERObject()));
        }
        if (obj == null) {
            return null;
        }
        return new X509Name(ASN1Sequence.getInstance(obj));
    }

    public static X509Name getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z));
    }

    private String stripInternalSpaces(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        if (str.length() != 0) {
            char charAt = str.charAt(0);
            stringBuffer.append(charAt);
            int i = 1;
            while (true) {
                char c = charAt;
                if (i >= str.length()) {
                    break;
                }
                charAt = str.charAt(i);
                if (c != ' ' || charAt != ' ') {
                    stringBuffer.append(charAt);
                }
                i++;
            }
        }
        return stringBuffer.toString();
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public boolean equals(Object obj) {
        int i;
        int i2;
        boolean z;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof X509Name) && !(obj instanceof ASN1Sequence)) {
            return false;
        }
        if (getDERObject().equals(((DEREncodable) obj).getDERObject())) {
            return true;
        }
        try {
            X509Name x509Name = getInstance(obj);
            int size = this.ordering.size();
            if (size != x509Name.ordering.size()) {
                return false;
            }
            boolean[] zArr = new boolean[size];
            int i3 = -1;
            if (this.ordering.elementAt(0).equals(x509Name.ordering.elementAt(0))) {
                i3 = size;
                i2 = 0;
                i = 1;
            } else {
                i2 = size - 1;
                i = -1;
            }
            while (i2 != i3) {
                DERObjectIdentifier dERObjectIdentifier = (DERObjectIdentifier) this.ordering.elementAt(i2);
                String str = (String) this.values.elementAt(i2);
                int i4 = 0;
                while (true) {
                    if (i4 >= size) {
                        z = false;
                        break;
                    } else if (!zArr[i4] && dERObjectIdentifier.equals((DERObjectIdentifier) x509Name.ordering.elementAt(i4)) && equivalentStrings(str, (String) x509Name.values.elementAt(i4))) {
                        zArr[i4] = true;
                        z = true;
                        break;
                    } else {
                        i4++;
                    }
                }
                if (!z) {
                    return false;
                }
                i2 += i;
            }
            return true;
        } catch (IllegalArgumentException e) {
            return false;
        }
    }

    public boolean equals(Object obj, boolean z) {
        if (!z) {
            return equals(obj);
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof X509Name) && !(obj instanceof ASN1Sequence)) {
            return false;
        }
        if (getDERObject().equals(((DEREncodable) obj).getDERObject())) {
            return true;
        }
        try {
            X509Name x509Name = getInstance(obj);
            int size = this.ordering.size();
            if (size != x509Name.ordering.size()) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                if (!((DERObjectIdentifier) this.ordering.elementAt(i)).equals((DERObjectIdentifier) x509Name.ordering.elementAt(i)) || !equivalentStrings((String) this.values.elementAt(i), (String) x509Name.values.elementAt(i))) {
                    return false;
                }
            }
            return true;
        } catch (IllegalArgumentException e) {
            return false;
        }
    }

    public Vector getOIDs() {
        Vector vector = new Vector();
        for (int i = 0; i != this.ordering.size(); i++) {
            vector.addElement(this.ordering.elementAt(i));
        }
        return vector;
    }

    public Vector getValues() {
        Vector vector = new Vector();
        for (int i = 0; i != this.values.size(); i++) {
            vector.addElement(this.values.elementAt(i));
        }
        return vector;
    }

    public Vector getValues(DERObjectIdentifier dERObjectIdentifier) {
        Vector vector = new Vector();
        for (int i = 0; i != this.values.size(); i++) {
            if (this.ordering.elementAt(i).equals(dERObjectIdentifier)) {
                String str = (String) this.values.elementAt(i);
                String str2 = str;
                if (str.length() > 2) {
                    str2 = str;
                    if (str.charAt(0) == '\\') {
                        str2 = str;
                        if (str.charAt(1) == '#') {
                            str2 = str.substring(1);
                        }
                    }
                }
                vector.addElement(str2);
            }
        }
        return vector;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public int hashCode() {
        if (this.isHashCodeCalculated) {
            return this.hashCodeValue;
        }
        this.isHashCodeCalculated = true;
        for (int i = 0; i != this.ordering.size(); i++) {
            String stripInternalSpaces = stripInternalSpaces(canonicalize((String) this.values.elementAt(i)));
            int hashCode = this.hashCodeValue ^ this.ordering.elementAt(i).hashCode();
            this.hashCodeValue = hashCode;
            this.hashCodeValue = stripInternalSpaces.hashCode() ^ hashCode;
        }
        return this.hashCodeValue;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        DERSequence dERSequence;
        if (this.seq == null) {
            ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
            ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
            DERObjectIdentifier dERObjectIdentifier = null;
            int i = 0;
            while (i != this.ordering.size()) {
                ASN1EncodableVector aSN1EncodableVector3 = new ASN1EncodableVector();
                DERObjectIdentifier dERObjectIdentifier2 = (DERObjectIdentifier) this.ordering.elementAt(i);
                aSN1EncodableVector3.add(dERObjectIdentifier2);
                aSN1EncodableVector3.add(this.converter.getConvertedValue(dERObjectIdentifier2, (String) this.values.elementAt(i)));
                if (dERObjectIdentifier == null || ((Boolean) this.added.elementAt(i)).booleanValue()) {
                    dERSequence = new DERSequence(aSN1EncodableVector3);
                } else {
                    aSN1EncodableVector.add(new DERSet(aSN1EncodableVector2));
                    aSN1EncodableVector2 = new ASN1EncodableVector();
                    dERSequence = new DERSequence(aSN1EncodableVector3);
                }
                aSN1EncodableVector2.add(dERSequence);
                i++;
                dERObjectIdentifier = dERObjectIdentifier2;
            }
            aSN1EncodableVector.add(new DERSet(aSN1EncodableVector2));
            this.seq = new DERSequence(aSN1EncodableVector);
        }
        return this.seq;
    }

    public String toString() {
        return toString(DefaultReverse, DefaultSymbols);
    }

    public String toString(boolean z, Hashtable hashtable) {
        StringBuffer stringBuffer = new StringBuffer();
        Vector vector = new Vector();
        StringBuffer stringBuffer2 = null;
        for (int i = 0; i < this.ordering.size(); i++) {
            if (((Boolean) this.added.elementAt(i)).booleanValue()) {
                stringBuffer2.append('+');
                appendValue(stringBuffer2, hashtable, (DERObjectIdentifier) this.ordering.elementAt(i), (String) this.values.elementAt(i));
            } else {
                stringBuffer2 = new StringBuffer();
                appendValue(stringBuffer2, hashtable, (DERObjectIdentifier) this.ordering.elementAt(i), (String) this.values.elementAt(i));
                vector.addElement(stringBuffer2);
            }
        }
        boolean z2 = true;
        if (z) {
            for (int size = vector.size() - 1; size >= 0; size--) {
                if (z2) {
                    z2 = false;
                } else {
                    stringBuffer.append(',');
                }
                stringBuffer.append(vector.elementAt(size).toString());
            }
        } else {
            boolean z3 = true;
            for (int i2 = 0; i2 < vector.size(); i2++) {
                if (z3) {
                    z3 = false;
                } else {
                    stringBuffer.append(',');
                }
                stringBuffer.append(vector.elementAt(i2).toString());
            }
        }
        return stringBuffer.toString();
    }
}
