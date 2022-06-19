package p291y;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import com.google.android.gms.internal.ads.C1676a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import p015b0.C0713a;
import p237t.C4350g;
/* renamed from: y.a */
/* loaded from: classes-dex2jar.jar:y/a.class */
public class C4946a {

    /* renamed from: a */
    public boolean f15080a;

    /* renamed from: b */
    public String f15081b;

    /* renamed from: c */
    public int f15082c;

    /* renamed from: d */
    public int f15083d;

    /* renamed from: e */
    public float f15084e;

    /* renamed from: f */
    public String f15085f;

    /* renamed from: g */
    public boolean f15086g;

    /* renamed from: h */
    public int f15087h;

    public C4946a(String str, int i, Object obj, boolean z) {
        this.f15080a = false;
        this.f15081b = str;
        this.f15082c = i;
        this.f15080a = z;
        m206c(obj);
    }

    public C4946a(C4946a c4946a, Object obj) {
        this.f15080a = false;
        this.f15081b = c4946a.f15081b;
        this.f15082c = c4946a.f15082c;
        m206c(obj);
    }

    /* renamed from: a */
    public static void m208a(Context context, XmlPullParser xmlPullParser, HashMap<String, C4946a> hashMap) {
        boolean z;
        boolean z2;
        int i;
        String str;
        Object obj;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0713a.f2757i);
        int indexCount = obtainStyledAttributes.getIndexCount();
        String str2 = null;
        Object obj2 = null;
        int i2 = 0;
        int i3 = 0;
        boolean z3 = false;
        while (true) {
            z = z3;
            if (i2 >= indexCount) {
                break;
            }
            int index = obtainStyledAttributes.getIndex(i2);
            if (index == 0) {
                String string = obtainStyledAttributes.getString(index);
                str = string;
                obj = obj2;
                i = i3;
                z2 = z;
                if (string != null) {
                    str = string;
                    obj = obj2;
                    i = i3;
                    z2 = z;
                    if (string.length() > 0) {
                        str = Character.toUpperCase(string.charAt(0)) + string.substring(1);
                        obj = obj2;
                        i = i3;
                        z2 = z;
                    }
                }
            } else if (index == 10) {
                str = obtainStyledAttributes.getString(index);
                z2 = true;
                obj = obj2;
                i = i3;
            } else if (index == 1) {
                obj = Boolean.valueOf(obtainStyledAttributes.getBoolean(index, false));
                i = 6;
                str = str2;
                z2 = z;
            } else if (index == 3) {
                obj = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                i = 3;
                str = str2;
                z2 = z;
            } else if (index == 2) {
                obj = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                i = 4;
                str = str2;
                z2 = z;
            } else {
                if (index == 7) {
                    obj = Float.valueOf(TypedValue.applyDimension(1, obtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics()));
                } else if (index == 4) {
                    obj = Float.valueOf(obtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == 5) {
                    obj = Float.valueOf(obtainStyledAttributes.getFloat(index, Float.NaN));
                    i = 2;
                    str = str2;
                    z2 = z;
                } else if (index == 6) {
                    obj = Integer.valueOf(obtainStyledAttributes.getInteger(index, -1));
                    i = 1;
                    str = str2;
                    z2 = z;
                } else if (index == 9) {
                    obj = obtainStyledAttributes.getString(index);
                    i = 5;
                    str = str2;
                    z2 = z;
                } else {
                    str = str2;
                    obj = obj2;
                    i = i3;
                    z2 = z;
                    if (index == 8) {
                        int resourceId = obtainStyledAttributes.getResourceId(index, -1);
                        int i4 = resourceId;
                        if (resourceId == -1) {
                            i4 = obtainStyledAttributes.getInt(index, -1);
                        }
                        obj = Integer.valueOf(i4);
                        i = 8;
                        z2 = z;
                        str = str2;
                    }
                }
                i = 7;
                str = str2;
                z2 = z;
            }
            i2++;
            str2 = str;
            obj2 = obj;
            i3 = i;
            z3 = z2;
        }
        if (str2 != null && obj2 != null) {
            hashMap.put(str2, new C4946a(str2, i3, obj2, z));
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: b */
    public static void m207b(View view, HashMap<String, C4946a> hashMap) {
        Class<?> cls = view.getClass();
        for (String str : hashMap.keySet()) {
            C4946a c4946a = hashMap.get(str);
            String str2 = str;
            if (!c4946a.f15080a) {
                str2 = C1676a.m4789h("set", str);
            }
            try {
                switch (C4350g.m1021c(c4946a.f15082c)) {
                    case 0:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(c4946a.f15083d));
                        break;
                    case 1:
                        cls.getMethod(str2, Float.TYPE).invoke(view, Float.valueOf(c4946a.f15084e));
                        break;
                    case 2:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(c4946a.f15087h));
                        break;
                    case 3:
                        Method method = cls.getMethod(str2, Drawable.class);
                        ColorDrawable colorDrawable = new ColorDrawable();
                        colorDrawable.setColor(c4946a.f15087h);
                        method.invoke(view, colorDrawable);
                        break;
                    case 4:
                        cls.getMethod(str2, CharSequence.class).invoke(view, c4946a.f15085f);
                        break;
                    case 5:
                        cls.getMethod(str2, Boolean.TYPE).invoke(view, Boolean.valueOf(c4946a.f15086g));
                        break;
                    case 6:
                        cls.getMethod(str2, Float.TYPE).invoke(view, Float.valueOf(c4946a.f15084e));
                        break;
                    case 7:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(c4946a.f15083d));
                        break;
                }
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (NoSuchMethodException e2) {
                e2.getMessage();
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
            }
        }
    }

    /* renamed from: c */
    public void m206c(Object obj) {
        switch (C4350g.m1021c(this.f15082c)) {
            case 0:
            case 7:
                this.f15083d = ((Integer) obj).intValue();
                return;
            case 1:
                this.f15084e = ((Float) obj).floatValue();
                return;
            case 2:
            case 3:
                this.f15087h = ((Integer) obj).intValue();
                return;
            case 4:
                this.f15085f = (String) obj;
                return;
            case 5:
                this.f15086g = ((Boolean) obj).booleanValue();
                return;
            case 6:
                this.f15084e = ((Float) obj).floatValue();
                return;
            default:
                return;
        }
    }
}
