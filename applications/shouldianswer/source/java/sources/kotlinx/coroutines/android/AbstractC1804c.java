package kotlinx.coroutines.android;

import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1796am;
import kotlinx.coroutines.AbstractC1812au;
import kotlinx.coroutines.AbstractC1866bu;
/* renamed from: kotlinx.coroutines.android.c */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/android/c.class */
public abstract class AbstractC1804c extends AbstractC1866bu implements AbstractC1796am {
    private AbstractC1804c() {
    }

    public /* synthetic */ AbstractC1804c(C1691e c1691e) {
        this();
    }

    /* renamed from: a */
    public AbstractC1812au mo2612a(long j, Runnable runnable) {
        C1694h.m3117b(runnable, "block");
        return AbstractC1796am.C1797a.m2946a(this, j, runnable);
    }
}
