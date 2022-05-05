package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.DebugKt;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��2\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\b\u0080@\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\u0016\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005J\u0013\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0002HÖ\u0003J$\u0010\t\u001a\u00020\n2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\n0\fH\u0086\b¢\u0006\u0004\b\r\u0010\u000eJ\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J!\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0012\u001a\u00028��H\u0086\u0002ø\u0001��¢\u0006\u0004\b\u0013\u0010\u0014J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0002X\u0082\u0004¢\u0006\u0002\n��ø\u0001��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0017"}, m815d2 = {"Lkotlinx/coroutines/internal/InlineList;", ExifInterface.LONGITUDE_EAST, "", "holder", "constructor-impl", "(Ljava/lang/Object;)Ljava/lang/Object;", "equals", "", "other", "forEachReversed", "", "action", "Lkotlin/Function1;", "forEachReversed-impl", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "hashCode", "", "plus", "element", "plus-impl", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "toString", "", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/InlineList.class */
public final class InlineList<E> {
    public final Object holder;

    public /* synthetic */ InlineList(Object obj) {
        this.holder = obj;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ InlineList m41873boximpl(Object obj) {
        return new InlineList(obj);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static Object m41874constructorimpl(Object obj) {
        return obj;
    }

    /* renamed from: constructor-impl$default  reason: not valid java name */
    public static /* synthetic */ Object m41875constructorimpl$default(Object obj, int i, C15145g gVar) {
        if ((i & 1) != 0) {
            obj = null;
        }
        return m41874constructorimpl(obj);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m41876equalsimpl(Object obj, Object obj2) {
        return (obj2 instanceof InlineList) && C15149k.m384a(obj, ((InlineList) obj2).m41882unboximpl());
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m41877equalsimpl0(Object obj, Object obj2) {
        return C15149k.m384a(obj, obj2);
    }

    /* renamed from: forEachReversed-impl  reason: not valid java name */
    public static final void m41878forEachReversedimpl(Object obj, AbstractC15118l<? super E, C14989s> lVar) {
        if (obj != null) {
            if (!(obj instanceof ArrayList)) {
                lVar.invoke(obj);
            } else if (obj != null) {
                ArrayList arrayList = (ArrayList) obj;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    lVar.invoke((Object) arrayList.get(size));
                }
            } else {
                throw new C14986p("null cannot be cast to non-null type kotlin.collections.ArrayList<E> /* = java.util.ArrayList<E> */");
            }
        }
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m41879hashCodeimpl(Object obj) {
        return obj != null ? obj.hashCode() : 0;
    }

    /* renamed from: plus-impl  reason: not valid java name */
    public static final Object m41880plusimpl(Object obj, E e) {
        Object obj2;
        if (!DebugKt.getASSERTIONS_ENABLED() || (!(e instanceof List))) {
            if (obj == null) {
                obj2 = m41874constructorimpl(e);
            } else if (!(obj instanceof ArrayList)) {
                ArrayList arrayList = new ArrayList(4);
                arrayList.add(obj);
                arrayList.add(e);
                obj2 = m41874constructorimpl(arrayList);
            } else if (obj != null) {
                ((ArrayList) obj).add(e);
                obj2 = m41874constructorimpl(obj);
            } else {
                throw new C14986p("null cannot be cast to non-null type kotlin.collections.ArrayList<E> /* = java.util.ArrayList<E> */");
            }
            return obj2;
        }
        throw new AssertionError();
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m41881toStringimpl(Object obj) {
        return "InlineList(holder=" + obj + ")";
    }

    public boolean equals(Object obj) {
        return m41876equalsimpl(this.holder, obj);
    }

    public int hashCode() {
        return m41879hashCodeimpl(this.holder);
    }

    public String toString() {
        return m41881toStringimpl(this.holder);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ Object m41882unboximpl() {
        return this.holder;
    }
}
