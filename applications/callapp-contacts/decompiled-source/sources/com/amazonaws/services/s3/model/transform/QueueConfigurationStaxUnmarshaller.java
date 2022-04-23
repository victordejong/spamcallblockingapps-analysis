package com.amazonaws.services.s3.model.transform;

import com.amazonaws.services.s3.model.QueueConfiguration;
import com.amazonaws.transform.SimpleTypeStaxUnmarshallers;
import com.amazonaws.transform.StaxUnmarshallerContext;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/QueueConfigurationStaxUnmarshaller.class */
class QueueConfigurationStaxUnmarshaller extends NotificationConfigurationStaxUnmarshaller<QueueConfiguration> {
    private static QueueConfigurationStaxUnmarshaller instance = new QueueConfigurationStaxUnmarshaller();

    private QueueConfigurationStaxUnmarshaller() {
    }

    public static QueueConfigurationStaxUnmarshaller getInstance() {
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazonaws.services.s3.model.transform.NotificationConfigurationStaxUnmarshaller
    public QueueConfiguration createConfiguration() {
        return new QueueConfiguration();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean handleXmlEvent(QueueConfiguration queueConfiguration, StaxUnmarshallerContext staxUnmarshallerContext, int i) throws Exception {
        if (!staxUnmarshallerContext.a("Queue", i)) {
            return false;
        }
        SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
        queueConfiguration.setQueueARN(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
        return true;
    }
}
