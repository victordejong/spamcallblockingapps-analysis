package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import androidx.core.C0707a;
import androidx.core.content.res.C0801d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.core.content.res.b */
/* loaded from: classes-dex2jar.jar:androidx/core/content/res/b.class */
public final class C0795b {

    /* renamed from: a */
    public final Shader f3487a;

    /* renamed from: b */
    public int f3488b;

    /* renamed from: c */
    private final ColorStateList f3489c;

    private C0795b(Shader shader, ColorStateList colorStateList, int i) {
        this.f3487a = shader;
        this.f3489c = colorStateList;
        this.f3488b = i;
    }

    /* renamed from: a */
    public static C0795b m44482a(int i) {
        return new C0795b(null, null, i);
    }

    /* renamed from: a */
    public static C0795b m44481a(Resources resources, int i, Resources.Theme theme) {
        int next;
        LinearGradient linearGradient;
        try {
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
            int hashCode = name.hashCode();
            if (hashCode != 89650992) {
                if (hashCode == 1191572447 && name.equals("selector")) {
                    z = false;
                }
            } else if (name.equals("gradient")) {
                z = true;
            }
            if (!z) {
                ColorStateList m44485a = C0794a.m44485a(resources, xml, asAttributeSet, theme);
                return new C0795b(null, m44485a, m44485a.getDefaultColor());
            } else if (!z) {
                throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
            } else {
                String name2 = xml.getName();
                if (!name2.equals("gradient")) {
                    throw new XmlPullParserException(xml.getPositionDescription() + ": invalid gradient color tag " + name2);
                }
                TypedArray m44459a = C0810g.m44459a(resources, theme, asAttributeSet, C0707a.C0711d.GradientColor);
                float m44455a = C0810g.m44455a(m44459a, xml, "startX", C0707a.C0711d.GradientColor_android_startX, (float) BitmapDescriptorFactory.HUE_RED);
                float m44455a2 = C0810g.m44455a(m44459a, xml, "startY", C0707a.C0711d.GradientColor_android_startY, (float) BitmapDescriptorFactory.HUE_RED);
                float m44455a3 = C0810g.m44455a(m44459a, xml, "endX", C0707a.C0711d.GradientColor_android_endX, (float) BitmapDescriptorFactory.HUE_RED);
                float m44455a4 = C0810g.m44455a(m44459a, xml, "endY", C0707a.C0711d.GradientColor_android_endY, (float) BitmapDescriptorFactory.HUE_RED);
                float m44455a5 = C0810g.m44455a(m44459a, xml, "centerX", C0707a.C0711d.GradientColor_android_centerX, (float) BitmapDescriptorFactory.HUE_RED);
                float m44455a6 = C0810g.m44455a(m44459a, xml, "centerY", C0707a.C0711d.GradientColor_android_centerY, (float) BitmapDescriptorFactory.HUE_RED);
                int m44454a = C0810g.m44454a(m44459a, (XmlPullParser) xml, "type", C0707a.C0711d.GradientColor_android_type, 0);
                int m44456a = C0810g.m44456a(m44459a, xml, "startColor", C0707a.C0711d.GradientColor_android_startColor);
                boolean m44452a = C0810g.m44452a(xml, "centerColor");
                int m44456a2 = C0810g.m44456a(m44459a, xml, "centerColor", C0707a.C0711d.GradientColor_android_centerColor);
                int m44456a3 = C0810g.m44456a(m44459a, xml, "endColor", C0707a.C0711d.GradientColor_android_endColor);
                int m44454a2 = C0810g.m44454a(m44459a, (XmlPullParser) xml, "tileMode", C0707a.C0711d.GradientColor_android_tileMode, 0);
                float m44455a7 = C0810g.m44455a(m44459a, xml, "gradientRadius", C0707a.C0711d.GradientColor_android_gradientRadius, (float) BitmapDescriptorFactory.HUE_RED);
                m44459a.recycle();
                C0801d.C0802a m44470a = C0801d.m44470a(resources, xml, asAttributeSet, theme);
                if (m44470a == null) {
                    m44470a = m44452a ? new C0801d.C0802a(m44456a, m44456a2, m44456a3) : new C0801d.C0802a(m44456a, m44456a3);
                }
                if (m44454a != 1) {
                    linearGradient = m44454a != 2 ? new LinearGradient(m44455a, m44455a2, m44455a3, m44455a4, m44470a.f3500a, m44470a.f3501b, C0801d.m44471a(m44454a2)) : new SweepGradient(m44455a5, m44455a6, m44470a.f3500a, m44470a.f3501b);
                } else if (m44455a7 <= BitmapDescriptorFactory.HUE_RED) {
                    throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
                } else {
                    linearGradient = new RadialGradient(m44455a5, m44455a6, m44455a7, m44470a.f3500a, m44470a.f3501b, C0801d.m44471a(m44454a2));
                }
                return new C0795b(linearGradient, null, 0);
            }
        } catch (Exception e) {
            Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e);
            return null;
        }
    }

    /* renamed from: a */
    public final boolean m44483a() {
        return this.f3487a != null;
    }

    /* renamed from: a */
    public final boolean m44480a(int[] iArr) {
        boolean z;
        ColorStateList colorStateList;
        int colorForState;
        if (!m44479b() || (colorForState = (colorStateList = this.f3489c).getColorForState(iArr, colorStateList.getDefaultColor())) == this.f3488b) {
            z = false;
        } else {
            z = true;
            this.f3488b = colorForState;
        }
        return z;
    }

    /* renamed from: b */
    public final boolean m44479b() {
        ColorStateList colorStateList;
        return this.f3487a == null && (colorStateList = this.f3489c) != null && colorStateList.isStateful();
    }

    /* renamed from: c */
    public final boolean m44478c() {
        return m44483a() || this.f3488b != 0;
    }
}
