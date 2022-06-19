package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.services.securitytoken.model.GetSessionTokenResult;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/GetSessionTokenResultStaxUnmarshaller.class */
public class GetSessionTokenResultStaxUnmarshaller implements Unmarshaller<GetSessionTokenResult, StaxUnmarshallerContext> {
    private static GetSessionTokenResultStaxUnmarshaller instance;

    public static GetSessionTokenResultStaxUnmarshaller getInstance() {
        if (instance == null) {
            instance = new GetSessionTokenResultStaxUnmarshaller();
        }
        return instance;
    }

    public GetSessionTokenResult unmarshall(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
        GetSessionTokenResult getSessionTokenResult = new GetSessionTokenResult();
        int m38286b = staxUnmarshallerContext.m38286b();
        int i = m38286b + 1;
        int i2 = i;
        if (staxUnmarshallerContext.m38285c()) {
            i2 = i + 2;
        }
        while (true) {
            int m38284d = staxUnmarshallerContext.m38284d();
            if (m38284d != 1) {
                if (m38284d != 2) {
                    if (m38284d == 3 && staxUnmarshallerContext.m38286b() < m38286b) {
                        break;
                    }
                } else if (staxUnmarshallerContext.m38287a("Credentials", i2)) {
                    getSessionTokenResult.setCredentials(CredentialsStaxUnmarshaller.getInstance().unmarshall(staxUnmarshallerContext));
                }
            } else {
                break;
            }
        }
        return getSessionTokenResult;
    }
}
