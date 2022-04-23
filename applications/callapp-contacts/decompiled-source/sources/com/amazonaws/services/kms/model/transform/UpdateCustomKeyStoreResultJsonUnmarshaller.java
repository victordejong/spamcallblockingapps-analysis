package com.amazonaws.services.kms.model.transform;

import com.amazonaws.services.kms.model.UpdateCustomKeyStoreResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/UpdateCustomKeyStoreResultJsonUnmarshaller.class */
public class UpdateCustomKeyStoreResultJsonUnmarshaller implements Unmarshaller<UpdateCustomKeyStoreResult, JsonUnmarshallerContext> {
    private static UpdateCustomKeyStoreResultJsonUnmarshaller instance;

    public static UpdateCustomKeyStoreResultJsonUnmarshaller getInstance() {
        if (instance == null) {
            instance = new UpdateCustomKeyStoreResultJsonUnmarshaller();
        }
        return instance;
    }

    public UpdateCustomKeyStoreResult unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        return new UpdateCustomKeyStoreResult();
    }
}
