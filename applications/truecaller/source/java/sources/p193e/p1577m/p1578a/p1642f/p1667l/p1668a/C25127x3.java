package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.internal.measurement.zzfo;
import com.google.android.gms.internal.measurement.zzfy;
import com.google.android.gms.measurement.internal.zzdu;
import com.google.android.gms.measurement.internal.zzkp;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* renamed from: e.m.a.f.l.a.x3 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/x3.class */
public final class C25127x3 {

    /* renamed from: a */
    public zzfy f70347a;

    /* renamed from: b */
    public List f70348b;

    /* renamed from: c */
    public List f70349c;

    /* renamed from: d */
    public long f70350d;

    /* renamed from: e */
    public final /* synthetic */ zzkp f70351e;

    /* renamed from: a */
    public final boolean m4159a(long j, zzfo zzfoVar) {
        Objects.requireNonNull(zzfoVar, "null reference");
        if (this.f70349c == null) {
            this.f70349c = new ArrayList();
        }
        if (this.f70348b == null) {
            this.f70348b = new ArrayList();
        }
        if (this.f70349c.size() <= 0 || ((((zzfo) this.f70349c.get(0)).zzd() / 1000) / 60) / 60 == ((zzfoVar.zzd() / 1000) / 60) / 60) {
            long zzbr = this.f70350d + zzfoVar.zzbr();
            this.f70351e.G();
            if (zzbr >= Math.max(0, ((Integer) zzdu.f6326i.m38615a(null)).intValue())) {
                return false;
            }
            this.f70350d = zzbr;
            this.f70349c.add(zzfoVar);
            this.f70348b.add(Long.valueOf(j));
            int size = this.f70349c.size();
            this.f70351e.G();
            return size < Math.max(1, ((Integer) zzdu.f6328j.m38615a(null)).intValue());
        }
        return false;
    }
}
