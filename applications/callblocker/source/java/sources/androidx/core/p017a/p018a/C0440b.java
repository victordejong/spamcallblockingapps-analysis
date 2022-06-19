package androidx.core.p017a.p018a;

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
public final class C0440b {

    /* renamed from: a */
    private final Shader f1730a;

    /* renamed from: b */
    private final ColorStateList f1731b;

    /* renamed from: c */
    private int f1732c;

    private C0440b(Shader shader, ColorStateList colorStateList, int i) {
        this.f1730a = shader;
        this.f1731b = colorStateList;
        this.f1732c = i;
    }

    /* renamed from: a */
    public static C0440b m20884a(int i) {
        return new C0440b(null, null, i);
    }

    /* renamed from: a */
    static C0440b m20883a(ColorStateList colorStateList) {
        return new C0440b(null, colorStateList, colorStateList.getDefaultColor());
    }

    /* renamed from: a */
    public static C0440b m20882a(Resources resources, int i, Resources.Theme theme) {
        C0440b c0440b;
        try {
            c0440b = m20877b(resources, i, theme);
        } catch (Exception e) {
            Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e);
            c0440b = null;
        }
        return c0440b;
    }

    /* renamed from: a */
    static C0440b m20881a(Shader shader) {
        return new C0440b(shader, null, 0);
    }

    /* renamed from: b */
    private static C0440b m20877b(Resources resources, int i, Resources.Theme theme) {
        int next;
        C0440b m20881a;
        XmlResourceParser xml = resources.getXml(i);
        AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
        do {
            next = xml.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        String name = xml.getName();
        boolean z = true;
        switch (name.hashCode()) {
            case 89650992:
                if (name.equals("gradient")) {
                    z = true;
                    break;
                }
                break;
            case 1191572447:
                if (name.equals("selector")) {
                    z = false;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                m20881a = m20883a(C0439a.m20887a(resources, xml, asAttributeSet, theme));
                break;
            case true:
                m20881a = m20881a(C0446d.m20854a(resources, xml, asAttributeSet, theme));
                break;
            default:
                throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
        }
        return m20881a;
    }

    /* renamed from: a */
    public Shader m20885a() {
        return this.f1730a;
    }

    /* renamed from: a */
    public boolean m20880a(int[] iArr) {
        boolean z = false;
        if (m20875d()) {
            int colorForState = this.f1731b.getColorForState(iArr, this.f1731b.getDefaultColor());
            z = false;
            if (colorForState != this.f1732c) {
                z = true;
                this.f1732c = colorForState;
            }
        }
        return z;
    }

    /* renamed from: b */
    public int m20879b() {
        return this.f1732c;
    }

    /* renamed from: b */
    public void m20878b(int i) {
        this.f1732c = i;
    }

    /* renamed from: c */
    public boolean m20876c() {
        return this.f1730a != null;
    }

    /* renamed from: d */
    public boolean m20875d() {
        return this.f1730a == null && this.f1731b != null && this.f1731b.isStateful();
    }

    /* renamed from: e */
    public boolean m20874e() {
        return m20876c() || this.f1732c != 0;
    }
}
