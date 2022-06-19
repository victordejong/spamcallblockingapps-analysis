package kotlinx.coroutines;

import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.internal.C1923u;
/* renamed from: kotlinx.coroutines.ba */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/ba.class */
public final class C1840ba {

    /* renamed from: a */
    private static final C1923u f4584a = new C1923u("REMOVED_TASK");

    /* renamed from: b */
    private static final C1923u f4585b = new C1923u("CLOSED_EMPTY");

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: a */
    public static final long m2814a(long j) {
        return j <= 0 ? (char) 0 : j >= 9223372036854L ? (char) 65535 : 1000000 * j;
    }

    /* renamed from: a */
    public static final AbstractC1816ay m2815a() {
        Thread currentThread = Thread.currentThread();
        C1694h.m3122a((Object) currentThread, "Thread.currentThread()");
        return new C1889d(currentThread);
    }
}
