package com.amazonaws.transform;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:com/amazonaws/transform/StaxUnmarshallerContext.class */
public class StaxUnmarshallerContext {

    /* renamed from: a */
    public final Deque<String> f12479a;

    /* renamed from: b */
    private int f12480b;

    /* renamed from: c */
    private final XmlPullParser f12481c;

    /* renamed from: d */
    private String f12482d;

    /* renamed from: e */
    private Map<String, String> f12483e;

    /* renamed from: f */
    private List<MetadataExpression> f12484f;

    /* renamed from: g */
    private final Map<String, String> f12485g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression.class */
    public static class MetadataExpression {

        /* renamed from: a */
        public String f12486a;

        /* renamed from: b */
        public int f12487b;

        /* renamed from: c */
        public String f12488c;

        public MetadataExpression(String str, int i, String str2) {
            this.f12486a = str;
            this.f12487b = i;
            this.f12488c = str2;
        }
    }

    public StaxUnmarshallerContext(XmlPullParser xmlPullParser) {
        this(xmlPullParser, null);
    }

    public StaxUnmarshallerContext(XmlPullParser xmlPullParser, Map<String, String> map) {
        this.f12479a = new LinkedList();
        this.f12482d = "";
        this.f12483e = new HashMap();
        this.f12484f = new ArrayList();
        this.f12481c = xmlPullParser;
        this.f12485g = map;
    }

    /* renamed from: e */
    private void m38283e() {
        int i = this.f12480b;
        if (i != 2) {
            if (i != 3) {
                return;
            }
            this.f12479a.pop();
            this.f12482d = this.f12479a.isEmpty() ? "" : this.f12479a.peek();
            return;
        }
        String str = this.f12482d + "/" + this.f12481c.getName();
        this.f12482d = str;
        this.f12479a.push(str);
    }

    /* renamed from: a */
    public final String m38288a() throws XmlPullParserException, IOException {
        String nextText = this.f12481c.nextText();
        if (this.f12481c.getEventType() != 3) {
            this.f12481c.next();
        }
        this.f12480b = this.f12481c.getEventType();
        m38283e();
        return nextText;
    }

    /* renamed from: a */
    public final boolean m38287a(String str, int i) {
        if (".".equals(str)) {
            return true;
        }
        int i2 = i;
        int i3 = -1;
        while (true) {
            int indexOf = str.indexOf("/", i3 + 1);
            if (indexOf < 0) {
                break;
            }
            i3 = indexOf;
            if (str.charAt(indexOf + 1) != '@') {
                i2++;
                i3 = indexOf;
            }
        }
        return m38286b() == i2 && this.f12482d.endsWith("/".concat(String.valueOf(str)));
    }

    /* renamed from: b */
    public final int m38286b() {
        return this.f12479a.size();
    }

    /* renamed from: c */
    public final boolean m38285c() {
        return this.f12480b == 0;
    }

    /* renamed from: d */
    public final int m38284d() throws XmlPullParserException, IOException {
        int next = this.f12481c.next();
        this.f12480b = next;
        if (next == 4) {
            this.f12480b = this.f12481c.next();
        }
        m38283e();
        if (this.f12480b == 2) {
            Iterator<MetadataExpression> it2 = this.f12484f.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                MetadataExpression next2 = it2.next();
                if (m38287a(next2.f12486a, next2.f12487b)) {
                    this.f12483e.put(next2.f12488c, m38288a());
                    break;
                }
            }
        }
        return this.f12480b;
    }
}
