package scala.text;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/text/DocCons$.class */
public final class DocCons$ extends AbstractFunction2<Document, Document, DocCons> implements Serializable {
    public static final DocCons$ MODULE$ = null;

    static {
        new DocCons$();
    }

    private DocCons$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public DocCons apply(Document document, Document document2) {
        return new DocCons(document, document2);
    }

    @Override // scala.runtime.AbstractFunction2, scala.Function2
    public final String toString() {
        return "DocCons";
    }

    public Option<Tuple2<Document, Document>> unapply(DocCons docCons) {
        return docCons == null ? None$.MODULE$ : new Some(new Tuple2(docCons.m14hd(), docCons.m13tl()));
    }
}
