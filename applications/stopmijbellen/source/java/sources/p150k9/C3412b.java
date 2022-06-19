package p150k9;

import android.content.Context;
import android.util.Xml;
import it.gmariotti.changelibs.library.internal.ChangeLogException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p029c4.C0821e;
import p139j9.C3289a;
/* renamed from: k9.b */
/* loaded from: classes2-dex2jar.jar:k9/b.class */
public class C3412b extends AbstractC3411a {

    /* renamed from: e */
    public static List<String> f11450e = new C3413a();

    /* renamed from: c */
    public int f11451c;

    /* renamed from: d */
    public String f11452d;

    /* renamed from: k9.b$a */
    /* loaded from: classes2-dex2jar.jar:k9/b$a.class */
    public static final class C3413a extends ArrayList<String> {
        public C3413a() {
            add("changelogbug");
            add("changelogimprovement");
            add("changelogtext");
        }
    }

    public C3412b(Context context, int i) {
        super(context);
        this.f11451c = 2131755008;
        this.f11452d = null;
        this.f11451c = i;
    }

    public C3412b(Context context, String str) {
        super(context);
        this.f11451c = 2131755008;
        this.f11452d = null;
        this.f11452d = str;
    }

    /* renamed from: a */
    public C3289a m2326a() throws Exception {
        try {
            InputStream openStream = this.f11452d != null ? C0821e.m7333l(this.f11448a) ? new URL(this.f11452d).openStream() : null : this.f11448a.getResources().openRawResource(this.f11451c);
            if (openStream == null) {
                throw new ChangeLogException("Changelog.xml not found");
            }
            XmlPullParser newPullParser = Xml.newPullParser();
            newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
            newPullParser.setInput(openStream, null);
            newPullParser.nextTag();
            C3289a c3289a = new C3289a();
            m2325b(newPullParser, c3289a);
            openStream.close();
            return c3289a;
        } catch (IOException e) {
            throw e;
        } catch (XmlPullParserException e2) {
            throw e2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01ef A[SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m2325b(org.xmlpull.v1.XmlPullParser r6, p139j9.C3289a r7) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 509
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p150k9.C3412b.m2325b(org.xmlpull.v1.XmlPullParser, j9.a):void");
    }
}
