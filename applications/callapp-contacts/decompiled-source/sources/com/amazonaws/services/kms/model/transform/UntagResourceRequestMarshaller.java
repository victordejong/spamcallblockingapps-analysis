package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.kms.model.UntagResourceRequest;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/UntagResourceRequestMarshaller.class */
public class UntagResourceRequestMarshaller {
    public Request<UntagResourceRequest> marshall(UntagResourceRequest untagResourceRequest) {
        if (untagResourceRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(untagResourceRequest, "AWSKMS");
            defaultRequest.a("X-Amz-Target", "TrentService.UntagResource");
            defaultRequest.a(HttpMethodName.POST);
            defaultRequest.a("/");
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter jsonWriter = JsonUtils.getJsonWriter(stringWriter);
                jsonWriter.beginObject();
                if (untagResourceRequest.getKeyId() != null) {
                    String keyId = untagResourceRequest.getKeyId();
                    jsonWriter.name("KeyId");
                    jsonWriter.value(keyId);
                }
                if (untagResourceRequest.getTagKeys() != null) {
                    List<String> tagKeys = untagResourceRequest.getTagKeys();
                    jsonWriter.name("TagKeys");
                    jsonWriter.beginArray();
                    for (String str : tagKeys) {
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
            throw new AmazonClientException("Invalid argument passed to marshall(UntagResourceRequest)");
        }
    }
}
