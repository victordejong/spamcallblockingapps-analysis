package com.explorestack.iab.vast.tags;

import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/a.class */
public class a extends r {

    /* renamed from: a  reason: collision with root package name */
    public List<h> f19288a;

    /* renamed from: b  reason: collision with root package name */
    public List<i> f19289b;

    /* renamed from: c  reason: collision with root package name */
    public List<String> f19290c;

    /* renamed from: d  reason: collision with root package name */
    public List<String> f19291d;
    private b e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<h> a_(XmlPullParser xmlPullParser) throws Exception {
        xmlPullParser.require(2, null, "Creatives");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (a(xmlPullParser.getName(), "Creative")) {
                    arrayList.add(new h(xmlPullParser));
                } else {
                    f(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Creatives");
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<i> b(XmlPullParser xmlPullParser) throws Exception {
        xmlPullParser.require(2, null, "Extensions");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (!a(xmlPullParser.getName(), "Extension")) {
                    f(xmlPullParser);
                } else if (a(new i(xmlPullParser).c("type"), "appodeal")) {
                    arrayList.add(new d(xmlPullParser));
                } else {
                    f(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Extensions");
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(b bVar) {
        this.e = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        if (this.f19290c == null) {
            this.f19290c = new ArrayList();
        }
        this.f19290c.add(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(String str) {
        if (this.f19291d == null) {
            this.f19291d = new ArrayList();
        }
        this.f19291d.add(str);
    }
}
