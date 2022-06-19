package p1727n3.p1795i.p1802c;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import androidx.constraintlayout.widget.C0114R;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.i.c.a */
/* loaded from: classes-dex2jar.jar:n3/i/c/a.class */
public class C26383a {

    /* renamed from: a */
    public String f73845a;

    /* renamed from: b */
    public EnumC26384a f73846b;

    /* renamed from: c */
    public int f73847c;

    /* renamed from: d */
    public float f73848d;

    /* renamed from: e */
    public String f73849e;

    /* renamed from: f */
    public boolean f73850f;

    /* renamed from: g */
    public int f73851g;

    /* renamed from: n3.i.c.a$a */
    /* loaded from: classes-dex2jar.jar:n3/i/c/a$a.class */
    public enum EnumC26384a {
        INT_TYPE,
        FLOAT_TYPE,
        COLOR_TYPE,
        COLOR_DRAWABLE_TYPE,
        STRING_TYPE,
        BOOLEAN_TYPE,
        DIMENSION_TYPE
    }

    public C26383a(String str, EnumC26384a enumC26384a, Object obj) {
        this.f73845a = str;
        this.f73846b = enumC26384a;
        m1990h(obj);
    }

    public C26383a(C26383a c26383a, Object obj) {
        this.f73845a = c26383a.f73845a;
        this.f73846b = c26383a.f73846b;
        m1990h(obj);
    }

    /* renamed from: a */
    public static int m1997a(int i) {
        int i2 = (i & ((i >> 31) ^ (-1))) - 255;
        return (i2 & (i2 >> 31)) + 255;
    }

    /* renamed from: e */
    public static void m1993e(Context context, XmlPullParser xmlPullParser, HashMap<String, C26383a> hashMap) {
        EnumC26384a enumC26384a;
        String str;
        Comparable comparable;
        Comparable comparable2;
        EnumC26384a enumC26384a2;
        EnumC26384a enumC26384a3 = EnumC26384a.DIMENSION_TYPE;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0114R.styleable.CustomAttribute);
        int indexCount = obtainStyledAttributes.getIndexCount();
        String str2 = null;
        Comparable comparable3 = null;
        EnumC26384a enumC26384a4 = null;
        int i = 0;
        while (i < indexCount) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == C0114R.styleable.CustomAttribute_attributeName) {
                String string = obtainStyledAttributes.getString(index);
                str = string;
                comparable = comparable3;
                enumC26384a = enumC26384a4;
                if (string != null) {
                    str = string;
                    comparable = comparable3;
                    enumC26384a = enumC26384a4;
                    if (string.length() > 0) {
                        str = Character.toUpperCase(string.charAt(0)) + string.substring(1);
                        comparable = comparable3;
                        enumC26384a = enumC26384a4;
                    }
                }
            } else if (index == C0114R.styleable.CustomAttribute_customBoolean) {
                comparable = Boolean.valueOf(obtainStyledAttributes.getBoolean(index, false));
                enumC26384a = EnumC26384a.BOOLEAN_TYPE;
                str = str2;
            } else {
                if (index == C0114R.styleable.CustomAttribute_customColorValue) {
                    enumC26384a2 = EnumC26384a.COLOR_TYPE;
                    comparable2 = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else if (index == C0114R.styleable.CustomAttribute_customColorDrawableValue) {
                    enumC26384a2 = EnumC26384a.COLOR_DRAWABLE_TYPE;
                    comparable2 = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else {
                    if (index == C0114R.styleable.CustomAttribute_customPixelDimension) {
                        comparable = Float.valueOf(TypedValue.applyDimension(1, obtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics()));
                    } else if (index == C0114R.styleable.CustomAttribute_customDimension) {
                        comparable = Float.valueOf(obtainStyledAttributes.getDimension(index, 0.0f));
                    } else if (index == C0114R.styleable.CustomAttribute_customFloatValue) {
                        enumC26384a2 = EnumC26384a.FLOAT_TYPE;
                        comparable2 = Float.valueOf(obtainStyledAttributes.getFloat(index, Float.NaN));
                    } else if (index == C0114R.styleable.CustomAttribute_customIntegerValue) {
                        enumC26384a2 = EnumC26384a.INT_TYPE;
                        comparable2 = Integer.valueOf(obtainStyledAttributes.getInteger(index, -1));
                    } else {
                        str = str2;
                        comparable = comparable3;
                        enumC26384a = enumC26384a4;
                        if (index == C0114R.styleable.CustomAttribute_customStringValue) {
                            enumC26384a2 = EnumC26384a.STRING_TYPE;
                            comparable2 = obtainStyledAttributes.getString(index);
                        }
                    }
                    enumC26384a = enumC26384a3;
                    str = str2;
                }
                EnumC26384a enumC26384a5 = enumC26384a2;
                comparable = comparable2;
                enumC26384a = enumC26384a5;
                str = str2;
            }
            i++;
            str2 = str;
            comparable3 = comparable;
            enumC26384a4 = enumC26384a;
        }
        if (str2 != null && comparable3 != null) {
            hashMap.put(str2, new C26383a(str2, enumC26384a4, comparable3));
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: f */
    public static void m1992f(View view, HashMap<String, C26383a> hashMap) {
        Class<?> cls = view.getClass();
        for (String str : hashMap.keySet()) {
            C26383a c26383a = hashMap.get(str);
            String m8543z2 = C22128a.m8543z2("set", str);
            try {
                switch (c26383a.f73846b.ordinal()) {
                    case 0:
                        cls.getMethod(m8543z2, Integer.TYPE).invoke(view, Integer.valueOf(c26383a.f73847c));
                        break;
                    case 1:
                        cls.getMethod(m8543z2, Float.TYPE).invoke(view, Float.valueOf(c26383a.f73848d));
                        break;
                    case 2:
                        cls.getMethod(m8543z2, Integer.TYPE).invoke(view, Integer.valueOf(c26383a.f73851g));
                        break;
                    case 3:
                        Method method = cls.getMethod(m8543z2, Drawable.class);
                        ColorDrawable colorDrawable = new ColorDrawable();
                        colorDrawable.setColor(c26383a.f73851g);
                        method.invoke(view, colorDrawable);
                        break;
                    case 4:
                        cls.getMethod(m8543z2, CharSequence.class).invoke(view, c26383a.f73849e);
                        break;
                    case 5:
                        cls.getMethod(m8543z2, Boolean.TYPE).invoke(view, Boolean.valueOf(c26383a.f73850f));
                        break;
                    case 6:
                        cls.getMethod(m8543z2, Float.TYPE).invoke(view, Float.valueOf(c26383a.f73848d));
                        break;
                }
            } catch (IllegalAccessException e) {
                cls.getName();
                e.printStackTrace();
            } catch (NoSuchMethodException e2) {
                e2.getMessage();
                cls.getName();
            } catch (InvocationTargetException e3) {
                cls.getName();
                e3.printStackTrace();
            }
        }
    }

    /* renamed from: b */
    public float m1996b() {
        switch (this.f73846b.ordinal()) {
            case 0:
                return this.f73847c;
            case 1:
                return this.f73848d;
            case 2:
            case 3:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 4:
                throw new RuntimeException("Cannot interpolate String");
            case 5:
                return this.f73850f ? 1.0f : 0.0f;
            case 6:
                return this.f73848d;
            default:
                return Float.NaN;
        }
    }

    /* renamed from: c */
    public void m1995c(float[] fArr) {
        switch (this.f73846b.ordinal()) {
            case 0:
                fArr[0] = this.f73847c;
                return;
            case 1:
                fArr[0] = this.f73848d;
                return;
            case 2:
            case 3:
                int i = this.f73851g;
                float pow = (float) Math.pow(((i >> 16) & 255) / 255.0f, 2.2d);
                float pow2 = (float) Math.pow(((i >> 8) & 255) / 255.0f, 2.2d);
                fArr[0] = pow;
                fArr[1] = pow2;
                fArr[2] = (float) Math.pow((i & 255) / 255.0f, 2.2d);
                fArr[3] = ((i >> 24) & 255) / 255.0f;
                return;
            case 4:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 5:
                fArr[0] = this.f73850f ? 1.0f : 0.0f;
                return;
            case 6:
                fArr[0] = this.f73848d;
                return;
            default:
                return;
        }
    }

    /* renamed from: d */
    public int m1994d() {
        int ordinal = this.f73846b.ordinal();
        return (ordinal == 2 || ordinal == 3) ? 4 : 1;
    }

    /* renamed from: g */
    public void m1991g(View view, float[] fArr) {
        Class<?> cls = view.getClass();
        StringBuilder m8728C = C22128a.m8728C("set");
        m8728C.append(this.f73845a);
        String sb = m8728C.toString();
        try {
            boolean z = true;
            switch (this.f73846b.ordinal()) {
                case 0:
                    cls.getMethod(sb, Integer.TYPE).invoke(view, Integer.valueOf((int) fArr[0]));
                    return;
                case 1:
                    cls.getMethod(sb, Float.TYPE).invoke(view, Float.valueOf(fArr[0]));
                    return;
                case 2:
                    cls.getMethod(sb, Integer.TYPE).invoke(view, Integer.valueOf((m1997a((int) (fArr[3] * 255.0f)) << 24) | (m1997a((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (m1997a((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | m1997a((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f))));
                    return;
                case 3:
                    Method method = cls.getMethod(sb, Drawable.class);
                    int m1997a = m1997a((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f));
                    int m1997a2 = m1997a((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f));
                    int m1997a3 = m1997a((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f));
                    int m1997a4 = m1997a((int) (fArr[3] * 255.0f));
                    ColorDrawable colorDrawable = new ColorDrawable();
                    colorDrawable.setColor((m1997a4 << 24) | (m1997a << 16) | (m1997a2 << 8) | m1997a3);
                    method.invoke(view, colorDrawable);
                    return;
                case 4:
                    throw new RuntimeException("unable to interpolate strings " + this.f73845a);
                case 5:
                    Method method2 = cls.getMethod(sb, Boolean.TYPE);
                    if (fArr[0] <= 0.5f) {
                        z = false;
                    }
                    method2.invoke(view, Boolean.valueOf(z));
                    return;
                case 6:
                    cls.getMethod(sb, Float.TYPE).invoke(view, Float.valueOf(fArr[0]));
                    return;
                default:
                    return;
            }
        } catch (IllegalAccessException e) {
            MediaSessionCompat.m43216n0(view);
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            MediaSessionCompat.m43216n0(view);
            e2.printStackTrace();
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
        }
    }

    /* renamed from: h */
    public void m1990h(Object obj) {
        switch (this.f73846b.ordinal()) {
            case 0:
                this.f73847c = ((Integer) obj).intValue();
                return;
            case 1:
                this.f73848d = ((Float) obj).floatValue();
                return;
            case 2:
            case 3:
                this.f73851g = ((Integer) obj).intValue();
                return;
            case 4:
                this.f73849e = (String) obj;
                return;
            case 5:
                this.f73850f = ((Boolean) obj).booleanValue();
                return;
            case 6:
                this.f73848d = ((Float) obj).floatValue();
                return;
            default:
                return;
        }
    }
}
