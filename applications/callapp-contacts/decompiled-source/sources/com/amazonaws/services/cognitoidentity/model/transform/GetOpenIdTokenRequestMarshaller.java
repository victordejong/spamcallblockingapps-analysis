package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentity.model.GetOpenIdTokenRequest;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenRequestMarshaller.class */
public class GetOpenIdTokenRequestMarshaller {
    public Request<GetOpenIdTokenRequest> marshall(GetOpenIdTokenRequest getOpenIdTokenRequest) {
        if (getOpenIdTokenRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(getOpenIdTokenRequest, "AmazonCognitoIdentity");
            defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityService.GetOpenIdToken");
            defaultRequest.a(HttpMethodName.POST);
            defaultRequest.a("/");
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter jsonWriter = JsonUtils.getJsonWriter(stringWriter);
                jsonWriter.beginObject();
                if (getOpenIdTokenRequest.getIdentityId() != null) {
                    String identityId = getOpenIdTokenRequest.getIdentityId();
                    jsonWriter.name("IdentityId");
                    jsonWriter.value(identityId);
                }
                if (getOpenIdTokenRequest.getLogins() != null) {
                    Map<String, String> logins = getOpenIdTokenRequest.getLogins();
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
            throw new AmazonClientException("Invalid argument passed to marshall(GetOpenIdTokenRequest)");
        }
    }
}
