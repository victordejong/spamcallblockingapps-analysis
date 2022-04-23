package p573f.p579t.p585e.p586a;

import kotlin.coroutines.CoroutineContext;
import p573f.p579t.AbstractC9993a;
/* renamed from: f.t.e.a.a */
/* loaded from: classes2-dex2jar.jar:f/t/e/a/a.class */
public final class C10007a implements AbstractC9993a<Object> {

    /* renamed from: a */
    public static final C10007a f37164a = new C10007a();

    @Override // p573f.p579t.AbstractC9993a
    public CoroutineContext getContext() {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    @Override // p573f.p579t.AbstractC9993a
    public void resumeWith(Object obj) {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    public String toString() {
        return "This continuation is already complete";
    }
}
