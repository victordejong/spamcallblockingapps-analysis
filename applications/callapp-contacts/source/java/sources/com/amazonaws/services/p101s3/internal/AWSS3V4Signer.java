package com.amazonaws.services.p101s3.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import com.amazonaws.auth.AWS4Signer;
import com.amazonaws.auth.AwsChunkedEncodingInputStream;
import com.amazonaws.services.p101s3.model.PutObjectRequest;
import com.amazonaws.services.p101s3.model.UploadPartRequest;
import com.amazonaws.util.BinaryUtils;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.amazonaws.services.s3.internal.AWSS3V4Signer */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/AWSS3V4Signer.class */
public class AWSS3V4Signer extends AWS4Signer {
    public AWSS3V4Signer() {
        super(false);
    }

    /* renamed from: f */
    private static boolean m38439f(Request<?> request) {
        return (request.mo38720a() instanceof PutObjectRequest) || (request.mo38720a() instanceof UploadPartRequest);
    }

    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    @Override // com.amazonaws.auth.AWS4Signer
    /* renamed from: a */
    public final String mo38441a(Request<?> request) {
        char c;
        request.mo38714a("x-amz-content-sha256", "required");
        if (m38439f(request)) {
            String str = request.mo38711b().get("Content-Length");
            if (str != null) {
                c = Long.parseLong(str);
            } else {
                try {
                    InputStream mo38703h = request.mo38703h();
                    if (!mo38703h.markSupported()) {
                        throw new AmazonClientException("Failed to get content length");
                    }
                    c = 0;
                    byte[] bArr = new byte[4096];
                    mo38703h.mark(-1);
                    while (true) {
                        int read = mo38703h.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        c += read;
                    }
                    mo38703h.reset();
                } catch (IOException e) {
                    throw new AmazonClientException("Cannot get the content-lenght of the request content.", e);
                }
            }
            request.mo38714a("x-amz-decoded-content-length", Long.toString(c));
            request.mo38714a("Content-Length", Long.toString(AwsChunkedEncodingInputStream.m38665a(c)));
            return "STREAMING-AWS4-HMAC-SHA256-PAYLOAD";
        }
        return super.mo38441a(request);
    }

    @Override // com.amazonaws.auth.AWS4Signer
    /* renamed from: a */
    public final void mo38440a(Request<?> request, AWS4Signer.HeaderSigningResult headerSigningResult) {
        if (m38439f(request)) {
            InputStream mo38703h = request.mo38703h();
            String str = headerSigningResult.f11976a;
            String str2 = headerSigningResult.f11977b;
            byte[] bArr = new byte[headerSigningResult.f11978c.length];
            System.arraycopy(headerSigningResult.f11978c, 0, bArr, 0, headerSigningResult.f11978c.length);
            request.mo38716a(new AwsChunkedEncodingInputStream(mo38703h, bArr, str, str2, BinaryUtils.m38259a(headerSigningResult.m38687a()), this));
        }
    }
}
