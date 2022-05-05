package kotlinx.coroutines.debug.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.Symbol;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u000f\u0010\u0001\u001a\u00020��H\u0002¢\u0006\u0004\b\u0001\u0010\u0002\u001a\u0015\u0010\u0005\u001a\u00020\u0004*\u0004\u0018\u00010\u0003H\u0002¢\u0006\u0004\b\u0005\u0010\u0006\"\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\t\"\u0016\u0010\n\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b\"\u0016\u0010\f\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u000b\"\u0016\u0010\r\u001a\u00020\u00078\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\t\"\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"", "noImpl", "()Ljava/lang/Void;", "", "Lkotlinx/coroutines/debug/internal/Marked;", "mark", "(Ljava/lang/Object;)Lkotlinx/coroutines/debug/internal/Marked;", "", "MAGIC", "I", "MARKED_NULL", "Lkotlinx/coroutines/debug/internal/Marked;", "MARKED_TRUE", "MIN_CAPACITY", "Lkotlinx/coroutines/internal/Symbol;", "REHASH", "Lkotlinx/coroutines/internal/Symbol;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/debug/internal/ConcurrentWeakMapKt.class */
public final class ConcurrentWeakMapKt {

    /* renamed from: a */
    private static final Symbol f22257a = new Symbol("REHASH");

    /* renamed from: b */
    private static final Marked f22258b = new Marked(null);

    /* renamed from: c */
    private static final Marked f22259c = new Marked(Boolean.TRUE);

    /* renamed from: c */
    public static final /* synthetic */ Void m760c() {
        m758e();
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static final Marked m759d(Object obj) {
        return obj == null ? f22258b : Intrinsics.m1834a(obj, Boolean.TRUE) ? f22259c : new Marked(obj);
    }

    /* renamed from: e */
    private static final Void m758e() {
        throw new UnsupportedOperationException("not implemented");
    }
}
