package leakcanary.internal;

import android.os.Handler;
import android.os.Looper;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a\b\u0010\u0006\u001a\u00020\u0007H��\u001a\b\u0010\b\u001a\u00020\u0007H��\"\u001b\u0010��\u001a\u00020\u00018@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0002\u0010\u0003¨\u0006\t"}, d2 = {"mainHandler", "Landroid/os/Handler;", "getMainHandler", "()Landroid/os/Handler;", "mainHandler$delegate", "Lkotlin/Lazy;", "checkMainThread", "", "checkNotMainThread", "leakcanary-android-utils_release"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:leakcanary/internal/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Lazy f39083a = h.a(a.f39084a);

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Landroid/os/Handler;", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:leakcanary/internal/b$a.class */
    static final class a extends r implements Function0<Handler> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f39084a = new a();

        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Handler invoke() {
            return new Handler(Looper.getMainLooper());
        }
    }

    public static final void a() {
        Looper mainLooper = Looper.getMainLooper();
        p.a((Object) mainLooper, "Looper.getMainLooper()");
        if (!(mainLooper.getThread() == Thread.currentThread())) {
            throw new IllegalStateException(("Should be called from the main thread, not " + Thread.currentThread()).toString());
        }
    }
}
