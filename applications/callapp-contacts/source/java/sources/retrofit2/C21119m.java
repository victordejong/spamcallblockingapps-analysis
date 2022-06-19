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
import retrofit2.AbstractC21040b;
import retrofit2.AbstractC21074e;
/* renamed from: retrofit2.m */
/* loaded from: classes5-dex2jar.jar:retrofit2/m.class */
public class C21119m {

    /* renamed from: b */
    private static final C21119m f67772b = m35e();

    /* renamed from: a */
    final boolean f67773a;

    /* renamed from: c */
    private final Constructor<MethodHandles.Lookup> f67774c;

    /* renamed from: retrofit2.m$a */
    /* loaded from: classes5-dex2jar.jar:retrofit2/m$a.class */
    public static final class C21120a extends C21119m {

        /* renamed from: retrofit2.m$a$a */
        /* loaded from: classes5-dex2jar.jar:retrofit2/m$a$a.class */
        static final class ExecutorC21121a implements Executor {

            /* renamed from: a */
            private final Handler f67775a = new Handler(Looper.getMainLooper());

            ExecutorC21121a() {
            }

            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                this.f67775a.post(runnable);
            }
        }

        C21120a() {
            super(Build.VERSION.SDK_INT >= 24);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.C21119m
        /* renamed from: a */
        public final Object mo34a(Method method, Class<?> cls, Object obj, Object... objArr) throws Throwable {
            if (Build.VERSION.SDK_INT >= 26) {
                return C21119m.super.mo34a(method, cls, obj, objArr);
            }
            throw new UnsupportedOperationException("Calling default methods on API 24 and 25 is not supported");
        }

        @Override // retrofit2.C21119m
        /* renamed from: b */
        public final Executor mo33b() {
            return new ExecutorC21121a();
        }
    }

    C21119m(boolean z) {
        this.f67773a = z;
        Constructor<MethodHandles.Lookup> constructor = null;
        if (z) {
            constructor = null;
            try {
                Constructor<MethodHandles.Lookup> declaredConstructor = MethodHandles.Lookup.class.getDeclaredConstructor(Class.class, Integer.TYPE);
                constructor = declaredConstructor;
                declaredConstructor.setAccessible(true);
                constructor = declaredConstructor;
            } catch (NoClassDefFoundError | NoSuchMethodException e) {
            }
        }
        this.f67774c = constructor;
    }

    /* renamed from: a */
    public static C21119m m40a() {
        return f67772b;
    }

    /* renamed from: e */
    private static C21119m m35e() {
        try {
            Class.forName("android.os.Build");
            if (Build.VERSION.SDK_INT != 0) {
                return new C21120a();
            }
        } catch (ClassNotFoundException e) {
        }
        return new C21119m(true);
    }

    /* renamed from: a */
    public Object mo34a(Method method, Class<?> cls, Object obj, Object... objArr) throws Throwable {
        Constructor<MethodHandles.Lookup> constructor = this.f67774c;
        return (constructor != null ? constructor.newInstance(cls, -1) : MethodHandles.lookup()).unreflectSpecial(method, cls).bindTo(obj).invokeWithArguments(objArr);
    }

    /* renamed from: a */
    public final List<? extends AbstractC21040b.AbstractC21041a> m38a(Executor executor) {
        C21076f c21076f = new C21076f(executor);
        return this.f67773a ? Arrays.asList(C21068d.f67673a, c21076f) : Collections.singletonList(c21076f);
    }

    /* renamed from: a */
    public final boolean m39a(Method method) {
        return this.f67773a && method.isDefault();
    }

    /* renamed from: b */
    public Executor mo33b() {
        return null;
    }

    /* renamed from: c */
    public final List<? extends AbstractC21074e.AbstractC21075a> m37c() {
        return this.f67773a ? Collections.singletonList(C21099k.f67725a) : Collections.emptyList();
    }

    /* renamed from: d */
    public final int m36d() {
        return this.f67773a ? 1 : 0;
    }
}
