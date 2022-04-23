package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import com.amazonaws.auth.AWS4Signer;
import com.amazonaws.auth.AwsChunkedEncodingInputStream;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.util.BinaryUtils;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/AWSS3V4Signer.class */
public class AWSS3V4Signer extends AWS4Signer {
    public AWSS3V4Signer() {
        super(false);
    }

    private static boolean f(Request<?> request) {
        return (request.a() instanceof PutObjectRequest) || (request.a() instanceof UploadPartRequest);
    }

    @Override // com.amazonaws.auth.AWS4Signer
    public final String a(Request<?> request) {
        long j;
        request.a("x-amz-content-sha256", "required");
        if (!f(request)) {
            return super.a(request);
        }
        String str = request.b().get("Content-Length");
        if (str != null) {
            j = Long.parseLong(str);
        } else {
            try {
                InputStream h = request.h();
                if (h.markSupported()) {
                    j = 0;
                    byte[] bArr = new byte[4096];
                    h.mark(-1);
                    while (true) {
                        int read = h.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        j += read;
                    }
                    h.reset();
                } else {
                    throw new AmazonClientException("Failed to get content length");
                }
            } catch (IOException e) {
                throw new AmazonClientException("Cannot get the content-lenght of the request content.", e);
            }
        }
        request.a("x-amz-decoded-content-length", Long.toString(j));
        request.a("Content-Length", Long.toString(AwsChunkedEncodingInputStream.a(j)));
        return "STREAMING-AWS4-HMAC-SHA256-PAYLOAD";
    }

    @Override // com.amazonaws.auth.AWS4Signer
    public final void a(Request<?> request, AWS4Signer.HeaderSigningResult headerSigningResult) {
        if (f(request)) {
            InputStream h = request.h();
            String str = headerSigningResult.f6552a;
            String str2 = headerSigningResult.f6553b;
            byte[] bArr = new byte[headerSigningResult.f6554c.length];
            System.arraycopy(headerSigningResult.f6554c, 0, bArr, 0, headerSigningResult.f6554c.length);
            request.a(new AwsChunkedEncodingInputStream(h, bArr, str, str2, BinaryUtils.a(headerSigningResult.a()), this));
        }
    }
}
