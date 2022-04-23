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
import javax.annotation.Nullable;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import retrofit2.CallAdapter;
import retrofit2.Converter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:retrofit2/Platform.class */
public class Platform {
    private static final Platform PLATFORM = findPlatform();
    private final boolean hasJava8Types;
    @Nullable
    private final Constructor<MethodHandles.Lookup> lookupConstructor;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:retrofit2/Platform$Android.class */
    public static final class Android extends Platform {

        /* loaded from: classes2-dex2jar.jar:retrofit2/Platform$Android$MainThreadExecutor.class */
        static final class MainThreadExecutor implements Executor {
            private final Handler handler = new Handler(Looper.getMainLooper());

            MainThreadExecutor() {
            }

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                this.handler.post(runnable);
            }
        }

        Android() {
            super(Build.VERSION.SDK_INT >= 24);
        }

        @Override // retrofit2.Platform
        public Executor defaultCallbackExecutor() {
            return new MainThreadExecutor();
        }

        @Override // retrofit2.Platform
        @Nullable
        Object invokeDefaultMethod(Method method, Class<?> cls, Object obj, Object... objArr) throws Throwable {
            if (Build.VERSION.SDK_INT >= 26) {
                return Platform.super.invokeDefaultMethod(method, cls, obj, objArr);
            }
            throw new UnsupportedOperationException("Calling default methods on API 24 and 25 is not supported");
        }
    }

    Platform(boolean z) {
        this.hasJava8Types = z;
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
        this.lookupConstructor = constructor;
    }

    private static Platform findPlatform() {
        return "Dalvik".equals(System.getProperty("java.vm.name")) ? new Android() : new Platform(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Platform get() {
        return PLATFORM;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<? extends CallAdapter.Factory> defaultCallAdapterFactories(@Nullable Executor executor) {
        DefaultCallAdapterFactory defaultCallAdapterFactory = new DefaultCallAdapterFactory(executor);
        return this.hasJava8Types ? Arrays.asList(CompletableFutureCallAdapterFactory.INSTANCE, defaultCallAdapterFactory) : Collections.singletonList(defaultCallAdapterFactory);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int defaultCallAdapterFactoriesSize() {
        return this.hasJava8Types ? 2 : 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Executor defaultCallbackExecutor() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<? extends Converter.Factory> defaultConverterFactories() {
        return this.hasJava8Types ? Collections.singletonList(OptionalConverterFactory.INSTANCE) : Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int defaultConverterFactoriesSize() {
        return this.hasJava8Types ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    @IgnoreJRERequirement
    public Object invokeDefaultMethod(Method method, Class<?> cls, Object obj, Object... objArr) throws Throwable {
        Constructor<MethodHandles.Lookup> constructor = this.lookupConstructor;
        return (constructor != null ? constructor.newInstance(cls, -1) : MethodHandles.lookup()).unreflectSpecial(method, cls).bindTo(obj).invokeWithArguments(objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @IgnoreJRERequirement
    public boolean isDefaultMethod(Method method) {
        return this.hasJava8Types && method.isDefault();
    }
}
