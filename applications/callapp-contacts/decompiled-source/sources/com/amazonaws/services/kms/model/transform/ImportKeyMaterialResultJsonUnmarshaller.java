package com.amazonaws.services.kms.model.transform;

import com.amazonaws.services.kms.model.ImportKeyMaterialResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/ImportKeyMaterialResultJsonUnmarshaller.class */
public class ImportKeyMaterialResultJsonUnmarshaller implements Unmarshaller<ImportKeyMaterialResult, JsonUnmarshallerContext> {
    private static ImportKeyMaterialResultJsonUnmarshaller instance;

    public static ImportKeyMaterialResultJsonUnmarshaller getInstance() {
        if (instance == null) {
            instance = new ImportKeyMaterialResultJsonUnmarshaller();
        }
        return instance;
    }

    public ImportKeyMaterialResult unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        return new ImportKeyMaterialResult();
    }
}
