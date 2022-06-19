package scala.runtime;

import scala.Function1;
import scala.Predef$$less$colon$less;
import scala.Tuple2;
import scala.collection.IterableLike;
import scala.collection.Iterator;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.mutable.Builder;
/* loaded from: classes3-dex2jar.jar:scala/runtime/Tuple2Zipped$Ops$.class */
public class Tuple2Zipped$Ops$ {
    public static final Tuple2Zipped$Ops$ MODULE$ = null;

    static {
        new Tuple2Zipped$Ops$();
    }

    public Tuple2Zipped$Ops$() {
        MODULE$ = this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003b, code lost:
        if ((r4 != null ? r4.equals(r5) : r5 == null) != false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T1, T2> boolean equals$extension(scala.Tuple2<T1, T2> r4, java.lang.Object r5) {
        /*
            r3 = this;
            r0 = r5
            boolean r0 = r0 instanceof scala.runtime.Tuple2Zipped.Ops
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
            scala.runtime.Tuple2Zipped$Ops r0 = (scala.runtime.Tuple2Zipped.Ops) r0
            scala.Tuple2 r0 = r0.m17x()
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
        throw new UnsupportedOperationException("Method not decompiled: scala.runtime.Tuple2Zipped$Ops$.equals$extension(scala.Tuple2, java.lang.Object):boolean");
    }

    public final <T1, T2> int hashCode$extension(Tuple2<T1, T2> tuple2) {
        return tuple2.hashCode();
    }

    public final <El1, CC1 extends TraversableOnce<Object>, El2, CC2 extends TraversableOnce<Object>, That, T1, T2> That invert$extension(Tuple2<T1, T2> tuple2, Predef$$less$colon$less<T1, CC1> predef$$less$colon$less, Predef$$less$colon$less<T2, CC2> predef$$less$colon$less2, CanBuildFrom<CC1, Tuple2<El1, El2>, That> canBuildFrom) {
        Builder<Tuple2<El1, El2>, That> apply = canBuildFrom.apply(predef$$less$colon$less.apply(tuple2.mo269_1()));
        Iterator iterator = predef$$less$colon$less.apply(tuple2.mo269_1()).toIterator();
        Iterator iterator2 = predef$$less$colon$less2.apply(tuple2.mo268_2()).toIterator();
        while (iterator.hasNext() && iterator2.hasNext()) {
            apply.$plus$eq((Builder<Tuple2<El1, El2>, That>) new Tuple2<>(iterator.next(), iterator2.next()));
        }
        return apply.result();
    }

    public final <El1, Repr1, El2, Repr2, T1, T2> Tuple2<TraversableLike<El1, Repr1>, IterableLike<El2, Repr2>> zipped$extension(Tuple2<T1, T2> tuple2, Function1<T1, TraversableLike<El1, Repr1>> function1, Function1<T2, IterableLike<El2, Repr2>> function12) {
        return new Tuple2<>(function1.apply(tuple2.mo269_1()), function12.apply(tuple2.mo268_2()));
    }
}
