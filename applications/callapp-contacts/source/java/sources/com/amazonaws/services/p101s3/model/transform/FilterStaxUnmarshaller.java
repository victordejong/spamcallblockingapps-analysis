package com.amazonaws.services.p101s3.model.transform;

import com.amazonaws.services.p101s3.model.Filter;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
/* renamed from: com.amazonaws.services.s3.model.transform.FilterStaxUnmarshaller */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/FilterStaxUnmarshaller.class */
class FilterStaxUnmarshaller implements Unmarshaller<Filter, StaxUnmarshallerContext> {
    private static FilterStaxUnmarshaller instance = new FilterStaxUnmarshaller();

    private FilterStaxUnmarshaller() {
    }

    public static FilterStaxUnmarshaller getInstance() {
        return instance;
    }

    public Filter unmarshall(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
        int m38286b = staxUnmarshallerContext.m38286b();
        int i = m38286b + 1;
        int i2 = i;
        if (staxUnmarshallerContext.m38285c()) {
            i2 = i + 1;
        }
        Filter filter = new Filter();
        while (true) {
            int m38284d = staxUnmarshallerContext.m38284d();
            if (m38284d != 1) {
                if (m38284d != 2) {
                    if (m38284d == 3 && staxUnmarshallerContext.m38286b() < m38286b) {
                        break;
                    }
                } else if (staxUnmarshallerContext.m38287a("S3Key", i2)) {
                    filter.withS3KeyFilter(S3KeyFilterStaxUnmarshaller.getInstance().unmarshall(staxUnmarshallerContext));
                }
            } else {
                break;
            }
        }
        return filter;
    }
}
