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

    /* renamed from: a  reason: collision with root package name */
    public final Deque<String> f6891a;

    /* renamed from: b  reason: collision with root package name */
    private int f6892b;

    /* renamed from: c  reason: collision with root package name */
    private final XmlPullParser f6893c;

    /* renamed from: d  reason: collision with root package name */
    private String f6894d;
    private Map<String, String> e;
    private List<MetadataExpression> f;
    private final Map<String, String> g;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression.class */
    static class MetadataExpression {

        /* renamed from: a  reason: collision with root package name */
        public String f6895a;

        /* renamed from: b  reason: collision with root package name */
        public int f6896b;

        /* renamed from: c  reason: collision with root package name */
        public String f6897c;

        public MetadataExpression(String str, int i, String str2) {
            this.f6895a = str;
            this.f6896b = i;
            this.f6897c = str2;
        }
    }

    public StaxUnmarshallerContext(XmlPullParser xmlPullParser) {
        this(xmlPullParser, null);
    }

    public StaxUnmarshallerContext(XmlPullParser xmlPullParser, Map<String, String> map) {
        this.f6891a = new LinkedList();
        this.f6894d = "";
        this.e = new HashMap();
        this.f = new ArrayList();
        this.f6893c = xmlPullParser;
        this.g = map;
    }

    private void e() {
        int i = this.f6892b;
        if (i == 2) {
            String str = this.f6894d + "/" + this.f6893c.getName();
            this.f6894d = str;
            this.f6891a.push(str);
        } else if (i == 3) {
            this.f6891a.pop();
            this.f6894d = this.f6891a.isEmpty() ? "" : this.f6891a.peek();
        }
    }

    public final String a() throws XmlPullParserException, IOException {
        String nextText = this.f6893c.nextText();
        if (this.f6893c.getEventType() != 3) {
            this.f6893c.next();
        }
        this.f6892b = this.f6893c.getEventType();
        e();
        return nextText;
    }

    public final boolean a(String str, int i) {
        if (".".equals(str)) {
            return true;
        }
        int i2 = -1;
        int i3 = i;
        while (true) {
            int indexOf = str.indexOf("/", i2 + 1);
            if (indexOf < 0) {
                break;
            }
            i2 = indexOf;
            if (str.charAt(indexOf + 1) != '@') {
                i3++;
                i2 = indexOf;
            }
        }
        return b() == i3 && this.f6894d.endsWith("/".concat(String.valueOf(str)));
    }

    public final int b() {
        return this.f6891a.size();
    }

    public final boolean c() {
        return this.f6892b == 0;
    }

    public final int d() throws XmlPullParserException, IOException {
        int next = this.f6893c.next();
        this.f6892b = next;
        if (next == 4) {
            this.f6892b = this.f6893c.next();
        }
        e();
        if (this.f6892b == 2) {
            Iterator<MetadataExpression> it2 = this.f.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                MetadataExpression next2 = it2.next();
                if (a(next2.f6895a, next2.f6896b)) {
                    this.e.put(next2.f6897c, a());
                    break;
                }
            }
        }
        return this.f6892b;
    }
}
