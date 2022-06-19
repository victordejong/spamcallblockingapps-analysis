package kotlinx.coroutines;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.C18539o;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.p522a.C18308b;
import kotlin.p521c.p522a.EnumC18307a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010��\b\u0002\u0018��*\u0004\b��\u0010\u00012\u00020\u000e:\u0002\u000b\fB\u001d\u0012\u0014\u0010\u0004\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028��0\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\u0007H\u0086@ø\u0001��¢\u0006\u0004\b\b\u0010\tR$\u0010\u0004\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028��0\u00030\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, m4298d2 = {"Lkotlinx/coroutines/AwaitAll;", "T", "", "Lkotlinx/coroutines/Deferred;", "deferreds", "<init>", "([Lkotlinx/coroutines/Deferred;)V", "", "await", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "[Lkotlinx/coroutines/Deferred;", "AwaitAllNode", "DisposeHandlersOnCancel", "kotlinx-coroutines-core", ""}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.c */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/c.class */
public final class C20225c<T> {

    /* renamed from: a */
    static final /* synthetic */ AtomicIntegerFieldUpdater f66670a = AtomicIntegerFieldUpdater.newUpdater(C20225c.class, "notCompletedCount");

    /* renamed from: b */
    private final AbstractC20163as<T>[] f66671b;
    volatile /* synthetic */ int notCompletedCount;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\b\u0082\u0004\u0018��2\u00020\u001cB\u001b\u0012\u0012\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0096\u0002¢\u0006\u0004\b\t\u0010\nR\"\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u000bR<\u0010\u0013\u001a\u000e\u0018\u00010\fR\b\u0012\u0004\u0012\u00028��0\r2\u0012\u0010\u000e\u001a\u000e\u0018\u00010\fR\b\u0012\u0004\u0012\u00028��0\r8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, m4298d2 = {"Lkotlinx/coroutines/AwaitAll$AwaitAllNode;", "Lkotlinx/coroutines/CancellableContinuation;", "", "continuation", "<init>", "(Lkotlinx/coroutines/AwaitAll;Lkotlinx/coroutines/CancellableContinuation;)V", "", "cause", "", "invoke", "(Ljava/lang/Throwable;)V", "Lkotlinx/coroutines/CancellableContinuation;", "Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;", "Lkotlinx/coroutines/AwaitAll;", "value", "getDisposer", "()Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;", "setDisposer", "(Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;)V", "disposer", "Lkotlinx/coroutines/DisposableHandle;", "handle", "Lkotlinx/coroutines/DisposableHandle;", "getHandle", "()Lkotlinx/coroutines/DisposableHandle;", "setHandle", "(Lkotlinx/coroutines/DisposableHandle;)V", "kotlinx-coroutines-core", "Lkotlinx/coroutines/JobNode;"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.c$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/c$a.class */
    public final class C20226a extends AbstractC20224bz {
        volatile /* synthetic */ Object _disposer = null;

        /* renamed from: a */
        public AbstractC20192bb f66672a;

        /* renamed from: f */
        private final AbstractC20308n<List<? extends T>> f66674f;

        /* JADX WARN: Multi-variable type inference failed */
        public C20226a(AbstractC20308n<? super List<? extends T>> abstractC20308n) {
            C20225c.this = r4;
            this.f66674f = abstractC20308n;
        }

        @Override // kotlinx.coroutines.AbstractC20136ab
        /* renamed from: a */
        public final void mo768a(Throwable th) {
            if (th != null) {
                Object mo795a = this.f66674f.mo795a(th);
                if (mo795a == null) {
                    return;
                }
                this.f66674f.mo798a(mo795a);
                C20227b c20227b = (C20227b) this._disposer;
                if (c20227b == null) {
                    return;
                }
                c20227b.m977a();
                return;
            }
            if (C20225c.f66670a.decrementAndGet(C20225c.this) != 0) {
                return;
            }
            AbstractC20308n<List<? extends T>> abstractC20308n = this.f66674f;
            AbstractC20163as[] abstractC20163asArr = C20225c.this.f66671b;
            ArrayList arrayList = new ArrayList(abstractC20163asArr.length);
            for (AbstractC20163as abstractC20163as : abstractC20163asArr) {
                arrayList.add(abstractC20163as.mo1073a());
            }
            ArrayList arrayList2 = arrayList;
            C18539o.C18540a c18540a = C18539o.f63626a;
            abstractC20308n.mo786b(C18539o.m3836d(arrayList2));
        }

        public final AbstractC20192bb aw_() {
            AbstractC20192bb abstractC20192bb = this.f66672a;
            if (abstractC20192bb == null) {
                C18524p.m3848a("handle");
            }
            return abstractC20192bb;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(Throwable th) {
            mo768a(th);
            return C20128v.f66529a;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000e\n��\b\u0082\u0004\u0018��2\u00020\u0001B\u001d\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u000e\u0012\f0\u0004R\b\u0012\u0004\u0012\u00028��0\u00050\u0003¢\u0006\u0002\u0010\u0006J\u0006\u0010\b\u001a\u00020\tJ\u0013\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016R \u0010\u0002\u001a\u0012\u0012\u000e\u0012\f0\u0004R\b\u0012\u0004\u0012\u00028��0\u00050\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007¨\u0006\u000f"}, m4298d2 = {"Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;", "Lkotlinx/coroutines/CancelHandler;", "nodes", "", "Lkotlinx/coroutines/AwaitAll$AwaitAllNode;", "Lkotlinx/coroutines/AwaitAll;", "(Lkotlinx/coroutines/AwaitAll;[Lkotlinx/coroutines/AwaitAll$AwaitAllNode;)V", "[Lkotlinx/coroutines/AwaitAll$AwaitAllNode;", "disposeAll", "", "invoke", "cause", "", "toString", "", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.c$b */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/c$b.class */
    public final class C20227b extends AbstractC20306l {

        /* renamed from: b */
        private final C20225c<T>.C20226a[] f66676b;

        public C20227b(C20225c<T>.C20226a[] c20226aArr) {
            C20225c.this = r4;
            this.f66676b = c20226aArr;
        }

        /* renamed from: a */
        public final void m977a() {
            for (C20225c<T>.C20226a c20226a : this.f66676b) {
                c20226a.aw_().mo918a();
            }
        }

        @Override // kotlinx.coroutines.AbstractC20307m
        /* renamed from: a */
        public final void mo801a(Throwable th) {
            m977a();
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(Throwable th) {
            m977a();
            return C20128v.f66529a;
        }

        public final String toString() {
            return "DisposeHandlersOnCancel[" + this.f66676b + ']';
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C20225c(AbstractC20163as<? extends T>[] abstractC20163asArr) {
        this.f66671b = abstractC20163asArr;
        this.notCompletedCount = abstractC20163asArr.length;
    }

    /* renamed from: a */
    public final Object m979a(AbstractC18332d<? super List<? extends T>> frame) {
        C20309o c20309o = new C20309o(C18308b.m4100a(frame), 1);
        c20309o.m780e();
        C20309o c20309o2 = c20309o;
        int length = this.f66671b.length;
        C20226a[] c20226aArr = new C20226a[length];
        for (int i = 0; i < length; i++) {
            AbstractC20163as<T> abstractC20163as = this.f66671b[Integer.valueOf(i).intValue()];
            abstractC20163as.mo937n();
            C20226a c20226a = new C20226a(c20309o2);
            c20226a.f66672a = abstractC20163as.mo969a(c20226a);
            c20226aArr[i] = c20226a;
        }
        C20227b c20227b = new C20227b(c20226aArr);
        for (int i2 = 0; i2 < length; i2++) {
            c20226aArr[i2]._disposer = c20227b;
        }
        if (c20309o2.mo800a()) {
            c20227b.m977a();
        } else {
            c20309o2.mo794a((Function1<? super Throwable, C20128v>) c20227b);
        }
        Object m778g = c20309o.m778g();
        if (m778g == EnumC18307a.COROUTINE_SUSPENDED) {
            C18524p.m3840d(frame, "frame");
        }
        return m778g;
    }
}
