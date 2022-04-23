package com.amazonaws.services.kms.model.transform;

import com.amazonaws.services.kms.model.CreateGrantResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/CreateGrantResultJsonUnmarshaller.class */
public class CreateGrantResultJsonUnmarshaller implements Unmarshaller<CreateGrantResult, JsonUnmarshallerContext> {
    private static CreateGrantResultJsonUnmarshaller instance;

    public static CreateGrantResultJsonUnmarshaller getInstance() {
        if (instance == null) {
            instance = new CreateGrantResultJsonUnmarshaller();
        }
        return instance;
    }

    public CreateGrantResult unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        CreateGrantResult createGrantResult = new CreateGrantResult();
        AwsJsonReader reader = jsonUnmarshallerContext.getReader();
        reader.beginObject();
        while (reader.hasNext()) {
            String nextName = reader.nextName();
            if (nextName.equals("GrantToken")) {
                createGrantResult.setGrantToken(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else if (nextName.equals("GrantId")) {
                createGrantResult.setGrantId(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return createGrantResult;
    }
}
