package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010��\b\u0010\u0018��2\u00020\u000fB\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\u0007\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\fR\u0013\u0010\u0004\u001a\u00020\u00038F@\u0006¢\u0006\u0006\u001a\u0004\b\r\u0010\b¨\u0006\u000e"}, m4298d2 = {"Lkotlinx/coroutines/CompletedExceptionally;", "", "cause", "", "handled", "<init>", "(Ljava/lang/Throwable;Z)V", "makeHandled", "()Z", "", "toString", "()Ljava/lang/String;", "Ljava/lang/Throwable;", "getHandled", "kotlinx-coroutines-core", ""}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.z */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/z.class */
public class C20322z {

    /* renamed from: a */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f66801a = AtomicIntegerFieldUpdater.newUpdater(C20322z.class, "_handled");
    volatile /* synthetic */ int _handled;

    /* renamed from: b */
    public final Throwable f66802b;

    public C20322z(Throwable th, boolean z) {
        this.f66802b = th;
        this._handled = z ? 1 : 0;
    }

    public /* synthetic */ C20322z(Throwable th, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(th, (i & 2) != 0 ? false : z);
    }

    /* renamed from: a */
    public final boolean m755a() {
        return f66801a.compareAndSet(this, 0, 1);
    }

    public String toString() {
        return getClass().getSimpleName() + '[' + this.f66802b + ']';
    }
}
