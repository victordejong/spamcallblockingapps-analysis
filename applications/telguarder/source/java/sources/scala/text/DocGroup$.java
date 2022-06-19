package scala.text;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/text/DocGroup$.class */
public final class DocGroup$ extends AbstractFunction1<Document, DocGroup> implements Serializable {
    public static final DocGroup$ MODULE$ = null;

    static {
        new DocGroup$();
    }

    private DocGroup$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public DocGroup apply(Document document) {
        return new DocGroup(document);
    }

    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public final String toString() {
        return "DocGroup";
    }

    public Option<Document> unapply(DocGroup docGroup) {
        return docGroup == null ? None$.MODULE$ : new Some(docGroup.doc());
    }
}
