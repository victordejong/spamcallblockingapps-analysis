package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.services.securitytoken.model.Tag;
import com.amazonaws.transform.SimpleTypeStaxUnmarshallers;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/TagStaxUnmarshaller.class */
class TagStaxUnmarshaller implements Unmarshaller<Tag, StaxUnmarshallerContext> {
    private static TagStaxUnmarshaller instance;

    TagStaxUnmarshaller() {
    }

    public static TagStaxUnmarshaller getInstance() {
        if (instance == null) {
            instance = new TagStaxUnmarshaller();
        }
        return instance;
    }

    public Tag unmarshall(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
        Tag tag = new Tag();
        int m38286b = staxUnmarshallerContext.m38286b();
        int i = m38286b + 1;
        int i2 = i;
        if (staxUnmarshallerContext.m38285c()) {
            i2 = i + 2;
        }
        while (true) {
            int m38284d = staxUnmarshallerContext.m38284d();
            if (m38284d != 1) {
                if (m38284d != 2) {
                    if (m38284d == 3 && staxUnmarshallerContext.m38286b() < m38286b) {
                        break;
                    }
                } else if (staxUnmarshallerContext.m38287a("Key", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38290a();
                    tag.setKey(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38289a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.m38287a("Value", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38290a();
                    tag.setValue(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38289a(staxUnmarshallerContext));
                }
            } else {
                break;
            }
        }
        return tag;
    }
}
