package com.google.android.datatransport.runtime;

import com.google.android.datatransport.AbstractC10677e;
import com.google.android.datatransport.AbstractC10678f;
import com.google.android.datatransport.AbstractC10679g;
import com.google.android.datatransport.C10627b;
import java.util.Set;
/* renamed from: com.google.android.datatransport.runtime.m */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/m.class */
public final class C10740m implements AbstractC10679g {

    /* renamed from: a */
    private final Set<C10627b> f34597a;

    /* renamed from: b */
    private final AbstractC10738l f34598b;

    /* renamed from: c */
    private final AbstractC10743p f34599c;

    public C10740m(Set<C10627b> set, AbstractC10738l abstractC10738l, AbstractC10743p abstractC10743p) {
        this.f34597a = set;
        this.f34598b = abstractC10738l;
        this.f34599c = abstractC10743p;
    }

    @Override // com.google.android.datatransport.AbstractC10679g
    /* renamed from: a */
    public final <T> AbstractC10678f<T> mo8245a(String str, C10627b c10627b, AbstractC10677e<T, byte[]> abstractC10677e) {
        if (this.f34597a.contains(c10627b)) {
            return new C10741n(this.f34598b, str, c10627b, abstractC10677e, this.f34599c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", c10627b, this.f34597a));
    }
}
