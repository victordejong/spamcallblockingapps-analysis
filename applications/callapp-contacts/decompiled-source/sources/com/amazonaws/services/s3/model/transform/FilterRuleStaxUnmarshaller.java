package com.amazonaws.services.s3.model.transform;

import com.amazonaws.services.s3.model.FilterRule;
import com.amazonaws.transform.SimpleTypeStaxUnmarshallers;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/FilterRuleStaxUnmarshaller.class */
class FilterRuleStaxUnmarshaller implements Unmarshaller<FilterRule, StaxUnmarshallerContext> {
    private static FilterRuleStaxUnmarshaller instance = new FilterRuleStaxUnmarshaller();

    private FilterRuleStaxUnmarshaller() {
    }

    public static FilterRuleStaxUnmarshaller getInstance() {
        return instance;
    }

    public FilterRule unmarshall(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
        int b2 = staxUnmarshallerContext.b();
        int i = b2 + 1;
        int i2 = i;
        if (staxUnmarshallerContext.c()) {
            i2 = i + 2;
        }
        FilterRule filterRule = new FilterRule();
        while (true) {
            int d2 = staxUnmarshallerContext.d();
            if (d2 != 1) {
                if (d2 != 2) {
                    if (d2 == 3 && staxUnmarshallerContext.b() < b2) {
                        break;
                    }
                } else if (staxUnmarshallerContext.a("Name", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    filterRule.setName(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.a("Value", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    filterRule.setValue(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
                }
            } else {
                break;
            }
        }
        return filterRule;
    }
}
