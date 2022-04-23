package kotlinx.coroutines.internal;

import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.MainCoroutineDispatcher;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��6\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u0001\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n��\u001a \u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0001H\u0002\u001a\b\u0010\u000b\u001a\u00020\fH��\u001a\f\u0010\r\u001a\u00020\u0003*\u00020\u000eH\u0007\u001a\u001a\u0010\u000f\u001a\u00020\u000e*\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u0012H\u0007\"\u000e\u0010��\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n��\"\u0014\u0010\u0002\u001a\u00020\u0003X\u0082D¢\u0006\b\n��\u0012\u0004\b\u0004\u0010\u0005¨\u0006\u0013"}, m815d2 = {"FAST_SERVICE_LOADER_PROPERTY_NAME", "", "SUPPORT_MISSING", "", "SUPPORT_MISSING$annotations", "()V", "createMissingDispatcher", "Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;", "cause", "", "errorHint", "throwMissingMainDispatcherException", "", "isMissing", "Lkotlinx/coroutines/MainCoroutineDispatcher;", "tryCreateDispatcher", "Lkotlinx/coroutines/internal/MainDispatcherFactory;", "factories", "", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/MainDispatchersKt.class */
public final class MainDispatchersKt {
    public static final String FAST_SERVICE_LOADER_PROPERTY_NAME = "kotlinx.coroutines.fast.service.loader";
    public static final boolean SUPPORT_MISSING = true;

    public static /* synthetic */ void SUPPORT_MISSING$annotations() {
    }

    public static final MissingMainCoroutineDispatcher createMissingDispatcher(Throwable th, String str) {
        if (SUPPORT_MISSING) {
            return new MissingMainCoroutineDispatcher(th, str);
        }
        if (th != null) {
            throw th;
        }
        throwMissingMainDispatcherException();
        throw null;
    }

    public static /* synthetic */ MissingMainCoroutineDispatcher createMissingDispatcher$default(Throwable th, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            th = null;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        return createMissingDispatcher(th, str);
    }

    @InternalCoroutinesApi
    public static final boolean isMissing(MainCoroutineDispatcher mainCoroutineDispatcher) {
        return mainCoroutineDispatcher instanceof MissingMainCoroutineDispatcher;
    }

    public static final Void throwMissingMainDispatcherException() {
        throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
    }

    @InternalCoroutinesApi
    public static final MainCoroutineDispatcher tryCreateDispatcher(MainDispatcherFactory mainDispatcherFactory, List<? extends MainDispatcherFactory> list) {
        MainCoroutineDispatcher mainCoroutineDispatcher;
        try {
            mainCoroutineDispatcher = mainDispatcherFactory.createDispatcher(list);
        } catch (Throwable th) {
            mainCoroutineDispatcher = createMissingDispatcher(th, mainDispatcherFactory.hintOnError());
        }
        return mainCoroutineDispatcher;
    }
}
