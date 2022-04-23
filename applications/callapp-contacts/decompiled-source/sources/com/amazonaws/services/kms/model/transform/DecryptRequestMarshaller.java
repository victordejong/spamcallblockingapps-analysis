package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.kms.model.DecryptRequest;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/DecryptRequestMarshaller.class */
public class DecryptRequestMarshaller {
    public Request<DecryptRequest> marshall(DecryptRequest decryptRequest) {
        if (decryptRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(decryptRequest, "AWSKMS");
            defaultRequest.a("X-Amz-Target", "TrentService.Decrypt");
            defaultRequest.a(HttpMethodName.POST);
            defaultRequest.a("/");
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter jsonWriter = JsonUtils.getJsonWriter(stringWriter);
                jsonWriter.beginObject();
                if (decryptRequest.getCiphertextBlob() != null) {
                    ByteBuffer ciphertextBlob = decryptRequest.getCiphertextBlob();
                    jsonWriter.name("CiphertextBlob");
                    jsonWriter.value(ciphertextBlob);
                }
                if (decryptRequest.getEncryptionContext() != null) {
                    Map<String, String> encryptionContext = decryptRequest.getEncryptionContext();
                    jsonWriter.name("EncryptionContext");
                    jsonWriter.beginObject();
                    for (Map.Entry<String, String> entry : encryptionContext.entrySet()) {
                        String value = entry.getValue();
                        if (value != null) {
                            jsonWriter.name(entry.getKey());
                            jsonWriter.value(value);
                        }
                    }
                    jsonWriter.endObject();
                }
                if (decryptRequest.getGrantTokens() != null) {
                    List<String> grantTokens = decryptRequest.getGrantTokens();
                    jsonWriter.name("GrantTokens");
                    jsonWriter.beginArray();
                    for (String str : grantTokens) {
                        if (str != null) {
                            jsonWriter.value(str);
                        }
                    }
                    jsonWriter.endArray();
                }
                if (decryptRequest.getKeyId() != null) {
                    String keyId = decryptRequest.getKeyId();
                    jsonWriter.name("KeyId");
                    jsonWriter.value(keyId);
                }
                if (decryptRequest.getEncryptionAlgorithm() != null) {
                    String encryptionAlgorithm = decryptRequest.getEncryptionAlgorithm();
                    jsonWriter.name("EncryptionAlgorithm");
                    jsonWriter.value(encryptionAlgorithm);
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
            throw new AmazonClientException("Invalid argument passed to marshall(DecryptRequest)");
        }
    }
}
