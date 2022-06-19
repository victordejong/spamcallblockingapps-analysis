package com.amazonaws.services.p101s3.model.transform;

import com.amazonaws.services.p101s3.model.FilterRule;
import com.amazonaws.transform.SimpleTypeStaxUnmarshallers;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
/* renamed from: com.amazonaws.services.s3.model.transform.FilterRuleStaxUnmarshaller */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/FilterRuleStaxUnmarshaller.class */
class FilterRuleStaxUnmarshaller implements Unmarshaller<FilterRule, StaxUnmarshallerContext> {
    private static FilterRuleStaxUnmarshaller instance = new FilterRuleStaxUnmarshaller();

    private FilterRuleStaxUnmarshaller() {
    }

    public static FilterRuleStaxUnmarshaller getInstance() {
        return instance;
    }

    public FilterRule unmarshall(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
        int m38286b = staxUnmarshallerContext.m38286b();
        int i = m38286b + 1;
        int i2 = i;
        if (staxUnmarshallerContext.m38285c()) {
            i2 = i + 2;
        }
        FilterRule filterRule = new FilterRule();
        while (true) {
            int m38284d = staxUnmarshallerContext.m38284d();
            if (m38284d != 1) {
                if (m38284d != 2) {
                    if (m38284d == 3 && staxUnmarshallerContext.m38286b() < m38286b) {
                        break;
                    }
                } else if (staxUnmarshallerContext.m38287a("Name", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38290a();
                    filterRule.setName(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38289a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.m38287a("Value", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38290a();
                    filterRule.setValue(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38289a(staxUnmarshallerContext));
                }
            } else {
                break;
            }
        }
        return filterRule;
    }
}
