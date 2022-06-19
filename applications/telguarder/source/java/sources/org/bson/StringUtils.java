package org.bson;

import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:org/bson/StringUtils.class */
final class StringUtils {
    private StringUtils() {
    }

    public static String join(String str, Collection<?> collection) {
        StringBuilder sb = new StringBuilder();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (!it.hasNext()) {
                break;
            }
            sb.append(str);
        }
        return sb.toString();
    }
}
