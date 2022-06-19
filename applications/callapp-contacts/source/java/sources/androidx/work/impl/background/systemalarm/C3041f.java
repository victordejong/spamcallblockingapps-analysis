package androidx.work.impl.background.systemalarm;

import android.content.Context;
import androidx.work.AbstractC3145k;
import androidx.work.impl.AbstractC3048e;
import androidx.work.impl.model.WorkSpec;
/* renamed from: androidx.work.impl.background.systemalarm.f */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/f.class */
public final class C3041f implements AbstractC3048e {

    /* renamed from: a */
    private static final String f11268a = AbstractC3145k.m39275a("SystemAlarmScheduler");

    /* renamed from: b */
    private final Context f11269b;

    public C3041f(Context context) {
        this.f11269b = context.getApplicationContext();
    }

    @Override // androidx.work.impl.AbstractC3048e
    /* renamed from: a */
    public final void mo39387a(String str) {
        this.f11269b.startService(C3033b.m39420c(this.f11269b, str));
    }

    @Override // androidx.work.impl.AbstractC3048e
    /* renamed from: a */
    public final void mo39386a(WorkSpec... workSpecArr) {
        for (WorkSpec workSpec : workSpecArr) {
            AbstractC3145k.m39277a();
            String.format("Scheduling work with workSpecId %s", workSpec.f11397id);
            this.f11269b.startService(C3033b.m39425a(this.f11269b, workSpec.f11397id));
        }
    }

    @Override // androidx.work.impl.AbstractC3048e
    /* renamed from: a */
    public final boolean mo39388a() {
        return true;
    }
}
