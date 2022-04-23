package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0010\u000b\n\u0002\b\u0005\"\u001c\u0010\u0001\u001a\u00020��8��@��X\u0080\u0004¢\u0006\f\n\u0004\b\u0001\u0010\u0002\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"", "ANDROID_DETECTED", "Z", "getANDROID_DETECTED", "()Z", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/FastServiceLoaderKt.class */
public final class FastServiceLoaderKt {

    /* renamed from: a */
    private static final boolean f23908a;

    static {
        Object obj;
        try {
            Result.Companion companion = Result.f20418g;
            obj = Class.forName("android.os.Build");
            Result.m2481b(obj);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.f20418g;
            obj = ResultKt.m2473a(th);
            Result.m2481b(obj);
        }
        f23908a = Result.m2476g(obj);
    }

    /* renamed from: a */
    public static final boolean m548a() {
        return f23908a;
    }
}
