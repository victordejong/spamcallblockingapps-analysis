package com.google.api.client.p379a;

import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: com.google.api.client.a.r */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/r.class */
public final class C15248r {
    private C15248r() {
    }

    /* renamed from: a */
    public static <E> ArrayList<E> m9208a(Iterator<? extends E> it2) {
        ArrayList<E> arrayList = new ArrayList<>();
        while (it2.hasNext()) {
            arrayList.add(it2.next());
        }
        return arrayList;
    }
}
