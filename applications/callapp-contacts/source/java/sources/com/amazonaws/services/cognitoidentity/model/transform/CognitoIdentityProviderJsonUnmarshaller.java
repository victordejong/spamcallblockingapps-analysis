package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.CognitoIdentityProvider;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/CognitoIdentityProviderJsonUnmarshaller.class */
class CognitoIdentityProviderJsonUnmarshaller implements Unmarshaller<CognitoIdentityProvider, JsonUnmarshallerContext> {
    private static CognitoIdentityProviderJsonUnmarshaller instance;

    CognitoIdentityProviderJsonUnmarshaller() {
    }

    public static CognitoIdentityProviderJsonUnmarshaller getInstance() {
        if (instance == null) {
            instance = new CognitoIdentityProviderJsonUnmarshaller();
        }
        return instance;
    }

    public CognitoIdentityProvider unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        AwsJsonReader reader = jsonUnmarshallerContext.getReader();
        if (!reader.isContainer()) {
            reader.skipValue();
            return null;
        }
        CognitoIdentityProvider cognitoIdentityProvider = new CognitoIdentityProvider();
        reader.beginObject();
        while (reader.hasNext()) {
            String nextName = reader.nextName();
            if (nextName.equals("ProviderName")) {
                cognitoIdentityProvider.setProviderName(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else if (nextName.equals("ClientId")) {
                cognitoIdentityProvider.setClientId(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else if (nextName.equals("ServerSideTokenCheck")) {
                cognitoIdentityProvider.setServerSideTokenCheck(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return cognitoIdentityProvider;
    }
}
