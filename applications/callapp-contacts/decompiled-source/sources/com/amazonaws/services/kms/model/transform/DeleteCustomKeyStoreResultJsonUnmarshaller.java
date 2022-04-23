package com.amazonaws.services.kms.model.transform;

import com.amazonaws.services.kms.model.DeleteCustomKeyStoreResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/DeleteCustomKeyStoreResultJsonUnmarshaller.class */
public class DeleteCustomKeyStoreResultJsonUnmarshaller implements Unmarshaller<DeleteCustomKeyStoreResult, JsonUnmarshallerContext> {
    private static DeleteCustomKeyStoreResultJsonUnmarshaller instance;

    public static DeleteCustomKeyStoreResultJsonUnmarshaller getInstance() {
        if (instance == null) {
            instance = new DeleteCustomKeyStoreResultJsonUnmarshaller();
        }
        return instance;
    }

    public DeleteCustomKeyStoreResult unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        return new DeleteCustomKeyStoreResult();
    }
}
