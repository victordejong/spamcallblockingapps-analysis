package p131c.p161d.p282e.p315q.p328q0;

import com.google.android.gms.tasks.TaskCompletionSource;
import p530d.p541c.p542a0.AbstractC9644g;
/* renamed from: c.d.e.q.q0.v */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/v.class */
public final /* synthetic */ class C5820v implements AbstractC9644g {

    /* renamed from: a */
    public final TaskCompletionSource f19086a;

    public C5820v(TaskCompletionSource taskCompletionSource) {
        this.f19086a = taskCompletionSource;
    }

    /* renamed from: a */
    public static AbstractC9644g m22967a(TaskCompletionSource taskCompletionSource) {
        return new C5820v(taskCompletionSource);
    }

    @Override // p530d.p541c.p542a0.AbstractC9644g
    public void accept(Object obj) {
        this.f19086a.m8598a((TaskCompletionSource) obj);
    }
}
