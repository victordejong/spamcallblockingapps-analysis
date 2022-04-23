package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.o;
import kotlin.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\"\u0014\u0010��\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"ANDROID_DETECTED", "", "getANDROID_DETECTED", "()Z", "kotlinx-coroutines-core"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f38822a;

    static {
        Object obj;
        try {
            o.a aVar = o.f36812a;
            obj = o.d(Class.forName("android.os.Build"));
        } catch (Throwable th) {
            o.a aVar2 = o.f36812a;
            obj = o.d(p.a(th));
        }
        f38822a = o.a(obj);
    }

    public static final boolean a() {
        return f38822a;
    }
}
