package com.google.common.collect;

import com.google.common.base.Function;
import com.google.common.base.m;
import java.io.Serializable;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/h.class */
public final class h<F, T> extends an<F> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    final Function<F, ? extends T> f32083a;

    /* renamed from: b  reason: collision with root package name */
    final an<T> f32084b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Function<F, ? extends T> function, an<T> anVar) {
        this.f32083a = (Function) m.a(function);
        this.f32084b = (an) m.a(anVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.an, java.util.Comparator
    public final int compare(F f, F f2) {
        return this.f32084b.compare(this.f32083a.apply(f), this.f32083a.apply(f2));
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f32083a.equals(hVar.f32083a) && this.f32084b.equals(hVar.f32084b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f32083a, this.f32084b});
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f32084b);
        String valueOf2 = String.valueOf(this.f32083a);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 13 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append(".onResultOf(");
        sb.append(valueOf2);
        sb.append(")");
        return sb.toString();
    }
}
