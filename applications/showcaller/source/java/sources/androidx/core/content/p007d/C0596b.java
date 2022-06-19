package androidx.core.content.p007d;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.core.content.d.b */
/* loaded from: classes-dex2jar.jar:androidx/core/content/d/b.class */
public final class C0596b {

    /* renamed from: a */
    private final Shader f2955a;

    /* renamed from: b */
    private final ColorStateList f2956b;

    /* renamed from: c */
    private int f2957c;

    private C0596b(Shader shader, ColorStateList colorStateList, int i) {
        this.f2955a = shader;
        this.f2956b = colorStateList;
        this.f2957c = i;
    }

    /* renamed from: a */
    private static C0596b m33315a(Resources resources, int i, Resources.Theme theme) {
        int next;
        XmlResourceParser xml = resources.getXml(i);
        AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
        do {
            next = xml.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            String name = xml.getName();
            name.hashCode();
            if (name.equals("gradient")) {
                return m33312d(C0602d.m33283b(resources, xml, asAttributeSet, theme));
            }
            if (name.equals("selector")) {
                return m33313c(C0595a.m33322b(resources, xml, asAttributeSet, theme));
            }
            throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: b */
    public static C0596b m33314b(int i) {
        return new C0596b(null, null, i);
    }

    /* renamed from: c */
    static C0596b m33313c(ColorStateList colorStateList) {
        return new C0596b(null, colorStateList, colorStateList.getDefaultColor());
    }

    /* renamed from: d */
    static C0596b m33312d(Shader shader) {
        return new C0596b(shader, null, 0);
    }

    /* renamed from: g */
    public static C0596b m33309g(Resources resources, int i, Resources.Theme theme) {
        try {
            return m33315a(resources, i, theme);
        } catch (Exception e) {
            Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e);
            return null;
        }
    }

    /* renamed from: e */
    public int m33311e() {
        return this.f2957c;
    }

    /* renamed from: f */
    public Shader m33310f() {
        return this.f2955a;
    }

    /* renamed from: h */
    public boolean m33308h() {
        return this.f2955a != null;
    }

    /* renamed from: i */
    public boolean m33307i() {
        ColorStateList colorStateList;
        return this.f2955a == null && (colorStateList = this.f2956b) != null && colorStateList.isStateful();
    }

    /* renamed from: j */
    public boolean m33306j(int[] iArr) {
        boolean z;
        ColorStateList colorStateList;
        int colorForState;
        if (!m33307i() || (colorForState = (colorStateList = this.f2956b).getColorForState(iArr, colorStateList.getDefaultColor())) == this.f2957c) {
            z = false;
        } else {
            z = true;
            this.f2957c = colorForState;
        }
        return z;
    }

    /* renamed from: k */
    public void m33305k(int i) {
        this.f2957c = i;
    }

    /* renamed from: l */
    public boolean m33304l() {
        return m33308h() || this.f2957c != 0;
    }
}
