package com.criteo.publisher.context;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/context/ContextData.class */
public class ContextData extends AbstractContextData<ContextData> {
    public static final String CONTENT_URL = "content.url";

    @Override // com.criteo.publisher.context.AbstractContextData
    public boolean equals(Object obj) {
        if (!(obj instanceof ContextData)) {
            return false;
        }
        return super.equals(obj);
    }
}
