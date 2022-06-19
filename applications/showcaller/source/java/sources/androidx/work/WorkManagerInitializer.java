package androidx.work;

import android.content.Context;
import androidx.startup.AbstractC1055b;
import androidx.work.C1230a;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/WorkManagerInitializer.class */
public final class WorkManagerInitializer implements AbstractC1055b<AbstractC1418q> {

    /* renamed from: a */
    private static final String f5234a = AbstractC1404j.m30159f("WrkMgrInitializer");

    @Override // androidx.startup.AbstractC1055b
    /* renamed from: a */
    public List<Class<? extends AbstractC1055b<?>>> mo30612a() {
        return Collections.emptyList();
    }

    /* renamed from: c */
    public AbstractC1418q mo30611b(Context context) {
        AbstractC1404j.m30161c().mo30158a(f5234a, "Initializing WorkManager with default configuration.", new Throwable[0]);
        AbstractC1418q.m30142e(context, new C1230a.C1232b().m30584a());
        return AbstractC1418q.m30143d(context);
    }
}
