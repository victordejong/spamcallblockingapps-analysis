package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentity.model.LookupDeveloperIdentityRequest;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/LookupDeveloperIdentityRequestMarshaller.class */
public class LookupDeveloperIdentityRequestMarshaller {
    public Request<LookupDeveloperIdentityRequest> marshall(LookupDeveloperIdentityRequest lookupDeveloperIdentityRequest) {
        if (lookupDeveloperIdentityRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(lookupDeveloperIdentityRequest, "AmazonCognitoIdentity");
            defaultRequest.mo38714a("X-Amz-Target", "AWSCognitoIdentityService.LookupDeveloperIdentity");
            defaultRequest.mo38718a(HttpMethodName.POST);
            defaultRequest.mo38715a("/");
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter jsonWriter = JsonUtils.getJsonWriter(stringWriter);
                jsonWriter.beginObject();
                if (lookupDeveloperIdentityRequest.getIdentityPoolId() != null) {
                    String identityPoolId = lookupDeveloperIdentityRequest.getIdentityPoolId();
                    jsonWriter.name("IdentityPoolId");
                    jsonWriter.value(identityPoolId);
                }
                if (lookupDeveloperIdentityRequest.getIdentityId() != null) {
                    String identityId = lookupDeveloperIdentityRequest.getIdentityId();
                    jsonWriter.name("IdentityId");
                    jsonWriter.value(identityId);
                }
                if (lookupDeveloperIdentityRequest.getDeveloperUserIdentifier() != null) {
                    String developerUserIdentifier = lookupDeveloperIdentityRequest.getDeveloperUserIdentifier();
                    jsonWriter.name("DeveloperUserIdentifier");
                    jsonWriter.value(developerUserIdentifier);
                }
                if (lookupDeveloperIdentityRequest.getMaxResults() != null) {
                    Integer maxResults = lookupDeveloperIdentityRequest.getMaxResults();
                    jsonWriter.name("MaxResults");
                    jsonWriter.value(maxResults);
                }
                if (lookupDeveloperIdentityRequest.getNextToken() != null) {
                    String nextToken = lookupDeveloperIdentityRequest.getNextToken();
                    jsonWriter.name("NextToken");
                    jsonWriter.value(nextToken);
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
        throw new AmazonClientException("Invalid argument passed to marshall(LookupDeveloperIdentityRequest)");
    }
}
