package p1727n3.p1807k.p1809b.p1811d;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: n3.k.b.d.a */
/* loaded from: classes-dex2jar.jar:n3/k/b/d/a.class */
public final class C26481a {

    /* renamed from: a */
    public static final ThreadLocal<TypedValue> f74248a = new ThreadLocal<>();

    /* renamed from: a */
    public static ColorStateList m1771a(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return m1770b(resources, xmlPullParser, asAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01fd A[EDGE_INSN: B:88:0x01fd->B:60:0x01fd ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v27, types: [int[], int[][], java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v86, types: [int[][]] */
    /* JADX WARN: Type inference failed for: r0v94, types: [java.lang.Object[]] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.res.ColorStateList m1770b(android.content.res.Resources r6, org.xmlpull.v1.XmlPullParser r7, android.util.AttributeSet r8, android.content.res.Resources.Theme r9) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 793
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1807k.p1809b.p1811d.C26481a.m1770b(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):android.content.res.ColorStateList");
    }
}
