package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentity.model.MergeDeveloperIdentitiesRequest;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/MergeDeveloperIdentitiesRequestMarshaller.class */
public class MergeDeveloperIdentitiesRequestMarshaller {
    public Request<MergeDeveloperIdentitiesRequest> marshall(MergeDeveloperIdentitiesRequest mergeDeveloperIdentitiesRequest) {
        if (mergeDeveloperIdentitiesRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(mergeDeveloperIdentitiesRequest, "AmazonCognitoIdentity");
            defaultRequest.mo38714a("X-Amz-Target", "AWSCognitoIdentityService.MergeDeveloperIdentities");
            defaultRequest.mo38718a(HttpMethodName.POST);
            defaultRequest.mo38715a("/");
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter jsonWriter = JsonUtils.getJsonWriter(stringWriter);
                jsonWriter.beginObject();
                if (mergeDeveloperIdentitiesRequest.getSourceUserIdentifier() != null) {
                    String sourceUserIdentifier = mergeDeveloperIdentitiesRequest.getSourceUserIdentifier();
                    jsonWriter.name("SourceUserIdentifier");
                    jsonWriter.value(sourceUserIdentifier);
                }
                if (mergeDeveloperIdentitiesRequest.getDestinationUserIdentifier() != null) {
                    String destinationUserIdentifier = mergeDeveloperIdentitiesRequest.getDestinationUserIdentifier();
                    jsonWriter.name("DestinationUserIdentifier");
                    jsonWriter.value(destinationUserIdentifier);
                }
                if (mergeDeveloperIdentitiesRequest.getDeveloperProviderName() != null) {
                    String developerProviderName = mergeDeveloperIdentitiesRequest.getDeveloperProviderName();
                    jsonWriter.name("DeveloperProviderName");
                    jsonWriter.value(developerProviderName);
                }
                if (mergeDeveloperIdentitiesRequest.getIdentityPoolId() != null) {
                    String identityPoolId = mergeDeveloperIdentitiesRequest.getIdentityPoolId();
                    jsonWriter.name("IdentityPoolId");
                    jsonWriter.value(identityPoolId);
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
        throw new AmazonClientException("Invalid argument passed to marshall(MergeDeveloperIdentitiesRequest)");
    }
}
