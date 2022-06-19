package com.google.common.base;

import java.io.IOException;
import java.util.Iterator;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/common/base/Joiner.class */
public class Joiner {
    public final String separator;

    public Joiner(Joiner joiner, 1 r5) {
        this.separator = joiner.separator;
    }

    public Joiner(String str) {
        Objects.requireNonNull(str);
        this.separator = str;
    }

    public final String join(Iterable<?> iterable) {
        Iterator<?> it = iterable.iterator();
        StringBuilder sb = new StringBuilder();
        try {
            if (it.hasNext()) {
                sb.append(toString(it.next()));
                while (it.hasNext()) {
                    sb.append((CharSequence) this.separator);
                    sb.append(toString(it.next()));
                }
            }
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.CharSequence] */
    public CharSequence toString(Object obj) {
        Objects.requireNonNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }
}
