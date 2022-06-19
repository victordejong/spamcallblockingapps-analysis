package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentity.model.GetOpenIdTokenForDeveloperIdentityRequest;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenForDeveloperIdentityRequestMarshaller.class */
public class GetOpenIdTokenForDeveloperIdentityRequestMarshaller {
    public Request<GetOpenIdTokenForDeveloperIdentityRequest> marshall(GetOpenIdTokenForDeveloperIdentityRequest getOpenIdTokenForDeveloperIdentityRequest) {
        if (getOpenIdTokenForDeveloperIdentityRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(getOpenIdTokenForDeveloperIdentityRequest, "AmazonCognitoIdentity");
            defaultRequest.mo38714a("X-Amz-Target", "AWSCognitoIdentityService.GetOpenIdTokenForDeveloperIdentity");
            defaultRequest.mo38718a(HttpMethodName.POST);
            defaultRequest.mo38715a("/");
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter jsonWriter = JsonUtils.getJsonWriter(stringWriter);
                jsonWriter.beginObject();
                if (getOpenIdTokenForDeveloperIdentityRequest.getIdentityPoolId() != null) {
                    String identityPoolId = getOpenIdTokenForDeveloperIdentityRequest.getIdentityPoolId();
                    jsonWriter.name("IdentityPoolId");
                    jsonWriter.value(identityPoolId);
                }
                if (getOpenIdTokenForDeveloperIdentityRequest.getIdentityId() != null) {
                    String identityId = getOpenIdTokenForDeveloperIdentityRequest.getIdentityId();
                    jsonWriter.name("IdentityId");
                    jsonWriter.value(identityId);
                }
                if (getOpenIdTokenForDeveloperIdentityRequest.getLogins() != null) {
                    Map<String, String> logins = getOpenIdTokenForDeveloperIdentityRequest.getLogins();
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
                if (getOpenIdTokenForDeveloperIdentityRequest.getPrincipalTags() != null) {
                    Map<String, String> principalTags = getOpenIdTokenForDeveloperIdentityRequest.getPrincipalTags();
                    jsonWriter.name("PrincipalTags");
                    jsonWriter.beginObject();
                    for (Map.Entry<String, String> entry2 : principalTags.entrySet()) {
                        String value2 = entry2.getValue();
                        if (value2 != null) {
                            jsonWriter.name(entry2.getKey());
                            jsonWriter.value(value2);
                        }
                    }
                    jsonWriter.endObject();
                }
                if (getOpenIdTokenForDeveloperIdentityRequest.getTokenDuration() != null) {
                    Long tokenDuration = getOpenIdTokenForDeveloperIdentityRequest.getTokenDuration();
                    jsonWriter.name("TokenDuration");
                    jsonWriter.value(tokenDuration);
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
        throw new AmazonClientException("Invalid argument passed to marshall(GetOpenIdTokenForDeveloperIdentityRequest)");
    }
}
