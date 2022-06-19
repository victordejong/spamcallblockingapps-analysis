package retrofit2;

import android.os.Handler;
import android.os.Looper;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import retrofit2.AbstractC5587c;
/* renamed from: retrofit2.j */
/* loaded from: classes-dex2jar.jar:retrofit2/j.class */
public class C5621j {

    /* renamed from: a */
    private static final C5621j f23305a = m76c();

    /* renamed from: retrofit2.j$a */
    /* loaded from: classes-dex2jar.jar:retrofit2/j$a.class */
    public static class C5622a extends C5621j {

        /* renamed from: retrofit2.j$a$a */
        /* loaded from: classes-dex2jar.jar:retrofit2/j$a$a.class */
        static class ExecutorC5623a implements Executor {

            /* renamed from: a */
            private final Handler f23306a = new Handler(Looper.getMainLooper());

            ExecutorC5623a() {
            }

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                this.f23306a.post(runnable);
            }
        }

        C5622a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.C5621j
        /* renamed from: a */
        public AbstractC5587c.AbstractC5588a mo75a(@Nullable Executor executor) {
            if (executor == null) {
                throw new AssertionError();
            }
            return new C5594g(executor);
        }

        @Override // retrofit2.C5621j
        /* renamed from: b */
        public Executor mo74b() {
            return new ExecutorC5623a();
        }
    }

    @IgnoreJRERequirement
    /* renamed from: retrofit2.j$b */
    /* loaded from: classes-dex2jar.jar:retrofit2/j$b.class */
    public static class C5624b extends C5621j {
        C5624b() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.C5621j
        /* renamed from: a */
        public Object mo72a(Method method, Class<?> cls, Object obj, @Nullable Object... objArr) {
            Constructor declaredConstructor = MethodHandles.Lookup.class.getDeclaredConstructor(Class.class, Integer.TYPE);
            declaredConstructor.setAccessible(true);
            return ((MethodHandles.Lookup) declaredConstructor.newInstance(cls, -1)).unreflectSpecial(method, cls).bindTo(obj).invokeWithArguments(objArr);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.C5621j
        /* renamed from: a */
        public boolean mo73a(Method method) {
            return method.isDefault();
        }
    }

    C5621j() {
    }

    /* renamed from: a */
    public static C5621j m77a() {
        return f23305a;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:11|2|(3:4|5|6)|13|8|5|6) */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0029, code lost:
        r3 = new retrofit2.C5621j();
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static retrofit2.C5621j m76c() {
        /*
            java.lang.String r0 = "android.os.Build"
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.ClassNotFoundException -> L16
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.ClassNotFoundException -> L16
            if (r0 == 0) goto L17
            retrofit2.j$a r0 = new retrofit2.j$a     // Catch: java.lang.ClassNotFoundException -> L16
            r3 = r0
            r0 = r3
            r0.<init>()     // Catch: java.lang.ClassNotFoundException -> L16
        L14:
            r0 = r3
            return r0
        L16:
            r3 = move-exception
        L17:
            java.lang.String r0 = "java.util.Optional"
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.ClassNotFoundException -> L28
            retrofit2.j$b r0 = new retrofit2.j$b     // Catch: java.lang.ClassNotFoundException -> L28
            r3 = r0
            r0 = r3
            r0.<init>()     // Catch: java.lang.ClassNotFoundException -> L28
            goto L14
        L28:
            r3 = move-exception
            retrofit2.j r0 = new retrofit2.j
            r1 = r0
            r1.<init>()
            r3 = r0
            goto L14
        */
        throw new UnsupportedOperationException("Method not decompiled: retrofit2.C5621j.m76c():retrofit2.j");
    }

    @Nullable
    /* renamed from: a */
    public Object mo72a(Method method, Class<?> cls, Object obj, @Nullable Object... objArr) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public AbstractC5587c.AbstractC5588a mo75a(@Nullable Executor executor) {
        return executor != null ? new C5594g(executor) : C5592f.f23252a;
    }

    /* renamed from: a */
    public boolean mo73a(Method method) {
        return false;
    }

    @Nullable
    /* renamed from: b */
    public Executor mo74b() {
        return null;
    }
}
