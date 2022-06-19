package com.amazonaws.services.p101s3.model.transform;

import com.amazonaws.services.p101s3.model.QueueConfiguration;
import com.amazonaws.transform.SimpleTypeStaxUnmarshallers;
import com.amazonaws.transform.StaxUnmarshallerContext;
/* renamed from: com.amazonaws.services.s3.model.transform.QueueConfigurationStaxUnmarshaller */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/QueueConfigurationStaxUnmarshaller.class */
class QueueConfigurationStaxUnmarshaller extends NotificationConfigurationStaxUnmarshaller<QueueConfiguration> {
    private static QueueConfigurationStaxUnmarshaller instance = new QueueConfigurationStaxUnmarshaller();

    private QueueConfigurationStaxUnmarshaller() {
    }

    public static QueueConfigurationStaxUnmarshaller getInstance() {
        return instance;
    }

    @Override // com.amazonaws.services.p101s3.model.transform.NotificationConfigurationStaxUnmarshaller
    public QueueConfiguration createConfiguration() {
        return new QueueConfiguration();
    }

    public boolean handleXmlEvent(QueueConfiguration queueConfiguration, StaxUnmarshallerContext staxUnmarshallerContext, int i) throws Exception {
        if (staxUnmarshallerContext.m38287a("Queue", i)) {
            SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38290a();
            queueConfiguration.setQueueARN(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38289a(staxUnmarshallerContext));
            return true;
        }
        return false;
    }
}
