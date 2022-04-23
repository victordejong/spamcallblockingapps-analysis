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
import androidx.core.a;
import androidx.core.content.res.d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/core/content/res/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final Shader f1833a;

    /* renamed from: b  reason: collision with root package name */
    public int f1834b;

    /* renamed from: c  reason: collision with root package name */
    private final ColorStateList f1835c;

    private b(Shader shader, ColorStateList colorStateList, int i) {
        this.f1833a = shader;
        this.f1835c = colorStateList;
        this.f1834b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b a(int i) {
        return new b(null, null, i);
    }

    public static b a(Resources resources, int i, Resources.Theme theme) {
        int next;
        Shader shader;
        try {
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
                char c2 = 65535;
                int hashCode = name.hashCode();
                if (hashCode != 89650992) {
                    if (hashCode == 1191572447 && name.equals("selector")) {
                        c2 = 0;
                    }
                } else if (name.equals("gradient")) {
                    c2 = 1;
                }
                if (c2 == 0) {
                    ColorStateList a2 = a.a(resources, xml, asAttributeSet, theme);
                    return new b(null, a2, a2.getDefaultColor());
                } else if (c2 == 1) {
                    String name2 = xml.getName();
                    if (name2.equals("gradient")) {
                        TypedArray a3 = g.a(resources, theme, asAttributeSet, a.d.GradientColor);
                        float a4 = g.a(a3, xml, "startX", a.d.GradientColor_android_startX, (float) BitmapDescriptorFactory.HUE_RED);
                        float a5 = g.a(a3, xml, "startY", a.d.GradientColor_android_startY, (float) BitmapDescriptorFactory.HUE_RED);
                        float a6 = g.a(a3, xml, "endX", a.d.GradientColor_android_endX, (float) BitmapDescriptorFactory.HUE_RED);
                        float a7 = g.a(a3, xml, "endY", a.d.GradientColor_android_endY, (float) BitmapDescriptorFactory.HUE_RED);
                        float a8 = g.a(a3, xml, "centerX", a.d.GradientColor_android_centerX, (float) BitmapDescriptorFactory.HUE_RED);
                        float a9 = g.a(a3, xml, "centerY", a.d.GradientColor_android_centerY, (float) BitmapDescriptorFactory.HUE_RED);
                        int a10 = g.a(a3, (XmlPullParser) xml, "type", a.d.GradientColor_android_type, 0);
                        int a11 = g.a(a3, xml, "startColor", a.d.GradientColor_android_startColor);
                        boolean a12 = g.a(xml, "centerColor");
                        int a13 = g.a(a3, xml, "centerColor", a.d.GradientColor_android_centerColor);
                        int a14 = g.a(a3, xml, "endColor", a.d.GradientColor_android_endColor);
                        int a15 = g.a(a3, (XmlPullParser) xml, "tileMode", a.d.GradientColor_android_tileMode, 0);
                        float a16 = g.a(a3, xml, "gradientRadius", a.d.GradientColor_android_gradientRadius, (float) BitmapDescriptorFactory.HUE_RED);
                        a3.recycle();
                        d.a a17 = d.a(resources, xml, asAttributeSet, theme);
                        if (a17 == null) {
                            a17 = a12 ? new d.a(a11, a13, a14) : new d.a(a11, a14);
                        }
                        if (a10 != 1) {
                            shader = a10 != 2 ? new LinearGradient(a4, a5, a6, a7, a17.f1844a, a17.f1845b, d.a(a15)) : new SweepGradient(a8, a9, a17.f1844a, a17.f1845b);
                        } else if (a16 > BitmapDescriptorFactory.HUE_RED) {
                            shader = new RadialGradient(a8, a9, a16, a17.f1844a, a17.f1845b, d.a(a15));
                        } else {
                            throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
                        }
                        return new b(shader, null, 0);
                    }
                    throw new XmlPullParserException(xml.getPositionDescription() + ": invalid gradient color tag " + name2);
                } else {
                    throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
                }
            } else {
                throw new XmlPullParserException("No start tag found");
            }
        } catch (Exception e) {
            Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e);
            return null;
        }
    }

    public final boolean a() {
        return this.f1833a != null;
    }

    public final boolean a(int[] iArr) {
        boolean z;
        ColorStateList colorStateList;
        int colorForState;
        if (!b() || (colorForState = (colorStateList = this.f1835c).getColorForState(iArr, colorStateList.getDefaultColor())) == this.f1834b) {
            z = false;
        } else {
            z = true;
            this.f1834b = colorForState;
        }
        return z;
    }

    public final boolean b() {
        ColorStateList colorStateList;
        return this.f1833a == null && (colorStateList = this.f1835c) != null && colorStateList.isStateful();
    }

    public final boolean c() {
        return a() || this.f1834b != 0;
    }
}
