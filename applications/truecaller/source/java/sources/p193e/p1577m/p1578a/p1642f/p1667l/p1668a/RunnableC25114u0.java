package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.internal.measurement.zzpb;
import com.google.android.gms.measurement.internal.zzdu;
import com.google.android.gms.measurement.internal.zzgj;
import com.google.android.gms.measurement.internal.zzid;
/* renamed from: e.m.a.f.l.a.u0 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/u0.class */
public final class RunnableC25114u0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f70300a;

    /* renamed from: b */
    public final /* synthetic */ String f70301b;

    /* renamed from: c */
    public final /* synthetic */ String f70302c;

    /* renamed from: d */
    public final /* synthetic */ long f70303d;

    /* renamed from: e */
    public final /* synthetic */ zzgj f70304e;

    public RunnableC25114u0(zzgj zzgjVar, String str, String str2, String str3, long j) {
        this.f70304e = zzgjVar;
        this.f70300a = str;
        this.f70301b = str2;
        this.f70302c = str3;
        this.f70303d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpb.zzc();
        if (this.f70304e.a.G().r((String) null, zzdu.f6345r0)) {
            String str = this.f70300a;
            if (str == null) {
                this.f70304e.a.m(this.f70301b, (zzid) null);
                return;
            }
            this.f70304e.a.m(this.f70301b, new zzid(this.f70302c, str, this.f70303d));
            return;
        }
        String str2 = this.f70300a;
        if (str2 == null) {
            this.f70304e.a.l.t().n(this.f70301b, (zzid) null);
            return;
        }
        this.f70304e.a.l.t().n(this.f70301b, new zzid(this.f70302c, str2, this.f70303d));
    }
}
