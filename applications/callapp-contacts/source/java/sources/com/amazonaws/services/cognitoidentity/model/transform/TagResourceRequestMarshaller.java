package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentity.model.TagResourceRequest;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/TagResourceRequestMarshaller.class */
public class TagResourceRequestMarshaller {
    public Request<TagResourceRequest> marshall(TagResourceRequest tagResourceRequest) {
        if (tagResourceRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(tagResourceRequest, "AmazonCognitoIdentity");
            defaultRequest.mo38714a("X-Amz-Target", "AWSCognitoIdentityService.TagResource");
            defaultRequest.mo38718a(HttpMethodName.POST);
            defaultRequest.mo38715a("/");
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter jsonWriter = JsonUtils.getJsonWriter(stringWriter);
                jsonWriter.beginObject();
                if (tagResourceRequest.getResourceArn() != null) {
                    String resourceArn = tagResourceRequest.getResourceArn();
                    jsonWriter.name("ResourceArn");
                    jsonWriter.value(resourceArn);
                }
                if (tagResourceRequest.getTags() != null) {
                    Map<String, String> tags = tagResourceRequest.getTags();
                    jsonWriter.name("Tags");
                    jsonWriter.beginObject();
                    for (Map.Entry<String, String> entry : tags.entrySet()) {
                        String value = entry.getValue();
                        if (value != null) {
                            jsonWriter.name(entry.getKey());
                            jsonWriter.value(value);
                        }
                    }
                    jsonWriter.endObject();
                }
                jsonWriter.endObject();
                jsonWriter.close();
                String stringWriter2 = stringWriter.toString();
                byte[] bytes = stringWriter2.getBytes(StringUtils.f12513a);
                defaultRequest.mo38716a(new StringInputStream(stringWriter2));
                defaultRequest.mo38714a("Content-Length", Integer.toString(bytes.length));
                if (!defaultRequest.mo38711b().containsKey("Content-Type")) {
                    defaultRequest.mo38714a("Content-Type", "application/x-amz-json-1.1");
                }
                return defaultRequest;
            } catch (Throwable th) {
                throw new AmazonClientException("Unable to marshall request to JSON: " + th.getMessage(), th);
            }
        }
        throw new AmazonClientException("Invalid argument passed to marshall(TagResourceRequest)");
    }
}
