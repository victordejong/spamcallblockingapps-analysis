package scala.collection.generic;

import scala.collection.mutable.Builder;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\r2q!\u0001\u0002\u0011\u0002G\u0005\u0011BA\u0007ICNtUm\u001e\"vS2$WM\u001d\u0006\u0003\u0007\u0011\tqaZ3oKJL7M\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!F\u0002\u000b5\u0005\u001a\"\u0001A\u0006\u0011\u00051iQ\"\u0001\u0004\n\u000591!aA!os\"1\u0001\u0003\u0001Q\u0007\u0012E\t!B\\3x\u0005VLG\u000eZ3s+\u0005\u0011\u0002\u0003B\n\u00171\u0001j\u0011\u0001\u0006\u0006\u0003+\u0011\tq!\\;uC\ndW-\u0003\u0002\u0018)\t9!)^5mI\u0016\u0014\bCA\r\u001b\u0019\u0001!aa\u0007\u0001\u0005\u0006\u0004a\"!A!\u0012\u0005uY\u0001C\u0001\u0007\u001f\u0013\tybAA\u0004O_RD\u0017N\\4\u0011\u0005e\tCA\u0002\u0012\u0001\t\u000b\u0007AD\u0001\u0003SKB\u0014\b")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/HasNewBuilder.class */
public interface HasNewBuilder<A, Repr> {
    Builder<A, Repr> newBuilder();
}
