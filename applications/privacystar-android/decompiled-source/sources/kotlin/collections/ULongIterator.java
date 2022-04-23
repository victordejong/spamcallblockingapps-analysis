package kotlin.collections;

import java.util.Iterator;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.ULong;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
@SinceKotlin(version = "1.3")
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\f\u0010\u0004\u001a\u00020\u0002H\u0086\u0002ø\u0001��J\u0010\u0010\u0005\u001a\u00020\u0002H&ø\u0001��¢\u0006\u0002\u0010\u0006ø\u0001��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007"}, m254d2 = {"Lkotlin/collections/ULongIterator;", "", "Lkotlin/ULong;", "()V", "next", "nextULong", "()J", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
@ExperimentalUnsignedTypes
/* loaded from: classes2-dex2jar.jar:kotlin/collections/ULongIterator.class */
public abstract class ULongIterator implements Iterator<ULong>, KMappedMarker {
    @Override // java.util.Iterator
    @NotNull
    public final ULong next() {
        return ULong.m2956boximpl(nextULong());
    }

    public abstract long nextULong();

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
