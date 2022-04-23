package org.spongycastle.tsp.cms;

import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.asn1.ASN1Encoding;
import org.spongycastle.asn1.cms.AttributeTable;
import org.spongycastle.asn1.cms.TimeStampAndCRL;
import org.spongycastle.asn1.cms.TimeStampedData;
import org.spongycastle.asn1.cms.TimeStampedDataParser;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.cms.CMSException;
import org.spongycastle.operator.DigestCalculator;
import org.spongycastle.operator.DigestCalculatorProvider;
import org.spongycastle.operator.OperatorCreationException;
import org.spongycastle.tsp.TSPException;
import org.spongycastle.tsp.TimeStampToken;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/tsp/cms/TimeStampDataUtil.class */
class TimeStampDataUtil {
    private final MetaDataUtil metaDataUtil;
    private final TimeStampAndCRL[] timeStamps;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TimeStampDataUtil(TimeStampedData timeStampedData) {
        this.metaDataUtil = new MetaDataUtil(timeStampedData.getMetaData());
        this.timeStamps = timeStampedData.getTemporalEvidence().getTstEvidence().toTimeStampAndCRLArray();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TimeStampDataUtil(TimeStampedDataParser timeStampedDataParser) throws IOException {
        this.metaDataUtil = new MetaDataUtil(timeStampedDataParser.getMetaData());
        this.timeStamps = timeStampedDataParser.getTemporalEvidence().getTstEvidence().toTimeStampAndCRLArray();
    }

    private void compareDigest(TimeStampToken timeStampToken, byte[] bArr) throws ImprintDigestInvalidException {
        if (!Arrays.areEqual(bArr, timeStampToken.getTimeStampInfo().getMessageImprintDigest())) {
            throw new ImprintDigestInvalidException("hash calculated is different from MessageImprintDigest found in TimeStampToken", timeStampToken);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] calculateNextHash(DigestCalculator digestCalculator) throws CMSException {
        TimeStampAndCRL timeStampAndCRL = this.timeStamps[this.timeStamps.length - 1];
        OutputStream outputStream = digestCalculator.getOutputStream();
        try {
            outputStream.write(timeStampAndCRL.getEncoded(ASN1Encoding.DER));
            outputStream.close();
            return digestCalculator.getDigest();
        } catch (IOException e) {
            throw new CMSException("exception calculating hash: " + e.getMessage(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getFileName() {
        return this.metaDataUtil.getFileName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getMediaType() {
        return this.metaDataUtil.getMediaType();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DigestCalculator getMessageImprintDigestCalculator(DigestCalculatorProvider digestCalculatorProvider) throws OperatorCreationException {
        try {
            DigestCalculator digestCalculator = digestCalculatorProvider.get(new AlgorithmIdentifier(getTimeStampToken(this.timeStamps[0]).getTimeStampInfo().getMessageImprintAlgOID()));
            initialiseMessageImprintDigestCalculator(digestCalculator);
            return digestCalculator;
        } catch (CMSException e) {
            throw new OperatorCreationException("unable to extract algorithm ID: " + e.getMessage(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AttributeTable getOtherMetaData() {
        return new AttributeTable(this.metaDataUtil.getOtherMetaData());
    }

    TimeStampToken getTimeStampToken(TimeStampAndCRL timeStampAndCRL) throws CMSException {
        try {
            return new TimeStampToken(timeStampAndCRL.getTimeStampToken());
        } catch (IOException e) {
            throw new CMSException("unable to parse token data: " + e.getMessage(), e);
        } catch (IllegalArgumentException e2) {
            throw new CMSException("token data invalid: " + e2.getMessage(), e2);
        } catch (TSPException e3) {
            if (e3.getCause() instanceof CMSException) {
                throw ((CMSException) e3.getCause());
            }
            throw new CMSException("token data invalid: " + e3.getMessage(), e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TimeStampToken[] getTimeStampTokens() throws CMSException {
        TimeStampToken[] timeStampTokenArr = new TimeStampToken[this.timeStamps.length];
        for (int i = 0; i < this.timeStamps.length; i++) {
            timeStampTokenArr[i] = getTimeStampToken(this.timeStamps[i]);
        }
        return timeStampTokenArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TimeStampAndCRL[] getTimeStamps() {
        return this.timeStamps;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initialiseMessageImprintDigestCalculator(DigestCalculator digestCalculator) throws CMSException {
        this.metaDataUtil.initialiseMessageImprintDigestCalculator(digestCalculator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void validate(DigestCalculatorProvider digestCalculatorProvider, byte[] bArr) throws ImprintDigestInvalidException, CMSException {
        for (int i = 0; i < this.timeStamps.length; i++) {
            try {
                TimeStampToken timeStampToken = getTimeStampToken(this.timeStamps[i]);
                if (i > 0) {
                    DigestCalculator digestCalculator = digestCalculatorProvider.get(timeStampToken.getTimeStampInfo().getHashAlgorithm());
                    digestCalculator.getOutputStream().write(this.timeStamps[i - 1].getEncoded(ASN1Encoding.DER));
                    bArr = digestCalculator.getDigest();
                }
                compareDigest(timeStampToken, bArr);
            } catch (IOException e) {
                throw new CMSException("exception calculating hash: " + e.getMessage(), e);
            } catch (OperatorCreationException e2) {
                throw new CMSException("cannot create digest: " + e2.getMessage(), e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void validate(DigestCalculatorProvider digestCalculatorProvider, byte[] bArr, TimeStampToken timeStampToken) throws ImprintDigestInvalidException, CMSException {
        try {
            byte[] encoded = timeStampToken.getEncoded();
            for (int i = 0; i < this.timeStamps.length; i++) {
                try {
                    TimeStampToken timeStampToken2 = getTimeStampToken(this.timeStamps[i]);
                    if (i > 0) {
                        DigestCalculator digestCalculator = digestCalculatorProvider.get(timeStampToken2.getTimeStampInfo().getHashAlgorithm());
                        digestCalculator.getOutputStream().write(this.timeStamps[i - 1].getEncoded(ASN1Encoding.DER));
                        bArr = digestCalculator.getDigest();
                    }
                    compareDigest(timeStampToken2, bArr);
                    if (Arrays.areEqual(timeStampToken2.getEncoded(), encoded)) {
                        return;
                    }
                } catch (IOException e) {
                    throw new CMSException("exception calculating hash: " + e.getMessage(), e);
                } catch (OperatorCreationException e2) {
                    throw new CMSException("cannot create digest: " + e2.getMessage(), e2);
                }
            }
            throw new ImprintDigestInvalidException("passed in token not associated with timestamps present", timeStampToken);
        } catch (IOException e3) {
            throw new CMSException("exception encoding timeStampToken: " + e3.getMessage(), e3);
        }
    }
}
