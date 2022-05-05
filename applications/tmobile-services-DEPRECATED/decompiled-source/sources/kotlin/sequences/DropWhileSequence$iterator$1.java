package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��-\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010(\n\u0002\b\n*\u0001��\b\n\u0018��2\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00028��H\u0096\u0002¢\u0006\u0004\b\t\u0010\nR\"\u0010\f\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028��0\u00128\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R$\u0010\u0017\u001a\u0004\u0018\u00018��8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\n\"\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"kotlin/sequences/DropWhileSequence$iterator$1", "Ljava/util/Iterator;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "", "drop", "()V", "", "hasNext", "()Z", "next", "()Ljava/lang/Object;", "", "dropState", "I", "getDropState", "()I", "setDropState", "(I)V", "", "iterator", "Ljava/util/Iterator;", "getIterator", "()Ljava/util/Iterator;", "nextItem", "Ljava/lang/Object;", "getNextItem", "setNextItem", "(Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/DropWhileSequence$iterator$1.class */
public final class DropWhileSequence$iterator$1 implements Iterator<T>, KMappedMarker {
    @NotNull

    /* renamed from: f */
    private final Iterator<T> f20854f;

    /* renamed from: g */
    private int f20855g = -1;
    @Nullable

    /* renamed from: h */
    private T f20856h;

    /* renamed from: i */
    final /* synthetic */ DropWhileSequence f20857i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DropWhileSequence$iterator$1(DropWhileSequence dropWhileSequence) {
        Sequence sequence;
        this.f20857i = dropWhileSequence;
        sequence = dropWhileSequence.f20852a;
        this.f20854f = sequence.iterator();
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [T, java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m1666a() {
        /*
            r3 = this;
        L_0x0000:
            r0 = r3
            java.util.Iterator<T> r0 = r0.f20854f
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0037
            r0 = r3
            java.util.Iterator<T> r0 = r0.f20854f
            java.lang.Object r0 = r0.next()
            r4 = r0
            r0 = r3
            kotlin.sequences.DropWhileSequence r0 = r0.f20857i
            kotlin.jvm.functions.Function1 r0 = kotlin.sequences.DropWhileSequence.m1668b(r0)
            r1 = r4
            java.lang.Object r0 = r0.invoke(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L_0x0000
            r0 = r3
            r1 = r4
            r0.f20856h = r1
            r0 = r3
            r1 = 1
            r0.f20855g = r1
            return
        L_0x0037:
            r0 = r3
            r1 = 0
            r0.f20855g = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.sequences.DropWhileSequence$iterator$1.m1666a():void");
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f20855g == -1) {
            m1666a();
        }
        boolean z = true;
        if (this.f20855g != 1) {
            z = this.f20854f.hasNext();
        }
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [T, java.lang.Object] */
    @Override // java.util.Iterator
    public T next() {
        if (this.f20855g == -1) {
            m1666a();
        }
        if (this.f20855g != 1) {
            return this.f20854f.next();
        }
        T t = this.f20856h;
        this.f20856h = null;
        this.f20855g = 0;
        return t;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
