package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.kms.model.PutKeyPolicyRequest;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/PutKeyPolicyRequestMarshaller.class */
public class PutKeyPolicyRequestMarshaller {
    public Request<PutKeyPolicyRequest> marshall(PutKeyPolicyRequest putKeyPolicyRequest) {
        if (putKeyPolicyRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(putKeyPolicyRequest, "AWSKMS");
            defaultRequest.mo38714a("X-Amz-Target", "TrentService.PutKeyPolicy");
            defaultRequest.mo38718a(HttpMethodName.POST);
            defaultRequest.mo38715a("/");
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter jsonWriter = JsonUtils.getJsonWriter(stringWriter);
                jsonWriter.beginObject();
                if (putKeyPolicyRequest.getKeyId() != null) {
                    String keyId = putKeyPolicyRequest.getKeyId();
                    jsonWriter.name("KeyId");
                    jsonWriter.value(keyId);
                }
                if (putKeyPolicyRequest.getPolicyName() != null) {
                    String policyName = putKeyPolicyRequest.getPolicyName();
                    jsonWriter.name("PolicyName");
                    jsonWriter.value(policyName);
                }
                if (putKeyPolicyRequest.getPolicy() != null) {
                    String policy = putKeyPolicyRequest.getPolicy();
                    jsonWriter.name("Policy");
                    jsonWriter.value(policy);
                }
                if (putKeyPolicyRequest.getBypassPolicyLockoutSafetyCheck() != null) {
                    Boolean bypassPolicyLockoutSafetyCheck = putKeyPolicyRequest.getBypassPolicyLockoutSafetyCheck();
                    jsonWriter.name("BypassPolicyLockoutSafetyCheck");
                    jsonWriter.value(bypassPolicyLockoutSafetyCheck.booleanValue());
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
        throw new AmazonClientException("Invalid argument passed to marshall(PutKeyPolicyRequest)");
    }
}
