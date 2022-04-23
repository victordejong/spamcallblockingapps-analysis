package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b��\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003B/\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\u0003\u0012\u0018\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\t¢\u0006\u0004\b\r\u0010\u000eJ\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR(\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lkotlin/sequences/TransformingIndexedSequence;", "T", "R", "Lkotlin/sequences/Sequence;", "", "iterator", "()Ljava/util/Iterator;", "sequence", "Lkotlin/sequences/Sequence;", "Lkotlin/Function2;", "", "transformer", "Lkotlin/Function2;", "<init>", "(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/TransformingIndexedSequence.class */
public final class TransformingIndexedSequence<T, R> implements Sequence<R> {

    /* renamed from: a */
    private final Sequence<T> f21002a;

    /* renamed from: b */
    private final Function2<Integer, T, R> f21003b;

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<R> iterator() {
        return new TransformingIndexedSequence$iterator$1(this);
    }
}
