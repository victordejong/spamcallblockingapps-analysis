package scala.runtime;

import scala.Function1;
import scala.Predef$$less$colon$less;
import scala.Tuple3;
import scala.collection.IterableLike;
import scala.collection.Iterator;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.mutable.Builder;
/* loaded from: classes3-dex2jar.jar:scala/runtime/Tuple3Zipped$Ops$.class */
public class Tuple3Zipped$Ops$ {
    public static final Tuple3Zipped$Ops$ MODULE$ = null;

    static {
        new Tuple3Zipped$Ops$();
    }

    public Tuple3Zipped$Ops$() {
        MODULE$ = this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003b, code lost:
        if ((r4 != null ? r4.equals(r5) : r5 == null) != false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T1, T2, T3> boolean equals$extension(scala.Tuple3<T1, T2, T3> r4, java.lang.Object r5) {
        /*
            r3 = this;
            r0 = r5
            boolean r0 = r0 instanceof scala.runtime.Tuple3Zipped.Ops
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
            scala.runtime.Tuple3Zipped$Ops r0 = (scala.runtime.Tuple3Zipped.Ops) r0
            scala.Tuple3 r0 = r0.m16x()
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
        throw new UnsupportedOperationException("Method not decompiled: scala.runtime.Tuple3Zipped$Ops$.equals$extension(scala.Tuple3, java.lang.Object):boolean");
    }

    public final <T1, T2, T3> int hashCode$extension(Tuple3<T1, T2, T3> tuple3) {
        return tuple3.hashCode();
    }

    public final <El1, CC1 extends TraversableOnce<Object>, El2, CC2 extends TraversableOnce<Object>, El3, CC3 extends TraversableOnce<Object>, That, T1, T2, T3> That invert$extension(Tuple3<T1, T2, T3> tuple3, Predef$$less$colon$less<T1, CC1> predef$$less$colon$less, Predef$$less$colon$less<T2, CC2> predef$$less$colon$less2, Predef$$less$colon$less<T3, CC3> predef$$less$colon$less3, CanBuildFrom<CC1, Tuple3<El1, El2, El3>, That> canBuildFrom) {
        Builder<Tuple3<El1, El2, El3>, That> apply = canBuildFrom.apply(predef$$less$colon$less.apply(tuple3.mo240_1()));
        Iterator iterator = predef$$less$colon$less.apply(tuple3.mo240_1()).toIterator();
        Iterator iterator2 = predef$$less$colon$less2.apply(tuple3.mo239_2()).toIterator();
        Iterator iterator3 = predef$$less$colon$less3.apply(tuple3.mo238_3()).toIterator();
        while (iterator.hasNext() && iterator2.hasNext() && iterator3.hasNext()) {
            apply.$plus$eq((Builder<Tuple3<El1, El2, El3>, That>) new Tuple3<>(iterator.next(), iterator2.next(), iterator3.next()));
        }
        return apply.result();
    }

    public final <El1, Repr1, El2, Repr2, El3, Repr3, T1, T2, T3> Tuple3<TraversableLike<El1, Repr1>, IterableLike<El2, Repr2>, IterableLike<El3, Repr3>> zipped$extension(Tuple3<T1, T2, T3> tuple3, Function1<T1, TraversableLike<El1, Repr1>> function1, Function1<T2, IterableLike<El2, Repr2>> function12, Function1<T3, IterableLike<El3, Repr3>> function13) {
        return new Tuple3<>(function1.apply(tuple3.mo240_1()), function12.apply(tuple3.mo239_2()), function13.apply(tuple3.mo238_3()));
    }
}
