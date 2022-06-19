package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.kms.model.CreateCustomKeyStoreRequest;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/CreateCustomKeyStoreRequestMarshaller.class */
public class CreateCustomKeyStoreRequestMarshaller {
    public Request<CreateCustomKeyStoreRequest> marshall(CreateCustomKeyStoreRequest createCustomKeyStoreRequest) {
        if (createCustomKeyStoreRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(createCustomKeyStoreRequest, "AWSKMS");
            defaultRequest.mo38714a("X-Amz-Target", "TrentService.CreateCustomKeyStore");
            defaultRequest.mo38718a(HttpMethodName.POST);
            defaultRequest.mo38715a("/");
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter jsonWriter = JsonUtils.getJsonWriter(stringWriter);
                jsonWriter.beginObject();
                if (createCustomKeyStoreRequest.getCustomKeyStoreName() != null) {
                    String customKeyStoreName = createCustomKeyStoreRequest.getCustomKeyStoreName();
                    jsonWriter.name("CustomKeyStoreName");
                    jsonWriter.value(customKeyStoreName);
                }
                if (createCustomKeyStoreRequest.getCloudHsmClusterId() != null) {
                    String cloudHsmClusterId = createCustomKeyStoreRequest.getCloudHsmClusterId();
                    jsonWriter.name("CloudHsmClusterId");
                    jsonWriter.value(cloudHsmClusterId);
                }
                if (createCustomKeyStoreRequest.getTrustAnchorCertificate() != null) {
                    String trustAnchorCertificate = createCustomKeyStoreRequest.getTrustAnchorCertificate();
                    jsonWriter.name("TrustAnchorCertificate");
                    jsonWriter.value(trustAnchorCertificate);
                }
                if (createCustomKeyStoreRequest.getKeyStorePassword() != null) {
                    String keyStorePassword = createCustomKeyStoreRequest.getKeyStorePassword();
                    jsonWriter.name("KeyStorePassword");
                    jsonWriter.value(keyStorePassword);
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
        throw new AmazonClientException("Invalid argument passed to marshall(CreateCustomKeyStoreRequest)");
    }
}
