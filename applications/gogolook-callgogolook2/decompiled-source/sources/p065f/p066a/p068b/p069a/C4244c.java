package p065f.p066a.p068b.p069a;

import android.content.ContentValues;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: f.a.b.a.c */
/* loaded from: classes-dex2jar.jar:f/a/b/a/c.class */
public class C4244c extends AbstractC4263n {

    /* renamed from: c */
    public final AbstractC4245a f10287c;

    /* renamed from: d */
    public final ContentValues f10288d = new ContentValues();

    /* renamed from: f.a.b.a.c$a */
    /* loaded from: classes-dex2jar.jar:f/a/b/a/c$a.class */
    public interface AbstractC4245a {
        /* renamed from: a */
        void mo29235a(ContentValues contentValues);
    }

    public C4244c(XmlPullParser xmlPullParser, AbstractC4245a aVar) {
        super(xmlPullParser);
        this.f10287c = aVar;
    }

    @Override // p065f.p066a.p068b.p069a.AbstractC4263n
    /* renamed from: a */
    public String mo29177a() {
        return "apns";
    }

    @Override // p065f.p066a.p068b.p069a.AbstractC4263n
    /* renamed from: c */
    public void mo29173c() throws IOException, XmlPullParserException {
        if ("apn".equals(this.f10330b.getName())) {
            this.f10288d.clear();
            for (int i = 0; i < this.f10330b.getAttributeCount(); i++) {
                String attributeName = this.f10330b.getAttributeName(i);
                if (attributeName != null) {
                    this.f10288d.put(attributeName, this.f10330b.getAttributeValue(i));
                }
            }
            AbstractC4245a aVar = this.f10287c;
            if (aVar != null) {
                aVar.mo29235a(this.f10288d);
            }
        }
        if (this.f10330b.next() != 3) {
            throw new XmlPullParserException("Expecting end tag @" + m29172d());
        }
    }
}
