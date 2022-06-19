package kotlinx.coroutines.android;

import android.os.Handler;
import android.os.Looper;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p521c.AbstractC18335f;
import kotlin.p530f.C18363d;
import kotlinx.coroutines.AbstractC20166au;
import kotlinx.coroutines.AbstractC20192bb;
import kotlinx.coroutines.AbstractC20236ce;
import kotlinx.coroutines.AbstractC20308n;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b��\u0018��2\u00020\u00012\u00020\u0002B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B!\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u001c\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015H\u0016J\u0013\u0010\u0016\u001a\u00020\t2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J$\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u00152\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u001f\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001e\u0010 \u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u001e2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00100\"H\u0016J\b\u0010#\u001a\u00020\u0006H\u0016R\u0010\u0010\u000b\u001a\u0004\u0018\u00010��X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\f\u001a\u00020��X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006$"}, m4298d2 = {"Lkotlinx/coroutines/android/HandlerContext;", "Lkotlinx/coroutines/android/HandlerDispatcher;", "Lkotlinx/coroutines/Delay;", "handler", "Landroid/os/Handler;", "name", "", "(Landroid/os/Handler;Ljava/lang/String;)V", "invokeImmediately", "", "(Landroid/os/Handler;Ljava/lang/String;Z)V", "_immediate", "immediate", "getImmediate", "()Lkotlinx/coroutines/android/HandlerContext;", "dispatch", "", "context", "Lkotlin/coroutines/CoroutineContext;", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "equals", "other", "", "hashCode", "", "invokeOnTimeout", "Lkotlinx/coroutines/DisposableHandle;", "timeMillis", "", "isDispatchNeeded", "scheduleResumeAfterDelay", "continuation", "Lkotlinx/coroutines/CancellableContinuation;", "toString", "kotlinx-coroutines-android"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.android.a */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/android/a.class */
public final class C20153a extends AbstractC20157b implements AbstractC20166au {
    private volatile C20153a _immediate;

    /* renamed from: b */
    private final C20153a f66552b;

    /* renamed from: d */
    private final Handler f66553d;

    /* renamed from: e */
    private final String f66554e;

    /* renamed from: f */
    private final boolean f66555f;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0011\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, m4298d2 = {"kotlinx/coroutines/android/HandlerContext$invokeOnTimeout$1", "Lkotlinx/coroutines/DisposableHandle;", "dispose", "", "kotlinx-coroutines-android"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.android.a$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/android/a$a.class */
    public static final class C20154a implements AbstractC20192bb {

        /* renamed from: b */
        final /* synthetic */ Runnable f66557b;

        C20154a(Runnable runnable) {
            C20153a.this = r4;
            this.f66557b = runnable;
        }

        @Override // kotlinx.coroutines.AbstractC20192bb
        /* renamed from: a */
        public final void mo918a() {
            C20153a.this.f66553d.removeCallbacks(this.f66557b);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0003"}, m4298d2 = {"<anonymous>", "", "run", "kotlinx/coroutines/RunnableKt$Runnable$1"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.android.a$b */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/android/a$b.class */
    public static final class RunnableC20155b implements Runnable {

        /* renamed from: b */
        final /* synthetic */ AbstractC20308n f66559b;

        public RunnableC20155b(AbstractC20308n abstractC20308n) {
            C20153a.this = r4;
            this.f66559b = abstractC20308n;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f66559b.mo791a(C20153a.this, C20128v.f66529a);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n��\u0010��\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "it", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.android.a$c */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/android/a$c.class */
    static final class C20156c extends AbstractC18526r implements Function1<Throwable, C20128v> {

        /* renamed from: b */
        final /* synthetic */ Runnable f66561b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20156c(Runnable runnable) {
            super(1);
            C20153a.this = r4;
            this.f66561b = runnable;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(Throwable th) {
            C20153a.this.f66553d.removeCallbacks(this.f66561b);
            return C20128v.f66529a;
        }
    }

    public C20153a(Handler handler, String str) {
        this(handler, str, false);
    }

    public /* synthetic */ C20153a(Handler handler, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(handler, (i & 2) != 0 ? null : str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private C20153a(Handler handler, String str, boolean z) {
        super(null);
        C20153a c20153a = null;
        this.f66553d = handler;
        this.f66554e = str;
        this.f66555f = z;
        this._immediate = z ? this : c20153a;
        C20153a c20153a2 = this._immediate;
        C20153a c20153a3 = c20153a2;
        if (c20153a2 == null) {
            c20153a3 = new C20153a(handler, str, true);
            this._immediate = c20153a3;
            C20128v c20128v = C20128v.f66529a;
        }
        this.f66552b = c20153a3;
    }

    @Override // kotlinx.coroutines.android.AbstractC20157b, kotlinx.coroutines.AbstractC20166au
    /* renamed from: a */
    public final AbstractC20192bb mo826a(long j, Runnable runnable, AbstractC18335f abstractC18335f) {
        this.f66553d.postDelayed(runnable, C18363d.m4054a(j, 4611686018427387903L));
        return new C20154a(runnable);
    }

    @Override // kotlinx.coroutines.AbstractC20236ce
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC20236ce mo827a() {
        return this.f66552b;
    }

    @Override // kotlinx.coroutines.AbstractC20166au
    /* renamed from: a */
    public final void mo825a(long j, AbstractC20308n<? super C20128v> abstractC20308n) {
        RunnableC20155b runnableC20155b = new RunnableC20155b(abstractC20308n);
        this.f66553d.postDelayed(runnableC20155b, C18363d.m4054a(j, 4611686018427387903L));
        abstractC20308n.mo794a((Function1<? super Throwable, C20128v>) new C20156c(runnableC20155b));
    }

    @Override // kotlinx.coroutines.AbstractC20140af
    /* renamed from: a */
    public final void mo763a(AbstractC18335f abstractC18335f, Runnable runnable) {
        this.f66553d.post(runnable);
    }

    @Override // kotlinx.coroutines.AbstractC20140af
    /* renamed from: b */
    public final boolean mo824b() {
        return !this.f66555f || (C18524p.m3850a(Looper.myLooper(), this.f66553d.getLooper()) ^ true);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C20153a) && ((C20153a) obj).f66553d == this.f66553d;
    }

    public final int hashCode() {
        return System.identityHashCode(this.f66553d);
    }

    @Override // kotlinx.coroutines.AbstractC20236ce, kotlinx.coroutines.AbstractC20140af
    public final String toString() {
        String c = m921c();
        String str = c;
        if (c == null) {
            C20153a c20153a = this;
            String str2 = c20153a.f66554e;
            str = str2;
            if (str2 == null) {
                str = c20153a.f66553d.toString();
            }
            if (c20153a.f66555f) {
                return str + ".immediate";
            }
        }
        return str;
    }
}
