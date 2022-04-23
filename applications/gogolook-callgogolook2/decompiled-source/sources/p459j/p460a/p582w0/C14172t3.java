package p459j.p460a.p582w0;

import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.t3 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/t3.class */
public final class C14172t3 implements CoroutineScope {

    /* renamed from: a */
    public final AbstractC15049g f31691a;

    public C14172t3(CoroutineDispatcher coroutineDispatcher) {
        C15149k.m377b(coroutineDispatcher, "dispatcher");
        this.f31691a = coroutineDispatcher.plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null));
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public AbstractC15049g getCoroutineContext() {
        return this.f31691a;
    }
}
