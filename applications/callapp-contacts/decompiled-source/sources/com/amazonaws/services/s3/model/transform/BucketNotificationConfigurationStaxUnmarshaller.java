package com.amazonaws.services.s3.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.services.s3.model.BucketNotificationConfiguration;
import com.amazonaws.services.s3.model.NotificationConfiguration;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import java.io.InputStream;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
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
        int b2 = staxUnmarshallerContext.b();
        int i = b2 + 1;
        int i2 = i;
        if (staxUnmarshallerContext.c()) {
            i2 = i + 1;
        }
        BucketNotificationConfiguration bucketNotificationConfiguration = new BucketNotificationConfiguration();
        while (true) {
            int d2 = staxUnmarshallerContext.d();
            if (d2 != 1) {
                if (d2 != 2) {
                    if (d2 == 3 && staxUnmarshallerContext.b() < b2) {
                        break;
                    }
                } else if (staxUnmarshallerContext.a("TopicConfiguration", i2)) {
                    Map.Entry<String, NotificationConfiguration> unmarshall = TopicConfigurationStaxUnmarshaller.getInstance().unmarshall(staxUnmarshallerContext);
                    bucketNotificationConfiguration.addConfiguration(unmarshall.getKey(), unmarshall.getValue());
                } else if (staxUnmarshallerContext.a("QueueConfiguration", i2)) {
                    Map.Entry<String, NotificationConfiguration> unmarshall2 = QueueConfigurationStaxUnmarshaller.getInstance().unmarshall(staxUnmarshallerContext);
                    bucketNotificationConfiguration.addConfiguration(unmarshall2.getKey(), unmarshall2.getValue());
                } else if (staxUnmarshallerContext.a("CloudFunctionConfiguration", i2)) {
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
