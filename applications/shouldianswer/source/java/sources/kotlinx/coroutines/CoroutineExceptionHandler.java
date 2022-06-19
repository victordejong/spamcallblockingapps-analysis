package kotlinx.coroutines;

import kotlin.p075c.AbstractC1646f;
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/CoroutineExceptionHandler.class */
public interface CoroutineExceptionHandler extends AbstractC1646f.AbstractC1649b {

    /* renamed from: a */
    public static final C1777a f4453a = C1777a.f4454a;

    /* renamed from: kotlinx.coroutines.CoroutineExceptionHandler$a */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/CoroutineExceptionHandler$a.class */
    public static final class C1777a implements AbstractC1646f.AbstractC1651c<CoroutineExceptionHandler> {

        /* renamed from: a */
        static final /* synthetic */ C1777a f4454a = new C1777a();

        private C1777a() {
        }
    }

    void handleException(AbstractC1646f abstractC1646f, Throwable th);
}
