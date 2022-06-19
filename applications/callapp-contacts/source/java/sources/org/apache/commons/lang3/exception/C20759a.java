package org.apache.commons.lang3.exception;

import io.objectbox.model.PropertyFlags;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.apache.commons.lang3.p587d.AbstractC20755b;
/* renamed from: org.apache.commons.lang3.exception.a */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/exception/a.class */
public final class C20759a implements Serializable, AbstractC20760b {

    /* renamed from: a */
    private final List<AbstractC20755b<String, Object>> f67257a = new ArrayList();

    @Override // org.apache.commons.lang3.exception.AbstractC20760b
    /* renamed from: a */
    public final String mo520a(String str) {
        String str2;
        StringBuilder sb = new StringBuilder((int) PropertyFlags.INDEX_PARTIAL_SKIP_NULL);
        if (str != null) {
            sb.append(str);
        }
        if (!this.f67257a.isEmpty()) {
            if (sb.length() > 0) {
                sb.append('\n');
            }
            sb.append("Exception Context:\n");
            int i = 0;
            for (AbstractC20755b<String, Object> abstractC20755b : this.f67257a) {
                sb.append("\t[");
                i++;
                sb.append(i);
                sb.append(':');
                sb.append(abstractC20755b.getKey());
                sb.append("=");
                Object value = abstractC20755b.getValue();
                if (value == null) {
                    sb.append(JsonReaderKt.NULL);
                } else {
                    try {
                        str2 = value.toString();
                    } catch (Exception e) {
                        str2 = "Exception thrown on toString(): " + C20761c.m519a(e);
                    }
                    sb.append(str2);
                }
                sb.append("]\n");
            }
            sb.append("---------------------------------");
        }
        return sb.toString();
    }
}
