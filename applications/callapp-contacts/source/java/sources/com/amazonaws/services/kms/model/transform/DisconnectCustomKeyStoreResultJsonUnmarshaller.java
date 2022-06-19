package com.amazonaws.services.kms.model.transform;

import com.amazonaws.services.kms.model.DisconnectCustomKeyStoreResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/DisconnectCustomKeyStoreResultJsonUnmarshaller.class */
public class DisconnectCustomKeyStoreResultJsonUnmarshaller implements Unmarshaller<DisconnectCustomKeyStoreResult, JsonUnmarshallerContext> {
    private static DisconnectCustomKeyStoreResultJsonUnmarshaller instance;

    public static DisconnectCustomKeyStoreResultJsonUnmarshaller getInstance() {
        if (instance == null) {
            instance = new DisconnectCustomKeyStoreResultJsonUnmarshaller();
        }
        return instance;
    }

    public DisconnectCustomKeyStoreResult unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        return new DisconnectCustomKeyStoreResult();
    }
}
