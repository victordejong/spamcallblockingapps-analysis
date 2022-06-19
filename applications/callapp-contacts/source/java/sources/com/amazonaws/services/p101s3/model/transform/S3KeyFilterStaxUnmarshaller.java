package com.amazonaws.services.p101s3.model.transform;

import com.amazonaws.services.p101s3.model.S3KeyFilter;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
/* renamed from: com.amazonaws.services.s3.model.transform.S3KeyFilterStaxUnmarshaller */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/S3KeyFilterStaxUnmarshaller.class */
class S3KeyFilterStaxUnmarshaller implements Unmarshaller<S3KeyFilter, StaxUnmarshallerContext> {
    private static S3KeyFilterStaxUnmarshaller instance = new S3KeyFilterStaxUnmarshaller();

    private S3KeyFilterStaxUnmarshaller() {
    }

    public static S3KeyFilterStaxUnmarshaller getInstance() {
        return instance;
    }

    public S3KeyFilter unmarshall(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
        int m38286b = staxUnmarshallerContext.m38286b();
        int i = m38286b + 1;
        int i2 = i;
        if (staxUnmarshallerContext.m38285c()) {
            i2 = i + 1;
        }
        S3KeyFilter s3KeyFilter = new S3KeyFilter();
        while (true) {
            int m38284d = staxUnmarshallerContext.m38284d();
            if (m38284d != 1) {
                if (m38284d != 2) {
                    if (m38284d == 3 && staxUnmarshallerContext.m38286b() < m38286b) {
                        break;
                    }
                } else if (staxUnmarshallerContext.m38287a("FilterRule", i2)) {
                    s3KeyFilter.addFilterRule(FilterRuleStaxUnmarshaller.getInstance().unmarshall(staxUnmarshallerContext));
                }
            } else {
                break;
            }
        }
        return s3KeyFilter;
    }
}
