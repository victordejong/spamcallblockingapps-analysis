package androidx.lifecycle;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import androidx.lifecycle.AbstractC0516f;
import androidx.lifecycle.C0520g;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import p121i1.AbstractC3064b;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ProcessLifecycleInitializer.class */
public final class ProcessLifecycleInitializer implements AbstractC3064b<AbstractC0524j> {
    @Override // p121i1.AbstractC3064b
    /* renamed from: a */
    public List<Class<? extends AbstractC3064b<?>>> mo2660a() {
        return Collections.emptyList();
    }

    @Override // p121i1.AbstractC3064b
    /* renamed from: b */
    public AbstractC0524j mo2659b(Context context) {
        if (!C0520g.f2036a.getAndSet(true)) {
            ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new C0520g.C0521a());
        }
        C0533r c0533r = C0533r.f2050i;
        Objects.requireNonNull(c0533r);
        c0533r.f2055e = new Handler();
        c0533r.f2056f.m7988e(AbstractC0516f.EnumC0518b.ON_CREATE);
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new C0536s(c0533r));
        return c0533r;
    }
}
