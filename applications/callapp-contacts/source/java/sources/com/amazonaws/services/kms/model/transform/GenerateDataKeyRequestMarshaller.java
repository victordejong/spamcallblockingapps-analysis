package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.kms.model.GenerateDataKeyRequest;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/GenerateDataKeyRequestMarshaller.class */
public class GenerateDataKeyRequestMarshaller {
    public Request<GenerateDataKeyRequest> marshall(GenerateDataKeyRequest generateDataKeyRequest) {
        if (generateDataKeyRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(generateDataKeyRequest, "AWSKMS");
            defaultRequest.mo38714a("X-Amz-Target", "TrentService.GenerateDataKey");
            defaultRequest.mo38718a(HttpMethodName.POST);
            defaultRequest.mo38715a("/");
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter jsonWriter = JsonUtils.getJsonWriter(stringWriter);
                jsonWriter.beginObject();
                if (generateDataKeyRequest.getKeyId() != null) {
                    String keyId = generateDataKeyRequest.getKeyId();
                    jsonWriter.name("KeyId");
                    jsonWriter.value(keyId);
                }
                if (generateDataKeyRequest.getEncryptionContext() != null) {
                    Map<String, String> encryptionContext = generateDataKeyRequest.getEncryptionContext();
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
                if (generateDataKeyRequest.getNumberOfBytes() != null) {
                    Integer numberOfBytes = generateDataKeyRequest.getNumberOfBytes();
                    jsonWriter.name("NumberOfBytes");
                    jsonWriter.value(numberOfBytes);
                }
                if (generateDataKeyRequest.getKeySpec() != null) {
                    String keySpec = generateDataKeyRequest.getKeySpec();
                    jsonWriter.name("KeySpec");
                    jsonWriter.value(keySpec);
                }
                if (generateDataKeyRequest.getGrantTokens() != null) {
                    List<String> grantTokens = generateDataKeyRequest.getGrantTokens();
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
        throw new AmazonClientException("Invalid argument passed to marshall(GenerateDataKeyRequest)");
    }
}
