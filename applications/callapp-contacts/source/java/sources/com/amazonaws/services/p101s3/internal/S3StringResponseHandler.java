package com.amazonaws.services.p101s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.util.StringUtils;
import java.io.InputStream;
/* renamed from: com.amazonaws.services.s3.internal.S3StringResponseHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/S3StringResponseHandler.class */
public class S3StringResponseHandler extends AbstractS3ResponseHandler<String> {
    /* JADX WARN: Type inference failed for: r1v4, types: [T, java.lang.String] */
    @Override // com.amazonaws.http.HttpResponseHandler
    public /* synthetic */ Object handle(HttpResponse httpResponse) throws Exception {
        AmazonWebServiceResponse<String> parseResponseMetadata = parseResponseMetadata(httpResponse);
        byte[] bArr = new byte[1024];
        StringBuilder sb = new StringBuilder();
        InputStream m38617a = httpResponse.m38617a();
        while (true) {
            int read = m38617a.read(bArr);
            if (read <= 0) {
                parseResponseMetadata.f11951a = sb.toString();
                return parseResponseMetadata;
            }
            sb.append(new String(bArr, 0, read, StringUtils.f12513a));
        }
    }
}
