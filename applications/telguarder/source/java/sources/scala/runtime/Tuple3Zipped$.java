package scala.runtime;

import scala.Function3;
import scala.Tuple3;
import scala.collection.IterableLike;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.mutable.Builder;
/* loaded from: classes3-dex2jar.jar:scala/runtime/Tuple3Zipped$.class */
public final class Tuple3Zipped$ {
    public static final Tuple3Zipped$ MODULE$ = null;

    static {
        new Tuple3Zipped$();
    }

    private Tuple3Zipped$() {
        MODULE$ = this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003b, code lost:
        if ((r4 != null ? r4.equals(r5) : r5 == null) != false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <El1, Repr1, El2, Repr2, El3, Repr3> boolean equals$extension(scala.Tuple3<scala.collection.TraversableLike<El1, Repr1>, scala.collection.IterableLike<El2, Repr2>, scala.collection.IterableLike<El3, Repr3>> r4, java.lang.Object r5) {
        /*
            r3 = this;
            r0 = r5
            boolean r0 = r0 instanceof scala.runtime.Tuple3Zipped
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
            scala.runtime.Tuple3Zipped r0 = (scala.runtime.Tuple3Zipped) r0
            scala.Tuple3 r0 = r0.colls()
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
        throw new UnsupportedOperationException("Method not decompiled: scala.runtime.Tuple3Zipped$.equals$extension(scala.Tuple3, java.lang.Object):boolean");
    }

    public final <El1, Repr1, El2, Repr2, El3, Repr3> boolean exists$extension(Tuple3<TraversableLike<El1, Repr1>, IterableLike<El2, Repr2>, IterableLike<El3, Repr3>> tuple3, Function3<El1, El2, El3, Object> function3) {
        boolean z;
        Object obj = new Object();
        try {
            tuple3.mo240_1().foreach(new Tuple3Zipped$$anonfun$exists$extension$1(tuple3.mo239_2().iterator(), tuple3.mo238_3().iterator(), function3, obj));
            z = false;
        } catch (NonLocalReturnControl e) {
            if (e.key() != obj) {
                throw e;
            }
            z = e.value$mcZ$sp();
        }
        return z;
    }

    public final <To1, To2, To3, El1, Repr1, El2, Repr2, El3, Repr3> Tuple3<To1, To2, To3> filter$extension(Tuple3<TraversableLike<El1, Repr1>, IterableLike<El2, Repr2>, IterableLike<El3, Repr3>> tuple3, Function3<El1, El2, El3, Object> function3, CanBuildFrom<Repr1, El1, To1> canBuildFrom, CanBuildFrom<Repr2, El2, To2> canBuildFrom2, CanBuildFrom<Repr3, El3, To3> canBuildFrom3) {
        Tuple3<To1, To2, To3> tuple32;
        Object obj = new Object();
        try {
            Builder<El1, To1> apply = canBuildFrom.apply(tuple3.mo240_1().repr());
            Builder<El2, To2> apply2 = canBuildFrom2.apply(tuple3.mo239_2().repr());
            Builder<El3, To3> apply3 = canBuildFrom3.apply(tuple3.mo238_3().repr());
            tuple3.mo240_1().foreach(new Tuple3Zipped$$anonfun$filter$extension$1(apply, apply2, apply3, tuple3.mo239_2().iterator(), tuple3.mo238_3().iterator(), function3, obj));
            tuple32 = scala$runtime$Tuple3Zipped$$result$1(apply, apply2, apply3);
        } catch (NonLocalReturnControl e) {
            if (e.key() != obj) {
                throw e;
            }
            tuple32 = (Tuple3) e.value();
        }
        return tuple32;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <B, To, El1, Repr1, El2, Repr2, El3, Repr3> To flatMap$extension(Tuple3<TraversableLike<El1, Repr1>, IterableLike<El2, Repr2>, IterableLike<El3, Repr3>> tuple3, Function3<El1, El2, El3, TraversableOnce<B>> function3, CanBuildFrom<Repr1, B, To> canBuildFrom) {
        To to;
        Object obj = new Object();
        try {
            Builder<B, To> apply = canBuildFrom.apply(tuple3.mo240_1().repr());
            tuple3.mo240_1().foreach(new Tuple3Zipped$$anonfun$flatMap$extension$1(apply, tuple3.mo239_2().iterator(), tuple3.mo238_3().iterator(), function3, obj));
            to = apply.result();
        } catch (NonLocalReturnControl e) {
            if (e.key() != obj) {
                throw e;
            }
            to = e.value();
        }
        return to;
    }

    public final <El1, Repr1, El2, Repr2, El3, Repr3> boolean forall$extension(Tuple3<TraversableLike<El1, Repr1>, IterableLike<El2, Repr2>, IterableLike<El3, Repr3>> tuple3, Function3<El1, El2, El3, Object> function3) {
        return !exists$extension(tuple3, new Tuple3Zipped$$anonfun$forall$extension$1(function3));
    }

    public final <U, El1, Repr1, El2, Repr2, El3, Repr3> void foreach$extension(Tuple3<TraversableLike<El1, Repr1>, IterableLike<El2, Repr2>, IterableLike<El3, Repr3>> tuple3, Function3<El1, El2, El3, U> function3) {
        Object obj = new Object();
        try {
            tuple3.mo240_1().foreach(new Tuple3Zipped$$anonfun$foreach$extension$1(tuple3.mo239_2().iterator(), tuple3.mo238_3().iterator(), function3, obj));
        } catch (NonLocalReturnControl e) {
            if (e.key() != obj) {
                throw e;
            }
            e.value$mcV$sp();
        }
    }

    public final <El1, Repr1, El2, Repr2, El3, Repr3> int hashCode$extension(Tuple3<TraversableLike<El1, Repr1>, IterableLike<El2, Repr2>, IterableLike<El3, Repr3>> tuple3) {
        return tuple3.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <B, To, El1, Repr1, El2, Repr2, El3, Repr3> To map$extension(Tuple3<TraversableLike<El1, Repr1>, IterableLike<El2, Repr2>, IterableLike<El3, Repr3>> tuple3, Function3<El1, El2, El3, B> function3, CanBuildFrom<Repr1, B, To> canBuildFrom) {
        To to;
        Object obj = new Object();
        try {
            Builder<B, To> apply = canBuildFrom.apply(tuple3.mo240_1().repr());
            tuple3.mo240_1().foreach(new Tuple3Zipped$$anonfun$map$extension$1(apply, tuple3.mo239_2().iterator(), tuple3.mo238_3().iterator(), function3, obj));
            to = apply.result();
        } catch (NonLocalReturnControl e) {
            if (e.key() != obj) {
                throw e;
            }
            to = e.value();
        }
        return to;
    }

    public final Tuple3 scala$runtime$Tuple3Zipped$$result$1(Builder builder, Builder builder2, Builder builder3) {
        return new Tuple3(builder.result(), builder2.result(), builder3.result());
    }
}
