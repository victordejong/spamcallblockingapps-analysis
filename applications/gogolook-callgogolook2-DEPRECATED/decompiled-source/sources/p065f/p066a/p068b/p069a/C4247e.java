package p065f.p066a.p068b.p069a;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: f.a.b.a.e */
/* loaded from: classes-dex2jar.jar:f/a/b/a/e.class */
public class C4247e extends AbstractC4263n {

    /* renamed from: c */
    public final AbstractC4248a f10291c;

    /* renamed from: f.a.b.a.e$a */
    /* loaded from: classes-dex2jar.jar:f/a/b/a/e$a.class */
    public interface AbstractC4248a {
        /* renamed from: a */
        void mo29227a(String str, String str2, String str3);
    }

    public C4247e(XmlPullParser xmlPullParser, AbstractC4248a aVar) {
        super(xmlPullParser);
        this.f10291c = aVar;
    }

    @Override // p065f.p066a.p068b.p069a.AbstractC4263n
    /* renamed from: a */
    public String mo29177a() {
        return "mms_config";
    }

    @Override // p065f.p066a.p068b.p069a.AbstractC4263n
    /* renamed from: c */
    public void mo29173c() throws IOException, XmlPullParserException {
        String str = null;
        String attributeValue = this.f10330b.getAttributeValue(null, "name");
        String name = this.f10330b.getName();
        int next = this.f10330b.next();
        int i = next;
        if (next == 4) {
            str = this.f10330b.getText();
            i = this.f10330b.next();
        }
        if (i == 3) {
            AbstractC4248a aVar = this.f10291c;
            if (aVar != null) {
                aVar.mo29227a(name, attributeValue, str);
                return;
            }
            return;
        }
        throw new XmlPullParserException("Expecting end tag @" + m29172d());
    }
}
