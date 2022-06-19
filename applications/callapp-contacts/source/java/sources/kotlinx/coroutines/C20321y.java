package kotlinx.coroutines;

import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\b\u0082\b\u0018��2\u00020\u0001BZ\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012%\b\u0002\u0010\u0005\u001a\u001f\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0006\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0001\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u000eJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0004HÆ\u0003J&\u0010\u0015\u001a\u001f\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0007HÆ\u0003J`\u0010\u0018\u001a\u00020��2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042%\b\u0002\u0010\u0005\u001a\u001f\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00062\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u00102\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\u001a\u0010\u001d\u001a\u00020\u000b2\n\u0010\u001e\u001a\u0006\u0012\u0002\b\u00030\u001f2\u0006\u0010\n\u001a\u00020\u0007J\t\u0010 \u001a\u00020!HÖ\u0001R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0011\u0010\u000f\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00018\u0006X\u0087\u0004¢\u0006\u0002\n��R-\u0010\u0005\u001a\u001f\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00018\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\""}, m4298d2 = {"Lkotlinx/coroutines/CompletedContinuation;", "", "result", "cancelHandler", "Lkotlinx/coroutines/CancelHandler;", "onCancellation", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "idempotentResume", "cancelCause", "(Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;)V", "cancelled", "", "getCancelled", "()Z", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "", "invokeHandlers", "cont", "Lkotlinx/coroutines/CancellableContinuationImpl;", "toString", "", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.y */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/y.class */
final class C20321y {

    /* renamed from: a */
    public final Object f66796a;

    /* renamed from: b */
    public final AbstractC20306l f66797b;

    /* renamed from: c */
    public final Function1<Throwable, C20128v> f66798c;

    /* renamed from: d */
    public final Object f66799d;

    /* renamed from: e */
    public final Throwable f66800e;

    /* JADX WARN: Multi-variable type inference failed */
    public C20321y(Object obj, AbstractC20306l abstractC20306l, Function1<? super Throwable, C20128v> function1, Object obj2, Throwable th) {
        this.f66796a = obj;
        this.f66797b = abstractC20306l;
        this.f66798c = function1;
        this.f66799d = obj2;
        this.f66800e = th;
    }

    public /* synthetic */ C20321y(Object obj, AbstractC20306l abstractC20306l, Function1 function1, Object obj2, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, (i & 2) != 0 ? null : abstractC20306l, (i & 4) != 0 ? null : function1, (i & 8) != 0 ? null : obj2, (i & 16) != 0 ? null : th);
    }

    /* renamed from: a */
    private static C20321y m757a(Object obj, AbstractC20306l abstractC20306l, Function1<? super Throwable, C20128v> function1, Object obj2, Throwable th) {
        return new C20321y(obj, abstractC20306l, function1, obj2, th);
    }

    /* renamed from: a */
    public static /* synthetic */ C20321y m756a(C20321y c20321y, Object obj, AbstractC20306l abstractC20306l, Function1 function1, Object obj2, Throwable th, int i) {
        if ((i & 1) != 0) {
            obj = c20321y.f66796a;
        }
        if ((i & 2) != 0) {
            abstractC20306l = c20321y.f66797b;
        }
        if ((i & 4) != 0) {
            function1 = c20321y.f66798c;
        }
        if ((i & 8) != 0) {
            obj2 = c20321y.f66799d;
        }
        if ((i & 16) != 0) {
            th = c20321y.f66800e;
        }
        return m757a(obj, abstractC20306l, function1, obj2, th);
    }

    /* renamed from: a */
    public final boolean m758a() {
        return this.f66800e != null;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20321y)) {
                return false;
            }
            C20321y c20321y = (C20321y) obj;
            return C18524p.m3850a(this.f66796a, c20321y.f66796a) && C18524p.m3850a(this.f66797b, c20321y.f66797b) && C18524p.m3850a(this.f66798c, c20321y.f66798c) && C18524p.m3850a(this.f66799d, c20321y.f66799d) && C18524p.m3850a(this.f66800e, c20321y.f66800e);
        }
        return true;
    }

    public final int hashCode() {
        Object obj = this.f66796a;
        int i = 0;
        int hashCode = obj != null ? obj.hashCode() : 0;
        AbstractC20306l abstractC20306l = this.f66797b;
        int hashCode2 = abstractC20306l != null ? abstractC20306l.hashCode() : 0;
        Function1<Throwable, C20128v> function1 = this.f66798c;
        int hashCode3 = function1 != null ? function1.hashCode() : 0;
        Object obj2 = this.f66799d;
        int hashCode4 = obj2 != null ? obj2.hashCode() : 0;
        Throwable th = this.f66800e;
        if (th != null) {
            i = th.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public final String toString() {
        return "CompletedContinuation(result=" + this.f66796a + ", cancelHandler=" + this.f66797b + ", onCancellation=" + this.f66798c + ", idempotentResume=" + this.f66799d + ", cancelCause=" + this.f66800e + ")";
    }
}
