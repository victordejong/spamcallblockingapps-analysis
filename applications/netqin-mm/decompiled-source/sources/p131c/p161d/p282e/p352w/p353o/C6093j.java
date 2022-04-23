package p131c.p161d.p282e.p352w.p353o;

import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import p131c.p161d.p282e.p352w.p353o.C6094k;
/* renamed from: c.d.e.w.o.j */
/* loaded from: classes2-dex2jar.jar:c/d/e/w/o/j.class */
public final /* synthetic */ class C6093j implements SuccessContinuation {

    /* renamed from: a */
    public final C6094k.C6095a f19570a;

    public C6093j(C6094k.C6095a aVar) {
        this.f19570a = aVar;
    }

    /* renamed from: a */
    public static SuccessContinuation m22077a(C6094k.C6095a aVar) {
        return new C6093j(aVar);
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    /* renamed from: a */
    public Task mo8618a(Object obj) {
        Task a;
        C6087f fVar = (C6087f) obj;
        a = Tasks.m8591a(this.f19570a);
        return a;
    }
}
