package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.services.securitytoken.model.GetFederationTokenResult;
import com.amazonaws.transform.SimpleTypeStaxUnmarshallers;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/GetFederationTokenResultStaxUnmarshaller.class */
public class GetFederationTokenResultStaxUnmarshaller implements Unmarshaller<GetFederationTokenResult, StaxUnmarshallerContext> {
    private static GetFederationTokenResultStaxUnmarshaller instance;

    public static GetFederationTokenResultStaxUnmarshaller getInstance() {
        if (instance == null) {
            instance = new GetFederationTokenResultStaxUnmarshaller();
        }
        return instance;
    }

    public GetFederationTokenResult unmarshall(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
        GetFederationTokenResult getFederationTokenResult = new GetFederationTokenResult();
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
                    getFederationTokenResult.setCredentials(CredentialsStaxUnmarshaller.getInstance().unmarshall(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.m38287a("FederatedUser", i2)) {
                    getFederationTokenResult.setFederatedUser(FederatedUserStaxUnmarshaller.getInstance().unmarshall(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.m38287a("PackedPolicySize", i2)) {
                    SimpleTypeStaxUnmarshallers.IntegerStaxUnmarshaller.m38292a();
                    getFederationTokenResult.setPackedPolicySize(SimpleTypeStaxUnmarshallers.IntegerStaxUnmarshaller.m38291a(staxUnmarshallerContext));
                }
            } else {
                break;
            }
        }
        return getFederationTokenResult;
    }
}
