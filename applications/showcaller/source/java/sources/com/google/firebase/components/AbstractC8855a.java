package com.google.firebase.components;

import com.google.firebase.p313k.AbstractC9247b;
import java.util.Set;
/* renamed from: com.google.firebase.components.a */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/a.class */
abstract class AbstractC8855a implements AbstractC8861e {
    @Override // com.google.firebase.components.AbstractC8861e
    /* renamed from: a */
    public <T> T mo2417a(Class<T> cls) {
        AbstractC9247b<T> mo2416b = mo2416b(cls);
        if (mo2416b == null) {
            return null;
        }
        return mo2416b.get();
    }

    @Override // com.google.firebase.components.AbstractC8861e
    /* renamed from: d */
    public <T> Set<T> mo2414d(Class<T> cls) {
        return mo2415c(cls).get();
    }
}
