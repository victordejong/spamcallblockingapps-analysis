package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.kms.model.CreateGrantRequest;
import com.amazonaws.services.kms.model.GrantConstraints;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/CreateGrantRequestMarshaller.class */
public class CreateGrantRequestMarshaller {
    public Request<CreateGrantRequest> marshall(CreateGrantRequest createGrantRequest) {
        if (createGrantRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(createGrantRequest, "AWSKMS");
            defaultRequest.mo38714a("X-Amz-Target", "TrentService.CreateGrant");
            defaultRequest.mo38718a(HttpMethodName.POST);
            defaultRequest.mo38715a("/");
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter jsonWriter = JsonUtils.getJsonWriter(stringWriter);
                jsonWriter.beginObject();
                if (createGrantRequest.getKeyId() != null) {
                    String keyId = createGrantRequest.getKeyId();
                    jsonWriter.name("KeyId");
                    jsonWriter.value(keyId);
                }
                if (createGrantRequest.getGranteePrincipal() != null) {
                    String granteePrincipal = createGrantRequest.getGranteePrincipal();
                    jsonWriter.name("GranteePrincipal");
                    jsonWriter.value(granteePrincipal);
                }
                if (createGrantRequest.getRetiringPrincipal() != null) {
                    String retiringPrincipal = createGrantRequest.getRetiringPrincipal();
                    jsonWriter.name("RetiringPrincipal");
                    jsonWriter.value(retiringPrincipal);
                }
                if (createGrantRequest.getOperations() != null) {
                    List<String> operations = createGrantRequest.getOperations();
                    jsonWriter.name("Operations");
                    jsonWriter.beginArray();
                    for (String str : operations) {
                        if (str != null) {
                            jsonWriter.value(str);
                        }
                    }
                    jsonWriter.endArray();
                }
                if (createGrantRequest.getConstraints() != null) {
                    GrantConstraints constraints = createGrantRequest.getConstraints();
                    jsonWriter.name("Constraints");
                    GrantConstraintsJsonMarshaller.getInstance().marshall(constraints, jsonWriter);
                }
                if (createGrantRequest.getGrantTokens() != null) {
                    List<String> grantTokens = createGrantRequest.getGrantTokens();
                    jsonWriter.name("GrantTokens");
                    jsonWriter.beginArray();
                    for (String str2 : grantTokens) {
                        if (str2 != null) {
                            jsonWriter.value(str2);
                        }
                    }
                    jsonWriter.endArray();
                }
                if (createGrantRequest.getName() != null) {
                    String name = createGrantRequest.getName();
                    jsonWriter.name("Name");
                    jsonWriter.value(name);
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
        throw new AmazonClientException("Invalid argument passed to marshall(CreateGrantRequest)");
    }
}
