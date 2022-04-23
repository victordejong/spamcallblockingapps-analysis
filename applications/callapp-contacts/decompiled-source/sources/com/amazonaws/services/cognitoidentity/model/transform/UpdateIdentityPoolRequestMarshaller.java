package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentity.model.CognitoIdentityProvider;
import com.amazonaws.services.cognitoidentity.model.UpdateIdentityPoolRequest;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/UpdateIdentityPoolRequestMarshaller.class */
public class UpdateIdentityPoolRequestMarshaller {
    public Request<UpdateIdentityPoolRequest> marshall(UpdateIdentityPoolRequest updateIdentityPoolRequest) {
        if (updateIdentityPoolRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(updateIdentityPoolRequest, "AmazonCognitoIdentity");
            defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityService.UpdateIdentityPool");
            defaultRequest.a(HttpMethodName.POST);
            defaultRequest.a("/");
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter jsonWriter = JsonUtils.getJsonWriter(stringWriter);
                jsonWriter.beginObject();
                if (updateIdentityPoolRequest.getIdentityPoolId() != null) {
                    String identityPoolId = updateIdentityPoolRequest.getIdentityPoolId();
                    jsonWriter.name("IdentityPoolId");
                    jsonWriter.value(identityPoolId);
                }
                if (updateIdentityPoolRequest.getIdentityPoolName() != null) {
                    String identityPoolName = updateIdentityPoolRequest.getIdentityPoolName();
                    jsonWriter.name("IdentityPoolName");
                    jsonWriter.value(identityPoolName);
                }
                if (updateIdentityPoolRequest.getAllowUnauthenticatedIdentities() != null) {
                    Boolean allowUnauthenticatedIdentities = updateIdentityPoolRequest.getAllowUnauthenticatedIdentities();
                    jsonWriter.name("AllowUnauthenticatedIdentities");
                    jsonWriter.value(allowUnauthenticatedIdentities.booleanValue());
                }
                if (updateIdentityPoolRequest.getAllowClassicFlow() != null) {
                    Boolean allowClassicFlow = updateIdentityPoolRequest.getAllowClassicFlow();
                    jsonWriter.name("AllowClassicFlow");
                    jsonWriter.value(allowClassicFlow.booleanValue());
                }
                if (updateIdentityPoolRequest.getSupportedLoginProviders() != null) {
                    Map<String, String> supportedLoginProviders = updateIdentityPoolRequest.getSupportedLoginProviders();
                    jsonWriter.name("SupportedLoginProviders");
                    jsonWriter.beginObject();
                    for (Map.Entry<String, String> entry : supportedLoginProviders.entrySet()) {
                        String value = entry.getValue();
                        if (value != null) {
                            jsonWriter.name(entry.getKey());
                            jsonWriter.value(value);
                        }
                    }
                    jsonWriter.endObject();
                }
                if (updateIdentityPoolRequest.getDeveloperProviderName() != null) {
                    String developerProviderName = updateIdentityPoolRequest.getDeveloperProviderName();
                    jsonWriter.name("DeveloperProviderName");
                    jsonWriter.value(developerProviderName);
                }
                if (updateIdentityPoolRequest.getOpenIdConnectProviderARNs() != null) {
                    List<String> openIdConnectProviderARNs = updateIdentityPoolRequest.getOpenIdConnectProviderARNs();
                    jsonWriter.name("OpenIdConnectProviderARNs");
                    jsonWriter.beginArray();
                    for (String str : openIdConnectProviderARNs) {
                        if (str != null) {
                            jsonWriter.value(str);
                        }
                    }
                    jsonWriter.endArray();
                }
                if (updateIdentityPoolRequest.getCognitoIdentityProviders() != null) {
                    List<CognitoIdentityProvider> cognitoIdentityProviders = updateIdentityPoolRequest.getCognitoIdentityProviders();
                    jsonWriter.name("CognitoIdentityProviders");
                    jsonWriter.beginArray();
                    for (CognitoIdentityProvider cognitoIdentityProvider : cognitoIdentityProviders) {
                        if (cognitoIdentityProvider != null) {
                            CognitoIdentityProviderJsonMarshaller.getInstance().marshall(cognitoIdentityProvider, jsonWriter);
                        }
                    }
                    jsonWriter.endArray();
                }
                if (updateIdentityPoolRequest.getSamlProviderARNs() != null) {
                    List<String> samlProviderARNs = updateIdentityPoolRequest.getSamlProviderARNs();
                    jsonWriter.name("SamlProviderARNs");
                    jsonWriter.beginArray();
                    for (String str2 : samlProviderARNs) {
                        if (str2 != null) {
                            jsonWriter.value(str2);
                        }
                    }
                    jsonWriter.endArray();
                }
                if (updateIdentityPoolRequest.getIdentityPoolTags() != null) {
                    Map<String, String> identityPoolTags = updateIdentityPoolRequest.getIdentityPoolTags();
                    jsonWriter.name("IdentityPoolTags");
                    jsonWriter.beginObject();
                    for (Map.Entry<String, String> entry2 : identityPoolTags.entrySet()) {
                        String value2 = entry2.getValue();
                        if (value2 != null) {
                            jsonWriter.name(entry2.getKey());
                            jsonWriter.value(value2);
                        }
                    }
                    jsonWriter.endObject();
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
            throw new AmazonClientException("Invalid argument passed to marshall(UpdateIdentityPoolRequest)");
        }
    }
}
