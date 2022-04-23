package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzgp;
import com.google.android.gms.internal.measurement.zzij;
import java.io.IOException;
/* renamed from: c.d.b.d.g.f.e5 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/e5.class */
public abstract class AbstractC4487e5<T, B> {
    /* renamed from: a */
    public abstract B mo25494a();

    /* renamed from: a */
    public abstract T mo25492a(B b);

    /* renamed from: a */
    public abstract void mo25491a(B b, int i, int i2);

    /* renamed from: a */
    public abstract void mo25490a(B b, int i, long j);

    /* renamed from: a */
    public abstract void mo25489a(B b, int i, zzgp zzgpVar);

    /* renamed from: a */
    public abstract void mo25488a(B b, int i, T t);

    /* renamed from: a */
    public abstract void mo25487a(T t, AbstractC4582r5 r5Var) throws IOException;

    /* renamed from: a */
    public abstract void mo25485a(Object obj, T t);

    /* renamed from: a */
    public abstract boolean mo25493a(AbstractC4532k4 k4Var);

    /* renamed from: a */
    public final boolean m25498a(B b, AbstractC4532k4 k4Var) throws IOException {
        int zzb = k4Var.zzb();
        int i = zzb >>> 3;
        int i2 = zzb & 7;
        if (i2 == 0) {
            mo25490a((AbstractC4487e5<T, B>) b, i, k4Var.mo25226L());
            return true;
        } else if (i2 == 1) {
            mo25483b(b, i, k4Var.mo25228I());
            return true;
        } else if (i2 == 2) {
            mo25489a((AbstractC4487e5<T, B>) b, i, k4Var.mo25187u());
            return true;
        } else if (i2 == 3) {
            B a = mo25494a();
            while (k4Var.zza() != Integer.MAX_VALUE && m25498a((AbstractC4487e5<T, B>) a, k4Var)) {
            }
            if ((4 | (i << 3)) == k4Var.zzb()) {
                mo25488a((AbstractC4487e5<T, B>) b, i, (int) mo25492a((AbstractC4487e5<T, B>) a));
                return true;
            }
            throw zzij.zze();
        } else if (i2 == 4) {
            return false;
        } else {
            if (i2 == 5) {
                mo25491a((AbstractC4487e5<T, B>) b, i, k4Var.mo25225T());
                return true;
            }
            throw zzij.zzf();
        }
    }

    /* renamed from: b */
    public abstract T mo25484b(Object obj);

    /* renamed from: b */
    public abstract void mo25483b(B b, int i, long j);

    /* renamed from: b */
    public abstract void mo25482b(T t, AbstractC4582r5 r5Var) throws IOException;

    /* renamed from: b */
    public abstract void mo25481b(Object obj, B b);

    /* renamed from: c */
    public abstract B mo25480c(Object obj);

    /* renamed from: c */
    public abstract T mo25479c(T t, T t2);

    /* renamed from: d */
    public abstract void mo25478d(Object obj);

    /* renamed from: e */
    public abstract int mo25477e(T t);

    /* renamed from: f */
    public abstract int mo25476f(T t);
}
