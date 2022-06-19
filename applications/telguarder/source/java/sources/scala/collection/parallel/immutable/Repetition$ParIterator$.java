package scala.collection.parallel.immutable;

import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/Repetition$ParIterator$.class */
public class Repetition$ParIterator$ {
    private final /* synthetic */ Repetition $outer;

    public Repetition$ParIterator$(Repetition<T> repetition) {
        Objects.requireNonNull(repetition);
        this.$outer = repetition;
    }

    public int $lessinit$greater$default$1() {
        return 0;
    }

    public int $lessinit$greater$default$2() {
        return this.$outer.length();
    }

    public T $lessinit$greater$default$3() {
        return this.$outer.scala$collection$parallel$immutable$Repetition$$elem;
    }
}
