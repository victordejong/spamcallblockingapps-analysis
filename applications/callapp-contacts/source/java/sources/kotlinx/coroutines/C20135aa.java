package kotlinx.coroutines;

import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\b\u0080\b\u0018��2\u00020\u0001B2\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012!\u0010\u0003\u001a\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u0004¢\u0006\u0002\u0010\nJ\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÆ\u0003J$\u0010\f\u001a\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u0004HÆ\u0003J:\u0010\r\u001a\u00020��2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00012#\b\u0002\u0010\u0003\u001a\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u0004HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R+\u0010\u0003\u001a\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00018\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\u0015"}, m4298d2 = {"Lkotlinx/coroutines/CompletedWithCancellation;", "", "result", "onCancellation", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.aa */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/aa.class */
public final class C20135aa {

    /* renamed from: a */
    public final Object f66540a;

    /* renamed from: b */
    public final Function1<Throwable, C20128v> f66541b;

    /* JADX WARN: Multi-variable type inference failed */
    public C20135aa(Object obj, Function1<? super Throwable, C20128v> function1) {
        this.f66540a = obj;
        this.f66541b = function1;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20135aa)) {
                return false;
            }
            C20135aa c20135aa = (C20135aa) obj;
            return C18524p.m3850a(this.f66540a, c20135aa.f66540a) && C18524p.m3850a(this.f66541b, c20135aa.f66541b);
        }
        return true;
    }

    public final int hashCode() {
        Object obj = this.f66540a;
        int i = 0;
        int hashCode = obj != null ? obj.hashCode() : 0;
        Function1<Throwable, C20128v> function1 = this.f66541b;
        if (function1 != null) {
            i = function1.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public final String toString() {
        return "CompletedWithCancellation(result=" + this.f66540a + ", onCancellation=" + this.f66541b + ")";
    }
}
