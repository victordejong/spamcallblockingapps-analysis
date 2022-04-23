package androidx.work.impl.utils;

import androidx.work.impl.j;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.a.c;
import androidx.work.t;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/i.class */
public abstract class i<T> implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final c<T> f6190a = c.a();

    public static i<List<t>> a(final j jVar, final String str) {
        return new i<List<t>>() { // from class: androidx.work.impl.utils.i.1
            @Override // androidx.work.impl.utils.i
            final /* synthetic */ List<t> a() {
                return WorkSpec.WORK_INFO_MAPPER.apply(j.this.f6118c.j().getWorkStatusPojoForTag(str));
            }
        };
    }

    abstract T a();

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f6190a.a((c<T>) a());
        } catch (Throwable th) {
            this.f6190a.a(th);
        }
    }
}
