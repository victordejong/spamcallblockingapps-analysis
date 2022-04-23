package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.Request;
import com.amazonaws.services.securitytoken.model.Tag;
import com.amazonaws.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/TagStaxMarshaller.class */
class TagStaxMarshaller {
    private static TagStaxMarshaller instance;

    TagStaxMarshaller() {
    }

    public static TagStaxMarshaller getInstance() {
        if (instance == null) {
            instance = new TagStaxMarshaller();
        }
        return instance;
    }

    public void marshall(Tag tag, Request<?> request, String str) {
        if (tag.getKey() != null) {
            request.b(str + "Key", StringUtils.a(tag.getKey()));
        }
        if (tag.getValue() != null) {
            request.b(str + "Value", StringUtils.a(tag.getValue()));
        }
    }
}
