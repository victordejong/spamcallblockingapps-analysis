package scala.collection.parallel.immutable;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/package$.class */
public final class package$ {
    public static final package$ MODULE$ = null;

    static {
        new package$();
    }

    private package$() {
        MODULE$ = this;
    }

    public <T> Repetition<T> repetition(T t, int i) {
        return new Repetition<>(t, i);
    }
}
