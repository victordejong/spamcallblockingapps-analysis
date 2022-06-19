package com.amazonaws.services.p101s3.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.services.p101s3.model.BucketNotificationConfiguration;
import com.amazonaws.services.p101s3.model.NotificationConfiguration;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import java.io.InputStream;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
/* renamed from: com.amazonaws.services.s3.model.transform.BucketNotificationConfigurationStaxUnmarshaller */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/BucketNotificationConfigurationStaxUnmarshaller.class */
public class BucketNotificationConfigurationStaxUnmarshaller implements Unmarshaller<BucketNotificationConfiguration, InputStream> {
    private static BucketNotificationConfigurationStaxUnmarshaller instance = new BucketNotificationConfigurationStaxUnmarshaller();
    private static final XmlPullParserFactory xmlPullParserFactory;

    static {
        try {
            xmlPullParserFactory = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e) {
            throw new AmazonClientException("Couldn't initialize XmlPullParserFactory", e);
        }
    }

    private BucketNotificationConfigurationStaxUnmarshaller() {
    }

    public static BucketNotificationConfigurationStaxUnmarshaller getInstance() {
        return instance;
    }

    public BucketNotificationConfiguration unmarshall(InputStream inputStream) throws Exception {
        XmlPullParser newPullParser = xmlPullParserFactory.newPullParser();
        newPullParser.setInput(inputStream, null);
        StaxUnmarshallerContext staxUnmarshallerContext = new StaxUnmarshallerContext(newPullParser, null);
        int m38286b = staxUnmarshallerContext.m38286b();
        int i = m38286b + 1;
        int i2 = i;
        if (staxUnmarshallerContext.m38285c()) {
            i2 = i + 1;
        }
        BucketNotificationConfiguration bucketNotificationConfiguration = new BucketNotificationConfiguration();
        while (true) {
            int m38284d = staxUnmarshallerContext.m38284d();
            if (m38284d != 1) {
                if (m38284d != 2) {
                    if (m38284d == 3 && staxUnmarshallerContext.m38286b() < m38286b) {
                        break;
                    }
                } else if (staxUnmarshallerContext.m38287a("TopicConfiguration", i2)) {
                    Map.Entry<String, NotificationConfiguration> unmarshall = TopicConfigurationStaxUnmarshaller.getInstance().unmarshall(staxUnmarshallerContext);
                    bucketNotificationConfiguration.addConfiguration(unmarshall.getKey(), unmarshall.getValue());
                } else if (staxUnmarshallerContext.m38287a("QueueConfiguration", i2)) {
                    Map.Entry<String, NotificationConfiguration> unmarshall2 = QueueConfigurationStaxUnmarshaller.getInstance().unmarshall(staxUnmarshallerContext);
                    bucketNotificationConfiguration.addConfiguration(unmarshall2.getKey(), unmarshall2.getValue());
                } else if (staxUnmarshallerContext.m38287a("CloudFunctionConfiguration", i2)) {
                    Map.Entry<String, NotificationConfiguration> unmarshall3 = LambdaConfigurationStaxUnmarshaller.getInstance().unmarshall(staxUnmarshallerContext);
                    bucketNotificationConfiguration.addConfiguration(unmarshall3.getKey(), unmarshall3.getValue());
                }
            } else {
                break;
            }
        }
        return bucketNotificationConfiguration;
    }
}
