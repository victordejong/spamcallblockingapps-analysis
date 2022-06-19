package kotlin.sequences;

import kotlin.Metadata;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0016\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b`\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u00022\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u00022\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0007"}, m400d2 = {"Lkotlin/sequences/DropTakeSequence;", "T", "Lkotlin/sequences/Sequence;", "drop", "n", "", "take", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/sequences/DropTakeSequence.class */
public interface DropTakeSequence<T> extends Sequence<T> {
    Sequence<T> drop(int i);

    Sequence<T> take(int i);
}
