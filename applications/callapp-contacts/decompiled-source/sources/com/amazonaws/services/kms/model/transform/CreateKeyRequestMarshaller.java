package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.kms.model.CreateKeyRequest;
import com.amazonaws.services.kms.model.Tag;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/CreateKeyRequestMarshaller.class */
public class CreateKeyRequestMarshaller {
    public Request<CreateKeyRequest> marshall(CreateKeyRequest createKeyRequest) {
        if (createKeyRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(createKeyRequest, "AWSKMS");
            defaultRequest.a("X-Amz-Target", "TrentService.CreateKey");
            defaultRequest.a(HttpMethodName.POST);
            defaultRequest.a("/");
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter jsonWriter = JsonUtils.getJsonWriter(stringWriter);
                jsonWriter.beginObject();
                if (createKeyRequest.getPolicy() != null) {
                    String policy = createKeyRequest.getPolicy();
                    jsonWriter.name("Policy");
                    jsonWriter.value(policy);
                }
                if (createKeyRequest.getDescription() != null) {
                    String description = createKeyRequest.getDescription();
                    jsonWriter.name("Description");
                    jsonWriter.value(description);
                }
                if (createKeyRequest.getKeyUsage() != null) {
                    String keyUsage = createKeyRequest.getKeyUsage();
                    jsonWriter.name("KeyUsage");
                    jsonWriter.value(keyUsage);
                }
                if (createKeyRequest.getCustomerMasterKeySpec() != null) {
                    String customerMasterKeySpec = createKeyRequest.getCustomerMasterKeySpec();
                    jsonWriter.name("CustomerMasterKeySpec");
                    jsonWriter.value(customerMasterKeySpec);
                }
                if (createKeyRequest.getOrigin() != null) {
                    String origin = createKeyRequest.getOrigin();
                    jsonWriter.name("Origin");
                    jsonWriter.value(origin);
                }
                if (createKeyRequest.getCustomKeyStoreId() != null) {
                    String customKeyStoreId = createKeyRequest.getCustomKeyStoreId();
                    jsonWriter.name("CustomKeyStoreId");
                    jsonWriter.value(customKeyStoreId);
                }
                if (createKeyRequest.getBypassPolicyLockoutSafetyCheck() != null) {
                    Boolean bypassPolicyLockoutSafetyCheck = createKeyRequest.getBypassPolicyLockoutSafetyCheck();
                    jsonWriter.name("BypassPolicyLockoutSafetyCheck");
                    jsonWriter.value(bypassPolicyLockoutSafetyCheck.booleanValue());
                }
                if (createKeyRequest.getTags() != null) {
                    List<Tag> tags = createKeyRequest.getTags();
                    jsonWriter.name("Tags");
                    jsonWriter.beginArray();
                    for (Tag tag : tags) {
                        if (tag != null) {
                            TagJsonMarshaller.getInstance().marshall(tag, jsonWriter);
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
            throw new AmazonClientException("Invalid argument passed to marshall(CreateKeyRequest)");
        }
    }
}
