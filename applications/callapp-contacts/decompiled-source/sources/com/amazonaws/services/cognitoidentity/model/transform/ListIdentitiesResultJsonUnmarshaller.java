package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.ListIdentitiesResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/ListIdentitiesResultJsonUnmarshaller.class */
public class ListIdentitiesResultJsonUnmarshaller implements Unmarshaller<ListIdentitiesResult, JsonUnmarshallerContext> {
    private static ListIdentitiesResultJsonUnmarshaller instance;

    public static ListIdentitiesResultJsonUnmarshaller getInstance() {
        if (instance == null) {
            instance = new ListIdentitiesResultJsonUnmarshaller();
        }
        return instance;
    }

    public ListIdentitiesResult unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        ListIdentitiesResult listIdentitiesResult = new ListIdentitiesResult();
        AwsJsonReader reader = jsonUnmarshallerContext.getReader();
        reader.beginObject();
        while (reader.hasNext()) {
            String nextName = reader.nextName();
            if (nextName.equals("IdentityPoolId")) {
                listIdentitiesResult.setIdentityPoolId(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else if (nextName.equals("Identities")) {
                listIdentitiesResult.setIdentities(new ListUnmarshaller(IdentityDescriptionJsonUnmarshaller.getInstance()).unmarshall(jsonUnmarshallerContext));
            } else if (nextName.equals("NextToken")) {
                listIdentitiesResult.setNextToken(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return listIdentitiesResult;
    }
}
