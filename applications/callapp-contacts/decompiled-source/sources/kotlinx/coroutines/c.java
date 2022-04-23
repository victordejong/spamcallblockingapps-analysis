package kotlinx.coroutines;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.c.d;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.o;
import kotlin.v;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010��\b\u0002\u0018��*\u0004\b��\u0010\u00012\u00020\u000e:\u0002\u000b\fB\u001d\u0012\u0014\u0010\u0004\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028��0\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\u0007H\u0086@ø\u0001��¢\u0006\u0004\b\b\u0010\tR$\u0010\u0004\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028��0\u00030\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/AwaitAll;", "T", "", "Lkotlinx/coroutines/Deferred;", "deferreds", "<init>", "([Lkotlinx/coroutines/Deferred;)V", "", "await", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "[Lkotlinx/coroutines/Deferred;", "AwaitAllNode", "DisposeHandlersOnCancel", "kotlinx-coroutines-core", ""}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/c.class */
public final class c<T> {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ AtomicIntegerFieldUpdater f38762a = AtomicIntegerFieldUpdater.newUpdater(c.class, "notCompletedCount");

    /* renamed from: b  reason: collision with root package name */
    private final as<T>[] f38763b;
    volatile /* synthetic */ int notCompletedCount;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\b\u0082\u0004\u0018��2\u00020\u001cB\u001b\u0012\u0012\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0096\u0002¢\u0006\u0004\b\t\u0010\nR\"\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u000bR<\u0010\u0013\u001a\u000e\u0018\u00010\fR\b\u0012\u0004\u0012\u00028��0\r2\u0012\u0010\u000e\u001a\u000e\u0018\u00010\fR\b\u0012\u0004\u0012\u00028��0\r8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lkotlinx/coroutines/AwaitAll$AwaitAllNode;", "Lkotlinx/coroutines/CancellableContinuation;", "", "continuation", "<init>", "(Lkotlinx/coroutines/AwaitAll;Lkotlinx/coroutines/CancellableContinuation;)V", "", "cause", "", "invoke", "(Ljava/lang/Throwable;)V", "Lkotlinx/coroutines/CancellableContinuation;", "Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;", "Lkotlinx/coroutines/AwaitAll;", "value", "getDisposer", "()Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;", "setDisposer", "(Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;)V", "disposer", "Lkotlinx/coroutines/DisposableHandle;", "handle", "Lkotlinx/coroutines/DisposableHandle;", "getHandle", "()Lkotlinx/coroutines/DisposableHandle;", "setHandle", "(Lkotlinx/coroutines/DisposableHandle;)V", "kotlinx-coroutines-core", "Lkotlinx/coroutines/JobNode;"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/c$a.class */
    public final class a extends bz {
        volatile /* synthetic */ Object _disposer = null;

        /* renamed from: a  reason: collision with root package name */
        public bb f38764a;
        private final n<List<? extends T>> f;

        /* JADX WARN: Multi-variable type inference failed */
        public a(n<? super List<? extends T>> nVar) {
            this.f = nVar;
        }

        @Override // kotlinx.coroutines.ab
        public final void a(Throwable th) {
            if (th != null) {
                Object a2 = this.f.a(th);
                if (a2 != null) {
                    this.f.a(a2);
                    b bVar = (b) this._disposer;
                    if (bVar != null) {
                        bVar.a();
                        return;
                    }
                    return;
                }
                return;
            }
            if (c.f38762a.decrementAndGet(c.this) == 0) {
                n<List<? extends T>> nVar = this.f;
                as[] asVarArr = c.this.f38763b;
                ArrayList arrayList = new ArrayList(asVarArr.length);
                for (as asVar : asVarArr) {
                    arrayList.add(asVar.a());
                }
                ArrayList arrayList2 = arrayList;
                o.a aVar = o.f36812a;
                nVar.b(o.d(arrayList2));
            }
        }

        public final bb aw_() {
            bb bbVar = this.f38764a;
            if (bbVar == null) {
                p.a("handle");
            }
            return bbVar;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(Throwable th) {
            a(th);
            return v.f38654a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000e\n��\b\u0082\u0004\u0018��2\u00020\u0001B\u001d\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u000e\u0012\f0\u0004R\b\u0012\u0004\u0012\u00028��0\u00050\u0003¢\u0006\u0002\u0010\u0006J\u0006\u0010\b\u001a\u00020\tJ\u0013\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016R \u0010\u0002\u001a\u0012\u0012\u000e\u0012\f0\u0004R\b\u0012\u0004\u0012\u00028��0\u00050\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;", "Lkotlinx/coroutines/CancelHandler;", "nodes", "", "Lkotlinx/coroutines/AwaitAll$AwaitAllNode;", "Lkotlinx/coroutines/AwaitAll;", "(Lkotlinx/coroutines/AwaitAll;[Lkotlinx/coroutines/AwaitAll$AwaitAllNode;)V", "[Lkotlinx/coroutines/AwaitAll$AwaitAllNode;", "disposeAll", "", "invoke", "cause", "", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/c$b.class */
    public final class b extends l {

        /* renamed from: b  reason: collision with root package name */
        private final c<T>.a[] f38767b;

        public b(c<T>.a[] aVarArr) {
            this.f38767b = aVarArr;
        }

        public final void a() {
            for (c<T>.a aVar : this.f38767b) {
                aVar.aw_().a();
            }
        }

        @Override // kotlinx.coroutines.m
        public final void a(Throwable th) {
            a();
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(Throwable th) {
            a();
            return v.f38654a;
        }

        public final String toString() {
            return "DisposeHandlersOnCancel[" + this.f38767b + ']';
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(as<? extends T>[] asVarArr) {
        this.f38763b = asVarArr;
        this.notCompletedCount = asVarArr.length;
    }

    public final Object a(d<? super List<? extends T>> frame) {
        o oVar = new o(kotlin.c.a.b.a(frame), 1);
        oVar.e();
        o oVar2 = oVar;
        int length = this.f38763b.length;
        a[] aVarArr = new a[length];
        for (int i = 0; i < length; i++) {
            as<T> asVar = this.f38763b[Integer.valueOf(i).intValue()];
            asVar.n();
            a aVar = new a(oVar2);
            aVar.f38764a = asVar.a(aVar);
            aVarArr[i] = aVar;
        }
        b bVar = new b(aVarArr);
        for (int i2 = 0; i2 < length; i2++) {
            aVarArr[i2]._disposer = bVar;
        }
        if (oVar2.a()) {
            bVar.a();
        } else {
            oVar2.a((Function1<? super Throwable, v>) bVar);
        }
        Object g = oVar.g();
        if (g == kotlin.c.a.a.COROUTINE_SUSPENDED) {
            p.d(frame, "frame");
        }
        return g;
    }
}
