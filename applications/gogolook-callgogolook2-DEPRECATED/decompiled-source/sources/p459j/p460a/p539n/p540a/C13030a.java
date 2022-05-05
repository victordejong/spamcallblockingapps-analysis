package p459j.p460a.p539n.p540a;

import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
/* renamed from: j.a.n.a.a */
/* loaded from: classes2-dex2jar.jar:j/a/n/a/a.class */
public final class C13030a implements AbstractC13031b {
    @Override // p459j.p460a.p539n.p540a.AbstractC13031b
    /* renamed from: a */
    public CoroutineDispatcher mo4756a() {
        return Dispatchers.getIO();
    }

    @Override // p459j.p460a.p539n.p540a.AbstractC13031b
    /* renamed from: b */
    public CoroutineDispatcher mo4755b() {
        return Dispatchers.getMain().getImmediate();
    }
}
