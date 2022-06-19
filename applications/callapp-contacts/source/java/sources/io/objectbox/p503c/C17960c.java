package io.objectbox.p503c;

import java.util.Set;
/* renamed from: io.objectbox.c.c */
/* loaded from: classes5-dex2jar.jar:io/objectbox/c/c.class */
public final class C17960c {
    /* renamed from: a */
    public static <T> void m4681a(Set<AbstractC17958a<T>> set, AbstractC17958a<T> abstractC17958a) {
        AbstractC17958a<T> abstractC17958a2;
        if (set != null) {
            for (AbstractC17958a<T> abstractC17958a3 : set) {
                if (abstractC17958a3.equals(abstractC17958a)) {
                    set.remove(abstractC17958a3);
                } else if (abstractC17958a3 instanceof AbstractC17965h) {
                    AbstractC17958a<T> abstractC17958a4 = abstractC17958a3;
                    while (true) {
                        abstractC17958a2 = abstractC17958a4;
                        if (!(abstractC17958a2 instanceof AbstractC17965h)) {
                            break;
                        }
                        abstractC17958a4 = ((AbstractC17965h) abstractC17958a2).mo4673a();
                    }
                    if (abstractC17958a2 == null || abstractC17958a2.equals(abstractC17958a)) {
                        set.remove(abstractC17958a3);
                    }
                }
            }
        }
    }
}
