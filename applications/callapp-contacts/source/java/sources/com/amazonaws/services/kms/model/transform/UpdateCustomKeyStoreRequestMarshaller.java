package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.kms.model.UpdateCustomKeyStoreRequest;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/UpdateCustomKeyStoreRequestMarshaller.class */
public class UpdateCustomKeyStoreRequestMarshaller {
    public Request<UpdateCustomKeyStoreRequest> marshall(UpdateCustomKeyStoreRequest updateCustomKeyStoreRequest) {
        if (updateCustomKeyStoreRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(updateCustomKeyStoreRequest, "AWSKMS");
            defaultRequest.mo38714a("X-Amz-Target", "TrentService.UpdateCustomKeyStore");
            defaultRequest.mo38718a(HttpMethodName.POST);
            defaultRequest.mo38715a("/");
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter jsonWriter = JsonUtils.getJsonWriter(stringWriter);
                jsonWriter.beginObject();
                if (updateCustomKeyStoreRequest.getCustomKeyStoreId() != null) {
                    String customKeyStoreId = updateCustomKeyStoreRequest.getCustomKeyStoreId();
                    jsonWriter.name("CustomKeyStoreId");
                    jsonWriter.value(customKeyStoreId);
                }
                if (updateCustomKeyStoreRequest.getNewCustomKeyStoreName() != null) {
                    String newCustomKeyStoreName = updateCustomKeyStoreRequest.getNewCustomKeyStoreName();
                    jsonWriter.name("NewCustomKeyStoreName");
                    jsonWriter.value(newCustomKeyStoreName);
                }
                if (updateCustomKeyStoreRequest.getKeyStorePassword() != null) {
                    String keyStorePassword = updateCustomKeyStoreRequest.getKeyStorePassword();
                    jsonWriter.name("KeyStorePassword");
                    jsonWriter.value(keyStorePassword);
                }
                if (updateCustomKeyStoreRequest.getCloudHsmClusterId() != null) {
                    String cloudHsmClusterId = updateCustomKeyStoreRequest.getCloudHsmClusterId();
                    jsonWriter.name("CloudHsmClusterId");
                    jsonWriter.value(cloudHsmClusterId);
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
        throw new AmazonClientException("Invalid argument passed to marshall(UpdateCustomKeyStoreRequest)");
    }
}
