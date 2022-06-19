package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import androidx.constraintlayout.motion.widget.C0378a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintAttribute.class */
public class ConstraintAttribute {

    /* renamed from: a */
    String f2454a;

    /* renamed from: b */
    private AttributeType f2455b;

    /* renamed from: c */
    private int f2456c;

    /* renamed from: d */
    private float f2457d;

    /* renamed from: e */
    private String f2458e;

    /* renamed from: f */
    boolean f2459f;

    /* renamed from: g */
    private int f2460g;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintAttribute$AttributeType.class */
    public enum AttributeType {
        INT_TYPE,
        FLOAT_TYPE,
        COLOR_TYPE,
        COLOR_DRAWABLE_TYPE,
        STRING_TYPE,
        BOOLEAN_TYPE,
        DIMENSION_TYPE
    }

    /* renamed from: androidx.constraintlayout.widget.ConstraintAttribute$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintAttribute$a.class */
    public static /* synthetic */ class C0508a {

        /* renamed from: a */
        static final /* synthetic */ int[] f2469a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[AttributeType.values().length];
            f2469a = iArr;
            try {
                iArr[AttributeType.COLOR_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2469a[AttributeType.COLOR_DRAWABLE_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2469a[AttributeType.INT_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2469a[AttributeType.FLOAT_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2469a[AttributeType.STRING_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f2469a[AttributeType.BOOLEAN_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f2469a[AttributeType.DIMENSION_TYPE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    public ConstraintAttribute(ConstraintAttribute constraintAttribute, Object obj) {
        this.f2454a = constraintAttribute.f2454a;
        this.f2455b = constraintAttribute.f2455b;
        m33709j(obj);
    }

    public ConstraintAttribute(String str, AttributeType attributeType, Object obj) {
        this.f2454a = str;
        this.f2455b = attributeType;
        m33709j(obj);
    }

    /* renamed from: a */
    private static int m33718a(int i) {
        int i2 = (i & ((i >> 31) ^ (-1))) - 255;
        return (i2 & (i2 >> 31)) + 255;
    }

    /* renamed from: b */
    public static HashMap<String, ConstraintAttribute> m33717b(HashMap<String, ConstraintAttribute> hashMap, View view) {
        HashMap<String, ConstraintAttribute> hashMap2 = new HashMap<>();
        Class<?> cls = view.getClass();
        for (String str : hashMap.keySet()) {
            ConstraintAttribute constraintAttribute = hashMap.get(str);
            try {
                if (str.equals("BackgroundColor")) {
                    hashMap2.put(str, new ConstraintAttribute(constraintAttribute, Integer.valueOf(((ColorDrawable) view.getBackground()).getColor())));
                } else {
                    hashMap2.put(str, new ConstraintAttribute(constraintAttribute, cls.getMethod("getMap" + str, new Class[0]).invoke(view, new Object[0])));
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

    /* renamed from: g */
    public static void m33712g(Context context, XmlPullParser xmlPullParser, HashMap<String, ConstraintAttribute> hashMap) {
        AttributeType attributeType;
        Object obj;
        String str;
        AttributeType attributeType2;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0523e.CustomAttribute);
        int indexCount = obtainStyledAttributes.getIndexCount();
        String str2 = null;
        Object obj2 = null;
        AttributeType attributeType3 = null;
        int i = 0;
        while (i < indexCount) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == C0523e.CustomAttribute_attributeName) {
                String string = obtainStyledAttributes.getString(index);
                str = string;
                obj = obj2;
                attributeType = attributeType3;
                if (string != null) {
                    str = string;
                    obj = obj2;
                    attributeType = attributeType3;
                    if (string.length() > 0) {
                        str = Character.toUpperCase(string.charAt(0)) + string.substring(1);
                        obj = obj2;
                        attributeType = attributeType3;
                    }
                }
            } else if (index == C0523e.CustomAttribute_customBoolean) {
                obj = Boolean.valueOf(obtainStyledAttributes.getBoolean(index, false));
                attributeType = AttributeType.BOOLEAN_TYPE;
                str = str2;
            } else {
                if (index == C0523e.CustomAttribute_customColorValue) {
                    attributeType2 = AttributeType.COLOR_TYPE;
                    obj = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else if (index == C0523e.CustomAttribute_customColorDrawableValue) {
                    attributeType2 = AttributeType.COLOR_DRAWABLE_TYPE;
                    obj = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else if (index == C0523e.CustomAttribute_customPixelDimension) {
                    attributeType2 = AttributeType.DIMENSION_TYPE;
                    obj = Float.valueOf(TypedValue.applyDimension(1, obtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics()));
                } else if (index == C0523e.CustomAttribute_customDimension) {
                    attributeType2 = AttributeType.DIMENSION_TYPE;
                    obj = Float.valueOf(obtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == C0523e.CustomAttribute_customFloatValue) {
                    attributeType2 = AttributeType.FLOAT_TYPE;
                    obj = Float.valueOf(obtainStyledAttributes.getFloat(index, Float.NaN));
                } else if (index == C0523e.CustomAttribute_customIntegerValue) {
                    attributeType2 = AttributeType.INT_TYPE;
                    obj = Integer.valueOf(obtainStyledAttributes.getInteger(index, -1));
                } else {
                    str = str2;
                    obj = obj2;
                    attributeType = attributeType3;
                    if (index == C0523e.CustomAttribute_customStringValue) {
                        attributeType2 = AttributeType.STRING_TYPE;
                        obj = obtainStyledAttributes.getString(index);
                    }
                }
                attributeType = attributeType2;
                str = str2;
            }
            i++;
            str2 = str;
            obj2 = obj;
            attributeType3 = attributeType;
        }
        if (str2 != null && obj2 != null) {
            hashMap.put(str2, new ConstraintAttribute(str2, attributeType3, obj2));
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: h */
    public static void m33711h(View view, HashMap<String, ConstraintAttribute> hashMap) {
        Class<?> cls = view.getClass();
        for (String str : hashMap.keySet()) {
            ConstraintAttribute constraintAttribute = hashMap.get(str);
            String str2 = "set" + str;
            try {
                switch (C0508a.f2469a[constraintAttribute.f2455b.ordinal()]) {
                    case 1:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(constraintAttribute.f2460g));
                        break;
                    case 2:
                        Method method = cls.getMethod(str2, Drawable.class);
                        ColorDrawable colorDrawable = new ColorDrawable();
                        colorDrawable.setColor(constraintAttribute.f2460g);
                        method.invoke(view, colorDrawable);
                        break;
                    case 3:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(constraintAttribute.f2456c));
                        break;
                    case 4:
                        cls.getMethod(str2, Float.TYPE).invoke(view, Float.valueOf(constraintAttribute.f2457d));
                        break;
                    case 5:
                        cls.getMethod(str2, CharSequence.class).invoke(view, constraintAttribute.f2458e);
                        break;
                    case 6:
                        cls.getMethod(str2, Boolean.TYPE).invoke(view, Boolean.valueOf(constraintAttribute.f2459f));
                        break;
                    case 7:
                        cls.getMethod(str2, Float.TYPE).invoke(view, Float.valueOf(constraintAttribute.f2457d));
                        break;
                }
            } catch (IllegalAccessException e) {
                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                e.printStackTrace();
            } catch (NoSuchMethodException e2) {
                Log.e("TransitionLayout", e2.getMessage());
                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                StringBuilder sb = new StringBuilder();
                sb.append(cls.getName());
                sb.append(" must have a method ");
                sb.append(str2);
                Log.e("TransitionLayout", sb.toString());
            } catch (InvocationTargetException e3) {
                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                e3.printStackTrace();
            }
        }
    }

    /* renamed from: c */
    public AttributeType m33716c() {
        return this.f2455b;
    }

    /* renamed from: d */
    public float m33715d() {
        switch (C0508a.f2469a[this.f2455b.ordinal()]) {
            case 1:
            case 2:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 3:
                return this.f2456c;
            case 4:
                return this.f2457d;
            case 5:
                throw new RuntimeException("Cannot interpolate String");
            case 6:
                return this.f2459f ? 1.0f : 0.0f;
            case 7:
                return this.f2457d;
            default:
                return Float.NaN;
        }
    }

    /* renamed from: e */
    public void m33714e(float[] fArr) {
        switch (C0508a.f2469a[this.f2455b.ordinal()]) {
            case 1:
            case 2:
                int i = this.f2460g;
                float pow = (float) Math.pow(((i >> 16) & 255) / 255.0f, 2.2d);
                float pow2 = (float) Math.pow(((i >> 8) & 255) / 255.0f, 2.2d);
                fArr[0] = pow;
                fArr[1] = pow2;
                fArr[2] = (float) Math.pow((i & 255) / 255.0f, 2.2d);
                fArr[3] = ((i >> 24) & 255) / 255.0f;
                return;
            case 3:
                fArr[0] = this.f2456c;
                return;
            case 4:
                fArr[0] = this.f2457d;
                return;
            case 5:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 6:
                fArr[0] = this.f2459f ? 1.0f : 0.0f;
                return;
            case 7:
                fArr[0] = this.f2457d;
                return;
            default:
                return;
        }
    }

    /* renamed from: f */
    public int m33713f() {
        int i = C0508a.f2469a[this.f2455b.ordinal()];
        return (i == 1 || i == 2) ? 4 : 1;
    }

    /* renamed from: i */
    public void m33710i(View view, float[] fArr) {
        Class<?> cls = view.getClass();
        String str = "set" + this.f2454a;
        try {
            boolean z = true;
            switch (C0508a.f2469a[this.f2455b.ordinal()]) {
                case 1:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf((m33718a((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (m33718a((int) (fArr[3] * 255.0f)) << 24) | (m33718a((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | m33718a((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f))));
                    return;
                case 2:
                    Method method = cls.getMethod(str, Drawable.class);
                    int m33718a = m33718a((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f));
                    int m33718a2 = m33718a((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f));
                    int m33718a3 = m33718a((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f));
                    int m33718a4 = m33718a((int) (fArr[3] * 255.0f));
                    ColorDrawable colorDrawable = new ColorDrawable();
                    colorDrawable.setColor((m33718a << 16) | (m33718a4 << 24) | (m33718a2 << 8) | m33718a3);
                    method.invoke(view, colorDrawable);
                    return;
                case 3:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf((int) fArr[0]));
                    return;
                case 4:
                    cls.getMethod(str, Float.TYPE).invoke(view, Float.valueOf(fArr[0]));
                    return;
                case 5:
                    throw new RuntimeException("unable to interpolate strings " + this.f2454a);
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
            Log.e("TransitionLayout", "cannot access method " + str + "on View \"" + C0378a.m34491c(view) + "\"");
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            Log.e("TransitionLayout", "no method " + str + "on View \"" + C0378a.m34491c(view) + "\"");
            e2.printStackTrace();
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
        }
    }

    /* renamed from: j */
    public void m33709j(Object obj) {
        switch (C0508a.f2469a[this.f2455b.ordinal()]) {
            case 1:
            case 2:
                this.f2460g = ((Integer) obj).intValue();
                return;
            case 3:
                this.f2456c = ((Integer) obj).intValue();
                return;
            case 4:
                this.f2457d = ((Float) obj).floatValue();
                return;
            case 5:
                this.f2458e = (String) obj;
                return;
            case 6:
                this.f2459f = ((Boolean) obj).booleanValue();
                return;
            case 7:
                this.f2457d = ((Float) obj).floatValue();
                return;
            default:
                return;
        }
    }
}
