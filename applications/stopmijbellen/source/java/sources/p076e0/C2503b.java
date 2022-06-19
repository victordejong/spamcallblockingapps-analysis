package p076e0;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: e0.b */
/* loaded from: classes-dex2jar.jar:e0/b.class */
public final class C2503b {

    /* renamed from: a */
    public static final ThreadLocal<TypedValue> f8758a = new ThreadLocal<>();

    /* renamed from: a */
    public static ColorStateList m3505a(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return m3504b(resources, xmlPullParser, asAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0500  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0534  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x056e  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0208 A[EDGE_INSN: B:165:0x0208->B:68:0x0208 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0263  */
    /* JADX WARN: Type inference failed for: r0v29, types: [java.lang.Object, int[], int[][]] */
    /* JADX WARN: Type inference failed for: r0v74, types: [int[][]] */
    /* JADX WARN: Type inference failed for: r0v84, types: [java.lang.Object[], java.lang.Object] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.res.ColorStateList m3504b(android.content.res.Resources r6, org.xmlpull.v1.XmlPullParser r7, android.util.AttributeSet r8, android.content.res.Resources.Theme r9) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 1568
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p076e0.C2503b.m3504b(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):android.content.res.ColorStateList");
    }
}
