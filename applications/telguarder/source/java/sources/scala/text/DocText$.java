package scala.text;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/text/DocText$.class */
public final class DocText$ extends AbstractFunction1<String, DocText> implements Serializable {
    public static final DocText$ MODULE$ = null;

    static {
        new DocText$();
    }

    private DocText$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public DocText apply(String str) {
        return new DocText(str);
    }

    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public final String toString() {
        return "DocText";
    }

    public Option<String> unapply(DocText docText) {
        return docText == null ? None$.MODULE$ : new Some(docText.txt());
    }
}
