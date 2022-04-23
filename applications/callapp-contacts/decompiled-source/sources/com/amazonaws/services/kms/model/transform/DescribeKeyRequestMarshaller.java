package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.kms.model.DescribeKeyRequest;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/DescribeKeyRequestMarshaller.class */
public class DescribeKeyRequestMarshaller {
    public Request<DescribeKeyRequest> marshall(DescribeKeyRequest describeKeyRequest) {
        if (describeKeyRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(describeKeyRequest, "AWSKMS");
            defaultRequest.a("X-Amz-Target", "TrentService.DescribeKey");
            defaultRequest.a(HttpMethodName.POST);
            defaultRequest.a("/");
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter jsonWriter = JsonUtils.getJsonWriter(stringWriter);
                jsonWriter.beginObject();
                if (describeKeyRequest.getKeyId() != null) {
                    String keyId = describeKeyRequest.getKeyId();
                    jsonWriter.name("KeyId");
                    jsonWriter.value(keyId);
                }
                if (describeKeyRequest.getGrantTokens() != null) {
                    List<String> grantTokens = describeKeyRequest.getGrantTokens();
                    jsonWriter.name("GrantTokens");
                    jsonWriter.beginArray();
                    for (String str : grantTokens) {
                        if (str != null) {
                            jsonWriter.value(str);
                        }
                    }
                    jsonWriter.endArray();
                }
                jsonWriter.endObject();
                jsonWriter.close();
                String stringWriter2 = stringWriter.toString();
                byte[] bytes = stringWriter2.getBytes(StringUtils.f6920a);
                defaultRequest.a(new StringInputStream(stringWriter2));
                defaultRequest.a("Content-Length", Integer.toString(bytes.length));
                if (!defaultRequest.b().containsKey("Content-Type")) {
                    defaultRequest.a("Content-Type", "application/x-amz-json-1.1");
                }
                return defaultRequest;
            } catch (Throwable th) {
                throw new AmazonClientException("Unable to marshall request to JSON: " + th.getMessage(), th);
            }
        } else {
            throw new AmazonClientException("Invalid argument passed to marshall(DescribeKeyRequest)");
        }
    }
}
