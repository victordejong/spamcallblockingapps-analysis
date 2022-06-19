package p193e.p1485h.p1486a.p1493c.p1510y0;

import com.clevertap.android.sdk.CleverTapInstanceConfig;
import java.util.HashMap;
import java.util.concurrent.Executor;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.h.a.c.y0.b */
/* loaded from: classes-dex2jar.jar:e/h/a/c/y0/b.class */
public class C22883b {

    /* renamed from: b */
    public final ExecutorC22887f f63531b;

    /* renamed from: c */
    public final ExecutorC22887f f63532c;

    /* renamed from: d */
    public final CleverTapInstanceConfig f63533d;

    /* renamed from: a */
    public final ExecutorServiceC22885d f63530a = new ExecutorServiceC22885d();

    /* renamed from: e */
    public final HashMap<String, ExecutorServiceC22889h> f63534e = new HashMap<>();

    public C22883b(CleverTapInstanceConfig cleverTapInstanceConfig) {
        ExecutorC22887f executorC22887f = new ExecutorC22887f();
        this.f63531b = executorC22887f;
        this.f63532c = executorC22887f;
        this.f63533d = cleverTapInstanceConfig;
    }

    /* renamed from: a */
    public <TResult> C22895k<TResult> m7643a() {
        return m7639e(this.f63530a, this.f63532c, "ioTask");
    }

    /* renamed from: b */
    public <TResult> C22895k<TResult> m7642b() {
        return m7639e(this.f63531b, this.f63532c, "Main");
    }

    /* renamed from: c */
    public <TResult> C22895k<TResult> m7641c() {
        return m7640d(this.f63533d.f2240a);
    }

    /* renamed from: d */
    public <TResult> C22895k<TResult> m7640d(String str) {
        if (str != null) {
            ExecutorServiceC22889h executorServiceC22889h = this.f63534e.get(str);
            ExecutorServiceC22889h executorServiceC22889h2 = executorServiceC22889h;
            if (executorServiceC22889h == null) {
                executorServiceC22889h2 = new ExecutorServiceC22889h();
                this.f63534e.put(str, executorServiceC22889h2);
            }
            return m7639e(executorServiceC22889h2, this.f63532c, "PostAsyncSafely");
        }
        throw new IllegalArgumentException("Tag can't be null");
    }

    /* renamed from: e */
    public <TResult> C22895k<TResult> m7639e(Executor executor, Executor executor2, String str) {
        if (executor == null || executor2 == null) {
            throw new IllegalArgumentException(C22128a.m8725C2("Can't create task ", str, " with null executors"));
        }
        return new C22895k<>(this.f63533d, executor, executor2, str);
    }
}
