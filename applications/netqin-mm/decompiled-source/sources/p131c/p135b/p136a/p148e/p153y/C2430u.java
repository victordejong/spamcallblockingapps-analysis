package p131c.p135b.p136a.p148e.p153y;

import android.util.Xml;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.TimeUnit;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
/* renamed from: c.b.a.e.y.u */
/* loaded from: classes-dex2jar.jar:c/b/a/e/y/u.class */
public class C2430u {

    /* renamed from: a */
    public final C2374t f9359a;

    /* renamed from: b */
    public Stack<C2432b> f9360b;

    /* renamed from: c */
    public StringBuilder f9361c;

    /* renamed from: d */
    public long f9362d;

    /* renamed from: e */
    public C2432b f9363e;

    /* renamed from: c.b.a.e.y.u$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/u$a.class */
    public class C2431a implements ContentHandler {
        public C2431a() {
        }

        @Override // org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i, int i2) {
            String trim = new String(Arrays.copyOfRange(cArr, i, i2)).trim();
            if (C2422o.m29851b(trim)) {
                C2430u.this.f9361c.append(trim);
            }
        }

        @Override // org.xml.sax.ContentHandler
        public void endDocument() {
            long seconds = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
            long j = C2430u.this.f9362d;
            C2374t tVar = C2430u.this.f9359a;
            tVar.m30044b("XmlParser", "Finished parsing in " + (seconds - j) + " seconds");
        }

        @Override // org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) {
            C2430u uVar = C2430u.this;
            uVar.f9363e = (C2432b) uVar.f9360b.pop();
            C2430u.this.f9363e.m29747d(C2430u.this.f9361c.toString().trim());
            C2430u.this.f9361c.setLength(0);
        }

        @Override // org.xml.sax.ContentHandler
        public void endPrefixMapping(String str) {
        }

        @Override // org.xml.sax.ContentHandler
        public void ignorableWhitespace(char[] cArr, int i, int i2) {
        }

        @Override // org.xml.sax.ContentHandler
        public void processingInstruction(String str, String str2) {
        }

        @Override // org.xml.sax.ContentHandler
        public void setDocumentLocator(Locator locator) {
        }

        @Override // org.xml.sax.ContentHandler
        public void skippedEntity(String str) {
        }

        @Override // org.xml.sax.ContentHandler
        public void startDocument() {
            C2430u.this.f9359a.m30044b("XmlParser", "Begin parsing...");
            C2430u.this.f9362d = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
        }

        @Override // org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            C2432b bVar = null;
            try {
                if (!C2430u.this.f9360b.isEmpty()) {
                    bVar = (C2432b) C2430u.this.f9360b.peek();
                }
                C2432b bVar2 = new C2432b(str2, C2430u.this.m29753a(attributes), bVar);
                if (bVar != null) {
                    bVar.m29748a(bVar2);
                }
                C2430u.this.f9360b.push(bVar2);
            } catch (Exception e) {
                C2374t tVar = C2430u.this.f9359a;
                tVar.m30043b("XmlParser", "Unable to process element <" + str2 + ">", e);
                throw new SAXException("Failed to start element", e);
            }
        }

        @Override // org.xml.sax.ContentHandler
        public void startPrefixMapping(String str, String str2) {
        }
    }

    /* renamed from: c.b.a.e.y.u$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/u$b.class */
    public static class C2432b extends C2429t {
        public C2432b(String str, Map<String, String> map, C2429t tVar) {
            super(str, map, tVar);
        }

        /* renamed from: a */
        public void m29748a(C2429t tVar) {
            if (tVar != null) {
                this.f9358d.add(tVar);
                return;
            }
            throw new IllegalArgumentException("None specified.");
        }

        /* renamed from: d */
        public void m29747d(String str) {
            this.f9357c = str;
        }
    }

    public C2430u(C2341l lVar) {
        if (lVar != null) {
            this.f9359a = lVar.m30262d0();
            return;
        }
        throw new IllegalArgumentException("No sdk specified.");
    }

    /* renamed from: a */
    public static C2429t m29754a(String str, C2341l lVar) throws SAXException {
        return new C2430u(lVar).m29755a(str);
    }

    /* renamed from: a */
    public C2429t m29755a(String str) throws SAXException {
        if (str != null) {
            this.f9361c = new StringBuilder();
            this.f9360b = new Stack<>();
            this.f9363e = null;
            Xml.parse(str, new C2431a());
            C2432b bVar = this.f9363e;
            if (bVar != null) {
                return bVar;
            }
            throw new SAXException("Unable to parse XML into node");
        }
        throw new IllegalArgumentException("Unable to parse. No XML specified.");
    }

    /* renamed from: a */
    public final Map<String, String> m29753a(Attributes attributes) {
        if (attributes == null) {
            return Collections.emptyMap();
        }
        int length = attributes.getLength();
        HashMap hashMap = new HashMap(length);
        for (int i = 0; i < length; i++) {
            hashMap.put(attributes.getQName(i), attributes.getValue(i));
        }
        return hashMap;
    }
}
