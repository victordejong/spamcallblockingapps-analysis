package scala.runtime;

import scala.Function2;
import scala.Tuple2;
import scala.collection.IterableLike;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.mutable.Builder;
/* loaded from: classes3-dex2jar.jar:scala/runtime/Tuple2Zipped$.class */
public final class Tuple2Zipped$ {
    public static final Tuple2Zipped$ MODULE$ = null;

    static {
        new Tuple2Zipped$();
    }

    private Tuple2Zipped$() {
        MODULE$ = this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003b, code lost:
        if ((r4 != null ? r4.equals(r5) : r5 == null) != false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <El1, Repr1, El2, Repr2> boolean equals$extension(scala.Tuple2<scala.collection.TraversableLike<El1, Repr1>, scala.collection.IterableLike<El2, Repr2>> r4, java.lang.Object r5) {
        /*
            r3 = this;
            r0 = r5
            boolean r0 = r0 instanceof scala.runtime.Tuple2Zipped
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L41
            r0 = r5
            if (r0 != 0) goto L15
            r0 = 0
            r5 = r0
            goto L1d
        L15:
            r0 = r5
            scala.runtime.Tuple2Zipped r0 = (scala.runtime.Tuple2Zipped) r0
            scala.Tuple2 r0 = r0.colls()
            r5 = r0
        L1d:
            r0 = r4
            if (r0 != 0) goto L28
            r0 = r5
            if (r0 == 0) goto L30
            goto L36
        L28:
            r0 = r4
            r1 = r5
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L36
        L30:
            r0 = 1
            r8 = r0
            goto L39
        L36:
            r0 = 0
            r8 = r0
        L39:
            r0 = r8
            if (r0 == 0) goto L41
            goto L44
        L41:
            r0 = 0
            r7 = r0
        L44:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.runtime.Tuple2Zipped$.equals$extension(scala.Tuple2, java.lang.Object):boolean");
    }

    public final <El1, Repr1, El2, Repr2> boolean exists$extension(Tuple2<TraversableLike<El1, Repr1>, IterableLike<El2, Repr2>> tuple2, Function2<El1, El2, Object> function2) {
        boolean z;
        Object obj = new Object();
        try {
            tuple2.mo269_1().foreach(new Tuple2Zipped$$anonfun$exists$extension$1(tuple2.mo268_2().iterator(), function2, obj));
            z = false;
        } catch (NonLocalReturnControl e) {
            if (e.key() != obj) {
                throw e;
            }
            z = e.value$mcZ$sp();
        }
        return z;
    }

    public final <To1, To2, El1, Repr1, El2, Repr2> Tuple2<To1, To2> filter$extension(Tuple2<TraversableLike<El1, Repr1>, IterableLike<El2, Repr2>> tuple2, Function2<El1, El2, Object> function2, CanBuildFrom<Repr1, El1, To1> canBuildFrom, CanBuildFrom<Repr2, El2, To2> canBuildFrom2) {
        Tuple2<To1, To2> tuple22;
        Object obj = new Object();
        try {
            Builder<El1, To1> apply = canBuildFrom.apply(tuple2.mo269_1().repr());
            Builder<El2, To2> apply2 = canBuildFrom2.apply(tuple2.mo268_2().repr());
            tuple2.mo269_1().foreach(new Tuple2Zipped$$anonfun$filter$extension$1(apply, apply2, tuple2.mo268_2().iterator(), function2, obj));
            tuple22 = new Tuple2<>(apply.result(), apply2.result());
        } catch (NonLocalReturnControl e) {
            if (e.key() != obj) {
                throw e;
            }
            tuple22 = (Tuple2) e.value();
        }
        return tuple22;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <B, To, El1, Repr1, El2, Repr2> To flatMap$extension(Tuple2<TraversableLike<El1, Repr1>, IterableLike<El2, Repr2>> tuple2, Function2<El1, El2, TraversableOnce<B>> function2, CanBuildFrom<Repr1, B, To> canBuildFrom) {
        To to;
        Object obj = new Object();
        try {
            Builder<B, To> apply = canBuildFrom.apply(tuple2.mo269_1().repr());
            tuple2.mo269_1().foreach(new Tuple2Zipped$$anonfun$flatMap$extension$1(apply, tuple2.mo268_2().iterator(), function2, obj));
            to = apply.result();
        } catch (NonLocalReturnControl e) {
            if (e.key() != obj) {
                throw e;
            }
            to = e.value();
        }
        return to;
    }

    public final <El1, Repr1, El2, Repr2> boolean forall$extension(Tuple2<TraversableLike<El1, Repr1>, IterableLike<El2, Repr2>> tuple2, Function2<El1, El2, Object> function2) {
        return !exists$extension(tuple2, new Tuple2Zipped$$anonfun$forall$extension$1(function2));
    }

    public final <U, El1, Repr1, El2, Repr2> void foreach$extension(Tuple2<TraversableLike<El1, Repr1>, IterableLike<El2, Repr2>> tuple2, Function2<El1, El2, U> function2) {
        Object obj = new Object();
        try {
            tuple2.mo269_1().foreach(new Tuple2Zipped$$anonfun$foreach$extension$1(tuple2.mo268_2().iterator(), function2, obj));
        } catch (NonLocalReturnControl e) {
            if (e.key() != obj) {
                throw e;
            }
            e.value$mcV$sp();
        }
    }

    public final <El1, Repr1, El2, Repr2> int hashCode$extension(Tuple2<TraversableLike<El1, Repr1>, IterableLike<El2, Repr2>> tuple2) {
        return tuple2.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <B, To, El1, Repr1, El2, Repr2> To map$extension(Tuple2<TraversableLike<El1, Repr1>, IterableLike<El2, Repr2>> tuple2, Function2<El1, El2, B> function2, CanBuildFrom<Repr1, B, To> canBuildFrom) {
        To to;
        Object obj = new Object();
        try {
            Builder<B, To> apply = canBuildFrom.apply(tuple2.mo269_1().repr());
            apply.sizeHint((TraversableLike<?, ?>) tuple2.mo269_1());
            tuple2.mo269_1().foreach(new Tuple2Zipped$$anonfun$map$extension$1(apply, tuple2.mo268_2().iterator(), function2, obj));
            to = apply.result();
        } catch (NonLocalReturnControl e) {
            if (e.key() != obj) {
                throw e;
            }
            to = e.value();
        }
        return to;
    }
}
