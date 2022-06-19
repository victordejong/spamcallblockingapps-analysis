package com.applovin.impl.sdk.utils;

import android.support.p012v4.media.C0082b;
import android.util.Xml;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
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
/* renamed from: com.applovin.impl.sdk.utils.r */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/utils/r.class */
public class C1540r {

    /* renamed from: a */
    private final C1479t f5718a;

    /* renamed from: b */
    private Stack<C1542a> f5719b;

    /* renamed from: c */
    private StringBuilder f5720c;

    /* renamed from: d */
    private long f5721d;

    /* renamed from: e */
    private C1542a f5722e;

    /* renamed from: com.applovin.impl.sdk.utils.r$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/utils/r$a.class */
    public static class C1542a extends C1539q {
        public C1542a(String str, Map<String, String> map, C1539q c1539q) {
            super(str, map, c1539q);
        }

        /* renamed from: a */
        public void m4925a(C1539q c1539q) {
            if (c1539q != null) {
                this.f5714c.add(c1539q);
                return;
            }
            throw new IllegalArgumentException("None specified.");
        }

        /* renamed from: d */
        public void m4924d(String str) {
            this.f5713b = str;
        }
    }

    public C1540r(C1408l c1408l) {
        if (c1408l != null) {
            this.f5718a = c1408l.m5542A();
            return;
        }
        throw new IllegalArgumentException("No sdk specified.");
    }

    /* renamed from: a */
    public static C1539q m4931a(String str, C1408l c1408l) throws SAXException {
        return new C1540r(c1408l).m4932a(str);
    }

    /* renamed from: a */
    public Map<String, String> m4930a(Attributes attributes) {
        if (attributes != null) {
            int length = attributes.getLength();
            HashMap hashMap = new HashMap(length);
            for (int i = 0; i < length; i++) {
                hashMap.put(attributes.getQName(i), attributes.getValue(i));
            }
            return hashMap;
        }
        return Collections.emptyMap();
    }

    /* renamed from: a */
    public C1539q m4932a(String str) throws SAXException {
        if (str != null) {
            this.f5720c = new StringBuilder();
            this.f5719b = new Stack<>();
            this.f5722e = null;
            Xml.parse(str, new ContentHandler() { // from class: com.applovin.impl.sdk.utils.r.1
                @Override // org.xml.sax.ContentHandler
                public void characters(char[] cArr, int i, int i2) {
                    String trim = new String(Arrays.copyOfRange(cArr, i, i2)).trim();
                    if (StringUtils.isValidString(trim)) {
                        C1540r.this.f5720c.append(trim);
                    }
                }

                @Override // org.xml.sax.ContentHandler
                public void endDocument() {
                    long seconds = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
                    long j = C1540r.this.f5721d;
                    C1479t c1479t = C1540r.this.f5718a;
                    c1479t.m5116b("XmlParser", "Finished parsing in " + (seconds - j) + " seconds");
                }

                @Override // org.xml.sax.ContentHandler
                public void endElement(String str2, String str3, String str4) {
                    C1540r c1540r = C1540r.this;
                    c1540r.f5722e = (C1542a) c1540r.f5719b.pop();
                    C1540r.this.f5722e.m4924d(C1540r.this.f5720c.toString().trim());
                    C1540r.this.f5720c.setLength(0);
                }

                @Override // org.xml.sax.ContentHandler
                public void endPrefixMapping(String str2) {
                }

                @Override // org.xml.sax.ContentHandler
                public void ignorableWhitespace(char[] cArr, int i, int i2) {
                }

                @Override // org.xml.sax.ContentHandler
                public void processingInstruction(String str2, String str3) {
                }

                @Override // org.xml.sax.ContentHandler
                public void setDocumentLocator(Locator locator) {
                }

                @Override // org.xml.sax.ContentHandler
                public void skippedEntity(String str2) {
                }

                @Override // org.xml.sax.ContentHandler
                public void startDocument() {
                    C1540r.this.f5718a.m5116b("XmlParser", "Begin parsing...");
                    C1540r.this.f5721d = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
                }

                @Override // org.xml.sax.ContentHandler
                public void startElement(String str2, String str3, String str4, Attributes attributes) throws SAXException {
                    C1542a c1542a = null;
                    try {
                        if (!C1540r.this.f5719b.isEmpty()) {
                            c1542a = (C1542a) C1540r.this.f5719b.peek();
                        }
                        C1542a c1542a2 = new C1542a(str3, C1540r.this.m4930a(attributes), c1542a);
                        if (c1542a != null) {
                            c1542a.m4925a(c1542a2);
                        }
                        C1540r.this.f5719b.push(c1542a2);
                    } catch (Exception e) {
                        C1540r.this.f5718a.m5115b("XmlParser", C0082b.m8755g("Unable to process element <", str3, ">"), e);
                        throw new SAXException("Failed to start element", e);
                    }
                }

                @Override // org.xml.sax.ContentHandler
                public void startPrefixMapping(String str2, String str3) {
                }
            });
            C1542a c1542a = this.f5722e;
            if (c1542a == null) {
                throw new SAXException("Unable to parse XML into node");
            }
            return c1542a;
        }
        throw new IllegalArgumentException("Unable to parse. No XML specified.");
    }
}
