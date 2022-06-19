package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.kms.model.SignRequest;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.nio.ByteBuffer;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/SignRequestMarshaller.class */
public class SignRequestMarshaller {
    public Request<SignRequest> marshall(SignRequest signRequest) {
        if (signRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(signRequest, "AWSKMS");
            defaultRequest.mo38714a("X-Amz-Target", "TrentService.Sign");
            defaultRequest.mo38718a(HttpMethodName.POST);
            defaultRequest.mo38715a("/");
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter jsonWriter = JsonUtils.getJsonWriter(stringWriter);
                jsonWriter.beginObject();
                if (signRequest.getKeyId() != null) {
                    String keyId = signRequest.getKeyId();
                    jsonWriter.name("KeyId");
                    jsonWriter.value(keyId);
                }
                if (signRequest.getMessage() != null) {
                    ByteBuffer message = signRequest.getMessage();
                    jsonWriter.name("Message");
                    jsonWriter.value(message);
                }
                if (signRequest.getMessageType() != null) {
                    String messageType = signRequest.getMessageType();
                    jsonWriter.name("MessageType");
                    jsonWriter.value(messageType);
                }
                if (signRequest.getGrantTokens() != null) {
                    List<String> grantTokens = signRequest.getGrantTokens();
                    jsonWriter.name("GrantTokens");
                    jsonWriter.beginArray();
                    for (String str : grantTokens) {
                        if (str != null) {
                            jsonWriter.value(str);
                        }
                    }
                    jsonWriter.endArray();
                }
                if (signRequest.getSigningAlgorithm() != null) {
                    String signingAlgorithm = signRequest.getSigningAlgorithm();
                    jsonWriter.name("SigningAlgorithm");
                    jsonWriter.value(signingAlgorithm);
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
        throw new AmazonClientException("Invalid argument passed to marshall(SignRequest)");
    }
}
