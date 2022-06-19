package com.amazonaws.services.p101s3.model.transform;

import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.amazonaws.services.p101s3.model.NotificationConfiguration;
import com.amazonaws.transform.SimpleTypeStaxUnmarshallers;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import java.util.AbstractMap;
import java.util.Map;
/* renamed from: com.amazonaws.services.s3.model.transform.NotificationConfigurationStaxUnmarshaller */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/NotificationConfigurationStaxUnmarshaller.class */
abstract class NotificationConfigurationStaxUnmarshaller<T extends NotificationConfiguration> implements Unmarshaller<Map.Entry<String, NotificationConfiguration>, StaxUnmarshallerContext> {
    protected abstract T createConfiguration();

    protected abstract boolean handleXmlEvent(T t, StaxUnmarshallerContext staxUnmarshallerContext, int i) throws Exception;

    public Map.Entry<String, NotificationConfiguration> unmarshall(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
        int m38286b = staxUnmarshallerContext.m38286b();
        int i = m38286b + 1;
        int i2 = i;
        if (staxUnmarshallerContext.m38285c()) {
            i2 = i + 1;
        }
        T createConfiguration = createConfiguration();
        String str = null;
        while (true) {
            int m38284d = staxUnmarshallerContext.m38284d();
            if (m38284d != 1) {
                if (m38284d == 2) {
                    if (!handleXmlEvent(createConfiguration, staxUnmarshallerContext, i2)) {
                        if (staxUnmarshallerContext.m38287a(JsonDocumentFields.POLICY_ID, i2)) {
                            SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38290a();
                            str = SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38289a(staxUnmarshallerContext);
                        } else if (staxUnmarshallerContext.m38287a("Event", i2)) {
                            SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38290a();
                            createConfiguration.addEvent(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38289a(staxUnmarshallerContext));
                        } else if (staxUnmarshallerContext.m38287a("Filter", i2)) {
                            createConfiguration.setFilter(FilterStaxUnmarshaller.getInstance().unmarshall(staxUnmarshallerContext));
                        }
                    }
                } else if (m38284d == 3 && staxUnmarshallerContext.m38286b() < m38286b) {
                    return new AbstractMap.SimpleEntry(str, createConfiguration);
                }
            } else {
                return null;
            }
        }
    }
}
