package org.bouncycastle.ocsp;

import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ocsp.BasicOCSPResponse;
import org.bouncycastle.asn1.ocsp.OCSPObjectIdentifiers;
import org.bouncycastle.asn1.ocsp.OCSPResponse;
import org.bouncycastle.asn1.ocsp.ResponseBytes;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/ocsp/OCSPResp.class */
public class OCSPResp {
    private OCSPResponse resp;

    public OCSPResp(InputStream inputStream) {
        this(new ASN1InputStream(inputStream));
    }

    private OCSPResp(ASN1InputStream aSN1InputStream) {
        try {
            this.resp = OCSPResponse.getInstance(aSN1InputStream.readObject());
        } catch (ClassCastException e) {
            throw new IOException("malformed response: " + e.getMessage());
        } catch (IllegalArgumentException e2) {
            throw new IOException("malformed response: " + e2.getMessage());
        }
    }

    public OCSPResp(OCSPResponse oCSPResponse) {
        this.resp = oCSPResponse;
    }

    public OCSPResp(byte[] bArr) {
        this(new ASN1InputStream(bArr));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof OCSPResp) {
            return this.resp.equals(((OCSPResp) obj).resp);
        }
        return false;
    }

    public byte[] getEncoded() {
        return this.resp.getEncoded();
    }

    public Object getResponseObject() {
        ResponseBytes responseBytes = this.resp.getResponseBytes();
        if (responseBytes == null) {
            return null;
        }
        if (!responseBytes.getResponseType().equals(OCSPObjectIdentifiers.id_pkix_ocsp_basic)) {
            return responseBytes.getResponse();
        }
        try {
            return new BasicOCSPResp(BasicOCSPResponse.getInstance(ASN1Object.fromByteArray(responseBytes.getResponse().getOctets())));
        } catch (Exception e) {
            throw new OCSPException("problem decoding object: " + e, e);
        }
    }

    public int getStatus() {
        return this.resp.getResponseStatus().getValue().intValue();
    }

    public int hashCode() {
        return this.resp.hashCode();
    }
}
