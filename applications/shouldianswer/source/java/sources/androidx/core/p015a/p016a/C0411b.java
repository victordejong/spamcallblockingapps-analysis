package androidx.core.p015a.p016a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.core.a.a.b */
/* loaded from: classes-dex2jar.jar:androidx/core/a/a/b.class */
public final class C0411b {

    /* renamed from: a */
    private final Shader f1550a;

    /* renamed from: b */
    private final ColorStateList f1551b;

    /* renamed from: c */
    private int f1552c;

    private C0411b(Shader shader, ColorStateList colorStateList, int i) {
        this.f1550a = shader;
        this.f1551b = colorStateList;
        this.f1552c = i;
    }

    /* renamed from: a */
    public static C0411b m6738a(int i) {
        return new C0411b(null, null, i);
    }

    /* renamed from: a */
    static C0411b m6737a(ColorStateList colorStateList) {
        return new C0411b(null, colorStateList, colorStateList.getDefaultColor());
    }

    /* renamed from: a */
    public static C0411b m6736a(Resources resources, int i, Resources.Theme theme) {
        try {
            return m6731b(resources, i, theme);
        } catch (Exception e) {
            Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e);
            return null;
        }
    }

    /* renamed from: a */
    static C0411b m6735a(Shader shader) {
        return new C0411b(shader, null, 0);
    }

    /* renamed from: b */
    private static C0411b m6731b(Resources resources, int i, Resources.Theme theme) {
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
            boolean z = true;
            int hashCode = name.hashCode();
            if (hashCode != 89650992) {
                if (hashCode == 1191572447 && name.equals("selector")) {
                    z = false;
                }
            } else if (name.equals("gradient")) {
                z = true;
            }
            if (!z) {
                return m6737a(C0410a.m6741a(resources, xml, asAttributeSet, theme));
            }
            if (z) {
                return m6735a(C0417d.m6708a(resources, xml, asAttributeSet, theme));
            }
            throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: a */
    public Shader m6739a() {
        return this.f1550a;
    }

    /* renamed from: a */
    public boolean m6734a(int[] iArr) {
        boolean z;
        ColorStateList colorStateList;
        int colorForState;
        if (!m6729d() || (colorForState = (colorStateList = this.f1551b).getColorForState(iArr, colorStateList.getDefaultColor())) == this.f1552c) {
            z = false;
        } else {
            z = true;
            this.f1552c = colorForState;
        }
        return z;
    }

    /* renamed from: b */
    public int m6733b() {
        return this.f1552c;
    }

    /* renamed from: b */
    public void m6732b(int i) {
        this.f1552c = i;
    }

    /* renamed from: c */
    public boolean m6730c() {
        return this.f1550a != null;
    }

    /* renamed from: d */
    public boolean m6729d() {
        ColorStateList colorStateList;
        return this.f1550a == null && (colorStateList = this.f1551b) != null && colorStateList.isStateful();
    }

    /* renamed from: e */
    public boolean m6728e() {
        return m6730c() || this.f1552c != 0;
    }
}
