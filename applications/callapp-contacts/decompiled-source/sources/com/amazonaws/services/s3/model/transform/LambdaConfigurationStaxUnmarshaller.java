package com.amazonaws.services.s3.model.transform;

import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.amazonaws.services.s3.model.CloudFunctionConfiguration;
import com.amazonaws.services.s3.model.Filter;
import com.amazonaws.services.s3.model.LambdaConfiguration;
import com.amazonaws.services.s3.model.NotificationConfiguration;
import com.amazonaws.transform.SimpleTypeStaxUnmarshallers;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
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
        int b2 = staxUnmarshallerContext.b();
        int i = b2 + 1;
        int i2 = i;
        if (staxUnmarshallerContext.c()) {
            i2 = i + 1;
        }
        ArrayList arrayList = new ArrayList();
        String str = null;
        String str2 = null;
        String str3 = null;
        Filter filter = null;
        while (true) {
            int d2 = staxUnmarshallerContext.d();
            if (d2 == 1) {
                return null;
            }
            if (d2 == 2) {
                if (staxUnmarshallerContext.a(JsonDocumentFields.POLICY_ID, i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    str = SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext);
                } else if (staxUnmarshallerContext.a("Event", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    arrayList.add(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.a("Filter", i2)) {
                    filter = FilterStaxUnmarshaller.getInstance().unmarshall(staxUnmarshallerContext);
                } else if (staxUnmarshallerContext.a("CloudFunction", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    str2 = SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext);
                } else if (staxUnmarshallerContext.a("InvocationRole", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    str3 = SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext);
                }
            } else if (d2 == 3 && staxUnmarshallerContext.b() < b2) {
                return createLambdaConfig(str, arrayList, str2, str3, filter);
            }
        }
    }
}
