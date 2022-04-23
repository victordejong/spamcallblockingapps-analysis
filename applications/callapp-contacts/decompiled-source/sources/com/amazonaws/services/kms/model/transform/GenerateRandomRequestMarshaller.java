package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.kms.model.GenerateRandomRequest;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/GenerateRandomRequestMarshaller.class */
public class GenerateRandomRequestMarshaller {
    public Request<GenerateRandomRequest> marshall(GenerateRandomRequest generateRandomRequest) {
        if (generateRandomRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(generateRandomRequest, "AWSKMS");
            defaultRequest.a("X-Amz-Target", "TrentService.GenerateRandom");
            defaultRequest.a(HttpMethodName.POST);
            defaultRequest.a("/");
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter jsonWriter = JsonUtils.getJsonWriter(stringWriter);
                jsonWriter.beginObject();
                if (generateRandomRequest.getNumberOfBytes() != null) {
                    Integer numberOfBytes = generateRandomRequest.getNumberOfBytes();
                    jsonWriter.name("NumberOfBytes");
                    jsonWriter.value(numberOfBytes);
                }
                if (generateRandomRequest.getCustomKeyStoreId() != null) {
                    String customKeyStoreId = generateRandomRequest.getCustomKeyStoreId();
                    jsonWriter.name("CustomKeyStoreId");
                    jsonWriter.value(customKeyStoreId);
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
            throw new AmazonClientException("Invalid argument passed to marshall(GenerateRandomRequest)");
        }
    }
}
