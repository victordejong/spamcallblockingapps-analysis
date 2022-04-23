package com.google.api.client.a;

import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/r.class */
public final class r {
    private r() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> ArrayList<E> a(Iterator<? extends E> it2) {
        ArrayList<E> arrayList = (ArrayList<E>) new ArrayList();
        while (it2.hasNext()) {
            arrayList.add(it2.next());
        }
        return arrayList;
    }
}
