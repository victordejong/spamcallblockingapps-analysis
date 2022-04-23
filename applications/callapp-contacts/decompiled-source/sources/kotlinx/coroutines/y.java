package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\b\u0082\b\u0018��2\u00020\u0001BZ\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012%\b\u0002\u0010\u0005\u001a\u001f\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0006\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0001\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u000eJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0004HÆ\u0003J&\u0010\u0015\u001a\u001f\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0007HÆ\u0003J`\u0010\u0018\u001a\u00020��2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042%\b\u0002\u0010\u0005\u001a\u001f\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00062\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u00102\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\u001a\u0010\u001d\u001a\u00020\u000b2\n\u0010\u001e\u001a\u0006\u0012\u0002\b\u00030\u001f2\u0006\u0010\n\u001a\u00020\u0007J\t\u0010 \u001a\u00020!HÖ\u0001R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0011\u0010\u000f\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00018\u0006X\u0087\u0004¢\u0006\u0002\n��R-\u0010\u0005\u001a\u001f\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00018\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\""}, d2 = {"Lkotlinx/coroutines/CompletedContinuation;", "", "result", "cancelHandler", "Lkotlinx/coroutines/CancelHandler;", "onCancellation", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "idempotentResume", "cancelCause", "(Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;)V", "cancelled", "", "getCancelled", "()Z", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "", "invokeHandlers", "cont", "Lkotlinx/coroutines/CancellableContinuationImpl;", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/y.class */
final class y {

    /* renamed from: a  reason: collision with root package name */
    public final Object f38863a;

    /* renamed from: b  reason: collision with root package name */
    public final l f38864b;

    /* renamed from: c  reason: collision with root package name */
    public final Function1<Throwable, v> f38865c;

    /* renamed from: d  reason: collision with root package name */
    public final Object f38866d;
    public final Throwable e;

    /* JADX WARN: Multi-variable type inference failed */
    public y(Object obj, l lVar, Function1<? super Throwable, v> function1, Object obj2, Throwable th) {
        this.f38863a = obj;
        this.f38864b = lVar;
        this.f38865c = function1;
        this.f38866d = obj2;
        this.e = th;
    }

    public /* synthetic */ y(Object obj, l lVar, Function1 function1, Object obj2, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, (i & 2) != 0 ? null : lVar, (i & 4) != 0 ? null : function1, (i & 8) != 0 ? null : obj2, (i & 16) != 0 ? null : th);
    }

    private static y a(Object obj, l lVar, Function1<? super Throwable, v> function1, Object obj2, Throwable th) {
        return new y(obj, lVar, function1, obj2, th);
    }

    public static /* synthetic */ y a(y yVar, Object obj, l lVar, Function1 function1, Object obj2, Throwable th, int i) {
        if ((i & 1) != 0) {
            obj = yVar.f38863a;
        }
        if ((i & 2) != 0) {
            lVar = yVar.f38864b;
        }
        if ((i & 4) != 0) {
            function1 = yVar.f38865c;
        }
        if ((i & 8) != 0) {
            obj2 = yVar.f38866d;
        }
        if ((i & 16) != 0) {
            th = yVar.e;
        }
        return a(obj, lVar, function1, obj2, th);
    }

    public final boolean a() {
        return this.e != null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        return p.a(this.f38863a, yVar.f38863a) && p.a(this.f38864b, yVar.f38864b) && p.a(this.f38865c, yVar.f38865c) && p.a(this.f38866d, yVar.f38866d) && p.a(this.e, yVar.e);
    }

    public final int hashCode() {
        Object obj = this.f38863a;
        int i = 0;
        int hashCode = obj != null ? obj.hashCode() : 0;
        l lVar = this.f38864b;
        int hashCode2 = lVar != null ? lVar.hashCode() : 0;
        Function1<Throwable, v> function1 = this.f38865c;
        int hashCode3 = function1 != null ? function1.hashCode() : 0;
        Object obj2 = this.f38866d;
        int hashCode4 = obj2 != null ? obj2.hashCode() : 0;
        Throwable th = this.e;
        if (th != null) {
            i = th.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public final String toString() {
        return "CompletedContinuation(result=" + this.f38863a + ", cancelHandler=" + this.f38864b + ", onCancellation=" + this.f38865c + ", idempotentResume=" + this.f38866d + ", cancelCause=" + this.e + ")";
    }
}
