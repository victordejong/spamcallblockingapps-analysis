package com.google.common.collect;

import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/google/common/collect/FluentIterable.class */
public abstract class FluentIterable<E> implements Iterable<E> {
    public String toString() {
        C26232y.checkNotNull1(this, "use Optional.orNull() instead of Optional.or(null)");
        StringBuilder m8558w = C22128a.m8558w('[');
        boolean z = true;
        for (E e : this) {
            if (!z) {
                m8558w.append(", ");
            }
            z = false;
            m8558w.append(e);
        }
        m8558w.append(']');
        return m8558w.toString();
    }
}
