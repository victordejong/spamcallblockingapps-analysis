package org.bouncycastle.jce.provider;

import com.android.internal.telephony.PhoneConstants;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.cert.CRL;
import java.security.cert.CRLSelector;
import java.security.cert.CertSelector;
import java.security.cert.CertStoreException;
import java.security.cert.CertStoreParameters;
import java.security.cert.CertStoreSpi;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.X509CRLSelector;
import java.security.cert.X509CertSelector;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Properties;
import java.util.Set;
import javax.naming.NamingEnumeration;
import javax.naming.directory.Attribute;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;
import javax.naming.directory.SearchControls;
import javax.naming.directory.SearchResult;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.x509.CertificatePair;
import org.bouncycastle.jce.X509LDAPCertStoreParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/X509LDAPCertStoreSpi.class */
public class X509LDAPCertStoreSpi extends CertStoreSpi {
    private static String LDAP_PROVIDER = "com.sun.jndi.ldap.LdapCtxFactory";
    private static String REFERRALS_IGNORE = "ignore";
    private static final String SEARCH_SECURITY_LEVEL = "none";
    private static final String URL_CONTEXT_PREFIX = "com.sun.jndi.url";
    private X509LDAPCertStoreParameters params;

    public X509LDAPCertStoreSpi(CertStoreParameters certStoreParameters) {
        super(certStoreParameters);
        if (certStoreParameters instanceof X509LDAPCertStoreParameters) {
            this.params = (X509LDAPCertStoreParameters) certStoreParameters;
            return;
        }
        throw new InvalidAlgorithmParameterException(X509LDAPCertStoreSpi.class.getName() + ": parameter must be a " + X509LDAPCertStoreParameters.class.getName() + " object\n" + certStoreParameters.toString());
    }

    private Set certSubjectSerialSearch(X509CertSelector x509CertSelector, String[] strArr, String str, String str2) {
        String str3;
        String str4;
        Set search;
        HashSet hashSet = new HashSet();
        try {
            if (x509CertSelector.getSubjectAsBytes() == null && x509CertSelector.getSubjectAsString() == null && x509CertSelector.getCertificate() == null) {
                search = search(str, PhoneConstants.APN_TYPE_ALL, strArr);
                hashSet.addAll(search);
                return hashSet;
            }
            if (x509CertSelector.getCertificate() != null) {
                str3 = x509CertSelector.getCertificate().getSubjectX500Principal().getName("RFC1779");
                str4 = x509CertSelector.getCertificate().getSerialNumber().toString();
            } else {
                str3 = x509CertSelector.getSubjectAsBytes() != null ? new X500Principal(x509CertSelector.getSubjectAsBytes()).getName("RFC1779") : x509CertSelector.getSubjectAsString();
                str4 = null;
            }
            hashSet.addAll(search(str, PhoneConstants.APN_TYPE_ALL + parseDN(str3, str2) + PhoneConstants.APN_TYPE_ALL, strArr));
            if (str4 != null && this.params.getSearchForSerialNumberIn() != null) {
                search = search(this.params.getSearchForSerialNumberIn(), PhoneConstants.APN_TYPE_ALL + str4 + PhoneConstants.APN_TYPE_ALL, strArr);
                hashSet.addAll(search);
            }
            return hashSet;
        } catch (IOException e) {
            throw new CertStoreException("exception processing selector: " + e);
        }
    }

    private DirContext connectLDAP() {
        Properties properties = new Properties();
        properties.setProperty("java.naming.factory.initial", LDAP_PROVIDER);
        properties.setProperty("java.naming.batchsize", "0");
        properties.setProperty("java.naming.provider.url", this.params.getLdapURL());
        properties.setProperty("java.naming.factory.url.pkgs", URL_CONTEXT_PREFIX);
        properties.setProperty("java.naming.referral", REFERRALS_IGNORE);
        properties.setProperty("java.naming.security.authentication", SEARCH_SECURITY_LEVEL);
        return new InitialDirContext(properties);
    }

    private Set getCACertificates(X509CertSelector x509CertSelector) {
        String[] strArr = {this.params.getCACertificateAttribute()};
        Set certSubjectSerialSearch = certSubjectSerialSearch(x509CertSelector, strArr, this.params.getLdapCACertificateAttributeName(), this.params.getCACertificateSubjectAttributeName());
        if (certSubjectSerialSearch.isEmpty()) {
            certSubjectSerialSearch.addAll(search(null, PhoneConstants.APN_TYPE_ALL, strArr));
        }
        return certSubjectSerialSearch;
    }

    private Set getCrossCertificates(X509CertSelector x509CertSelector) {
        String[] strArr = {this.params.getCrossCertificateAttribute()};
        Set certSubjectSerialSearch = certSubjectSerialSearch(x509CertSelector, strArr, this.params.getLdapCrossCertificateAttributeName(), this.params.getCrossCertificateSubjectAttributeName());
        if (certSubjectSerialSearch.isEmpty()) {
            certSubjectSerialSearch.addAll(search(null, PhoneConstants.APN_TYPE_ALL, strArr));
        }
        return certSubjectSerialSearch;
    }

    private Set getEndCertificates(X509CertSelector x509CertSelector) {
        return certSubjectSerialSearch(x509CertSelector, new String[]{this.params.getUserCertificateAttribute()}, this.params.getLdapUserCertificateAttributeName(), this.params.getUserCertificateSubjectAttributeName());
    }

    private String parseDN(String str, String str2) {
        String substring = str.substring(str.toLowerCase().indexOf(str2.toLowerCase()) + str2.length());
        int indexOf = substring.indexOf(44);
        int i = indexOf;
        if (indexOf == -1) {
            i = substring.length();
        }
        while (substring.charAt(i - 1) == '\\') {
            int indexOf2 = substring.indexOf(44, i + 1);
            i = indexOf2;
            if (indexOf2 == -1) {
                i = substring.length();
            }
        }
        String substring2 = substring.substring(0, i);
        String substring3 = substring2.substring(substring2.indexOf(61) + 1);
        String str3 = substring3;
        if (substring3.charAt(0) == ' ') {
            str3 = substring3.substring(1);
        }
        String str4 = str3;
        if (str3.startsWith("\"")) {
            str4 = str3.substring(1);
        }
        String str5 = str4;
        if (str4.endsWith("\"")) {
            str5 = str4.substring(0, str4.length() - 1);
        }
        return str5;
    }

    private Set search(String str, String str2, String[] strArr) {
        String str3 = str + "=" + str2;
        DirContext dirContext = null;
        if (str == null) {
            str3 = null;
        }
        HashSet hashSet = new HashSet();
        DirContext dirContext2 = null;
        try {
            try {
                DirContext connectLDAP = connectLDAP();
                SearchControls searchControls = new SearchControls();
                searchControls.setSearchScope(2);
                searchControls.setCountLimit(0L);
                int i = 0;
                while (true) {
                    dirContext2 = connectLDAP;
                    dirContext = connectLDAP;
                    if (i >= strArr.length) {
                        break;
                    }
                    String[] strArr2 = new String[1];
                    strArr2[0] = strArr[i];
                    searchControls.setReturningAttributes(strArr2);
                    StringBuilder sb = new StringBuilder();
                    sb.append("(&(");
                    sb.append(str3);
                    sb.append(")(");
                    sb.append(strArr2[0]);
                    sb.append("=*))");
                    String sb2 = sb.toString();
                    if (str3 == null) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("(");
                        sb3.append(strArr2[0]);
                        sb3.append("=*)");
                        sb2 = sb3.toString();
                    }
                    NamingEnumeration search = connectLDAP.search(this.params.getBaseDN(), sb2, searchControls);
                    while (search.hasMoreElements()) {
                        NamingEnumeration all = ((Attribute) ((SearchResult) search.next()).getAttributes().getAll().next()).getAll();
                        while (all.hasMore()) {
                            hashSet.add(all.next());
                        }
                    }
                    i++;
                }
                if (connectLDAP != null) {
                    try {
                        connectLDAP.close();
                    } catch (Exception e) {
                    }
                }
                return hashSet;
            } catch (Exception e2) {
                DirContext dirContext3 = dirContext;
                DirContext dirContext4 = dirContext;
                StringBuilder sb4 = new StringBuilder();
                DirContext dirContext5 = dirContext;
                sb4.append("Error getting results from LDAP directory ");
                DirContext dirContext6 = dirContext;
                sb4.append(e2);
                DirContext dirContext7 = dirContext;
                CertStoreException certStoreException = new CertStoreException(sb4.toString());
                DirContext dirContext8 = dirContext;
                throw certStoreException;
            }
        } catch (Throwable th) {
            if (dirContext2 != null) {
                try {
                    dirContext2.close();
                } catch (Exception e3) {
                }
            }
            throw th;
        }
    }

    @Override // java.security.cert.CertStoreSpi
    public Collection engineGetCRLs(CRLSelector cRLSelector) {
        String str;
        String str2;
        String[] strArr = {this.params.getCertificateRevocationListAttribute()};
        if (cRLSelector instanceof X509CRLSelector) {
            X509CRLSelector x509CRLSelector = (X509CRLSelector) cRLSelector;
            HashSet hashSet = new HashSet();
            String ldapCertificateRevocationListAttributeName = this.params.getLdapCertificateRevocationListAttributeName();
            HashSet<byte[]> hashSet2 = new HashSet();
            if (x509CRLSelector.getIssuerNames() != null) {
                for (Object obj : x509CRLSelector.getIssuerNames()) {
                    if (obj instanceof String) {
                        str = this.params.getCertificateRevocationListIssuerAttributeName();
                        str2 = (String) obj;
                    } else {
                        str = this.params.getCertificateRevocationListIssuerAttributeName();
                        str2 = new X500Principal((byte[]) obj).getName("RFC1779");
                    }
                    String parseDN = parseDN(str2, str);
                    hashSet2.addAll(search(ldapCertificateRevocationListAttributeName, PhoneConstants.APN_TYPE_ALL + parseDN + PhoneConstants.APN_TYPE_ALL, strArr));
                }
            } else {
                hashSet2.addAll(search(ldapCertificateRevocationListAttributeName, PhoneConstants.APN_TYPE_ALL, strArr));
            }
            hashSet2.addAll(search(null, PhoneConstants.APN_TYPE_ALL, strArr));
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509", BouncyCastleProvider.PROVIDER_NAME);
                for (byte[] bArr : hashSet2) {
                    CRL generateCRL = certificateFactory.generateCRL(new ByteArrayInputStream(bArr));
                    if (x509CRLSelector.match(generateCRL)) {
                        hashSet.add(generateCRL);
                    }
                }
                return hashSet;
            } catch (Exception e) {
                throw new CertStoreException("CRL cannot be constructed from LDAP result " + e);
            }
        }
        throw new CertStoreException("selector is not a X509CRLSelector");
    }

    @Override // java.security.cert.CertStoreSpi
    public Collection engineGetCertificates(CertSelector certSelector) {
        if (certSelector instanceof X509CertSelector) {
            X509CertSelector x509CertSelector = (X509CertSelector) certSelector;
            HashSet hashSet = new HashSet();
            Set<byte[]> endCertificates = getEndCertificates(x509CertSelector);
            endCertificates.addAll(getCACertificates(x509CertSelector));
            endCertificates.addAll(getCrossCertificates(x509CertSelector));
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509", BouncyCastleProvider.PROVIDER_NAME);
                for (byte[] bArr : endCertificates) {
                    if (bArr != null && bArr.length != 0) {
                        ArrayList<byte[]> arrayList = new ArrayList();
                        arrayList.add(bArr);
                        try {
                            CertificatePair certificatePair = CertificatePair.getInstance(new ASN1InputStream(bArr).readObject());
                            arrayList.clear();
                            if (certificatePair.getForward() != null) {
                                arrayList.add(certificatePair.getForward().getEncoded());
                            }
                            if (certificatePair.getReverse() != null) {
                                arrayList.add(certificatePair.getReverse().getEncoded());
                            }
                        } catch (IOException | IllegalArgumentException e) {
                        }
                        for (byte[] bArr2 : arrayList) {
                            try {
                                Certificate generateCertificate = certificateFactory.generateCertificate(new ByteArrayInputStream(bArr2));
                                if (x509CertSelector.match(generateCertificate)) {
                                    hashSet.add(generateCertificate);
                                }
                            } catch (Exception e2) {
                            }
                        }
                    }
                }
                return hashSet;
            } catch (Exception e3) {
                throw new CertStoreException("certificate cannot be constructed from LDAP result: " + e3);
            }
        }
        throw new CertStoreException("selector is not a X509CertSelector");
    }
}
