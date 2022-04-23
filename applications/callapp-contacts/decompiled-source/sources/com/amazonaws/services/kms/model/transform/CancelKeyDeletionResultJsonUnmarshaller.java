package com.amazonaws.services.kms.model.transform;

import com.amazonaws.services.kms.model.CancelKeyDeletionResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/CancelKeyDeletionResultJsonUnmarshaller.class */
public class CancelKeyDeletionResultJsonUnmarshaller implements Unmarshaller<CancelKeyDeletionResult, JsonUnmarshallerContext> {
    private static CancelKeyDeletionResultJsonUnmarshaller instance;

    public static CancelKeyDeletionResultJsonUnmarshaller getInstance() {
        if (instance == null) {
            instance = new CancelKeyDeletionResultJsonUnmarshaller();
        }
        return instance;
    }

    public CancelKeyDeletionResult unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        CancelKeyDeletionResult cancelKeyDeletionResult = new CancelKeyDeletionResult();
        AwsJsonReader reader = jsonUnmarshallerContext.getReader();
        reader.beginObject();
        while (reader.hasNext()) {
            if (reader.nextName().equals("KeyId")) {
                cancelKeyDeletionResult.setKeyId(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return cancelKeyDeletionResult;
    }
}
