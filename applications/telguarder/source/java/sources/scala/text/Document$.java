package scala.text;
/* loaded from: classes3-dex2jar.jar:scala/text/Document$.class */
public final class Document$ {
    public static final Document$ MODULE$ = null;

    static {
        new Document$();
    }

    private Document$() {
        MODULE$ = this;
    }

    /* renamed from: break */
    public DocBreak$ m6447break() {
        return DocBreak$.MODULE$;
    }

    public DocNil$ empty() {
        return DocNil$.MODULE$;
    }

    public Document group(Document document) {
        return new DocGroup(document);
    }

    public Document nest(int i, Document document) {
        return new DocNest(i, document);
    }

    public Document text(String str) {
        return new DocText(str);
    }
}
