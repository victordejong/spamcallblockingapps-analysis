package com.amazonaws.services.kms.model.transform;

import com.amazonaws.services.kms.model.VerifyResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/VerifyResultJsonUnmarshaller.class */
public class VerifyResultJsonUnmarshaller implements Unmarshaller<VerifyResult, JsonUnmarshallerContext> {
    private static VerifyResultJsonUnmarshaller instance;

    public static VerifyResultJsonUnmarshaller getInstance() {
        if (instance == null) {
            instance = new VerifyResultJsonUnmarshaller();
        }
        return instance;
    }

    public VerifyResult unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        VerifyResult verifyResult = new VerifyResult();
        AwsJsonReader reader = jsonUnmarshallerContext.getReader();
        reader.beginObject();
        while (reader.hasNext()) {
            String nextName = reader.nextName();
            if (nextName.equals("KeyId")) {
                verifyResult.setKeyId(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else if (nextName.equals("SignatureValid")) {
                verifyResult.setSignatureValid(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else if (nextName.equals("SigningAlgorithm")) {
                verifyResult.setSigningAlgorithm(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return verifyResult;
    }
}
