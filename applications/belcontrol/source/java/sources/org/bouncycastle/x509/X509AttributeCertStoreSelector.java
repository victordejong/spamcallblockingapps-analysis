package org.bouncycastle.x509;

import java.io.IOException;
import java.math.BigInteger;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.Target;
import org.bouncycastle.asn1.x509.TargetInformation;
import org.bouncycastle.asn1.x509.Targets;
import org.bouncycastle.asn1.x509.X509Extensions;
import org.bouncycastle.util.Selector;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/x509/X509AttributeCertStoreSelector.class */
public class X509AttributeCertStoreSelector implements Selector {
    private X509AttributeCertificate attributeCert;
    private Date attributeCertificateValid;
    private AttributeCertificateHolder holder;
    private AttributeCertificateIssuer issuer;
    private BigInteger serialNumber;
    private Collection targetNames = new HashSet();
    private Collection targetGroups = new HashSet();

    private Set extractGeneralNames(Collection collection) {
        if (collection == null || collection.isEmpty()) {
            return new HashSet();
        }
        HashSet hashSet = new HashSet();
        for (GeneralName generalName : collection) {
            if (!(generalName instanceof GeneralName)) {
                generalName = GeneralName.getInstance(ASN1Object.fromByteArray((byte[]) generalName));
            }
            hashSet.add(generalName);
        }
        return hashSet;
    }

    public void addTargetGroup(GeneralName generalName) {
        this.targetGroups.add(generalName);
    }

    public void addTargetGroup(byte[] bArr) {
        addTargetGroup(GeneralName.getInstance(ASN1Object.fromByteArray(bArr)));
    }

    public void addTargetName(GeneralName generalName) {
        this.targetNames.add(generalName);
    }

    public void addTargetName(byte[] bArr) {
        addTargetName(GeneralName.getInstance(ASN1Object.fromByteArray(bArr)));
    }

    @Override // org.bouncycastle.util.Selector
    public Object clone() {
        X509AttributeCertStoreSelector x509AttributeCertStoreSelector = new X509AttributeCertStoreSelector();
        x509AttributeCertStoreSelector.attributeCert = this.attributeCert;
        x509AttributeCertStoreSelector.attributeCertificateValid = getAttributeCertificateValid();
        x509AttributeCertStoreSelector.holder = this.holder;
        x509AttributeCertStoreSelector.issuer = this.issuer;
        x509AttributeCertStoreSelector.serialNumber = this.serialNumber;
        x509AttributeCertStoreSelector.targetGroups = getTargetGroups();
        x509AttributeCertStoreSelector.targetNames = getTargetNames();
        return x509AttributeCertStoreSelector;
    }

    public X509AttributeCertificate getAttributeCert() {
        return this.attributeCert;
    }

    public Date getAttributeCertificateValid() {
        if (this.attributeCertificateValid != null) {
            return new Date(this.attributeCertificateValid.getTime());
        }
        return null;
    }

    public AttributeCertificateHolder getHolder() {
        return this.holder;
    }

    public AttributeCertificateIssuer getIssuer() {
        return this.issuer;
    }

    public BigInteger getSerialNumber() {
        return this.serialNumber;
    }

    public Collection getTargetGroups() {
        return Collections.unmodifiableCollection(this.targetGroups);
    }

    public Collection getTargetNames() {
        return Collections.unmodifiableCollection(this.targetNames);
    }

    @Override // org.bouncycastle.util.Selector
    public boolean match(Object obj) {
        byte[] extensionValue;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        if (!(obj instanceof X509AttributeCertificate)) {
            return false;
        }
        X509AttributeCertificate x509AttributeCertificate = (X509AttributeCertificate) obj;
        X509AttributeCertificate x509AttributeCertificate2 = this.attributeCert;
        if (x509AttributeCertificate2 != null && !x509AttributeCertificate2.equals(x509AttributeCertificate)) {
            return false;
        }
        if (this.serialNumber != null && !x509AttributeCertificate.getSerialNumber().equals(this.serialNumber)) {
            return false;
        }
        if (this.holder != null && !x509AttributeCertificate.getHolder().equals(this.holder)) {
            return false;
        }
        if (this.issuer != null && !x509AttributeCertificate.getIssuer().equals(this.issuer)) {
            return false;
        }
        Date date = this.attributeCertificateValid;
        if (date != null) {
            try {
                x509AttributeCertificate.checkValidity(date);
            } catch (CertificateExpiredException | CertificateNotYetValidException e) {
                return false;
            }
        }
        if ((this.targetNames.isEmpty() && this.targetGroups.isEmpty()) || (extensionValue = x509AttributeCertificate.getExtensionValue(X509Extensions.TargetInformation.getId())) == null) {
            return true;
        }
        try {
            Targets[] targetsObjects = TargetInformation.getInstance(new ASN1InputStream(((DEROctetString) ASN1Object.fromByteArray(extensionValue)).getOctets()).readObject()).getTargetsObjects();
            if (!this.targetNames.isEmpty()) {
                int i = 0;
                boolean z5 = false;
                while (true) {
                    z3 = z5;
                    if (i >= targetsObjects.length) {
                        break;
                    }
                    Target[] targets = targetsObjects[i].getTargets();
                    int i2 = 0;
                    while (true) {
                        z4 = z3;
                        if (i2 >= targets.length) {
                            break;
                        } else if (this.targetNames.contains(GeneralName.getInstance(targets[i2].getTargetName()))) {
                            z4 = true;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    i++;
                    z5 = z4;
                }
                if (!z3) {
                    return false;
                }
            }
            if (this.targetGroups.isEmpty()) {
                return true;
            }
            int i3 = 0;
            boolean z6 = false;
            while (true) {
                z = z6;
                if (i3 >= targetsObjects.length) {
                    break;
                }
                Target[] targets2 = targetsObjects[i3].getTargets();
                int i4 = 0;
                while (true) {
                    z2 = z;
                    if (i4 >= targets2.length) {
                        break;
                    } else if (this.targetGroups.contains(GeneralName.getInstance(targets2[i4].getTargetGroup()))) {
                        z2 = true;
                        break;
                    } else {
                        i4++;
                    }
                }
                i3++;
                z6 = z2;
            }
            return z;
        } catch (IOException | IllegalArgumentException e2) {
            return false;
        }
    }

    public void setAttributeCert(X509AttributeCertificate x509AttributeCertificate) {
        this.attributeCert = x509AttributeCertificate;
    }

    public void setAttributeCertificateValid(Date date) {
        if (date != null) {
            this.attributeCertificateValid = new Date(date.getTime());
        } else {
            this.attributeCertificateValid = null;
        }
    }

    public void setHolder(AttributeCertificateHolder attributeCertificateHolder) {
        this.holder = attributeCertificateHolder;
    }

    public void setIssuer(AttributeCertificateIssuer attributeCertificateIssuer) {
        this.issuer = attributeCertificateIssuer;
    }

    public void setSerialNumber(BigInteger bigInteger) {
        this.serialNumber = bigInteger;
    }

    public void setTargetGroups(Collection collection) {
        this.targetGroups = extractGeneralNames(collection);
    }

    public void setTargetNames(Collection collection) {
        this.targetNames = extractGeneralNames(collection);
    }
}
