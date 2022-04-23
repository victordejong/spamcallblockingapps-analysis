package kotlinx.coroutines.android;

import android.os.Handler;
import android.os.Looper;
import kotlin.Metadata;
import kotlin.c.f;
import kotlin.f.d;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.au;
import kotlinx.coroutines.bb;
import kotlinx.coroutines.ce;
import kotlinx.coroutines.n;
@Metadata(bv = {1, 0, 3}, d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b��\u0018��2\u00020\u00012\u00020\u0002B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B!\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u001c\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015H\u0016J\u0013\u0010\u0016\u001a\u00020\t2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J$\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u00152\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u001f\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001e\u0010 \u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u001e2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00100\"H\u0016J\b\u0010#\u001a\u00020\u0006H\u0016R\u0010\u0010\u000b\u001a\u0004\u0018\u00010��X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\f\u001a\u00020��X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006$"}, d2 = {"Lkotlinx/coroutines/android/HandlerContext;", "Lkotlinx/coroutines/android/HandlerDispatcher;", "Lkotlinx/coroutines/Delay;", "handler", "Landroid/os/Handler;", "name", "", "(Landroid/os/Handler;Ljava/lang/String;)V", "invokeImmediately", "", "(Landroid/os/Handler;Ljava/lang/String;Z)V", "_immediate", "immediate", "getImmediate", "()Lkotlinx/coroutines/android/HandlerContext;", "dispatch", "", "context", "Lkotlin/coroutines/CoroutineContext;", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "equals", "other", "", "hashCode", "", "invokeOnTimeout", "Lkotlinx/coroutines/DisposableHandle;", "timeMillis", "", "isDispatchNeeded", "scheduleResumeAfterDelay", "continuation", "Lkotlinx/coroutines/CancellableContinuation;", "toString", "kotlinx-coroutines-android"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/android/a.class */
public final class a extends kotlinx.coroutines.android.b implements au {
    private volatile a _immediate;

    /* renamed from: b  reason: collision with root package name */
    private final a f38677b;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f38678d;
    private final String e;
    private final boolean f;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0011\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"kotlinx/coroutines/android/HandlerContext$invokeOnTimeout$1", "Lkotlinx/coroutines/DisposableHandle;", "dispose", "", "kotlinx-coroutines-android"}, k = 1, mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.android.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/android/a$a.class */
    public static final class C0725a implements bb {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Runnable f38680b;

        C0725a(Runnable runnable) {
            this.f38680b = runnable;
        }

        @Override // kotlinx.coroutines.bb
        public final void a() {
            a.this.f38678d.removeCallbacks(this.f38680b);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0003"}, d2 = {"<anonymous>", "", "run", "kotlinx/coroutines/RunnableKt$Runnable$1"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/android/a$b.class */
    public static final class b implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ n f38682b;

        public b(n nVar) {
            this.f38682b = nVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f38682b.a(a.this, v.f38654a);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n��\u0010��\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/android/a$c.class */
    static final class c extends r implements Function1<Throwable, v> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Runnable f38684b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Runnable runnable) {
            super(1);
            this.f38684b = runnable;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(Throwable th) {
            a.this.f38678d.removeCallbacks(this.f38684b);
            return v.f38654a;
        }
    }

    public a(Handler handler, String str) {
        this(handler, str, false);
    }

    public /* synthetic */ a(Handler handler, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(handler, (i & 2) != 0 ? null : str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private a(Handler handler, String str, boolean z) {
        super(null);
        a aVar = null;
        this.f38678d = handler;
        this.e = str;
        this.f = z;
        this._immediate = z ? this : aVar;
        a aVar2 = this._immediate;
        a aVar3 = aVar2;
        if (aVar2 == null) {
            aVar3 = new a(handler, str, true);
            this._immediate = aVar3;
            v vVar = v.f38654a;
        }
        this.f38677b = aVar3;
    }

    @Override // kotlinx.coroutines.android.b, kotlinx.coroutines.au
    public final bb a(long j, Runnable runnable, f fVar) {
        this.f38678d.postDelayed(runnable, d.a(j, 4611686018427387903L));
        return new C0725a(runnable);
    }

    @Override // kotlinx.coroutines.ce
    public final /* bridge */ /* synthetic */ ce a() {
        return this.f38677b;
    }

    @Override // kotlinx.coroutines.au
    public final void a(long j, n<? super v> nVar) {
        b bVar = new b(nVar);
        this.f38678d.postDelayed(bVar, d.a(j, 4611686018427387903L));
        nVar.a((Function1<? super Throwable, v>) new c(bVar));
    }

    @Override // kotlinx.coroutines.af
    public final void a(f fVar, Runnable runnable) {
        this.f38678d.post(runnable);
    }

    @Override // kotlinx.coroutines.af
    public final boolean b() {
        return !this.f || (p.a(Looper.myLooper(), this.f38678d.getLooper()) ^ true);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && ((a) obj).f38678d == this.f38678d;
    }

    public final int hashCode() {
        return System.identityHashCode(this.f38678d);
    }

    @Override // kotlinx.coroutines.ce, kotlinx.coroutines.af
    public final String toString() {
        String c2 = c();
        String str = c2;
        if (c2 == null) {
            a aVar = this;
            String str2 = aVar.e;
            str = str2;
            if (str2 == null) {
                str = aVar.f38678d.toString();
            }
            if (aVar.f) {
                return str + ".immediate";
            }
        }
        return str;
    }
}
