package scala.collection.mutable;

import scala.Serializable;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.ClassTagTraversableFactory;
import scala.reflect.ClassTag;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/UnrolledBuffer$.class */
public final class UnrolledBuffer$ extends ClassTagTraversableFactory<UnrolledBuffer> implements Serializable {
    public static final UnrolledBuffer$ MODULE$ = null;
    private final int waterline = 50;
    private final int waterlineDelim = 100;
    private final int unrolledlength = 32;

    static {
        new UnrolledBuffer$();
    }

    private UnrolledBuffer$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T> CanBuildFrom<UnrolledBuffer<?>, T, UnrolledBuffer<T>> canBuildFrom(ClassTag<T> classTag) {
        return new ClassTagTraversableFactory.GenericCanBuildFrom(this, classTag);
    }

    @Override // scala.collection.generic.GenericClassTagCompanion
    public <T> Builder<T, UnrolledBuffer<T>> newBuilder(ClassTag<T> classTag) {
        return new UnrolledBuffer(classTag);
    }

    public int unrolledlength() {
        return this.unrolledlength;
    }

    public int waterline() {
        return this.waterline;
    }

    public int waterlineDelim() {
        return this.waterlineDelim;
    }
}
