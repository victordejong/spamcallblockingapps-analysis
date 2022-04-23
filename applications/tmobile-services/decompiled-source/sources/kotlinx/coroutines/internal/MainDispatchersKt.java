package kotlinx.coroutines.internal;

import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.MainCoroutineDispatcher;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\n\u001a'\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010��2\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u000f\u0010\b\u001a\u00020\u0007H��¢\u0006\u0004\b\b\u0010\t\u001a\u0013\u0010\f\u001a\u00020\u000b*\u00020\nH\u0007¢\u0006\u0004\b\f\u0010\r\u001a!\u0010\u0011\u001a\u00020\n*\u00020\u000e2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000e0\u000fH\u0007¢\u0006\u0004\b\u0011\u0010\u0012\"\u0016\u0010\u0013\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014\"\u001c\u0010\u0015\u001a\u00020\u000b8\u0002@\u0002X\u0082D¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u0012\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"", "cause", "", "errorHint", "Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;", "createMissingDispatcher", "(Ljava/lang/Throwable;Ljava/lang/String;)Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;", "", "throwMissingMainDispatcherException", "()Ljava/lang/Void;", "Lkotlinx/coroutines/MainCoroutineDispatcher;", "", "isMissing", "(Lkotlinx/coroutines/MainCoroutineDispatcher;)Z", "Lkotlinx/coroutines/internal/MainDispatcherFactory;", "", "factories", "tryCreateDispatcher", "(Lkotlinx/coroutines/internal/MainDispatcherFactory;Ljava/util/List;)Lkotlinx/coroutines/MainCoroutineDispatcher;", "FAST_SERVICE_LOADER_PROPERTY_NAME", "Ljava/lang/String;", "SUPPORT_MISSING", "Z", "getSUPPORT_MISSING$annotations", "()V", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/MainDispatchersKt.class */
public final class MainDispatchersKt {

    /* renamed from: a */
    private static final boolean f23940a = true;

    /* renamed from: a */
    private static final MissingMainCoroutineDispatcher m482a(Throwable th, String str) {
        if (f23940a) {
            return new MissingMainCoroutineDispatcher(th, str);
        }
        if (th != null) {
            throw th;
        }
        m480c();
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static /* synthetic */ MissingMainCoroutineDispatcher m481b(Throwable th, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            th = null;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        return m482a(th, str);
    }

    @NotNull
    /* renamed from: c */
    public static final Void m480c() {
        throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
    }

    @InternalCoroutinesApi
    @NotNull
    /* renamed from: d */
    public static final MainCoroutineDispatcher m479d(@NotNull MainDispatcherFactory mainDispatcherFactory, @NotNull List<? extends MainDispatcherFactory> list) {
        MainCoroutineDispatcher mainCoroutineDispatcher;
        try {
            mainCoroutineDispatcher = mainDispatcherFactory.createDispatcher(list);
        } catch (Throwable th) {
            mainCoroutineDispatcher = m482a(th, mainDispatcherFactory.hintOnError());
        }
        return mainCoroutineDispatcher;
    }
}
