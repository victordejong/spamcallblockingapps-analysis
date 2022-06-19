package kotlinx.coroutines.internal;

import kotlin.C18539o;
import kotlin.C18542p;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\"\u0014\u0010��\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, m4298d2 = {"ANDROID_DETECTED", "", "getANDROID_DETECTED", "()Z", "kotlinx-coroutines-core"}, m4297k = 2, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.internal.i */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/i.class */
public final class C20280i {

    /* renamed from: a */
    private static final boolean f66745a;

    static {
        Object obj;
        try {
            C18539o.C18540a c18540a = C18539o.f63626a;
            obj = C18539o.m3836d(Class.forName("android.os.Build"));
        } catch (Throwable th) {
            C18539o.C18540a c18540a2 = C18539o.f63626a;
            obj = C18539o.m3836d(C18542p.m3834a(th));
        }
        f66745a = C18539o.m3839a(obj);
    }

    /* renamed from: a */
    public static final boolean m862a() {
        return f66745a;
    }
}
