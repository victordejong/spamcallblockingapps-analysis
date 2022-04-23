package com.amazonaws.services.s3.model.transform;

import com.amazonaws.services.s3.model.S3KeyFilter;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/S3KeyFilterStaxUnmarshaller.class */
class S3KeyFilterStaxUnmarshaller implements Unmarshaller<S3KeyFilter, StaxUnmarshallerContext> {
    private static S3KeyFilterStaxUnmarshaller instance = new S3KeyFilterStaxUnmarshaller();

    private S3KeyFilterStaxUnmarshaller() {
    }

    public static S3KeyFilterStaxUnmarshaller getInstance() {
        return instance;
    }

    public S3KeyFilter unmarshall(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
        int b2 = staxUnmarshallerContext.b();
        int i = b2 + 1;
        int i2 = i;
        if (staxUnmarshallerContext.c()) {
            i2 = i + 1;
        }
        S3KeyFilter s3KeyFilter = new S3KeyFilter();
        while (true) {
            int d2 = staxUnmarshallerContext.d();
            if (d2 != 1) {
                if (d2 != 2) {
                    if (d2 == 3 && staxUnmarshallerContext.b() < b2) {
                        break;
                    }
                } else if (staxUnmarshallerContext.a("FilterRule", i2)) {
                    s3KeyFilter.addFilterRule(FilterRuleStaxUnmarshaller.getInstance().unmarshall(staxUnmarshallerContext));
                }
            } else {
                break;
            }
        }
        return s3KeyFilter;
    }
}
