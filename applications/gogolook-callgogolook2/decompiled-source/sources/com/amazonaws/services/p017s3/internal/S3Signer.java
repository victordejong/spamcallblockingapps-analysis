package com.amazonaws.services.p017s3.internal;

import com.amazonaws.Request;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSSessionCredentials;
import com.amazonaws.auth.AbstractAWSSigner;
import com.amazonaws.auth.SigningAlgorithm;
import com.amazonaws.util.HttpUtils;
import java.util.Date;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
/* renamed from: com.amazonaws.services.s3.internal.S3Signer */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/S3Signer.class */
public class S3Signer extends AbstractAWSSigner {
    public static final Log log = LogFactory.getLog(S3Signer.class);
    public final String httpVerb;
    public final String resourcePath;

    public S3Signer() {
        this.httpVerb = null;
        this.resourcePath = null;
    }

    public S3Signer(String str, String str2) {
        this.httpVerb = str;
        this.resourcePath = str2;
        if (str2 == null) {
            throw new IllegalArgumentException("Parameter resourcePath is empty");
        }
    }

    public void addSessionCredentials(Request<?> request, AWSSessionCredentials aWSSessionCredentials) {
        request.addHeader("x-amz-security-token", aWSSessionCredentials.getSessionToken());
    }

    @Override // com.amazonaws.auth.Signer
    public void sign(Request<?> request, AWSCredentials aWSCredentials) {
        sign(request, aWSCredentials, (Date) null);
    }

    public void sign(Request<?> request, AWSCredentials aWSCredentials, Date date) {
        if (this.resourcePath == null) {
            throw new UnsupportedOperationException("Cannot sign a request using a dummy S3Signer instance with no resource path");
        } else if (aWSCredentials == null || aWSCredentials.getAWSSecretKey() == null) {
            log.debug("Canonical string will not be signed, as no AWS Secret Key was provided");
        } else {
            AWSCredentials sanitizeCredentials = sanitizeCredentials(aWSCredentials);
            if (sanitizeCredentials instanceof AWSSessionCredentials) {
                addSessionCredentials(request, (AWSSessionCredentials) sanitizeCredentials);
            }
            String appendUri = HttpUtils.appendUri(request.getEndpoint().getPath(), this.resourcePath, true);
            Date signatureDate = getSignatureDate(getTimeOffset(request));
            if (date != null) {
                signatureDate = date;
            }
            request.addHeader("Date", ServiceUtils.formatRfc822Date(signatureDate));
            String makeS3CanonicalString = RestUtils.makeS3CanonicalString(this.httpVerb, appendUri, request, null);
            Log log2 = log;
            log2.debug("Calculated string to sign:\n\"" + makeS3CanonicalString + "\"");
            String signAndBase64Encode = super.signAndBase64Encode(makeS3CanonicalString, sanitizeCredentials.getAWSSecretKey(), SigningAlgorithm.HmacSHA1);
            request.addHeader("Authorization", "AWS " + sanitizeCredentials.getAWSAccessKeyId() + ":" + signAndBase64Encode);
        }
    }
}
