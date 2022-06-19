package androidx.work.impl.utils;

import androidx.work.C3163t;
import androidx.work.impl.C3068j;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.p089a.C3117c;
import java.util.List;
/* renamed from: androidx.work.impl.utils.i */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/i.class */
public abstract class AbstractRunnableC3129i<T> implements Runnable {

    /* renamed from: a */
    public final C3117c<T> f11463a = C3117c.m39313a();

    /* renamed from: a */
    public static AbstractRunnableC3129i<List<C3163t>> m39290a(final C3068j c3068j, final String str) {
        return new AbstractRunnableC3129i<List<C3163t>>() { // from class: androidx.work.impl.utils.i.1
            @Override // androidx.work.impl.utils.AbstractRunnableC3129i
            /* renamed from: a */
            final /* synthetic */ List<C3163t> mo39289a() {
                return WorkSpec.WORK_INFO_MAPPER.apply(c3068j.f11355c.mo39474j().getWorkStatusPojoForTag(str));
            }
        };
    }

    /* renamed from: a */
    abstract T mo39289a();

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f11463a.mo39311a((C3117c<T>) mo39289a());
        } catch (Throwable th) {
            this.f11463a.mo39310a(th);
        }
    }
}
