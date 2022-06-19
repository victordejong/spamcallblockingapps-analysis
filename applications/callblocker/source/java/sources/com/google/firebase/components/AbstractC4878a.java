package com.google.firebase.components;

import com.google.firebase.p163c.AbstractC4877a;
import java.util.Set;
/* renamed from: com.google.firebase.components.a */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/a.class */
abstract class AbstractC4878a implements AbstractC4884e {
    @Override // com.google.firebase.components.AbstractC4884e
    /* renamed from: a */
    public <T> T mo2054a(Class<T> cls) {
        AbstractC4877a<T> c = mo2052c(cls);
        return c == null ? null : c.mo2059a();
    }

    @Override // com.google.firebase.components.AbstractC4884e
    /* renamed from: b */
    public <T> Set<T> mo2053b(Class<T> cls) {
        return mo2051d(cls).mo2059a();
    }
}
