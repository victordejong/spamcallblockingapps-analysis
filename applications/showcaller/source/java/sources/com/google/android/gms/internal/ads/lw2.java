package com.google.android.gms.internal.ads;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lw2.class */
abstract class lw2<T> implements Iterator<T> {

    /* renamed from: d */
    int f26303d;

    /* renamed from: e */
    int f26304e;

    /* renamed from: f */
    int f26305f = -1;

    /* renamed from: g */
    final /* synthetic */ zzfns f26306g;

    public /* synthetic */ lw2(zzfns zzfnsVar, ow2 ow2Var) {
        int i;
        this.f26306g = zzfnsVar;
        i = zzfnsVar.f34058i;
        this.f26303d = i;
        this.f26304e = zzfnsVar.zzm();
    }

    /* renamed from: b */
    private final void m13405b() {
        int i;
        i = this.f26306g.f34058i;
        if (i == this.f26303d) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    /* renamed from: a */
    abstract T mo13406a(int i);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f26304e >= 0;
    }

    @Override // java.util.Iterator
    public final T next() {
        m13405b();
        if (hasNext()) {
            int i = this.f26304e;
            this.f26305f = i;
            T mo13406a = mo13406a(i);
            this.f26304e = this.f26306g.zzn(this.f26304e);
            return mo13406a;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        m13405b();
        xu2.m9055b(this.f26305f >= 0, "no calls to next() since the last call to remove()");
        this.f26303d += 32;
        zzfns zzfnsVar = this.f26306g;
        zzfnsVar.remove(zzfns.zzs(zzfnsVar, this.f26305f));
        this.f26304e--;
        this.f26305f = -1;
    }
}
