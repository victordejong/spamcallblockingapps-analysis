package p000;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: dc0 */
/* loaded from: classes-dex2jar.jar:dc0.class */
public class dc0 {

    /* renamed from: a */
    public static final Map<String, Class<? extends Drawable>> f5814a = new HashMap();

    /* renamed from: b */
    public static final AbstractC1288b f5815b;

    /* renamed from: dc0$b */
    /* loaded from: classes-dex2jar.jar:dc0$b.class */
    public interface AbstractC1288b {
        /* renamed from: a */
        void m2700a(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);

        /* renamed from: b */
        void m2699b(Drawable drawable, Resources.Theme theme);

        /* renamed from: c */
        boolean m2698c(Drawable drawable);
    }

    static {
        new C1344e4();
        new C1344e4();
        m2701d(ic0.class, "ripple");
        f5815b = d80.f5791a ? new c() : new a();
    }

    /* renamed from: a */
    public static void m2704a(Drawable drawable, Resources.Theme theme) {
        f5815b.m2699b(drawable, theme);
    }

    /* renamed from: b */
    public static boolean m2703b(Drawable drawable) {
        return f5815b.m2698c(drawable);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0061  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.drawable.Drawable m2702c(android.content.res.Resources r7, org.xmlpull.v1.XmlPullParser r8, android.util.AttributeSet r9, android.content.res.Resources.Theme r10) {
        /*
            r0 = r8
            java.lang.String r0 = r0.getName()
            r11 = r0
            java.util.Map<java.lang.String, java.lang.Class<? extends android.graphics.drawable.Drawable>> r0 = p000.dc0.f5814a     // Catch: java.lang.Exception -> L72
            r1 = r11
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Exception -> L72
            java.lang.Class r0 = (java.lang.Class) r0     // Catch: java.lang.Exception -> L72
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L2d
            r0 = r12
            java.lang.Object r0 = r0.newInstance()     // Catch: java.lang.Exception -> L72
            r12 = r0
        L23:
            r0 = r12
            android.graphics.drawable.Drawable r0 = (android.graphics.drawable.Drawable) r0     // Catch: java.lang.Exception -> L72
            r12 = r0
            goto L47
        L2d:
            r0 = r11
            r1 = 46
            int r0 = r0.indexOf(r1)     // Catch: java.lang.Exception -> L72
            if (r0 <= 0) goto L44
            r0 = r11
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.Exception -> L72
            java.lang.Object r0 = r0.newInstance()     // Catch: java.lang.Exception -> L72
            r12 = r0
            goto L23
        L44:
            r0 = 0
            r12 = r0
        L47:
            r0 = r12
            if (r0 != 0) goto L61
            boolean r0 = p000.d80.f5791a
            if (r0 == 0) goto L5a
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            android.graphics.drawable.Drawable r0 = android.graphics.drawable.Drawable.createFromXmlInner(r0, r1, r2, r3)
            return r0
        L5a:
            r0 = r7
            r1 = r8
            r2 = r9
            android.graphics.drawable.Drawable r0 = android.graphics.drawable.Drawable.createFromXmlInner(r0, r1, r2)
            return r0
        L61:
            dc0$b r0 = p000.dc0.f5815b
            r1 = r12
            r2 = r7
            r3 = r8
            r4 = r9
            r5 = r10
            r0.m2700a(r1, r2, r3, r4, r5)
            r0 = r12
            return r0
        L72:
            r7 = move-exception
            org.xmlpull.v1.XmlPullParserException r0 = new org.xmlpull.v1.XmlPullParserException
            r1 = r0
            java.lang.String r2 = "Error while inflating drawable resource"
            r3 = r8
            r4 = r7
            r1.<init>(r2, r3, r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.dc0.m2702c(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):android.graphics.drawable.Drawable");
    }

    /* renamed from: d */
    public static void m2701d(Class<? extends Drawable> cls, String str) {
        if (str != null && cls != null) {
            f5814a.put(str, cls);
            return;
        }
        throw new NullPointerException("Class: " + cls + ". Name: " + str);
    }
}
