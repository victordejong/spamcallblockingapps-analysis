package scala.collection.parallel;

import scala.collection.Iterator;
import scala.collection.Seq;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001U2q!\u0001\u0002\u0011\u0002G\u0005\u0011B\u0001\u0005Ta2LG\u000f^3s\u0015\t\u0019A!\u0001\u0005qCJ\fG\u000e\\3m\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001+\tQQcE\u0002\u0001\u0017=\u0001\"\u0001D\u0007\u000e\u0003\u0019I!A\u0004\u0004\u0003\r\u0005s\u0017PU3g!\r\u0001\u0012cE\u0007\u0002\t%\u0011!\u0003\u0002\u0002\t\u0013R,'/\u0019;peB\u0011A#\u0006\u0007\u0001\t\u00191\u0002\u0001\"b\u0001/\t\tA+\u0005\u0002\u00197A\u0011A\"G\u0005\u00035\u0019\u0011qAT8uQ&tw\r\u0005\u0002\r9%\u0011QD\u0002\u0002\u0004\u0003:L\b\"B\u0010\u0001\r\u0003\u0001\u0013!B:qY&$X#A\u0011\u0011\u0007A\u0011C%\u0003\u0002$\t\t\u00191+Z9\u0011\u0007\u0015\u00021#D\u0001\u0003\u000f\u00159#\u0001#\u0001)\u0003!\u0019\u0006\u000f\\5ui\u0016\u0014\bCA\u0013*\r\u0015\t!\u0001#\u0001+'\tI3\u0002C\u0003-S\u0011\u0005Q&\u0001\u0004=S:LGO\u0010\u000b\u0002Q!)q&\u000bC\u0001a\u0005)Q-\u001c9usV\u0011\u0011\u0007N\u000b\u0002eA\u0019Q\u0005A\u001a\u0011\u0005Q!D!\u0002\f/\u0005\u00049\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/Splitter.class */
public interface Splitter<T> extends Iterator<T> {
    Seq<Splitter<T>> split();
}
