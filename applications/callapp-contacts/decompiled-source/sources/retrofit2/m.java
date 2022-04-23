package retrofit2;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import retrofit2.b;
import retrofit2.e;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:retrofit2/m.class */
public class m {

    /* renamed from: b  reason: collision with root package name */
    private static final m f39527b = e();

    /* renamed from: a  reason: collision with root package name */
    final boolean f39528a;

    /* renamed from: c  reason: collision with root package name */
    private final Constructor<MethodHandles.Lookup> f39529c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:retrofit2/m$a.class */
    public static final class a extends m {

        /* renamed from: retrofit2.m$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:retrofit2/m$a$a.class */
        static final class ExecutorC0758a implements Executor {

            /* renamed from: a  reason: collision with root package name */
            private final Handler f39530a = new Handler(Looper.getMainLooper());

            ExecutorC0758a() {
            }

            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                this.f39530a.post(runnable);
            }
        }

        a() {
            super(Build.VERSION.SDK_INT >= 24);
        }

        @Override // retrofit2.m
        final Object a(Method method, Class<?> cls, Object obj, Object... objArr) throws Throwable {
            if (Build.VERSION.SDK_INT >= 26) {
                return m.super.a(method, cls, obj, objArr);
            }
            throw new UnsupportedOperationException("Calling default methods on API 24 and 25 is not supported");
        }

        @Override // retrofit2.m
        public final Executor b() {
            return new ExecutorC0758a();
        }
    }

    m(boolean z) {
        this.f39528a = z;
        r9 = null;
        Constructor<MethodHandles.Lookup> constructor = null;
        if (z) {
            try {
                Constructor<MethodHandles.Lookup> declaredConstructor = MethodHandles.Lookup.class.getDeclaredConstructor(Class.class, Integer.TYPE);
                constructor = declaredConstructor;
                declaredConstructor.setAccessible(true);
                constructor = declaredConstructor;
            } catch (NoClassDefFoundError | NoSuchMethodException e) {
            }
        }
        this.f39529c = constructor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static m a() {
        return f39527b;
    }

    private static m e() {
        try {
            Class.forName("android.os.Build");
            if (Build.VERSION.SDK_INT != 0) {
                return new a();
            }
        } catch (ClassNotFoundException e) {
        }
        return new m(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object a(Method method, Class<?> cls, Object obj, Object... objArr) throws Throwable {
        Constructor<MethodHandles.Lookup> constructor = this.f39529c;
        return (constructor != null ? constructor.newInstance(cls, -1) : MethodHandles.lookup()).unreflectSpecial(method, cls).bindTo(obj).invokeWithArguments(objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<? extends b.a> a(Executor executor) {
        f fVar = new f(executor);
        return this.f39528a ? Arrays.asList(d.f39433a, fVar) : Collections.singletonList(fVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(Method method) {
        return this.f39528a && method.isDefault();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Executor b() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<? extends e.a> c() {
        return this.f39528a ? Collections.singletonList(k.f39481a) : Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int d() {
        return this.f39528a ? 1 : 0;
    }
}
