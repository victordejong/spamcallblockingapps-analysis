package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.os.Bundle;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzod;
import com.google.android.gms.measurement.internal.zzdu;
import com.google.android.gms.measurement.internal.zzka;
import com.google.android.gms.measurement.internal.zzkw;
/* renamed from: e.m.a.f.l.a.k3 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/k3.class */
public final class C25077k3 {
    @VisibleForTesting

    /* renamed from: a */
    public long f70165a;
    @VisibleForTesting

    /* renamed from: b */
    public long f70166b;

    /* renamed from: c */
    public final AbstractC25047f f70167c;

    /* renamed from: d */
    public final /* synthetic */ zzka f70168d;

    public C25077k3(zzka zzkaVar) {
        this.f70168d = zzkaVar;
        this.f70167c = new j3(this, ((v0) zzkaVar).a);
        long mo38789a = ((v0) zzkaVar).a.n.mo38789a();
        this.f70165a = mo38789a;
        this.f70166b = mo38789a;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* renamed from: a */
    public final boolean m4210a(boolean z, boolean z2, long j) {
        this.f70168d.d();
        this.f70168d.e();
        zzod.zzc();
        if (!((v0) this.f70168d).a.g.r((String) null, zzdu.f6319e0)) {
            ((v0) this.f70168d).a.p().o.m38579b(((v0) this.f70168d).a.n.mo38787c());
        } else if (((v0) this.f70168d).a.c()) {
            ((v0) this.f70168d).a.p().o.m38579b(((v0) this.f70168d).a.n.mo38787c());
        }
        char c = j - this.f70165a;
        if (!z && c < 1000) {
            ((v0) this.f70168d).a.zzay().n.m38589b("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(c));
            return false;
        }
        if (!z2) {
            c = j - this.f70166b;
            this.f70166b = j;
        }
        ((v0) this.f70168d).a.zzay().n.m38589b("Recording user engagement, ms", Long.valueOf(c));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", c);
        zzkw.s(((v0) this.f70168d).a.t().k(!((v0) this.f70168d).a.g.s()), bundle, true);
        if (!z2) {
            ((v0) this.f70168d).a.r().k("auto", "_e", bundle);
        }
        this.f70165a = j;
        this.f70167c.m4227a();
        this.f70167c.m4225c(DefaultRefreshIntervals.REMOTE_CONFIG_FETCH_INTERVAL);
        return true;
    }
}
