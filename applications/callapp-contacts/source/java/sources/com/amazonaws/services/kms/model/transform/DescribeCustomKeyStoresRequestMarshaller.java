package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.kms.model.DescribeCustomKeyStoresRequest;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/DescribeCustomKeyStoresRequestMarshaller.class */
public class DescribeCustomKeyStoresRequestMarshaller {
    public Request<DescribeCustomKeyStoresRequest> marshall(DescribeCustomKeyStoresRequest describeCustomKeyStoresRequest) {
        if (describeCustomKeyStoresRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(describeCustomKeyStoresRequest, "AWSKMS");
            defaultRequest.mo38714a("X-Amz-Target", "TrentService.DescribeCustomKeyStores");
            defaultRequest.mo38718a(HttpMethodName.POST);
            defaultRequest.mo38715a("/");
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter jsonWriter = JsonUtils.getJsonWriter(stringWriter);
                jsonWriter.beginObject();
                if (describeCustomKeyStoresRequest.getCustomKeyStoreId() != null) {
                    String customKeyStoreId = describeCustomKeyStoresRequest.getCustomKeyStoreId();
                    jsonWriter.name("CustomKeyStoreId");
                    jsonWriter.value(customKeyStoreId);
                }
                if (describeCustomKeyStoresRequest.getCustomKeyStoreName() != null) {
                    String customKeyStoreName = describeCustomKeyStoresRequest.getCustomKeyStoreName();
                    jsonWriter.name("CustomKeyStoreName");
                    jsonWriter.value(customKeyStoreName);
                }
                if (describeCustomKeyStoresRequest.getLimit() != null) {
                    Integer limit = describeCustomKeyStoresRequest.getLimit();
                    jsonWriter.name("Limit");
                    jsonWriter.value(limit);
                }
                if (describeCustomKeyStoresRequest.getMarker() != null) {
                    String marker = describeCustomKeyStoresRequest.getMarker();
                    jsonWriter.name("Marker");
                    jsonWriter.value(marker);
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
        throw new AmazonClientException("Invalid argument passed to marshall(DescribeCustomKeyStoresRequest)");
    }
}
