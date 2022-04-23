package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.services.securitytoken.model.GetAccessKeyInfoResult;
import com.amazonaws.transform.SimpleTypeStaxUnmarshallers;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/GetAccessKeyInfoResultStaxUnmarshaller.class */
public class GetAccessKeyInfoResultStaxUnmarshaller implements Unmarshaller<GetAccessKeyInfoResult, StaxUnmarshallerContext> {
    private static GetAccessKeyInfoResultStaxUnmarshaller instance;

    public static GetAccessKeyInfoResultStaxUnmarshaller getInstance() {
        if (instance == null) {
            instance = new GetAccessKeyInfoResultStaxUnmarshaller();
        }
        return instance;
    }

    public GetAccessKeyInfoResult unmarshall(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
        GetAccessKeyInfoResult getAccessKeyInfoResult = new GetAccessKeyInfoResult();
        int b2 = staxUnmarshallerContext.b();
        int i = b2 + 1;
        int i2 = i;
        if (staxUnmarshallerContext.c()) {
            i2 = i + 2;
        }
        while (true) {
            int d2 = staxUnmarshallerContext.d();
            if (d2 != 1) {
                if (d2 != 2) {
                    if (d2 == 3 && staxUnmarshallerContext.b() < b2) {
                        break;
                    }
                } else if (staxUnmarshallerContext.a("Account", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    getAccessKeyInfoResult.setAccount(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
                }
            } else {
                break;
            }
        }
        return getAccessKeyInfoResult;
    }
}
