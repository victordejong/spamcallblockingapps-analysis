package com.google.a.b;

import com.google.a.a.a;
import java.io.Serializable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/a/b/d.class */
public final class d<F, T> extends v<F> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    final a<F, ? extends T> f3690a;

    /* renamed from: b  reason: collision with root package name */
    final v<T> f3691b;

    public d(a<F, ? extends T> aVar, v<T> vVar) {
        this.f3690a = (a) com.google.a.a.d.a(aVar);
        this.f3691b = (v) com.google.a.a.d.a(vVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.a.b.v, java.util.Comparator
    public final int compare(F f, F f2) {
        return this.f3691b.compare(this.f3690a.a(f), this.f3690a.a(f2));
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        boolean z = true;
        if (obj != this) {
            if (obj instanceof d) {
                d dVar = (d) obj;
                if (!this.f3690a.equals(dVar.f3690a) || !this.f3691b.equals(dVar.f3691b)) {
                    z = false;
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3690a, this.f3691b});
    }

    public final String toString() {
        return this.f3691b + ".onResultOf(" + this.f3690a + ")";
    }
}
