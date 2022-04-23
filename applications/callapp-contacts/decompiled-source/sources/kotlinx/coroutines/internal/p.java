package kotlinx.coroutines.internal;

import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlinx.coroutines.ce;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u0001\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n��\u001a \u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0001H\u0002\u001a\b\u0010\u000b\u001a\u00020\fH��\u001a\f\u0010\r\u001a\u00020\u0003*\u00020\u000eH\u0007\u001a\u001a\u0010\u000f\u001a\u00020\u000e*\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u0012H\u0007\"\u000e\u0010��\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n��\"\u0014\u0010\u0002\u001a\u00020\u0003X\u0082D¢\u0006\b\n��\u0012\u0004\b\u0004\u0010\u0005¨\u0006\u0013"}, d2 = {"FAST_SERVICE_LOADER_PROPERTY_NAME", "", "SUPPORT_MISSING", "", "getSUPPORT_MISSING$annotations", "()V", "createMissingDispatcher", "Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;", "cause", "", "errorHint", "throwMissingMainDispatcherException", "", "isMissing", "Lkotlinx/coroutines/MainCoroutineDispatcher;", "tryCreateDispatcher", "Lkotlinx/coroutines/internal/MainDispatcherFactory;", "factories", "", "kotlinx-coroutines-core"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/p.class */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f38837a = true;

    public static final Void a() {
        throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
    }

    public static final ce a(MainDispatcherFactory mainDispatcherFactory, List<? extends MainDispatcherFactory> list) {
        q qVar;
        try {
            qVar = mainDispatcherFactory.createDispatcher(list);
        } catch (Throwable th) {
            qVar = a(th, mainDispatcherFactory.hintOnError());
        }
        return qVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ q a(Throwable th, int i) {
        if ((i & 1) != 0) {
            th = null;
        }
        return a(th, (String) null);
    }

    private static final q a(Throwable th, String str) {
        if (f38837a) {
            return new q(th, str);
        }
        if (th != null) {
            throw th;
        }
        a();
        throw new KotlinNothingValueException();
    }
}
