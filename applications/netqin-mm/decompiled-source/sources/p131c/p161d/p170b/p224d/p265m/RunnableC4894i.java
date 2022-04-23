package p131c.p161d.p170b.p224d.p265m;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
/* renamed from: c.d.b.d.m.i */
/* loaded from: classes2-dex2jar.jar:c/d/b/d/m/i.class */
public final class RunnableC4894i implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Task f17518a;

    /* renamed from: b */
    public final /* synthetic */ C4893h f17519b;

    public RunnableC4894i(C4893h hVar, Task task) {
        this.f17519b = hVar;
        this.f17518a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        OnCompleteListener onCompleteListener;
        OnCompleteListener onCompleteListener2;
        obj = this.f17519b.f17516b;
        synchronized (obj) {
            onCompleteListener = this.f17519b.f17517c;
            if (onCompleteListener != null) {
                onCompleteListener2 = this.f17519b.f17517c;
                onCompleteListener2.mo8619a(this.f17518a);
            }
        }
    }
}
