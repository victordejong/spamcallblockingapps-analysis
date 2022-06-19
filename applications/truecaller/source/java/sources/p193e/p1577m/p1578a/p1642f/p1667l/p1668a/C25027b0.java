package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.measurement.internal.zzfo;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
/* renamed from: e.m.a.f.l.a.b0 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/b0.class */
public final class C25027b0 extends FutureTask implements Comparable {

    /* renamed from: a */
    public final long f70009a;

    /* renamed from: b */
    public final boolean f70010b;

    /* renamed from: c */
    public final String f70011c;

    /* renamed from: d */
    public final /* synthetic */ zzfo f70012d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C25027b0(zzfo zzfoVar, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        this.f70012d = zzfoVar;
        long andIncrement = zzfo.k.getAndIncrement();
        this.f70009a = andIncrement;
        this.f70011c = str;
        this.f70010b = z;
        if (andIncrement == RecyclerView.FOREVER_NS) {
            ((v0) zzfoVar).a.zzay().f.m38590a("Tasks index overflow");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C25027b0(zzfo zzfoVar, Callable callable, boolean z) {
        super(callable);
        this.f70012d = zzfoVar;
        long andIncrement = zzfo.k.getAndIncrement();
        this.f70009a = andIncrement;
        this.f70011c = "Task exception on worker thread";
        this.f70010b = z;
        if (andIncrement == RecyclerView.FOREVER_NS) {
            ((v0) zzfoVar).a.zzay().f.m38590a("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        C25027b0 c25027b0 = (C25027b0) obj;
        boolean z = this.f70010b;
        int i = 1;
        if (z == c25027b0.f70010b) {
            int i2 = (this.f70009a > c25027b0.f70009a ? 1 : (this.f70009a == c25027b0.f70009a ? 0 : -1));
            if (i2 < 0) {
                i = -1;
            } else if (i2 <= 0) {
                ((v0) this.f70012d).a.zzay().g.m38589b("Two tasks share the same index. index", Long.valueOf(this.f70009a));
                return 0;
            }
        } else if (z) {
            return -1;
        }
        return i;
    }

    @Override // java.util.concurrent.FutureTask
    public final void setException(Throwable th) {
        ((v0) this.f70012d).a.zzay().f.m38589b(this.f70011c, th);
        super.setException(th);
    }
}
