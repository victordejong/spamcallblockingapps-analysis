package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzeb;
import com.google.android.gms.internal.measurement.zzec;
/* renamed from: c.d.b.d.g.f.i1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/i1.class */
public final class C4511i1<T> implements zzec<T> {

    /* renamed from: a */
    public volatile zzec<T> f16766a;

    /* renamed from: b */
    public volatile boolean f16767b;

    /* renamed from: c */
    public T f16768c;

    public C4511i1(zzec<T> zzecVar) {
        zzeb.m9815a(zzecVar);
        this.f16766a = zzecVar;
    }

    public final String toString() {
        zzec<T> zzecVar = this.f16766a;
        String str = zzecVar;
        if (zzecVar == null) {
            String valueOf = String.valueOf(this.f16768c);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
            sb.append("<supplier that returned ");
            sb.append(valueOf);
            sb.append(">");
            str = sb.toString();
        }
        String valueOf2 = String.valueOf(str);
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(valueOf2);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzec
    public final T zza() {
        if (!this.f16767b) {
            synchronized (this) {
                if (!this.f16767b) {
                    T zza = this.f16766a.zza();
                    this.f16768c = zza;
                    this.f16767b = true;
                    this.f16766a = null;
                    return zza;
                }
            }
        }
        return this.f16768c;
    }
}
