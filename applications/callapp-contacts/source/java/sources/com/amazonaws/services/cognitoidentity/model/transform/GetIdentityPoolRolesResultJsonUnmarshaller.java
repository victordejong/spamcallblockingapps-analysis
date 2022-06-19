package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.GetIdentityPoolRolesResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.MapUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/GetIdentityPoolRolesResultJsonUnmarshaller.class */
public class GetIdentityPoolRolesResultJsonUnmarshaller implements Unmarshaller<GetIdentityPoolRolesResult, JsonUnmarshallerContext> {
    private static GetIdentityPoolRolesResultJsonUnmarshaller instance;

    public static GetIdentityPoolRolesResultJsonUnmarshaller getInstance() {
        if (instance == null) {
            instance = new GetIdentityPoolRolesResultJsonUnmarshaller();
        }
        return instance;
    }

    public GetIdentityPoolRolesResult unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        GetIdentityPoolRolesResult getIdentityPoolRolesResult = new GetIdentityPoolRolesResult();
        AwsJsonReader reader = jsonUnmarshallerContext.getReader();
        reader.beginObject();
        while (reader.hasNext()) {
            String nextName = reader.nextName();
            if (nextName.equals("IdentityPoolId")) {
                getIdentityPoolRolesResult.setIdentityPoolId(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else if (nextName.equals("Roles")) {
                getIdentityPoolRolesResult.setRoles(new MapUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance()).unmarshall(jsonUnmarshallerContext));
            } else if (nextName.equals("RoleMappings")) {
                getIdentityPoolRolesResult.setRoleMappings(new MapUnmarshaller(RoleMappingJsonUnmarshaller.getInstance()).unmarshall(jsonUnmarshallerContext));
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return getIdentityPoolRolesResult;
    }
}
