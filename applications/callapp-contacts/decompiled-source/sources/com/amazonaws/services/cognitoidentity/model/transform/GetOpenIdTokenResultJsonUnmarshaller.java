package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.GetOpenIdTokenResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenResultJsonUnmarshaller.class */
public class GetOpenIdTokenResultJsonUnmarshaller implements Unmarshaller<GetOpenIdTokenResult, JsonUnmarshallerContext> {
    private static GetOpenIdTokenResultJsonUnmarshaller instance;

    public static GetOpenIdTokenResultJsonUnmarshaller getInstance() {
        if (instance == null) {
            instance = new GetOpenIdTokenResultJsonUnmarshaller();
        }
        return instance;
    }

    public GetOpenIdTokenResult unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        GetOpenIdTokenResult getOpenIdTokenResult = new GetOpenIdTokenResult();
        AwsJsonReader reader = jsonUnmarshallerContext.getReader();
        reader.beginObject();
        while (reader.hasNext()) {
            String nextName = reader.nextName();
            if (nextName.equals("IdentityId")) {
                getOpenIdTokenResult.setIdentityId(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else if (nextName.equals("Token")) {
                getOpenIdTokenResult.setToken(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return getOpenIdTokenResult;
    }
}
