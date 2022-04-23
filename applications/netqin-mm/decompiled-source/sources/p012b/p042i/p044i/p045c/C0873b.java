package p012b.p042i.p044i.p045c;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: b.i.i.c.b */
/* loaded from: classes-dex2jar.jar:b/i/i/c/b.class */
public final class C0873b {

    /* renamed from: a */
    public final Shader f4061a;

    /* renamed from: b */
    public final ColorStateList f4062b;

    /* renamed from: c */
    public int f4063c;

    public C0873b(Shader shader, ColorStateList colorStateList, int i) {
        this.f4061a = shader;
        this.f4062b = colorStateList;
        this.f4063c = i;
    }

    /* renamed from: a */
    public static C0873b m35672a(ColorStateList colorStateList) {
        return new C0873b(null, colorStateList, colorStateList.getDefaultColor());
    }

    /* renamed from: a */
    public static C0873b m35671a(Resources resources, int i, Resources.Theme theme) throws IOException, XmlPullParserException {
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
            char c = 65535;
            int hashCode = name.hashCode();
            if (hashCode != 89650992) {
                if (hashCode == 1191572447 && name.equals("selector")) {
                    c = 0;
                }
            } else if (name.equals("gradient")) {
                c = 1;
            }
            if (c == 0) {
                return m35672a(C0872a.m35676a(resources, xml, asAttributeSet, theme));
            }
            if (c == 1) {
                return m35670a(C0879d.m35643a(resources, xml, asAttributeSet, theme));
            }
            throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: a */
    public static C0873b m35670a(Shader shader) {
        return new C0873b(shader, null, 0);
    }

    /* renamed from: b */
    public static C0873b m35667b(int i) {
        return new C0873b(null, null, i);
    }

    /* renamed from: b */
    public static C0873b m35666b(Resources resources, int i, Resources.Theme theme) {
        try {
            return m35671a(resources, i, theme);
        } catch (Exception e) {
            Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e);
            return null;
        }
    }

    /* renamed from: a */
    public int m35674a() {
        return this.f4063c;
    }

    /* renamed from: a */
    public void m35673a(int i) {
        this.f4063c = i;
    }

    /* renamed from: a */
    public boolean m35669a(int[] iArr) {
        boolean z;
        ColorStateList colorStateList;
        int colorForState;
        if (!m35664d() || (colorForState = (colorStateList = this.f4062b).getColorForState(iArr, colorStateList.getDefaultColor())) == this.f4063c) {
            z = false;
        } else {
            z = true;
            this.f4063c = colorForState;
        }
        return z;
    }

    /* renamed from: b */
    public Shader m35668b() {
        return this.f4061a;
    }

    /* renamed from: c */
    public boolean m35665c() {
        return this.f4061a != null;
    }

    /* renamed from: d */
    public boolean m35664d() {
        ColorStateList colorStateList;
        return this.f4061a == null && (colorStateList = this.f4062b) != null && colorStateList.isStateful();
    }

    /* renamed from: e */
    public boolean m35663e() {
        return m35665c() || this.f4063c != 0;
    }
}
