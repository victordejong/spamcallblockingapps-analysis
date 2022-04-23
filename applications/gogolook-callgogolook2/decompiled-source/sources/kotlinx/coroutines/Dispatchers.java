package kotlinx.coroutines;

import kotlin.Metadata;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\t\u0010\u0002\u001a\u0004\b\n\u0010\u0007R\u001a\u0010\u000b\u001a\u00020\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\r\u0010\u0002\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0011\u0010\u0002\u001a\u0004\b\u0012\u0010\u0007¨\u0006\u0013"}, m815d2 = {"Lkotlinx/coroutines/Dispatchers;", "", "()V", "Default", "Lkotlinx/coroutines/CoroutineDispatcher;", "Default$annotations", "getDefault", "()Lkotlinx/coroutines/CoroutineDispatcher;", "IO", "IO$annotations", "getIO", "Main", "Lkotlinx/coroutines/MainCoroutineDispatcher;", "Main$annotations", "getMain", "()Lkotlinx/coroutines/MainCoroutineDispatcher;", "Unconfined", "Unconfined$annotations", "getUnconfined", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/Dispatchers.class */
public final class Dispatchers {
    public static final Dispatchers INSTANCE = new Dispatchers();
    public static final CoroutineDispatcher Default = CoroutineContextKt.createDefaultDispatcher();
    public static final CoroutineDispatcher Unconfined = Unconfined.INSTANCE;

    /* renamed from: IO */
    public static final CoroutineDispatcher f32844IO = DefaultScheduler.INSTANCE.getIO();

    public static /* synthetic */ void Default$annotations() {
    }

    public static /* synthetic */ void IO$annotations() {
    }

    public static /* synthetic */ void Main$annotations() {
    }

    public static /* synthetic */ void Unconfined$annotations() {
    }

    public static final CoroutineDispatcher getDefault() {
        return Default;
    }

    public static final CoroutineDispatcher getIO() {
        return f32844IO;
    }

    public static final MainCoroutineDispatcher getMain() {
        return MainDispatcherLoader.dispatcher;
    }

    public static final CoroutineDispatcher getUnconfined() {
        return Unconfined;
    }
}
