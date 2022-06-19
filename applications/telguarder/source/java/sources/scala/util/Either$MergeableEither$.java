package scala.util;

import scala.MatchError;
/* loaded from: classes3-dex2jar.jar:scala/util/Either$MergeableEither$.class */
public class Either$MergeableEither$ {
    public static final Either$MergeableEither$ MODULE$ = null;

    static {
        new Either$MergeableEither$();
    }

    public Either$MergeableEither$() {
        MODULE$ = this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003b, code lost:
        if ((r4 != null ? r4.equals(r5) : r5 == null) != false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <A> boolean equals$extension(scala.util.Either<A, A> r4, java.lang.Object r5) {
        /*
            r3 = this;
            r0 = r5
            boolean r0 = r0 instanceof scala.util.Either.MergeableEither
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
            scala.util.Either$MergeableEither r0 = (scala.util.Either.MergeableEither) r0
            scala.util.Either r0 = r0.scala$util$Either$MergeableEither$$x()
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
        throw new UnsupportedOperationException("Method not decompiled: scala.util.Either$MergeableEither$.equals$extension(scala.util.Either, java.lang.Object):boolean");
    }

    public final <A> int hashCode$extension(Either<A, A> either) {
        return either.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <A> A merge$extension(Either<A, A> either) {
        A a;
        if (either instanceof Left) {
            a = ((Left) either).m9a();
        } else if (!(either instanceof Right)) {
            throw new MatchError(either);
        } else {
            a = ((Right) either).m8b();
        }
        return a;
    }
}
