package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzeb;
import com.google.android.gms.internal.measurement.zzem;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: c.d.b.d.g.f.t1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/t1.class */
public abstract class AbstractC4592t1<T> implements Iterator<T> {

    /* renamed from: a */
    public int f16886a;

    /* renamed from: b */
    public int f16887b;

    /* renamed from: c */
    public int f16888c;

    /* renamed from: d */
    public final /* synthetic */ zzem f16889d;

    public AbstractC4592t1(zzem zzemVar) {
        int i;
        this.f16889d = zzemVar;
        i = this.f16889d.zzf;
        this.f16886a = i;
        this.f16887b = this.f16889d.zzd();
        this.f16888c = -1;
    }

    public /* synthetic */ AbstractC4592t1(zzem zzemVar, C4564p1 p1Var) {
        this(zzemVar);
    }

    /* renamed from: a */
    public abstract T mo25239a(int i);

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f16887b >= 0;
    }

    @Override // java.util.Iterator
    public T next() {
        zza();
        if (hasNext()) {
            int i = this.f16887b;
            this.f16888c = i;
            T a = mo25239a(i);
            this.f16887b = this.f16889d.zza(this.f16887b);
            return a;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        zza();
        zzeb.m9811b(this.f16888c >= 0, "no calls to next() since the last call to remove()");
        this.f16886a += 32;
        zzem zzemVar = this.f16889d;
        zzemVar.remove(zzemVar.zzb[this.f16888c]);
        this.f16887b = zzem.zzb(this.f16887b, this.f16888c);
        this.f16888c = -1;
    }

    public final void zza() {
        int i;
        i = this.f16889d.zzf;
        if (i != this.f16886a) {
            throw new ConcurrentModificationException();
        }
    }
}
