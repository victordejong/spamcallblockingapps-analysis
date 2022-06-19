package androidx.work;

import android.content.Context;
import androidx.work.C0677a;
import java.util.Collections;
import java.util.List;
import p121i1.AbstractC3064b;
import p186o1.AbstractC3824h;
import p186o1.AbstractC3837n;
import p197p1.C4006j;
/* loaded from: classes-dex2jar.jar:androidx/work/WorkManagerInitializer.class */
public final class WorkManagerInitializer implements AbstractC3064b<AbstractC3837n> {

    /* renamed from: a */
    public static final String f2616a = AbstractC3824h.m1773e("WrkMgrInitializer");

    @Override // p121i1.AbstractC3064b
    /* renamed from: a */
    public List<Class<? extends AbstractC3064b<?>>> mo2660a() {
        return Collections.emptyList();
    }

    @Override // p121i1.AbstractC3064b
    /* renamed from: b */
    public AbstractC3837n mo2659b(Context context) {
        AbstractC3824h.m1774c().mo1772a(f2616a, "Initializing WorkManager with default configuration.", new Throwable[0]);
        C4006j.m1534d(context, new C0677a(new C0677a.C0678a()));
        return C4006j.m1535c(context);
    }
}
