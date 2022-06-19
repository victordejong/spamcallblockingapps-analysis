package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import androidx.constraintlayout.motion.widget.C0591a;
import androidx.constraintlayout.widget.C0687e;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: androidx.constraintlayout.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/a.class */
public final class C0674a {

    /* renamed from: a */
    String f3029a;

    /* renamed from: b */
    public EnumC0676a f3030b;

    /* renamed from: c */
    boolean f3031c;

    /* renamed from: d */
    private int f3032d;

    /* renamed from: e */
    private float f3033e;

    /* renamed from: f */
    private String f3034f;

    /* renamed from: g */
    private int f3035g;

    /* renamed from: androidx.constraintlayout.widget.a$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/a$1.class */
    public static final /* synthetic */ class C06751 {

        /* renamed from: a */
        static final /* synthetic */ int[] f3036a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0676a.values().length];
            f3036a = iArr;
            try {
                iArr[EnumC0676a.COLOR_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3036a[EnumC0676a.COLOR_DRAWABLE_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3036a[EnumC0676a.INT_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3036a[EnumC0676a.FLOAT_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f3036a[EnumC0676a.STRING_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f3036a[EnumC0676a.BOOLEAN_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f3036a[EnumC0676a.DIMENSION_TYPE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: androidx.constraintlayout.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/a$a.class */
    public enum EnumC0676a {
        INT_TYPE,
        FLOAT_TYPE,
        COLOR_TYPE,
        COLOR_DRAWABLE_TYPE,
        STRING_TYPE,
        BOOLEAN_TYPE,
        DIMENSION_TYPE
    }

    public C0674a(C0674a c0674a, Object obj) {
        this.f3029a = c0674a.f3029a;
        this.f3030b = c0674a.f3030b;
        m44722a(obj);
    }

    public C0674a(String str, EnumC0676a enumC0676a) {
        this.f3029a = str;
        this.f3030b = enumC0676a;
    }

    public C0674a(String str, EnumC0676a enumC0676a, Object obj) {
        this.f3029a = str;
        this.f3030b = enumC0676a;
        m44722a(obj);
    }

    /* renamed from: a */
    private static int m44726a(int i) {
        int i2 = (i & ((i >> 31) ^ (-1))) - 255;
        return (i2 & (i2 >> 31)) + 255;
    }

    /* renamed from: a */
    public static HashMap<String, C0674a> m44721a(HashMap<String, C0674a> hashMap, View view) {
        HashMap<String, C0674a> hashMap2 = new HashMap<>();
        Class<?> cls = view.getClass();
        for (String str : hashMap.keySet()) {
            C0674a c0674a = hashMap.get(str);
            try {
                if (str.equals("BackgroundColor")) {
                    hashMap2.put(str, new C0674a(c0674a, Integer.valueOf(((ColorDrawable) view.getBackground()).getColor())));
                } else {
                    hashMap2.put(str, new C0674a(c0674a, cls.getMethod("getMap".concat(String.valueOf(str)), new Class[0]).invoke(view, new Object[0])));
                }
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (NoSuchMethodException e2) {
                e2.printStackTrace();
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
            }
        }
        return hashMap2;
    }

    /* renamed from: a */
    public static void m44725a(Context context, XmlPullParser xmlPullParser, HashMap<String, C0674a> hashMap) {
        EnumC0676a enumC0676a;
        Object obj;
        String str;
        EnumC0676a enumC0676a2;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0687e.C0689b.CustomAttribute);
        int indexCount = obtainStyledAttributes.getIndexCount();
        String str2 = null;
        Object obj2 = null;
        EnumC0676a enumC0676a3 = null;
        int i = 0;
        while (i < indexCount) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == C0687e.C0689b.CustomAttribute_attributeName) {
                String string = obtainStyledAttributes.getString(index);
                str = string;
                obj = obj2;
                enumC0676a = enumC0676a3;
                if (string != null) {
                    str = string;
                    obj = obj2;
                    enumC0676a = enumC0676a3;
                    if (string.length() > 0) {
                        str = Character.toUpperCase(string.charAt(0)) + string.substring(1);
                        obj = obj2;
                        enumC0676a = enumC0676a3;
                    }
                }
            } else if (index == C0687e.C0689b.CustomAttribute_customBoolean) {
                obj = Boolean.valueOf(obtainStyledAttributes.getBoolean(index, false));
                enumC0676a = EnumC0676a.BOOLEAN_TYPE;
                str = str2;
            } else {
                if (index == C0687e.C0689b.CustomAttribute_customColorValue) {
                    enumC0676a2 = EnumC0676a.COLOR_TYPE;
                    obj = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else if (index == C0687e.C0689b.CustomAttribute_customColorDrawableValue) {
                    enumC0676a2 = EnumC0676a.COLOR_DRAWABLE_TYPE;
                    obj = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else if (index == C0687e.C0689b.CustomAttribute_customPixelDimension) {
                    enumC0676a2 = EnumC0676a.DIMENSION_TYPE;
                    obj = Float.valueOf(TypedValue.applyDimension(1, obtainStyledAttributes.getDimension(index, BitmapDescriptorFactory.HUE_RED), context.getResources().getDisplayMetrics()));
                } else if (index == C0687e.C0689b.CustomAttribute_customDimension) {
                    enumC0676a2 = EnumC0676a.DIMENSION_TYPE;
                    obj = Float.valueOf(obtainStyledAttributes.getDimension(index, BitmapDescriptorFactory.HUE_RED));
                } else if (index == C0687e.C0689b.CustomAttribute_customFloatValue) {
                    enumC0676a2 = EnumC0676a.FLOAT_TYPE;
                    obj = Float.valueOf(obtainStyledAttributes.getFloat(index, Float.NaN));
                } else if (index == C0687e.C0689b.CustomAttribute_customIntegerValue) {
                    enumC0676a2 = EnumC0676a.INT_TYPE;
                    obj = Integer.valueOf(obtainStyledAttributes.getInteger(index, -1));
                } else {
                    str = str2;
                    obj = obj2;
                    enumC0676a = enumC0676a3;
                    if (index == C0687e.C0689b.CustomAttribute_customStringValue) {
                        enumC0676a2 = EnumC0676a.STRING_TYPE;
                        obj = obtainStyledAttributes.getString(index);
                    }
                }
                enumC0676a = enumC0676a2;
                str = str2;
            }
            i++;
            str2 = str;
            obj2 = obj;
            enumC0676a3 = enumC0676a;
        }
        if (str2 != null && obj2 != null) {
            hashMap.put(str2, new C0674a(str2, enumC0676a3, obj2));
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    public static void m44724a(View view, HashMap<String, C0674a> hashMap) {
        Class<?> cls = view.getClass();
        for (String str : hashMap.keySet()) {
            C0674a c0674a = hashMap.get(str);
            String concat = "set".concat(String.valueOf(str));
            try {
                switch (C06751.f3036a[c0674a.f3030b.ordinal()]) {
                    case 1:
                        cls.getMethod(concat, Integer.TYPE).invoke(view, Integer.valueOf(c0674a.f3035g));
                        break;
                    case 2:
                        Method method = cls.getMethod(concat, Drawable.class);
                        ColorDrawable colorDrawable = new ColorDrawable();
                        colorDrawable.setColor(c0674a.f3035g);
                        method.invoke(view, colorDrawable);
                        break;
                    case 3:
                        cls.getMethod(concat, Integer.TYPE).invoke(view, Integer.valueOf(c0674a.f3032d));
                        break;
                    case 4:
                        cls.getMethod(concat, Float.TYPE).invoke(view, Float.valueOf(c0674a.f3033e));
                        break;
                    case 5:
                        cls.getMethod(concat, CharSequence.class).invoke(view, c0674a.f3034f);
                        break;
                    case 6:
                        cls.getMethod(concat, Boolean.TYPE).invoke(view, Boolean.valueOf(c0674a.f3031c));
                        break;
                    case 7:
                        cls.getMethod(concat, Float.TYPE).invoke(view, Float.valueOf(c0674a.f3033e));
                        break;
                }
            } catch (IllegalAccessException e) {
                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                e.printStackTrace();
            } catch (NoSuchMethodException e2) {
                Log.e("TransitionLayout", e2.getMessage());
                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                Log.e("TransitionLayout", cls.getName() + " must have a method " + concat);
            } catch (InvocationTargetException e3) {
                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                e3.printStackTrace();
            }
        }
    }

    /* renamed from: a */
    private void m44722a(Object obj) {
        switch (C06751.f3036a[this.f3030b.ordinal()]) {
            case 1:
            case 2:
                this.f3035g = ((Integer) obj).intValue();
                return;
            case 3:
                this.f3032d = ((Integer) obj).intValue();
                return;
            case 4:
                this.f3033e = ((Float) obj).floatValue();
                return;
            case 5:
                this.f3034f = (String) obj;
                return;
            case 6:
                this.f3031c = ((Boolean) obj).booleanValue();
                return;
            case 7:
                this.f3033e = ((Float) obj).floatValue();
                return;
            default:
                return;
        }
    }

    /* renamed from: a */
    public final int m44727a() {
        int i = C06751.f3036a[this.f3030b.ordinal()];
        return (i == 1 || i == 2) ? 4 : 1;
    }

    /* renamed from: a */
    public final void m44723a(View view, float[] fArr) {
        Class<?> cls = view.getClass();
        String str = "set" + this.f3029a;
        try {
            boolean z = true;
            switch (C06751.f3036a[this.f3030b.ordinal()]) {
                case 1:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf((m44726a((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (m44726a((int) (fArr[3] * 255.0f)) << 24) | (m44726a((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | m44726a((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f))));
                    return;
                case 2:
                    Method method = cls.getMethod(str, Drawable.class);
                    int m44726a = m44726a((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f));
                    int m44726a2 = m44726a((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f));
                    int m44726a3 = m44726a((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f));
                    int m44726a4 = m44726a((int) (fArr[3] * 255.0f));
                    ColorDrawable colorDrawable = new ColorDrawable();
                    colorDrawable.setColor((m44726a << 16) | (m44726a4 << 24) | (m44726a2 << 8) | m44726a3);
                    method.invoke(view, colorDrawable);
                    return;
                case 3:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf((int) fArr[0]));
                    return;
                case 4:
                    cls.getMethod(str, Float.TYPE).invoke(view, Float.valueOf(fArr[0]));
                    return;
                case 5:
                    throw new RuntimeException("unable to interpolate strings " + this.f3029a);
                case 6:
                    Method method2 = cls.getMethod(str, Boolean.TYPE);
                    if (fArr[0] <= 0.5f) {
                        z = false;
                    }
                    method2.invoke(view, Boolean.valueOf(z));
                    return;
                case 7:
                    cls.getMethod(str, Float.TYPE).invoke(view, Float.valueOf(fArr[0]));
                    return;
                default:
                    return;
            }
        } catch (IllegalAccessException e) {
            Log.e("TransitionLayout", "cannot access method " + str + "on View \"" + C0591a.m44983a(view) + "\"");
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            Log.e("TransitionLayout", "no method " + str + "on View \"" + C0591a.m44983a(view) + "\"");
            e2.printStackTrace();
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
        }
    }

    /* renamed from: a */
    public final void m44720a(float[] fArr) {
        switch (C06751.f3036a[this.f3030b.ordinal()]) {
            case 1:
            case 2:
                int i = this.f3035g;
                float pow = (float) Math.pow(((i >> 16) & 255) / 255.0f, 2.2d);
                float pow2 = (float) Math.pow(((i >> 8) & 255) / 255.0f, 2.2d);
                fArr[0] = pow;
                fArr[1] = pow2;
                fArr[2] = (float) Math.pow((i & 255) / 255.0f, 2.2d);
                fArr[3] = ((i >> 24) & 255) / 255.0f;
                return;
            case 3:
                fArr[0] = this.f3032d;
                return;
            case 4:
                fArr[0] = this.f3033e;
                return;
            case 5:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 6:
                fArr[0] = this.f3031c ? 1.0f : 0.0f;
                return;
            case 7:
                fArr[0] = this.f3033e;
                return;
            default:
                return;
        }
    }

    /* renamed from: b */
    public final float m44719b() {
        switch (C06751.f3036a[this.f3030b.ordinal()]) {
            case 1:
            case 2:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 3:
                return this.f3032d;
            case 4:
                return this.f3033e;
            case 5:
                throw new RuntimeException("Cannot interpolate String");
            case 6:
                if (!this.f3031c) {
                    return BitmapDescriptorFactory.HUE_RED;
                }
                return 1.0f;
            case 7:
                return this.f3033e;
            default:
                return Float.NaN;
        }
    }
}
