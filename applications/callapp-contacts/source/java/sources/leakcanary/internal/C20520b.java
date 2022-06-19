package leakcanary.internal;

import android.os.Handler;
import android.os.Looper;
import kotlin.C18399h;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a\b\u0010\u0006\u001a\u00020\u0007H��\u001a\b\u0010\b\u001a\u00020\u0007H��\"\u001b\u0010��\u001a\u00020\u00018@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0002\u0010\u0003¨\u0006\t"}, m4298d2 = {"mainHandler", "Landroid/os/Handler;", "getMainHandler", "()Landroid/os/Handler;", "mainHandler$delegate", "Lkotlin/Lazy;", "checkMainThread", "", "checkNotMainThread", "leakcanary-android-utils_release"}, m4297k = 2, m4296mv = {1, 4, 1})
/* renamed from: leakcanary.internal.b */
/* loaded from: classes5-dex2jar.jar:leakcanary/internal/b.class */
public final class C20520b {

    /* renamed from: a */
    private static final Lazy f67036a = C18399h.m3897a(C20521a.f67037a);

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Landroid/os/Handler;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: leakcanary.internal.b$a */
    /* loaded from: classes5-dex2jar.jar:leakcanary/internal/b$a.class */
    static final class C20521a extends AbstractC18526r implements Function0<Handler> {

        /* renamed from: a */
        public static final C20521a f67037a = new C20521a();

        C20521a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Handler invoke() {
            return new Handler(Looper.getMainLooper());
        }
    }

    /* renamed from: a */
    public static final void m644a() {
        Looper mainLooper = Looper.getMainLooper();
        C18524p.m3849a((Object) mainLooper, "Looper.getMainLooper()");
        if (mainLooper.getThread() == Thread.currentThread()) {
            return;
        }
        throw new IllegalStateException(("Should be called from the main thread, not " + Thread.currentThread()).toString());
    }
}
