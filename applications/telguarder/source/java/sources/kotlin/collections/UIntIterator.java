package kotlin.collections;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.UInt;
import kotlin.jvm.internal.markers.KMappedMarker;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\b\u0007\b'\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u0002H\u0086\u0002ø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\u0002H&ø\u0001��ø\u0001\u0001¢\u0006\u0004\b\b\u0010\u0006ø\u0001��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\t"}, m400d2 = {"Lkotlin/collections/UIntIterator;", "", "Lkotlin/UInt;", "()V", "next", "next-pVg5ArA", "()I", "nextUInt", "nextUInt-pVg5ArA", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/collections/UIntIterator.class */
public abstract class UIntIterator implements Iterator<UInt>, KMappedMarker {
    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ UInt next() {
        return UInt.m4251boximpl(m4616nextpVg5ArA());
    }

    /* renamed from: next-pVg5ArA */
    public final int m4616nextpVg5ArA() {
        return mo4318nextUIntpVg5ArA();
    }

    /* renamed from: nextUInt-pVg5ArA */
    public abstract int mo4318nextUIntpVg5ArA();

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
