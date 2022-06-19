package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentity.model.UnlinkIdentityRequest;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/UnlinkIdentityRequestMarshaller.class */
public class UnlinkIdentityRequestMarshaller {
    public Request<UnlinkIdentityRequest> marshall(UnlinkIdentityRequest unlinkIdentityRequest) {
        if (unlinkIdentityRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(unlinkIdentityRequest, "AmazonCognitoIdentity");
            defaultRequest.mo38714a("X-Amz-Target", "AWSCognitoIdentityService.UnlinkIdentity");
            defaultRequest.mo38718a(HttpMethodName.POST);
            defaultRequest.mo38715a("/");
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter jsonWriter = JsonUtils.getJsonWriter(stringWriter);
                jsonWriter.beginObject();
                if (unlinkIdentityRequest.getIdentityId() != null) {
                    String identityId = unlinkIdentityRequest.getIdentityId();
                    jsonWriter.name("IdentityId");
                    jsonWriter.value(identityId);
                }
                if (unlinkIdentityRequest.getLogins() != null) {
                    Map<String, String> logins = unlinkIdentityRequest.getLogins();
                    jsonWriter.name("Logins");
                    jsonWriter.beginObject();
                    for (Map.Entry<String, String> entry : logins.entrySet()) {
                        String value = entry.getValue();
                        if (value != null) {
                            jsonWriter.name(entry.getKey());
                            jsonWriter.value(value);
                        }
                    }
                    jsonWriter.endObject();
                }
                if (unlinkIdentityRequest.getLoginsToRemove() != null) {
                    List<String> loginsToRemove = unlinkIdentityRequest.getLoginsToRemove();
                    jsonWriter.name("LoginsToRemove");
                    jsonWriter.beginArray();
                    for (String str : loginsToRemove) {
                        if (str != null) {
                            jsonWriter.value(str);
                        }
                    }
                    jsonWriter.endArray();
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
        throw new AmazonClientException("Invalid argument passed to marshall(UnlinkIdentityRequest)");
    }
}
