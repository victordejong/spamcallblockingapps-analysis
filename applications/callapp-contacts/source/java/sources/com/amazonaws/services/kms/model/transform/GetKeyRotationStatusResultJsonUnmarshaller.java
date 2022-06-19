package com.amazonaws.services.kms.model.transform;

import com.amazonaws.services.kms.model.GetKeyRotationStatusResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/GetKeyRotationStatusResultJsonUnmarshaller.class */
public class GetKeyRotationStatusResultJsonUnmarshaller implements Unmarshaller<GetKeyRotationStatusResult, JsonUnmarshallerContext> {
    private static GetKeyRotationStatusResultJsonUnmarshaller instance;

    public static GetKeyRotationStatusResultJsonUnmarshaller getInstance() {
        if (instance == null) {
            instance = new GetKeyRotationStatusResultJsonUnmarshaller();
        }
        return instance;
    }

    public GetKeyRotationStatusResult unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        GetKeyRotationStatusResult getKeyRotationStatusResult = new GetKeyRotationStatusResult();
        AwsJsonReader reader = jsonUnmarshallerContext.getReader();
        reader.beginObject();
        while (reader.hasNext()) {
            if (reader.nextName().equals("KeyRotationEnabled")) {
                getKeyRotationStatusResult.setKeyRotationEnabled(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return getKeyRotationStatusResult;
    }
}
