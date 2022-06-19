package scala.text;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.runtime.AbstractFunction2;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/text/DocNest$.class */
public final class DocNest$ extends AbstractFunction2<Object, Document, DocNest> implements Serializable {
    public static final DocNest$ MODULE$ = null;

    static {
        new DocNest$();
    }

    private DocNest$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.Function2
    public /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return apply(BoxesRunTime.unboxToInt(obj), (Document) obj2);
    }

    public DocNest apply(int i, Document document) {
        return new DocNest(i, document);
    }

    @Override // scala.runtime.AbstractFunction2, scala.Function2
    public final String toString() {
        return "DocNest";
    }

    public Option<Tuple2<Object, Document>> unapply(DocNest docNest) {
        return docNest == null ? None$.MODULE$ : new Some(new Tuple2(BoxesRunTime.boxToInteger(docNest.indent()), docNest.doc()));
    }
}
