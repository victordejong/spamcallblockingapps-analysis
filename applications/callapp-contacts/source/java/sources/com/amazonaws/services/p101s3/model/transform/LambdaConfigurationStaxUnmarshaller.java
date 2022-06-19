package com.amazonaws.services.p101s3.model.transform;

import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.amazonaws.services.p101s3.model.CloudFunctionConfiguration;
import com.amazonaws.services.p101s3.model.Filter;
import com.amazonaws.services.p101s3.model.LambdaConfiguration;
import com.amazonaws.services.p101s3.model.NotificationConfiguration;
import com.amazonaws.transform.SimpleTypeStaxUnmarshallers;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* renamed from: com.amazonaws.services.s3.model.transform.LambdaConfigurationStaxUnmarshaller */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/LambdaConfigurationStaxUnmarshaller.class */
class LambdaConfigurationStaxUnmarshaller implements Unmarshaller<Map.Entry<String, NotificationConfiguration>, StaxUnmarshallerContext> {
    private static LambdaConfigurationStaxUnmarshaller instance = new LambdaConfigurationStaxUnmarshaller();

    private LambdaConfigurationStaxUnmarshaller() {
    }

    private Map.Entry<String, NotificationConfiguration> createLambdaConfig(String str, List<String> list, String str2, String str3, Filter filter) {
        return new AbstractMap.SimpleEntry(str, (str3 == null ? new LambdaConfiguration(str2, (String[]) list.toArray(new String[0])) : new CloudFunctionConfiguration(str3, str2, (String[]) list.toArray(new String[0]))).withFilter(filter));
    }

    public static LambdaConfigurationStaxUnmarshaller getInstance() {
        return instance;
    }

    public Map.Entry<String, NotificationConfiguration> unmarshall(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
        int m38286b = staxUnmarshallerContext.m38286b();
        int i = m38286b + 1;
        int i2 = i;
        if (staxUnmarshallerContext.m38285c()) {
            i2 = i + 1;
        }
        ArrayList arrayList = new ArrayList();
        String str = null;
        String str2 = null;
        String str3 = null;
        Filter filter = null;
        while (true) {
            int m38284d = staxUnmarshallerContext.m38284d();
            if (m38284d != 1) {
                if (m38284d == 2) {
                    if (staxUnmarshallerContext.m38287a(JsonDocumentFields.POLICY_ID, i2)) {
                        SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38290a();
                        str = SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38289a(staxUnmarshallerContext);
                    } else if (staxUnmarshallerContext.m38287a("Event", i2)) {
                        SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38290a();
                        arrayList.add(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38289a(staxUnmarshallerContext));
                    } else if (staxUnmarshallerContext.m38287a("Filter", i2)) {
                        filter = FilterStaxUnmarshaller.getInstance().unmarshall(staxUnmarshallerContext);
                    } else if (staxUnmarshallerContext.m38287a("CloudFunction", i2)) {
                        SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38290a();
                        str2 = SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38289a(staxUnmarshallerContext);
                    } else if (staxUnmarshallerContext.m38287a("InvocationRole", i2)) {
                        SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38290a();
                        str3 = SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38289a(staxUnmarshallerContext);
                    }
                } else if (m38284d == 3 && staxUnmarshallerContext.m38286b() < m38286b) {
                    return createLambdaConfig(str, arrayList, str2, str3, filter);
                }
            } else {
                return null;
            }
        }
    }
}
