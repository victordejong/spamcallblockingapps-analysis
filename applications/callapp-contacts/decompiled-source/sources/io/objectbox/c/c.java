package io.objectbox.c;

import java.util.Set;
/* loaded from: classes5-dex2jar.jar:io/objectbox/c/c.class */
public final class c {
    public static <T> void a(Set<a<T>> set, a<T> aVar) {
        if (set != null) {
            for (a<T> aVar2 : set) {
                if (aVar2.equals(aVar)) {
                    set.remove(aVar2);
                } else if (aVar2 instanceof h) {
                    a<T> aVar3 = aVar2;
                    while (aVar3 instanceof h) {
                        aVar3 = ((h) aVar3).a();
                    }
                    if (aVar3 == null || aVar3.equals(aVar)) {
                        set.remove(aVar2);
                    }
                }
            }
        }
    }
}
