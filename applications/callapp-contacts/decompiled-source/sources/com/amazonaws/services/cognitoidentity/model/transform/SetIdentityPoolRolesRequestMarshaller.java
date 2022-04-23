package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentity.model.RoleMapping;
import com.amazonaws.services.cognitoidentity.model.SetIdentityPoolRolesRequest;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/SetIdentityPoolRolesRequestMarshaller.class */
public class SetIdentityPoolRolesRequestMarshaller {
    public Request<SetIdentityPoolRolesRequest> marshall(SetIdentityPoolRolesRequest setIdentityPoolRolesRequest) {
        if (setIdentityPoolRolesRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(setIdentityPoolRolesRequest, "AmazonCognitoIdentity");
            defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityService.SetIdentityPoolRoles");
            defaultRequest.a(HttpMethodName.POST);
            defaultRequest.a("/");
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter jsonWriter = JsonUtils.getJsonWriter(stringWriter);
                jsonWriter.beginObject();
                if (setIdentityPoolRolesRequest.getIdentityPoolId() != null) {
                    String identityPoolId = setIdentityPoolRolesRequest.getIdentityPoolId();
                    jsonWriter.name("IdentityPoolId");
                    jsonWriter.value(identityPoolId);
                }
                if (setIdentityPoolRolesRequest.getRoles() != null) {
                    Map<String, String> roles = setIdentityPoolRolesRequest.getRoles();
                    jsonWriter.name("Roles");
                    jsonWriter.beginObject();
                    for (Map.Entry<String, String> entry : roles.entrySet()) {
                        String value = entry.getValue();
                        if (value != null) {
                            jsonWriter.name(entry.getKey());
                            jsonWriter.value(value);
                        }
                    }
                    jsonWriter.endObject();
                }
                if (setIdentityPoolRolesRequest.getRoleMappings() != null) {
                    Map<String, RoleMapping> roleMappings = setIdentityPoolRolesRequest.getRoleMappings();
                    jsonWriter.name("RoleMappings");
                    jsonWriter.beginObject();
                    for (Map.Entry<String, RoleMapping> entry2 : roleMappings.entrySet()) {
                        RoleMapping value2 = entry2.getValue();
                        if (value2 != null) {
                            jsonWriter.name(entry2.getKey());
                            RoleMappingJsonMarshaller.getInstance().marshall(value2, jsonWriter);
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
            throw new AmazonClientException("Invalid argument passed to marshall(SetIdentityPoolRolesRequest)");
        }
    }
}
