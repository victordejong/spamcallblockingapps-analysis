package org.apache.commons.lang3.exception;

import io.objectbox.model.PropertyFlags;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.apache.commons.lang3.d.b;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/exception/a.class */
public final class a implements Serializable, b {

    /* renamed from: a  reason: collision with root package name */
    private final List<b<String, Object>> f39179a = new ArrayList();

    @Override // org.apache.commons.lang3.exception.b
    public final String a(String str) {
        String str2;
        StringBuilder sb = new StringBuilder((int) PropertyFlags.INDEX_PARTIAL_SKIP_NULL);
        if (str != null) {
            sb.append(str);
        }
        if (!this.f39179a.isEmpty()) {
            if (sb.length() > 0) {
                sb.append('\n');
            }
            sb.append("Exception Context:\n");
            int i = 0;
            for (b<String, Object> bVar : this.f39179a) {
                sb.append("\t[");
                i++;
                sb.append(i);
                sb.append(':');
                sb.append(bVar.getKey());
                sb.append("=");
                Object value = bVar.getValue();
                if (value == null) {
                    sb.append(JsonReaderKt.NULL);
                } else {
                    try {
                        str2 = value.toString();
                    } catch (Exception e) {
                        str2 = "Exception thrown on toString(): " + c.a(e);
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
