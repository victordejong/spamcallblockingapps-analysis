package p065f.p066a.p068b.p069a;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: f.a.b.a.n */
/* loaded from: classes-dex2jar.jar:f/a/b/a/n.class */
public abstract class AbstractC4263n {

    /* renamed from: a */
    public final StringBuilder f10329a = new StringBuilder();

    /* renamed from: b */
    public final XmlPullParser f10330b;

    public AbstractC4263n(XmlPullParser xmlPullParser) {
        this.f10330b = xmlPullParser;
    }

    /* renamed from: b */
    public static String m29174b(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? Integer.toString(i) : "TEXT" : "END_TAG" : "START_TAG" : "END_DOCUMENT" : "START_DOCUMENT";
    }

    /* renamed from: a */
    public int m29176a(int i) throws XmlPullParserException, IOException {
        int next;
        do {
            next = this.f10330b.next();
            if (next == i) {
                break;
            }
        } while (next != 1);
        return next;
    }

    /* renamed from: a */
    public abstract String mo29177a();

    /* renamed from: b */
    public void m29175b() {
        int next;
        try {
            if (m29176a(2) != 2) {
                throw new XmlPullParserException("ApnsXmlProcessor: expecting start tag @" + m29172d());
            } else if (!mo29177a().equals(this.f10330b.getName())) {
                String str = "Carrier config does not start with " + mo29177a();
            } else {
                while (true) {
                    next = this.f10330b.next();
                    if (next != 4) {
                        if (next != 2) {
                            break;
                        }
                        mo29173c();
                    }
                }
                if (next != 3) {
                    throw new XmlPullParserException("Expecting start or end tag @" + m29172d());
                }
            }
        } catch (IOException | XmlPullParserException e) {
        }
    }

    /* renamed from: c */
    public abstract void mo29173c() throws IOException, XmlPullParserException;

    /* renamed from: d */
    public String m29172d() {
        this.f10329a.setLength(0);
        XmlPullParser xmlPullParser = this.f10330b;
        if (xmlPullParser == null) {
            return "Unknown";
        }
        try {
            int eventType = xmlPullParser.getEventType();
            this.f10329a.append(m29174b(eventType));
            if (eventType == 2 || eventType == 3 || eventType == 4) {
                StringBuilder sb = this.f10329a;
                sb.append('<');
                sb.append(this.f10330b.getName());
                for (int i = 0; i < this.f10330b.getAttributeCount(); i++) {
                    StringBuilder sb2 = this.f10329a;
                    sb2.append(' ');
                    sb2.append(this.f10330b.getAttributeName(i));
                    sb2.append('=');
                    sb2.append(this.f10330b.getAttributeValue(i));
                }
                this.f10329a.append("/>");
            }
            return this.f10329a.toString();
        } catch (XmlPullParserException e) {
            return "Unknown";
        }
    }
}
