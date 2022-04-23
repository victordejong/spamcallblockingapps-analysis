package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.MergeDeveloperIdentitiesResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/MergeDeveloperIdentitiesResultJsonUnmarshaller.class */
public class MergeDeveloperIdentitiesResultJsonUnmarshaller implements Unmarshaller<MergeDeveloperIdentitiesResult, JsonUnmarshallerContext> {
    private static MergeDeveloperIdentitiesResultJsonUnmarshaller instance;

    public static MergeDeveloperIdentitiesResultJsonUnmarshaller getInstance() {
        if (instance == null) {
            instance = new MergeDeveloperIdentitiesResultJsonUnmarshaller();
        }
        return instance;
    }

    public MergeDeveloperIdentitiesResult unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        MergeDeveloperIdentitiesResult mergeDeveloperIdentitiesResult = new MergeDeveloperIdentitiesResult();
        AwsJsonReader reader = jsonUnmarshallerContext.getReader();
        reader.beginObject();
        while (reader.hasNext()) {
            if (reader.nextName().equals("IdentityId")) {
                mergeDeveloperIdentitiesResult.setIdentityId(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return mergeDeveloperIdentitiesResult;
    }
}
