package com.amazonaws.http;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.ResponseMetadata;
import com.amazonaws.internal.CRC32MismatchException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.transform.VoidJsonUnmarshaller;
import com.amazonaws.util.CRC32ChecksumCalculatingInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonReader;
import com.amazonaws.util.json.JsonUtils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.zip.GZIPInputStream;
/* loaded from: classes-dex2jar.jar:com/amazonaws/http/JsonResponseHandler.class */
public class JsonResponseHandler<T> implements HttpResponseHandler<AmazonWebServiceResponse<T>> {
    private static final Log log = LogFactory.m38583a("com.amazonaws.request");
    public boolean needsConnectionLeftOpen = false;
    private Unmarshaller<T, JsonUnmarshallerContext> responseUnmarshaller;

    public JsonResponseHandler(Unmarshaller<T, JsonUnmarshallerContext> unmarshaller) {
        this.responseUnmarshaller = unmarshaller;
        if (unmarshaller == null) {
            this.responseUnmarshaller = new VoidJsonUnmarshaller();
        }
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    public AmazonWebServiceResponse<T> handle(HttpResponse httpResponse) throws Exception {
        Log log2 = log;
        log2.mo38596a("Parsing service response JSON");
        String str = httpResponse.f12069d.get("x-amz-crc32");
        InputStream inputStream = httpResponse.f12068c;
        ByteArrayInputStream byteArrayInputStream = inputStream;
        if (inputStream == null) {
            byteArrayInputStream = new ByteArrayInputStream("{}".getBytes(StringUtils.f12513a));
        }
        log2.mo38593b("CRC32Checksum = ".concat(String.valueOf(str)));
        log2.mo38593b("content encoding = " + httpResponse.f12069d.get("Content-Encoding"));
        boolean equals = "gzip".equals(httpResponse.f12069d.get("Content-Encoding"));
        CRC32ChecksumCalculatingInputStream cRC32ChecksumCalculatingInputStream = null;
        CRC32ChecksumCalculatingInputStream cRC32ChecksumCalculatingInputStream2 = byteArrayInputStream;
        if (str != null) {
            cRC32ChecksumCalculatingInputStream = new CRC32ChecksumCalculatingInputStream(byteArrayInputStream);
            cRC32ChecksumCalculatingInputStream2 = cRC32ChecksumCalculatingInputStream;
        }
        GZIPInputStream gZIPInputStream = cRC32ChecksumCalculatingInputStream2;
        if (equals) {
            gZIPInputStream = new GZIPInputStream(cRC32ChecksumCalculatingInputStream2);
        }
        AwsJsonReader jsonReader = JsonUtils.getJsonReader(new InputStreamReader(gZIPInputStream, StringUtils.f12513a));
        try {
            AmazonWebServiceResponse<T> amazonWebServiceResponse = new AmazonWebServiceResponse<>();
            T unmarshall = this.responseUnmarshaller.unmarshall(new JsonUnmarshallerContext(jsonReader, httpResponse));
            if (cRC32ChecksumCalculatingInputStream != null) {
                if (cRC32ChecksumCalculatingInputStream.f12498a.getValue() != Long.parseLong(str)) {
                    throw new CRC32MismatchException("Client calculated crc32 checksum didn't match that calculated by server side");
                }
            }
            amazonWebServiceResponse.f11951a = unmarshall;
            HashMap hashMap = new HashMap();
            hashMap.put("AWS_REQUEST_ID", httpResponse.f12069d.get("x-amzn-RequestId"));
            amazonWebServiceResponse.f11952b = new ResponseMetadata(hashMap);
            log2.mo38596a("Done parsing service response");
            return amazonWebServiceResponse;
        } finally {
            if (!this.needsConnectionLeftOpen) {
                try {
                    jsonReader.close();
                } catch (IOException e) {
                    log.mo38592b("Error closing json parser", e);
                }
            }
        }
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    public boolean needsConnectionLeftOpen() {
        return this.needsConnectionLeftOpen;
    }

    @Deprecated
    protected void registerAdditionalMetadataExpressions(JsonUnmarshallerContext jsonUnmarshallerContext) {
    }
}
