package p131c.p161d.p282e.p352w;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
/* renamed from: c.d.e.w.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/w/a.class */
public final /* synthetic */ class C6064a implements Continuation {

    /* renamed from: a */
    public final C6070g f19503a;

    public C6064a(C6070g gVar) {
        this.f19503a = gVar;
    }

    /* renamed from: a */
    public static Continuation m22160a(C6070g gVar) {
        return new C6064a(gVar);
    }

    @Override // com.google.android.gms.tasks.Continuation
    /* renamed from: a */
    public Object mo8621a(Task task) {
        boolean a;
        a = this.f19503a.m22143a(task);
        return Boolean.valueOf(a);
    }
}
