package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.util.Log;
import com.google.android.play.core.internal.C15017ah;
import com.google.android.play.core.splitcompat.C15121q;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: com.google.android.play.core.splitinstall.z */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/z.class */
public final class C15176z {

    /* renamed from: a */
    private static AbstractC15136ab f55004a;

    private C15176z() {
    }

    /* renamed from: a */
    public static AbstractC15136ab m9334a(Context context) {
        AbstractC15136ab abstractC15136ab;
        synchronized (C15176z.class) {
            try {
                if (f55004a == null) {
                    C15167q c15167q = new C15167q(null);
                    c15167q.f54985a = new C15147am(C15121q.m9423a(context));
                    C15017ah.m9599a(c15167q.f54985a, C15147am.class);
                    f55004a = new C15168r(c15167q.f54985a);
                }
                abstractC15136ab = f55004a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC15136ab;
    }

    /* renamed from: a */
    public static C15173w m9331a(XmlPullParser xmlPullParser, C15172v c15172v) {
        String m9333a;
        while (xmlPullParser.next() != 1) {
            try {
                if (xmlPullParser.getEventType() == 2) {
                    if (xmlPullParser.getName().equals("splits")) {
                        while (xmlPullParser.next() != 3) {
                            if (xmlPullParser.getEventType() == 2) {
                                if (!xmlPullParser.getName().equals("module") || (m9333a = m9333a("name", xmlPullParser)) == null) {
                                    m9332a(xmlPullParser);
                                } else {
                                    while (xmlPullParser.next() != 3) {
                                        if (xmlPullParser.getEventType() == 2) {
                                            if (xmlPullParser.getName().equals("language")) {
                                                while (xmlPullParser.next() != 3) {
                                                    if (xmlPullParser.getEventType() == 2) {
                                                        if (xmlPullParser.getName().equals("entry")) {
                                                            String m9333a2 = m9333a("key", xmlPullParser);
                                                            String m9333a3 = m9333a("split", xmlPullParser);
                                                            m9332a(xmlPullParser);
                                                            if (m9333a2 != null && m9333a3 != null) {
                                                                if (!c15172v.f54996a.containsKey(m9333a2)) {
                                                                    c15172v.f54996a.put(m9333a2, new HashMap());
                                                                }
                                                                c15172v.f54996a.get(m9333a2).put(m9333a, m9333a3);
                                                            }
                                                        } else {
                                                            m9332a(xmlPullParser);
                                                        }
                                                    }
                                                }
                                            } else {
                                                m9332a(xmlPullParser);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        m9332a(xmlPullParser);
                    }
                }
            } catch (IOException | IllegalStateException | XmlPullParserException e) {
                Log.e("SplitInstall", "Error while parsing splits.xml", e);
                return null;
            }
        }
        return c15172v.m9342a();
    }

    /* renamed from: a */
    private static String m9333a(String str, XmlPullParser xmlPullParser) {
        for (int i = 0; i < xmlPullParser.getAttributeCount(); i++) {
            if (xmlPullParser.getAttributeName(i).equals(str)) {
                return xmlPullParser.getAttributeValue(i);
            }
        }
        return null;
    }

    /* renamed from: a */
    private static void m9332a(XmlPullParser xmlPullParser) throws IOException, XmlPullParserException {
        int i = 1;
        while (i != 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }
}
