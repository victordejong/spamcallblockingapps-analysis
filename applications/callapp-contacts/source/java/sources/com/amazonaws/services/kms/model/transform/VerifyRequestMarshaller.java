package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.kms.model.VerifyRequest;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.nio.ByteBuffer;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/VerifyRequestMarshaller.class */
public class VerifyRequestMarshaller {
    public Request<VerifyRequest> marshall(VerifyRequest verifyRequest) {
        if (verifyRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(verifyRequest, "AWSKMS");
            defaultRequest.mo38714a("X-Amz-Target", "TrentService.Verify");
            defaultRequest.mo38718a(HttpMethodName.POST);
            defaultRequest.mo38715a("/");
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter jsonWriter = JsonUtils.getJsonWriter(stringWriter);
                jsonWriter.beginObject();
                if (verifyRequest.getKeyId() != null) {
                    String keyId = verifyRequest.getKeyId();
                    jsonWriter.name("KeyId");
                    jsonWriter.value(keyId);
                }
                if (verifyRequest.getMessage() != null) {
                    ByteBuffer message = verifyRequest.getMessage();
                    jsonWriter.name("Message");
                    jsonWriter.value(message);
                }
                if (verifyRequest.getMessageType() != null) {
                    String messageType = verifyRequest.getMessageType();
                    jsonWriter.name("MessageType");
                    jsonWriter.value(messageType);
                }
                if (verifyRequest.getSignature() != null) {
                    ByteBuffer signature = verifyRequest.getSignature();
                    jsonWriter.name("Signature");
                    jsonWriter.value(signature);
                }
                if (verifyRequest.getSigningAlgorithm() != null) {
                    String signingAlgorithm = verifyRequest.getSigningAlgorithm();
                    jsonWriter.name("SigningAlgorithm");
                    jsonWriter.value(signingAlgorithm);
                }
                if (verifyRequest.getGrantTokens() != null) {
                    List<String> grantTokens = verifyRequest.getGrantTokens();
                    jsonWriter.name("GrantTokens");
                    jsonWriter.beginArray();
                    for (String str : grantTokens) {
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
        throw new AmazonClientException("Invalid argument passed to marshall(VerifyRequest)");
    }
}
