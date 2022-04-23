package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.IdentityPoolShortDescription;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/IdentityPoolShortDescriptionJsonUnmarshaller.class */
class IdentityPoolShortDescriptionJsonUnmarshaller implements Unmarshaller<IdentityPoolShortDescription, JsonUnmarshallerContext> {
    private static IdentityPoolShortDescriptionJsonUnmarshaller instance;

    IdentityPoolShortDescriptionJsonUnmarshaller() {
    }

    public static IdentityPoolShortDescriptionJsonUnmarshaller getInstance() {
        if (instance == null) {
            instance = new IdentityPoolShortDescriptionJsonUnmarshaller();
        }
        return instance;
    }

    public IdentityPoolShortDescription unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        AwsJsonReader reader = jsonUnmarshallerContext.getReader();
        if (!reader.isContainer()) {
            reader.skipValue();
            return null;
        }
        IdentityPoolShortDescription identityPoolShortDescription = new IdentityPoolShortDescription();
        reader.beginObject();
        while (reader.hasNext()) {
            String nextName = reader.nextName();
            if (nextName.equals("IdentityPoolId")) {
                identityPoolShortDescription.setIdentityPoolId(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else if (nextName.equals("IdentityPoolName")) {
                identityPoolShortDescription.setIdentityPoolName(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return identityPoolShortDescription;
    }
}
