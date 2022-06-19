package p193e.p194a.p1066n;

import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.z.c.l;
/* renamed from: e.a.n.i */
/* loaded from: classes5-dex2jar.jar:e/a/n/i.class */
public final class C18341i implements AbstractC18337h {

    /* renamed from: a */
    public final AbstractC8541a f51802a;

    /* renamed from: b */
    public final AbstractC18362k0 f51803b;

    @Inject
    public C18341i(AbstractC8541a abstractC8541a, AbstractC18362k0 abstractC18362k0) {
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC18362k0, "backupWorkerHelper");
        this.f51802a = abstractC8541a;
        this.f51803b = abstractC18362k0;
    }

    @Override // p193e.p194a.p1066n.AbstractC18337h
    /* renamed from: a */
    public void mo15162a() {
        long hours = TimeUnit.DAYS.toHours(7L);
        this.f51802a.putBoolean("backup_enabled", true);
        this.f51802a.putLong("key_backup_frequency_hours", hours);
        this.f51802a.putLong("key_backup_last_success", 0L);
        this.f51803b.mo15133a();
    }
}
