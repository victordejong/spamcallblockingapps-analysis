package androidx.appcompat.app;

import android.util.AttributeSet;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.Deque;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.appcompat.app.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/f.class */
class C0154f {

    /* renamed from: a */
    private final Deque<WeakReference<XmlPullParser>> f446a = new ArrayDeque();

    /* renamed from: b */
    private static boolean m35498b(XmlPullParser xmlPullParser) {
        boolean z = true;
        if (xmlPullParser != null) {
            z = true;
            try {
                if (xmlPullParser.getEventType() != 3) {
                    z = xmlPullParser.getEventType() == 1;
                }
            } catch (XmlPullParserException e) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: c */
    private static XmlPullParser m35497c(Deque<WeakReference<XmlPullParser>> deque) {
        while (!deque.isEmpty()) {
            XmlPullParser xmlPullParser = deque.peek().get();
            if (!m35498b(xmlPullParser)) {
                return xmlPullParser;
            }
            deque.pop();
        }
        return null;
    }

    /* renamed from: d */
    private static boolean m35496d(XmlPullParser xmlPullParser, XmlPullParser xmlPullParser2) {
        if (xmlPullParser2 == null || xmlPullParser == xmlPullParser2) {
            return false;
        }
        try {
            if (xmlPullParser2.getEventType() != 2) {
                return false;
            }
            return "include".equals(xmlPullParser2.getName());
        } catch (XmlPullParserException e) {
            return false;
        }
    }

    /* renamed from: a */
    public boolean m35499a(AttributeSet attributeSet) {
        if (attributeSet instanceof XmlPullParser) {
            XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
            if (xmlPullParser.getDepth() != 1) {
                return false;
            }
            XmlPullParser m35497c = m35497c(this.f446a);
            this.f446a.push(new WeakReference<>(xmlPullParser));
            return m35496d(xmlPullParser, m35497c);
        }
        return false;
    }
}
