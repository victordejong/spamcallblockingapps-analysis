package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zznu;
import com.google.android.gms.measurement.internal.zzdu;
import com.google.android.gms.measurement.internal.zzka;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.f.l.a.l3 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/l3.class */
public final class C25081l3 {

    /* renamed from: a */
    public final /* synthetic */ zzka f70203a;

    public C25081l3(zzka zzkaVar) {
        this.f70203a = zzkaVar;
    }

    /* renamed from: a */
    public final void m4166a() {
        this.f70203a.d();
        if (((v0) this.f70203a).a.p().p(((v0) this.f70203a).a.n.mo38787c())) {
            ((v0) this.f70203a).a.p().l.m38584a(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance != 100) {
                return;
            }
            ((v0) this.f70203a).a.zzay().n.m38590a("Detected application was in foreground");
            m4164c(((v0) this.f70203a).a.n.mo38787c(), false);
        }
    }

    /* renamed from: b */
    public final void m4165b(long j, boolean z) {
        this.f70203a.d();
        this.f70203a.h();
        if (((v0) this.f70203a).a.p().p(j)) {
            ((v0) this.f70203a).a.p().l.m38584a(true);
        }
        ((v0) this.f70203a).a.p().o.m38579b(j);
        if (((v0) this.f70203a).a.p().l.m38583b()) {
            m4164c(j, z);
        }
    }

    @VisibleForTesting
    /* renamed from: c */
    public final void m4164c(long j, boolean z) {
        this.f70203a.d();
        if (!((v0) this.f70203a).a.c()) {
            return;
        }
        ((v0) this.f70203a).a.p().o.m38579b(j);
        ((v0) this.f70203a).a.zzay().n.m38589b("Session started, time", Long.valueOf(((v0) this.f70203a).a.n.mo38789a()));
        Long valueOf = Long.valueOf(j / 1000);
        ((v0) this.f70203a).a.r().x("auto", "_sid", valueOf, j);
        ((v0) this.f70203a).a.p().l.m38584a(false);
        Bundle bundle = new Bundle();
        bundle.putLong("_sid", valueOf.longValue());
        if (((v0) this.f70203a).a.g.r((String) null, zzdu.f6311a0) && z) {
            bundle.putLong("_aib", 1L);
        }
        ((v0) this.f70203a).a.r().l("auto", "_s", j, bundle);
        zznu.zzc();
        if (!((v0) this.f70203a).a.g.r((String) null, zzdu.f6317d0)) {
            return;
        }
        String m38577a = ((v0) this.f70203a).a.p().t.m38577a();
        if (TextUtils.isEmpty(m38577a)) {
            return;
        }
        ((v0) this.f70203a).a.r().l("auto", "_ssr", j, C22128a.m8654X0("_ffr", m38577a));
    }
}
