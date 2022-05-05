package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001d\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010(\n\u0002\b\t*\u0001��\b\n\u0018��2\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0005J\u0010\u0010\u0007\u001a\u00028��H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bR*\u0010\n\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00010\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u0011\u0010\r¨\u0006\u0012"}, d2 = {"kotlin/sequences/FlatteningSequence$iterator$1", "Ljava/util/Iterator;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "", "ensureItemIterator", "()Z", "hasNext", "next", "()Ljava/lang/Object;", "", "itemIterator", "Ljava/util/Iterator;", "getItemIterator", "()Ljava/util/Iterator;", "setItemIterator", "(Ljava/util/Iterator;)V", "iterator", "getIterator", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/FlatteningSequence$iterator$1.class */
public final class FlatteningSequence$iterator$1 implements Iterator<E>, KMappedMarker {
    @NotNull

    /* renamed from: f */
    private final Iterator<T> f20869f;
    @Nullable

    /* renamed from: g */
    private Iterator<? extends E> f20870g;

    /* renamed from: h */
    final /* synthetic */ FlatteningSequence f20871h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlatteningSequence$iterator$1(FlatteningSequence flatteningSequence) {
        Sequence sequence;
        this.f20871h = flatteningSequence;
        sequence = flatteningSequence.f20866a;
        this.f20869f = sequence.iterator();
    }

    /* renamed from: a */
    private final boolean m1657a() {
        Function1 function1;
        Function1 function12;
        Iterator<? extends E> it = this.f20870g;
        if (it != 0 && !it.hasNext()) {
            this.f20870g = null;
        }
        while (this.f20870g == null) {
            if (!this.f20869f.hasNext()) {
                return false;
            }
            Object next = this.f20869f.next();
            function1 = this.f20871h.f20868c;
            function12 = this.f20871h.f20867b;
            Iterator<? extends E> it2 = (Iterator) function1.invoke(function12.invoke(next));
            if (it2.hasNext()) {
                this.f20870g = it2;
                return true;
            }
        }
        return true;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return m1657a();
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [E, java.lang.Object] */
    @Override // java.util.Iterator
    public E next() {
        if (m1657a()) {
            Iterator<? extends E> it = this.f20870g;
            Intrinsics.m1832c(it);
            return it.next();
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
