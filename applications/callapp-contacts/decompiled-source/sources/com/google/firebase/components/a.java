package com.google.firebase.components;

import com.google.firebase.d.b;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/a.class */
abstract class a implements e {
    @Override // com.google.firebase.components.e
    public <T> T a(Class<T> cls) {
        b<T> c2 = c(cls);
        if (c2 == null) {
            return null;
        }
        return c2.a();
    }

    @Override // com.google.firebase.components.e
    public <T> Set<T> b(Class<T> cls) {
        return d(cls).a();
    }
}
