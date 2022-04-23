package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.util.Log;
import com.google.android.play.core.internal.ah;
import com.google.android.play.core.splitcompat.q;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/z.class */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    private static ab f31557a;

    private z() {
    }

    public static ab a(Context context) {
        ab abVar;
        synchronized (z.class) {
            try {
                if (f31557a == null) {
                    q qVar = new q(null);
                    qVar.f31544a = new am(q.a(context));
                    ah.a(qVar.f31544a, am.class);
                    f31557a = new r(qVar.f31544a);
                }
                abVar = f31557a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return abVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static w a(XmlPullParser xmlPullParser, v vVar) {
        String a2;
        while (xmlPullParser.next() != 1) {
            try {
                if (xmlPullParser.getEventType() == 2) {
                    if (xmlPullParser.getName().equals("splits")) {
                        while (xmlPullParser.next() != 3) {
                            if (xmlPullParser.getEventType() == 2) {
                                if (!xmlPullParser.getName().equals("module") || (a2 = a("name", xmlPullParser)) == null) {
                                    a(xmlPullParser);
                                } else {
                                    while (xmlPullParser.next() != 3) {
                                        if (xmlPullParser.getEventType() == 2) {
                                            if (xmlPullParser.getName().equals("language")) {
                                                while (xmlPullParser.next() != 3) {
                                                    if (xmlPullParser.getEventType() == 2) {
                                                        if (xmlPullParser.getName().equals("entry")) {
                                                            String a3 = a("key", xmlPullParser);
                                                            String a4 = a("split", xmlPullParser);
                                                            a(xmlPullParser);
                                                            if (!(a3 == null || a4 == null)) {
                                                                if (!vVar.f31549a.containsKey(a3)) {
                                                                    vVar.f31549a.put(a3, new HashMap());
                                                                }
                                                                vVar.f31549a.get(a3).put(a2, a4);
                                                            }
                                                        } else {
                                                            a(xmlPullParser);
                                                        }
                                                    }
                                                }
                                            } else {
                                                a(xmlPullParser);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        a(xmlPullParser);
                    }
                }
            } catch (IOException | IllegalStateException | XmlPullParserException e) {
                Log.e("SplitInstall", "Error while parsing splits.xml", e);
                return null;
            }
        }
        return vVar.a();
    }

    private static String a(String str, XmlPullParser xmlPullParser) {
        for (int i = 0; i < xmlPullParser.getAttributeCount(); i++) {
            if (xmlPullParser.getAttributeName(i).equals(str)) {
                return xmlPullParser.getAttributeValue(i);
            }
        }
        return null;
    }

    private static void a(XmlPullParser xmlPullParser) throws IOException, XmlPullParserException {
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
