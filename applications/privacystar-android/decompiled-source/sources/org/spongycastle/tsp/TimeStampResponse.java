package org.spongycastle.tsp;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.cmp.PKIFailureInfo;
import org.spongycastle.asn1.cmp.PKIFreeText;
import org.spongycastle.asn1.cms.Attribute;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.tsp.TimeStampResp;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/tsp/TimeStampResponse.class */
public class TimeStampResponse {
    TimeStampResp resp;
    TimeStampToken timeStampToken;

    public TimeStampResponse(InputStream inputStream) throws TSPException, IOException {
        this(readTimeStampResp(inputStream));
    }

    public TimeStampResponse(TimeStampResp timeStampResp) throws TSPException, IOException {
        this.resp = timeStampResp;
        if (timeStampResp.getTimeStampToken() != null) {
            this.timeStampToken = new TimeStampToken(timeStampResp.getTimeStampToken());
        }
    }

    public TimeStampResponse(byte[] bArr) throws TSPException, IOException {
        this(new ByteArrayInputStream(bArr));
    }

    private static TimeStampResp readTimeStampResp(InputStream inputStream) throws IOException, TSPException {
        try {
            return TimeStampResp.getInstance(new ASN1InputStream(inputStream).readObject());
        } catch (ClassCastException e) {
            throw new TSPException("malformed timestamp response: " + e, e);
        } catch (IllegalArgumentException e2) {
            throw new TSPException("malformed timestamp response: " + e2, e2);
        }
    }

    public byte[] getEncoded() throws IOException {
        return this.resp.getEncoded();
    }

    public PKIFailureInfo getFailInfo() {
        if (this.resp.getStatus().getFailInfo() != null) {
            return new PKIFailureInfo(this.resp.getStatus().getFailInfo());
        }
        return null;
    }

    public int getStatus() {
        return this.resp.getStatus().getStatus().intValue();
    }

    public String getStatusString() {
        if (this.resp.getStatus().getStatusString() == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        PKIFreeText statusString = this.resp.getStatus().getStatusString();
        for (int i = 0; i != statusString.size(); i++) {
            stringBuffer.append(statusString.getStringAt(i).getString());
        }
        return stringBuffer.toString();
    }

    public TimeStampToken getTimeStampToken() {
        return this.timeStampToken;
    }

    public void validate(TimeStampRequest timeStampRequest) throws TSPException {
        TimeStampToken timeStampToken = getTimeStampToken();
        if (timeStampToken != null) {
            TimeStampTokenInfo timeStampInfo = timeStampToken.getTimeStampInfo();
            if (timeStampRequest.getNonce() != null && !timeStampRequest.getNonce().equals(timeStampInfo.getNonce())) {
                throw new TSPValidationException("response contains wrong nonce value.");
            } else if (getStatus() != 0 && getStatus() != 1) {
                throw new TSPValidationException("time stamp token found in failed request.");
            } else if (!Arrays.constantTimeAreEqual(timeStampRequest.getMessageImprintDigest(), timeStampInfo.getMessageImprintDigest())) {
                throw new TSPValidationException("response for different message imprint digest.");
            } else if (!timeStampInfo.getMessageImprintAlgOID().equals(timeStampRequest.getMessageImprintAlgOID())) {
                throw new TSPValidationException("response for different message imprint algorithm.");
            } else {
                Attribute attribute = timeStampToken.getSignedAttributes().get(PKCSObjectIdentifiers.id_aa_signingCertificate);
                Attribute attribute2 = timeStampToken.getSignedAttributes().get(PKCSObjectIdentifiers.id_aa_signingCertificateV2);
                if (attribute == null && attribute2 == null) {
                    throw new TSPValidationException("no signing certificate attribute present.");
                } else if (timeStampRequest.getReqPolicy() != null && !timeStampRequest.getReqPolicy().equals(timeStampInfo.getPolicy())) {
                    throw new TSPValidationException("TSA policy wrong for request.");
                }
            }
        } else if (getStatus() == 0 || getStatus() == 1) {
            throw new TSPValidationException("no time stamp token found and one expected.");
        }
    }
}
