package com.bumptech.glide.load;

import com.bumptech.glide.load.b.k;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/d.class */
public final class d<T> implements g<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Collection<? extends g<T>> f3585a;

    /* renamed from: b  reason: collision with root package name */
    private String f3586b;

    @SafeVarargs
    public d(g<T>... gVarArr) {
        if (gVarArr.length <= 0) {
            throw new IllegalArgumentException("MultiTransformation must contain at least one Transformation");
        }
        this.f3585a = Arrays.asList(gVarArr);
    }

    @Override // com.bumptech.glide.load.g
    public final k<T> a(k<T> kVar, int i, int i2) {
        Iterator<? extends g<T>> it = this.f3585a.iterator();
        k<T> kVar2 = kVar;
        while (it.hasNext()) {
            k<T> a2 = ((g) it.next()).a(kVar2, i, i2);
            if (kVar2 != null && !kVar2.equals(kVar) && !kVar2.equals(a2)) {
                kVar2.c();
            }
            kVar2 = a2;
        }
        return kVar2;
    }

    @Override // com.bumptech.glide.load.g
    public final String a() {
        if (this.f3586b == null) {
            StringBuilder sb = new StringBuilder();
            Iterator<? extends g<T>> it = this.f3585a.iterator();
            while (it.hasNext()) {
                sb.append(((g) it.next()).a());
            }
            this.f3586b = sb.toString();
        }
        return this.f3586b;
    }
}
