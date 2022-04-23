package p131c.p161d.p282e.p352w;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
/* renamed from: c.d.e.w.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/w/c.class */
public final /* synthetic */ class C6066c implements Continuation {

    /* renamed from: a */
    public final C6070g f19505a;

    /* renamed from: b */
    public final Task f19506b;

    /* renamed from: c */
    public final Task f19507c;

    public C6066c(C6070g gVar, Task task, Task task2) {
        this.f19505a = gVar;
        this.f19506b = task;
        this.f19507c = task2;
    }

    /* renamed from: a */
    public static Continuation m22158a(C6070g gVar, Task task, Task task2) {
        return new C6066c(gVar, task, task2);
    }

    @Override // com.google.android.gms.tasks.Continuation
    /* renamed from: a */
    public Object mo8621a(Task task) {
        return C6070g.m22149a(this.f19505a, this.f19506b, this.f19507c, task);
    }
}
