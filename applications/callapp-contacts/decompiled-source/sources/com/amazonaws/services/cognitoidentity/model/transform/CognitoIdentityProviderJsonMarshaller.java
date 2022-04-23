package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.CognitoIdentityProvider;
import com.amazonaws.util.json.AwsJsonWriter;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/CognitoIdentityProviderJsonMarshaller.class */
class CognitoIdentityProviderJsonMarshaller {
    private static CognitoIdentityProviderJsonMarshaller instance;

    CognitoIdentityProviderJsonMarshaller() {
    }

    public static CognitoIdentityProviderJsonMarshaller getInstance() {
        if (instance == null) {
            instance = new CognitoIdentityProviderJsonMarshaller();
        }
        return instance;
    }

    public void marshall(CognitoIdentityProvider cognitoIdentityProvider, AwsJsonWriter awsJsonWriter) throws Exception {
        awsJsonWriter.beginObject();
        if (cognitoIdentityProvider.getProviderName() != null) {
            String providerName = cognitoIdentityProvider.getProviderName();
            awsJsonWriter.name("ProviderName");
            awsJsonWriter.value(providerName);
        }
        if (cognitoIdentityProvider.getClientId() != null) {
            String clientId = cognitoIdentityProvider.getClientId();
            awsJsonWriter.name("ClientId");
            awsJsonWriter.value(clientId);
        }
        if (cognitoIdentityProvider.getServerSideTokenCheck() != null) {
            Boolean serverSideTokenCheck = cognitoIdentityProvider.getServerSideTokenCheck();
            awsJsonWriter.name("ServerSideTokenCheck");
            awsJsonWriter.value(serverSideTokenCheck.booleanValue());
        }
        awsJsonWriter.endObject();
    }
}
