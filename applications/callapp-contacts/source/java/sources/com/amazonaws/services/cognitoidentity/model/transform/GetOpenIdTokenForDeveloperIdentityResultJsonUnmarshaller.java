package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.GetOpenIdTokenForDeveloperIdentityResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller.class */
public class GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller implements Unmarshaller<GetOpenIdTokenForDeveloperIdentityResult, JsonUnmarshallerContext> {
    private static GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller instance;

    public static GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller getInstance() {
        if (instance == null) {
            instance = new GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller();
        }
        return instance;
    }

    public GetOpenIdTokenForDeveloperIdentityResult unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        GetOpenIdTokenForDeveloperIdentityResult getOpenIdTokenForDeveloperIdentityResult = new GetOpenIdTokenForDeveloperIdentityResult();
        AwsJsonReader reader = jsonUnmarshallerContext.getReader();
        reader.beginObject();
        while (reader.hasNext()) {
            String nextName = reader.nextName();
            if (nextName.equals("IdentityId")) {
                getOpenIdTokenForDeveloperIdentityResult.setIdentityId(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else if (nextName.equals("Token")) {
                getOpenIdTokenForDeveloperIdentityResult.setToken(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return getOpenIdTokenForDeveloperIdentityResult;
    }
}
