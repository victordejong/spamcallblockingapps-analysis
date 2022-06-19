package scala.collection;

import scala.Function1;
import scala.collection.generic.Growable;
import scala.collection.mutable.Builder;
import scala.reflect.ScalaSignature;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001I4q!\u0001\u0002\u0011\u0002G\u0005qAA\bUe\u00064XM]:bE2,g+[3x\u0015\t\u0019A!\u0001\u0006d_2dWm\u0019;j_:T\u0011!B\u0001\u0006g\u000e\fG.Y\u0002\u0001+\rA1#H\n\u0004\u0001%i\u0001C\u0001\u0006\f\u001b\u0005!\u0011B\u0001\u0007\u0005\u0005\u0019\te.\u001f*fMB)abD\t\u001d?5\t!!\u0003\u0002\u0011\u0005\t\u0019BK]1wKJ\u001c\u0018M\u00197f-&,w\u000fT5lKB\u0011!c\u0005\u0007\u0001\t\u0019!\u0002\u0001\"b\u0001+\t\t\u0011)\u0005\u0002\u00173A\u0011!bF\u0005\u00031\u0011\u0011qAT8uQ&tw\r\u0005\u0002\u000b5%\u00111\u0004\u0002\u0002\u0004\u0003:L\bC\u0001\n\u001e\t\u0019q\u0002\u0001\"b\u0001+\t!1i\u001c7m!\u0011q\u0001!\u0005\u000f\b\u000b\u0005\u0012\u0001\u0012\u0001\u0012\u0002\u001fQ\u0013\u0018M^3sg\u0006\u0014G.\u001a,jK^\u0004\"AD\u0012\u0007\u000b\u0005\u0011\u0001\u0012\u0001\u0013\u0014\u0005\rJ\u0001\"\u0002\u0014$\t\u00039\u0013A\u0002\u001fj]&$h\bF\u0001#\r\u0011I3\u0005\u0001\u0016\u0003\u00139{')^5mI\u0016\u0014XCA\u00164'\rA\u0013\u0002\f\t\u0005[A\u0012d#D\u0001/\u0015\ty#!A\u0004nkR\f'\r\\3\n\u0005Er#a\u0002\"vS2$WM\u001d\t\u0003%M\"Q\u0001\u0006\u0015C\u0002UAQA\n\u0015\u0005\u0002U\"\u0012A\u000e\t\u0004o!\u0012T\"A\u0012\t\u000beBC\u0011\u0001\u001e\u0002\u0011\u0011\u0002H.^:%KF$\"a\u000f\u001f\u000e\u0003!BQ!\u0010\u001dA\u0002I\nA!\u001a7f[\")q\b\u000bC\u0001\u0001\u0006A\u0011\u000e^3sCR|'/F\u0001B!\rq!IM\u0005\u0003\u0007\n\u0011\u0001\"\u0013;fe\u0006$xN\u001d\u0005\u0006\u000b\"\"\tAR\u0001\u0007e\u0016\u001cX\u000f\u001c;\u0015\u0003YAQ\u0001\u0013\u0015\u0005\u0002%\u000bQa\u00197fCJ$\u0012A\u0013\t\u0003\u0015-K!\u0001\u0014\u0003\u0003\tUs\u0017\u000e^\u0003\u0005=\r\u0002a\nM\u0002P)F\u0003BA\u0004\u0001Q'B\u0011!#\u0015\u0003\n%6\u000b\t\u0011!A\u0003\u0002U\u00111a\u0018\u00132!\t\u0011B\u000bB\u0005V\u001b\u0006\u0005\t\u0011!B\u0001-\n\t1)\u0005\u0002\u0017/B\u0012\u0001\f\u0018\t\u0004\u001de[\u0016B\u0001.\u0003\u0005-!&/\u0019<feN\f'\r\\3\u0011\u0005IaF!C/_\u0003\u0003\u0005\tQ!\u0001\u0016\u0005\ryFE\r\u0003\n+6\u000b\t\u0011!A\u0003\u0002YCQ\u0001Y\u0012\u0005\u0004\u0005\fAbY1o\u0005VLG\u000e\u001a$s_6,\"AY6\u0016\u0003\r\u0004R\u0001Z4jU2l\u0011!\u001a\u0006\u0003M\n\tqaZ3oKJL7-\u0003\u0002iK\na1)\u00198Ck&dGM\u0012:p[B\u0011q'\u0014\t\u0003%-$Q\u0001F0C\u0002U\u0001BA\u0004\u0001k[B\u0012a\u000e\u001d\t\u0004\u001de{\u0007C\u0001\nq\t%\tx,!A\u0001\u0002\u000b\u0005QCA\u0002`IM\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableView.class */
public interface TraversableView<A, Coll> extends TraversableViewLike<A, Coll, TraversableView<A, Coll>> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/TraversableView$NoBuilder.class */
    public static class NoBuilder<A> implements Builder<A, Nothing$> {
        public NoBuilder() {
            Growable.Cclass.$init$(this);
            Builder.Cclass.$init$(this);
        }

        @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable
        public NoBuilder<A> $plus$eq(A a) {
            return this;
        }

        @Override // scala.collection.generic.Growable
        public Growable<A> $plus$eq(A a, A a2, Seq<A> seq) {
            Growable<A> $plus$plus$eq;
            $plus$plus$eq = $plus$eq((NoBuilder<A>) a).$plus$eq(a2).$plus$plus$eq(seq);
            return $plus$plus$eq;
        }

        @Override // scala.collection.generic.Growable
        public Growable<A> $plus$plus$eq(TraversableOnce<A> traversableOnce) {
            return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
        }

        @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
        public void clear() {
        }

        public Iterator<A> iterator() {
            return (Iterator<A>) Iterator$.MODULE$.empty();
        }

        @Override // scala.collection.mutable.Builder
        public <NewTo> Builder<A, NewTo> mapResult(Function1<Nothing$, NewTo> function1) {
            return Builder.Cclass.mapResult(this, function1);
        }

        @Override // scala.collection.mutable.Builder
        /* renamed from: result */
        public Nothing$ result2() {
            throw new UnsupportedOperationException("TraversableView.Builder.result");
        }

        @Override // scala.collection.mutable.Builder
        public void sizeHint(int i) {
            Builder.Cclass.sizeHint(this, i);
        }

        @Override // scala.collection.mutable.Builder
        public void sizeHint(TraversableLike<?, ?> traversableLike) {
            Builder.Cclass.sizeHint(this, traversableLike);
        }

        @Override // scala.collection.mutable.Builder
        public void sizeHint(TraversableLike<?, ?> traversableLike, int i) {
            Builder.Cclass.sizeHint(this, traversableLike, i);
        }

        @Override // scala.collection.mutable.Builder
        public void sizeHintBounded(int i, TraversableLike<?, ?> traversableLike) {
            Builder.Cclass.sizeHintBounded(this, i, traversableLike);
        }
    }
}
