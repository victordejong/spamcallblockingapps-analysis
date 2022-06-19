package com.amazonaws.services.kms.model.transform;

import com.amazonaws.services.kms.model.ConnectCustomKeyStoreResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/ConnectCustomKeyStoreResultJsonUnmarshaller.class */
public class ConnectCustomKeyStoreResultJsonUnmarshaller implements Unmarshaller<ConnectCustomKeyStoreResult, JsonUnmarshallerContext> {
    private static ConnectCustomKeyStoreResultJsonUnmarshaller instance;

    public static ConnectCustomKeyStoreResultJsonUnmarshaller getInstance() {
        if (instance == null) {
            instance = new ConnectCustomKeyStoreResultJsonUnmarshaller();
        }
        return instance;
    }

    public ConnectCustomKeyStoreResult unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        return new ConnectCustomKeyStoreResult();
    }
}
