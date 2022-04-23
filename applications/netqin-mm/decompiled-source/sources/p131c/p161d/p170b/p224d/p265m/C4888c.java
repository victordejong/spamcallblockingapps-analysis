package p131c.p161d.p170b.p224d.p265m;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executor;
/* renamed from: c.d.b.d.m.c */
/* loaded from: classes2-dex2jar.jar:c/d/b/d/m/c.class */
public final class C4888c<TResult, TContinuationResult> implements OnCanceledListener, OnFailureListener, OnSuccessListener<TContinuationResult>, AbstractC4902q<TResult> {

    /* renamed from: a */
    public final Executor f17504a;

    /* renamed from: b */
    public final Continuation<TResult, Task<TContinuationResult>> f17505b;

    /* renamed from: c */
    public final C4904s<TContinuationResult> f17506c;

    public C4888c(Executor executor, Continuation<TResult, Task<TContinuationResult>> continuation, C4904s<TContinuationResult> sVar) {
        this.f17504a = executor;
        this.f17505b = continuation;
        this.f17506c = sVar;
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    /* renamed from: a */
    public final void mo8584a() {
        this.f17506c.m24849f();
    }

    @Override // p131c.p161d.p170b.p224d.p265m.AbstractC4902q
    /* renamed from: a */
    public final void mo24855a(Task<TResult> task) {
        this.f17504a.execute(new RunnableC4890e(this, task));
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    /* renamed from: a */
    public final void mo8583a(Exception exc) {
        this.f17506c.m24854a(exc);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.f17506c.m24853a((C4904s<TContinuationResult>) tcontinuationresult);
    }
}
