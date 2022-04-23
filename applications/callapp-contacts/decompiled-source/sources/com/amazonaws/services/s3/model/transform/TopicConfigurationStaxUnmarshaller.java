package com.amazonaws.services.s3.model.transform;

import com.amazonaws.services.s3.model.TopicConfiguration;
import com.amazonaws.transform.SimpleTypeStaxUnmarshallers;
import com.amazonaws.transform.StaxUnmarshallerContext;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/TopicConfigurationStaxUnmarshaller.class */
class TopicConfigurationStaxUnmarshaller extends NotificationConfigurationStaxUnmarshaller<TopicConfiguration> {
    private static TopicConfigurationStaxUnmarshaller instance = new TopicConfigurationStaxUnmarshaller();

    private TopicConfigurationStaxUnmarshaller() {
    }

    public static TopicConfigurationStaxUnmarshaller getInstance() {
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazonaws.services.s3.model.transform.NotificationConfigurationStaxUnmarshaller
    public TopicConfiguration createConfiguration() {
        return new TopicConfiguration();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean handleXmlEvent(TopicConfiguration topicConfiguration, StaxUnmarshallerContext staxUnmarshallerContext, int i) throws Exception {
        if (!staxUnmarshallerContext.a("Topic", i)) {
            return false;
        }
        SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
        topicConfiguration.setTopicARN(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
        return true;
    }
}
