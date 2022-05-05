package zendesk.support;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SimpleArticle.class */
public class SimpleArticle implements Serializable {

    /* renamed from: id */
    private Long f1853id;
    private String title;

    public SimpleArticle(Long l, String str) {
        this.f1853id = l;
        this.title = str;
    }

    public Long getId() {
        return this.f1853id;
    }

    public String getTitle() {
        return this.title;
    }
}
