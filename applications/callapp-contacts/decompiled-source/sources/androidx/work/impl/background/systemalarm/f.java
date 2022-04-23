package androidx.work.impl.background.systemalarm;

import android.content.Context;
import androidx.work.impl.e;
import androidx.work.impl.model.WorkSpec;
import androidx.work.k;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/f.class */
public final class f implements e {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6061a = k.a("SystemAlarmScheduler");

    /* renamed from: b  reason: collision with root package name */
    private final Context f6062b;

    public f(Context context) {
        this.f6062b = context.getApplicationContext();
    }

    @Override // androidx.work.impl.e
    public final void a(String str) {
        this.f6062b.startService(b.c(this.f6062b, str));
    }

    @Override // androidx.work.impl.e
    public final void a(WorkSpec... workSpecArr) {
        for (WorkSpec workSpec : workSpecArr) {
            k.a();
            String.format("Scheduling work with workSpecId %s", workSpec.id);
            this.f6062b.startService(b.a(this.f6062b, workSpec.id));
        }
    }

    @Override // androidx.work.impl.e
    public final boolean a() {
        return true;
    }
}
