package com.amazonaws.services.kms.model.transform;

import com.amazonaws.services.kms.model.GetParametersForImportResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/GetParametersForImportResultJsonUnmarshaller.class */
public class GetParametersForImportResultJsonUnmarshaller implements Unmarshaller<GetParametersForImportResult, JsonUnmarshallerContext> {
    private static GetParametersForImportResultJsonUnmarshaller instance;

    public static GetParametersForImportResultJsonUnmarshaller getInstance() {
        if (instance == null) {
            instance = new GetParametersForImportResultJsonUnmarshaller();
        }
        return instance;
    }

    public GetParametersForImportResult unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        GetParametersForImportResult getParametersForImportResult = new GetParametersForImportResult();
        AwsJsonReader reader = jsonUnmarshallerContext.getReader();
        reader.beginObject();
        while (reader.hasNext()) {
            String nextName = reader.nextName();
            if (nextName.equals("KeyId")) {
                getParametersForImportResult.setKeyId(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else if (nextName.equals("ImportToken")) {
                getParametersForImportResult.setImportToken(SimpleTypeJsonUnmarshallers.ByteBufferJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else if (nextName.equals("PublicKey")) {
                getParametersForImportResult.setPublicKey(SimpleTypeJsonUnmarshallers.ByteBufferJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else if (nextName.equals("ParametersValidTo")) {
                getParametersForImportResult.setParametersValidTo(SimpleTypeJsonUnmarshallers.DateJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return getParametersForImportResult;
    }
}
