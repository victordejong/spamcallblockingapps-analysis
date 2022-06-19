package com.amazonaws.services.p101s3.model.transform;

import com.amazonaws.services.p101s3.model.TopicConfiguration;
import com.amazonaws.transform.SimpleTypeStaxUnmarshallers;
import com.amazonaws.transform.StaxUnmarshallerContext;
/* renamed from: com.amazonaws.services.s3.model.transform.TopicConfigurationStaxUnmarshaller */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/TopicConfigurationStaxUnmarshaller.class */
class TopicConfigurationStaxUnmarshaller extends NotificationConfigurationStaxUnmarshaller<TopicConfiguration> {
    private static TopicConfigurationStaxUnmarshaller instance = new TopicConfigurationStaxUnmarshaller();

    private TopicConfigurationStaxUnmarshaller() {
    }

    public static TopicConfigurationStaxUnmarshaller getInstance() {
        return instance;
    }

    @Override // com.amazonaws.services.p101s3.model.transform.NotificationConfigurationStaxUnmarshaller
    public TopicConfiguration createConfiguration() {
        return new TopicConfiguration();
    }

    public boolean handleXmlEvent(TopicConfiguration topicConfiguration, StaxUnmarshallerContext staxUnmarshallerContext, int i) throws Exception {
        if (staxUnmarshallerContext.m38287a("Topic", i)) {
            SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38290a();
            topicConfiguration.setTopicARN(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38289a(staxUnmarshallerContext));
            return true;
        }
        return false;
    }
}
