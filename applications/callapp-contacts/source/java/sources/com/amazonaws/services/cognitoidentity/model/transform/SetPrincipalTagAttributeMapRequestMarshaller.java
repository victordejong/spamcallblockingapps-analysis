package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentity.model.SetPrincipalTagAttributeMapRequest;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/SetPrincipalTagAttributeMapRequestMarshaller.class */
public class SetPrincipalTagAttributeMapRequestMarshaller {
    public Request<SetPrincipalTagAttributeMapRequest> marshall(SetPrincipalTagAttributeMapRequest setPrincipalTagAttributeMapRequest) {
        if (setPrincipalTagAttributeMapRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(setPrincipalTagAttributeMapRequest, "AmazonCognitoIdentity");
            defaultRequest.mo38714a("X-Amz-Target", "AWSCognitoIdentityService.SetPrincipalTagAttributeMap");
            defaultRequest.mo38718a(HttpMethodName.POST);
            defaultRequest.mo38715a("/");
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter jsonWriter = JsonUtils.getJsonWriter(stringWriter);
                jsonWriter.beginObject();
                if (setPrincipalTagAttributeMapRequest.getIdentityPoolId() != null) {
                    String identityPoolId = setPrincipalTagAttributeMapRequest.getIdentityPoolId();
                    jsonWriter.name("IdentityPoolId");
                    jsonWriter.value(identityPoolId);
                }
                if (setPrincipalTagAttributeMapRequest.getIdentityProviderName() != null) {
                    String identityProviderName = setPrincipalTagAttributeMapRequest.getIdentityProviderName();
                    jsonWriter.name("IdentityProviderName");
                    jsonWriter.value(identityProviderName);
                }
                if (setPrincipalTagAttributeMapRequest.getUseDefaults() != null) {
                    Boolean useDefaults = setPrincipalTagAttributeMapRequest.getUseDefaults();
                    jsonWriter.name("UseDefaults");
                    jsonWriter.value(useDefaults.booleanValue());
                }
                if (setPrincipalTagAttributeMapRequest.getPrincipalTags() != null) {
                    Map<String, String> principalTags = setPrincipalTagAttributeMapRequest.getPrincipalTags();
                    jsonWriter.name("PrincipalTags");
                    jsonWriter.beginObject();
                    for (Map.Entry<String, String> entry : principalTags.entrySet()) {
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
        throw new AmazonClientException("Invalid argument passed to marshall(SetPrincipalTagAttributeMapRequest)");
    }
}
