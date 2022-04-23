package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.kms.model.DeleteCustomKeyStoreRequest;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/DeleteCustomKeyStoreRequestMarshaller.class */
public class DeleteCustomKeyStoreRequestMarshaller {
    public Request<DeleteCustomKeyStoreRequest> marshall(DeleteCustomKeyStoreRequest deleteCustomKeyStoreRequest) {
        if (deleteCustomKeyStoreRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(deleteCustomKeyStoreRequest, "AWSKMS");
            defaultRequest.a("X-Amz-Target", "TrentService.DeleteCustomKeyStore");
            defaultRequest.a(HttpMethodName.POST);
            defaultRequest.a("/");
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter jsonWriter = JsonUtils.getJsonWriter(stringWriter);
                jsonWriter.beginObject();
                if (deleteCustomKeyStoreRequest.getCustomKeyStoreId() != null) {
                    String customKeyStoreId = deleteCustomKeyStoreRequest.getCustomKeyStoreId();
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
            throw new AmazonClientException("Invalid argument passed to marshall(DeleteCustomKeyStoreRequest)");
        }
    }
}
