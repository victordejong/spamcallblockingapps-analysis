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
        int b2 = staxUnmarshallerContext.b();
        int i = b2 + 1;
        int i2 = i;
        if (staxUnmarshallerContext.c()) {
            i2 = i + 2;
        }
        while (true) {
            int d2 = staxUnmarshallerContext.d();
            if (d2 != 1) {
                if (d2 != 2) {
                    if (d2 == 3 && staxUnmarshallerContext.b() < b2) {
                        break;
                    }
                } else if (staxUnmarshallerContext.a("Key", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    tag.setKey(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.a("Value", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    tag.setValue(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
                }
            } else {
                break;
            }
        }
        return tag;
    }
}
