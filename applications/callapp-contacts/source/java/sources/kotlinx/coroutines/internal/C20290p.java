package kotlinx.coroutines.internal;

import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlinx.coroutines.AbstractC20236ce;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u0001\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n��\u001a \u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0001H\u0002\u001a\b\u0010\u000b\u001a\u00020\fH��\u001a\f\u0010\r\u001a\u00020\u0003*\u00020\u000eH\u0007\u001a\u001a\u0010\u000f\u001a\u00020\u000e*\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u0012H\u0007\"\u000e\u0010��\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n��\"\u0014\u0010\u0002\u001a\u00020\u0003X\u0082D¢\u0006\b\n��\u0012\u0004\b\u0004\u0010\u0005¨\u0006\u0013"}, m4298d2 = {"FAST_SERVICE_LOADER_PROPERTY_NAME", "", "SUPPORT_MISSING", "", "getSUPPORT_MISSING$annotations", "()V", "createMissingDispatcher", "Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;", "cause", "", "errorHint", "throwMissingMainDispatcherException", "", "isMissing", "Lkotlinx/coroutines/MainCoroutineDispatcher;", "tryCreateDispatcher", "Lkotlinx/coroutines/internal/MainDispatcherFactory;", "factories", "", "kotlinx-coroutines-core"}, m4297k = 2, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.internal.p */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/p.class */
public final class C20290p {

    /* renamed from: a */
    private static final boolean f66766a = true;

    /* renamed from: a */
    public static final Void m831a() {
        throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
    }

    /* renamed from: a */
    public static final AbstractC20236ce m828a(MainDispatcherFactory mainDispatcherFactory, List<? extends MainDispatcherFactory> list) {
        C20291q c20291q;
        try {
            c20291q = mainDispatcherFactory.createDispatcher(list);
        } catch (Throwable th) {
            c20291q = m829a(th, mainDispatcherFactory.hintOnError());
        }
        return c20291q;
    }

    /* renamed from: a */
    public static /* synthetic */ C20291q m830a(Throwable th, int i) {
        if ((i & 1) != 0) {
            th = null;
        }
        return m829a(th, (String) null);
    }

    /* renamed from: a */
    private static final C20291q m829a(Throwable th, String str) {
        if (f66766a) {
            return new C20291q(th, str);
        }
        if (th != null) {
            throw th;
        }
        m831a();
        throw new KotlinNothingValueException();
    }
}
