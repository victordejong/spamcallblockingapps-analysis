package p573f;

import kotlin.Result;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.e */
/* loaded from: classes2-dex2jar.jar:f/e.class */
public final class C9927e {
    /* renamed from: a */
    public static final Object m1778a(Throwable th) {
        C10059q.m1637b(th, "exception");
        return new Result.Failure(th);
    }

    /* renamed from: a */
    public static final void m1779a(Object obj) {
        if (obj instanceof Result.Failure) {
            throw ((Result.Failure) obj).exception;
        }
    }
}
