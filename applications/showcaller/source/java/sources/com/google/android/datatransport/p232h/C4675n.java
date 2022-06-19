package com.google.android.datatransport.p232h;

import com.google.android.datatransport.AbstractC4645d;
import com.google.android.datatransport.AbstractC4646e;
import com.google.android.datatransport.AbstractC4647f;
import com.google.android.datatransport.C4602b;
import java.util.Set;
/* renamed from: com.google.android.datatransport.h.n */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/n.class */
public final class C4675n implements AbstractC4647f {

    /* renamed from: a */
    private final Set<C4602b> f14236a;

    /* renamed from: b */
    private final AbstractC4673m f14237b;

    /* renamed from: c */
    private final AbstractC4678q f14238c;

    public C4675n(Set<C4602b> set, AbstractC4673m abstractC4673m, AbstractC4678q abstractC4678q) {
        this.f14236a = set;
        this.f14237b = abstractC4673m;
        this.f14238c = abstractC4678q;
    }

    @Override // com.google.android.datatransport.AbstractC4647f
    /* renamed from: a */
    public <T> AbstractC4646e<T> mo1361a(String str, Class<T> cls, C4602b c4602b, AbstractC4645d<T, byte[]> abstractC4645d) {
        if (this.f14236a.contains(c4602b)) {
            return new C4677p(this.f14237b, str, c4602b, abstractC4645d, this.f14238c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", c4602b, this.f14236a));
    }
}
