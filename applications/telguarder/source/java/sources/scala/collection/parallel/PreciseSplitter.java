package scala.collection.parallel;

import scala.collection.Seq;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001E2q!\u0001\u0002\u0011\u0002G\u0005\u0011BA\bQe\u0016\u001c\u0017n]3Ta2LG\u000f^3s\u0015\t\u0019A!\u0001\u0005qCJ\fG\u000e\\3m\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001+\tQQcE\u0002\u0001\u0017=\u0001\"\u0001D\u0007\u000e\u0003\u0019I!A\u0004\u0004\u0003\r\u0005s\u0017PU3g!\r\u0001\u0012cE\u0007\u0002\u0005%\u0011!C\u0001\u0002\t'Bd\u0017\u000e\u001e;feB\u0011A#\u0006\u0007\u0001\t\u00191\u0002\u0001\"b\u0001/\t\tA+\u0005\u0002\u00197A\u0011A\"G\u0005\u00035\u0019\u0011qAT8uQ&tw\r\u0005\u0002\r9%\u0011QD\u0002\u0002\u0004\u0003:L\b\"B\u0010\u0001\r\u0003\u0001\u0013A\u00029ta2LG\u000f\u0006\u0002\"MA\u0019!eI\u0013\u000e\u0003\u0011I!\u0001\n\u0003\u0003\u0007M+\u0017\u000fE\u0002\u0011\u0001MAQa\n\u0010A\u0002!\nQa]5{KN\u00042\u0001D\u0015,\u0013\tQcA\u0001\u0006=e\u0016\u0004X-\u0019;fIz\u0002\"\u0001\u0004\u0017\n\u000552!aA%oi\")q\u0006\u0001D\u0001a\u0005)1\u000f\u001d7jiV\t\u0011\u0005")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/PreciseSplitter.class */
public interface PreciseSplitter<T> extends Splitter<T> {
    Seq<PreciseSplitter<T>> psplit(Seq<Object> seq);

    @Override // scala.collection.parallel.Splitter
    Seq<PreciseSplitter<T>> split();
}
