package androidx.core.content.p003c;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.core.content.c.b */
/* loaded from: classes-dex2jar.jar:androidx/core/content/c/b.class */
public final class C0268b {

    /* renamed from: a */
    private final Shader f1670a;

    /* renamed from: b */
    private final ColorStateList f1671b;

    /* renamed from: c */
    private int f1672c;

    private C0268b(Shader shader, ColorStateList colorStateList, int i) {
        this.f1670a = shader;
        this.f1671b = colorStateList;
        this.f1672c = i;
    }

    /* renamed from: a */
    private static C0268b m13536a(Resources resources, int i, Resources.Theme theme) {
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
                return m13533d(C0272d.m13509b(resources, xml, asAttributeSet, theme));
            }
            if (name.equals("selector")) {
                return m13534c(C0267a.m13541b(resources, xml, asAttributeSet, theme));
            }
            throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: b */
    public static C0268b m13535b(int i) {
        return new C0268b(null, null, i);
    }

    /* renamed from: c */
    static C0268b m13534c(ColorStateList colorStateList) {
        return new C0268b(null, colorStateList, colorStateList.getDefaultColor());
    }

    /* renamed from: d */
    static C0268b m13533d(Shader shader) {
        return new C0268b(shader, null, 0);
    }

    /* renamed from: g */
    public static C0268b m13530g(Resources resources, int i, Resources.Theme theme) {
        try {
            return m13536a(resources, i, theme);
        } catch (Exception e) {
            Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e);
            return null;
        }
    }

    /* renamed from: e */
    public int m13532e() {
        return this.f1672c;
    }

    /* renamed from: f */
    public Shader m13531f() {
        return this.f1670a;
    }

    /* renamed from: h */
    public boolean m13529h() {
        return this.f1670a != null;
    }

    /* renamed from: i */
    public boolean m13528i() {
        ColorStateList colorStateList;
        return this.f1670a == null && (colorStateList = this.f1671b) != null && colorStateList.isStateful();
    }

    /* renamed from: j */
    public boolean m13527j(int[] iArr) {
        boolean z;
        ColorStateList colorStateList;
        int colorForState;
        if (!m13528i() || (colorForState = (colorStateList = this.f1671b).getColorForState(iArr, colorStateList.getDefaultColor())) == this.f1672c) {
            z = false;
        } else {
            z = true;
            this.f1672c = colorForState;
        }
        return z;
    }

    /* renamed from: k */
    public void m13526k(int i) {
        this.f1672c = i;
    }

    /* renamed from: l */
    public boolean m13525l() {
        return m13529h() || this.f1672c != 0;
    }
}
