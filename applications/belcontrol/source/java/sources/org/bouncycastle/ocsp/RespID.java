package org.bouncycastle.ocsp;

import java.security.MessageDigest;
import java.security.PublicKey;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.ocsp.ResponderID;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/ocsp/RespID.class */
public class RespID {

    /* renamed from: id */
    public ResponderID f7679id;

    public RespID(PublicKey publicKey) {
        try {
            MessageDigest createDigestInstance = OCSPUtil.createDigestInstance("SHA1", null);
            createDigestInstance.update(SubjectPublicKeyInfo.getInstance(new ASN1InputStream(publicKey.getEncoded()).readObject()).getPublicKeyData().getBytes());
            this.f7679id = new ResponderID(new DEROctetString(createDigestInstance.digest()));
        } catch (Exception e) {
            throw new OCSPException("problem creating ID: " + e, e);
        }
    }

    public RespID(X500Principal x500Principal) {
        this.f7679id = new ResponderID(X500Name.getInstance(x500Principal.getEncoded()));
    }

    public RespID(ResponderID responderID) {
        this.f7679id = responderID;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof RespID)) {
            return false;
        }
        return this.f7679id.equals(((RespID) obj).f7679id);
    }

    public int hashCode() {
        return this.f7679id.hashCode();
    }

    public ResponderID toASN1Object() {
        return this.f7679id;
    }
}
