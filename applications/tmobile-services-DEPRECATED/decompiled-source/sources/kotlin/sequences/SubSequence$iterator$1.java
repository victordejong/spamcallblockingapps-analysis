package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��-\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010(\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007*\u0001��\b\n\u0018��2\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00028��H\u0096\u0002¢\u0006\u0004\b\t\u0010\nR\u001f\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"kotlin/sequences/SubSequence$iterator$1", "Ljava/util/Iterator;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "", "drop", "()V", "", "hasNext", "()Z", "next", "()Ljava/lang/Object;", "", "iterator", "Ljava/util/Iterator;", "getIterator", "()Ljava/util/Iterator;", "", "position", "I", "getPosition", "()I", "setPosition", "(I)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SubSequence$iterator$1.class */
public final class SubSequence$iterator$1 implements Iterator<T>, KMappedMarker {
    @NotNull

    /* renamed from: f */
    private final Iterator<T> f20989f;

    /* renamed from: g */
    private int f20990g;

    /* renamed from: h */
    final /* synthetic */ SubSequence f20991h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SubSequence$iterator$1(SubSequence subSequence) {
        Sequence sequence;
        this.f20991h = subSequence;
        sequence = subSequence.f20986a;
        this.f20989f = sequence.iterator();
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x000b */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m1590a() {
        /*
            r4 = this;
        L_0x0000:
            r0 = r4
            int r0 = r0.f20990g
            r1 = r4
            kotlin.sequences.SubSequence r1 = r1.f20991h
            int r1 = kotlin.sequences.SubSequence.m1592d(r1)
            if (r0 >= r1) goto L_0x0031
            r0 = r4
            java.util.Iterator<T> r0 = r0.f20989f
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0031
            r0 = r4
            java.util.Iterator<T> r0 = r0.f20989f
            java.lang.Object r0 = r0.next()
            r0 = r4
            r1 = r4
            int r1 = r1.f20990g
            r2 = 1
            int r1 = r1 + r2
            r0.f20990g = r1
            goto L_0x0000
        L_0x0031:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.sequences.SubSequence$iterator$1.m1590a():void");
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        int i;
        m1590a();
        int i2 = this.f20990g;
        i = this.f20991h.f20988c;
        return i2 < i && this.f20989f.hasNext();
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [T, java.lang.Object] */
    @Override // java.util.Iterator
    public T next() {
        int i;
        m1590a();
        int i2 = this.f20990g;
        i = this.f20991h.f20988c;
        if (i2 < i) {
            this.f20990g++;
            return this.f20989f.next();
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
