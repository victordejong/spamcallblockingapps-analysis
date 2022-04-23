package com.amazonaws.services.s3.model.transform;

import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.amazonaws.services.s3.model.NotificationConfiguration;
import com.amazonaws.transform.SimpleTypeStaxUnmarshallers;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import java.util.AbstractMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/NotificationConfigurationStaxUnmarshaller.class */
abstract class NotificationConfigurationStaxUnmarshaller<T extends NotificationConfiguration> implements Unmarshaller<Map.Entry<String, NotificationConfiguration>, StaxUnmarshallerContext> {
    protected abstract T createConfiguration();

    protected abstract boolean handleXmlEvent(T t, StaxUnmarshallerContext staxUnmarshallerContext, int i) throws Exception;

    public Map.Entry<String, NotificationConfiguration> unmarshall(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
        int b2 = staxUnmarshallerContext.b();
        int i = b2 + 1;
        int i2 = i;
        if (staxUnmarshallerContext.c()) {
            i2 = i + 1;
        }
        T createConfiguration = createConfiguration();
        String str = null;
        while (true) {
            int d2 = staxUnmarshallerContext.d();
            if (d2 == 1) {
                return null;
            }
            if (d2 == 2) {
                if (!handleXmlEvent(createConfiguration, staxUnmarshallerContext, i2)) {
                    if (staxUnmarshallerContext.a(JsonDocumentFields.POLICY_ID, i2)) {
                        SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                        str = SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext);
                    } else if (staxUnmarshallerContext.a("Event", i2)) {
                        SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                        createConfiguration.addEvent(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
                    } else if (staxUnmarshallerContext.a("Filter", i2)) {
                        createConfiguration.setFilter(FilterStaxUnmarshaller.getInstance().unmarshall(staxUnmarshallerContext));
                    }
                }
            } else if (d2 == 3 && staxUnmarshallerContext.b() < b2) {
                return new AbstractMap.SimpleEntry(str, createConfiguration);
            }
        }
    }
}
