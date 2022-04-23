package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfg.class */
public abstract class zzfg<E> extends zzey<E> implements Set<E> {
    @NullableDecl

    /* renamed from: g */
    private transient zzfb<E> f8417g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static int m12689j(int i) {
        int max = Math.max(i, 2);
        boolean z = true;
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1);
            while (true) {
                int i2 = highestOneBit << 1;
                if (i2 * 0.7d >= max) {
                    return i2;
                }
                highestOneBit = i2;
            }
        } else {
            if (max >= 1073741824) {
                z = false;
            }
            zzeb.m12737f(z, "collection too large");
            return 1073741824;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfg) || !mo12672n() || !((zzfg) obj).mo12672n() || hashCode() == obj.hashCode()) {
            return zzfv.m12669b(this, obj);
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return zzfv.m12670a(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzey, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* synthetic */ Iterator iterator() {
        return iterator();
    }

    /* renamed from: k */
    public zzfb<E> mo12679k() {
        zzfb<E> zzfbVar = this.f8417g;
        zzfb<E> zzfbVar2 = zzfbVar;
        if (zzfbVar == null) {
            zzfbVar2 = mo12671p();
            this.f8417g = zzfbVar2;
        }
        return zzfbVar2;
    }

    /* renamed from: n */
    boolean mo12672n() {
        return false;
    }

    /* renamed from: p */
    zzfb<E> mo12671p() {
        return zzfb.m12694n(toArray());
    }
}
