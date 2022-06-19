package com.google.firebase.components;

import com.google.firebase.p391d.AbstractC15728b;
import java.util.Set;
/* renamed from: com.google.firebase.components.a */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/a.class */
abstract class AbstractC15619a implements AbstractC15627e {
    @Override // com.google.firebase.components.AbstractC15627e
    /* renamed from: a */
    public <T> T mo8532a(Class<T> cls) {
        AbstractC15728b<T> c = mo8522c(cls);
        if (c == null) {
            return null;
        }
        return c.mo8476a();
    }

    @Override // com.google.firebase.components.AbstractC15627e
    /* renamed from: b */
    public <T> Set<T> mo8525b(Class<T> cls) {
        return mo8521d(cls).mo8476a();
    }
}
