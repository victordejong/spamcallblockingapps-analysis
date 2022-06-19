package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import androidx.constraintlayout.motion.widget.C0175a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintAttribute.class */
public class ConstraintAttribute {

    /* renamed from: a */
    String f1291a;

    /* renamed from: b */
    private AttributeType f1292b;

    /* renamed from: c */
    private int f1293c;

    /* renamed from: d */
    private float f1294d;

    /* renamed from: e */
    private String f1295e;

    /* renamed from: f */
    boolean f1296f;

    /* renamed from: g */
    private int f1297g;

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
    public static /* synthetic */ class C0215a {

        /* renamed from: a */
        static final /* synthetic */ int[] f1306a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[AttributeType.values().length];
            f1306a = iArr;
            try {
                iArr[AttributeType.COLOR_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1306a[AttributeType.COLOR_DRAWABLE_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1306a[AttributeType.INT_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1306a[AttributeType.FLOAT_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f1306a[AttributeType.STRING_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f1306a[AttributeType.BOOLEAN_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f1306a[AttributeType.DIMENSION_TYPE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    public ConstraintAttribute(ConstraintAttribute constraintAttribute, Object obj) {
        this.f1291a = constraintAttribute.f1291a;
        this.f1292b = constraintAttribute.f1292b;
        m13863j(obj);
    }

    public ConstraintAttribute(String str, AttributeType attributeType, Object obj) {
        this.f1291a = str;
        this.f1292b = attributeType;
        m13863j(obj);
    }

    /* renamed from: a */
    private static int m13872a(int i) {
        int i2 = (i & ((i >> 31) ^ (-1))) - 255;
        return (i2 & (i2 >> 31)) + 255;
    }

    /* renamed from: b */
    public static HashMap<String, ConstraintAttribute> m13871b(HashMap<String, ConstraintAttribute> hashMap, View view) {
        HashMap<String, ConstraintAttribute> hashMap2 = new HashMap<>();
        Class<?> cls = view.getClass();
        for (String str : hashMap.keySet()) {
            ConstraintAttribute constraintAttribute = hashMap.get(str);
            try {
                hashMap2.put(str, str.equals("BackgroundColor") ? new ConstraintAttribute(constraintAttribute, Integer.valueOf(((ColorDrawable) view.getBackground()).getColor())) : new ConstraintAttribute(constraintAttribute, cls.getMethod("getMap" + str, new Class[0]).invoke(view, new Object[0])));
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
    public static void m13866g(Context context, XmlPullParser xmlPullParser, HashMap<String, ConstraintAttribute> hashMap) {
        AttributeType attributeType;
        Object obj;
        String str;
        AttributeType attributeType2;
        int integer;
        float f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0229e.CustomAttribute);
        int indexCount = obtainStyledAttributes.getIndexCount();
        String str2 = null;
        Object obj2 = null;
        AttributeType attributeType3 = null;
        int i = 0;
        while (i < indexCount) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == C0229e.CustomAttribute_attributeName) {
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
            } else if (index == C0229e.CustomAttribute_customBoolean) {
                obj = Boolean.valueOf(obtainStyledAttributes.getBoolean(index, false));
                attributeType = AttributeType.BOOLEAN_TYPE;
                str = str2;
            } else {
                if (index == C0229e.CustomAttribute_customColorValue) {
                    attributeType2 = AttributeType.COLOR_TYPE;
                } else if (index == C0229e.CustomAttribute_customColorDrawableValue) {
                    attributeType2 = AttributeType.COLOR_DRAWABLE_TYPE;
                } else {
                    if (index == C0229e.CustomAttribute_customPixelDimension) {
                        attributeType2 = AttributeType.DIMENSION_TYPE;
                        f = TypedValue.applyDimension(1, obtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics());
                    } else if (index == C0229e.CustomAttribute_customDimension) {
                        attributeType2 = AttributeType.DIMENSION_TYPE;
                        f = obtainStyledAttributes.getDimension(index, 0.0f);
                    } else if (index == C0229e.CustomAttribute_customFloatValue) {
                        attributeType2 = AttributeType.FLOAT_TYPE;
                        f = obtainStyledAttributes.getFloat(index, Float.NaN);
                    } else if (index == C0229e.CustomAttribute_customIntegerValue) {
                        attributeType2 = AttributeType.INT_TYPE;
                        integer = obtainStyledAttributes.getInteger(index, -1);
                        obj = Integer.valueOf(integer);
                        attributeType = attributeType2;
                        str = str2;
                    } else {
                        str = str2;
                        obj = obj2;
                        attributeType = attributeType3;
                        if (index == C0229e.CustomAttribute_customStringValue) {
                            attributeType2 = AttributeType.STRING_TYPE;
                            obj = obtainStyledAttributes.getString(index);
                            attributeType = attributeType2;
                            str = str2;
                        }
                    }
                    obj = Float.valueOf(f);
                    attributeType = attributeType2;
                    str = str2;
                }
                integer = obtainStyledAttributes.getColor(index, 0);
                obj = Integer.valueOf(integer);
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
    public static void m13865h(View view, HashMap<String, ConstraintAttribute> hashMap) {
        Class<?> cls = view.getClass();
        for (String str : hashMap.keySet()) {
            ConstraintAttribute constraintAttribute = hashMap.get(str);
            String str2 = "set" + str;
            try {
                switch (C0215a.f1306a[constraintAttribute.f1292b.ordinal()]) {
                    case 1:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(constraintAttribute.f1297g));
                        break;
                    case 2:
                        Method method = cls.getMethod(str2, Drawable.class);
                        ColorDrawable colorDrawable = new ColorDrawable();
                        colorDrawable.setColor(constraintAttribute.f1297g);
                        method.invoke(view, colorDrawable);
                        break;
                    case 3:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(constraintAttribute.f1293c));
                        break;
                    case 4:
                        cls.getMethod(str2, Float.TYPE).invoke(view, Float.valueOf(constraintAttribute.f1294d));
                        break;
                    case 5:
                        cls.getMethod(str2, CharSequence.class).invoke(view, constraintAttribute.f1295e);
                        break;
                    case 6:
                        cls.getMethod(str2, Boolean.TYPE).invoke(view, Boolean.valueOf(constraintAttribute.f1296f));
                        break;
                    case 7:
                        cls.getMethod(str2, Float.TYPE).invoke(view, Float.valueOf(constraintAttribute.f1294d));
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
    public AttributeType m13870c() {
        return this.f1292b;
    }

    /* renamed from: d */
    public float m13869d() {
        switch (C0215a.f1306a[this.f1292b.ordinal()]) {
            case 1:
            case 2:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 3:
                return this.f1293c;
            case 4:
                return this.f1294d;
            case 5:
                throw new RuntimeException("Cannot interpolate String");
            case 6:
                return this.f1296f ? 0.0f : 1.0f;
            case 7:
                return this.f1294d;
            default:
                return Float.NaN;
        }
    }

    /* renamed from: e */
    public void m13868e(float[] fArr) {
        switch (C0215a.f1306a[this.f1292b.ordinal()]) {
            case 1:
            case 2:
                int i = this.f1297g;
                float pow = (float) Math.pow(((i >> 16) & 255) / 255.0f, 2.2d);
                float pow2 = (float) Math.pow(((i >> 8) & 255) / 255.0f, 2.2d);
                fArr[0] = pow;
                fArr[1] = pow2;
                fArr[2] = (float) Math.pow((i & 255) / 255.0f, 2.2d);
                fArr[3] = ((i >> 24) & 255) / 255.0f;
                return;
            case 3:
                fArr[0] = this.f1293c;
                return;
            case 4:
                fArr[0] = this.f1294d;
                return;
            case 5:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 6:
                fArr[0] = this.f1296f ? 0.0f : 1.0f;
                return;
            case 7:
                fArr[0] = this.f1294d;
                return;
            default:
                return;
        }
    }

    /* renamed from: f */
    public int m13867f() {
        int i = C0215a.f1306a[this.f1292b.ordinal()];
        return (i == 1 || i == 2) ? 4 : 1;
    }

    /* renamed from: i */
    public void m13864i(View view, float[] fArr) {
        Class<?> cls = view.getClass();
        String str = "set" + this.f1291a;
        try {
            boolean z = true;
            switch (C0215a.f1306a[this.f1292b.ordinal()]) {
                case 1:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf((m13872a((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (m13872a((int) (fArr[3] * 255.0f)) << 24) | (m13872a((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | m13872a((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f))));
                    return;
                case 2:
                    Method method = cls.getMethod(str, Drawable.class);
                    int m13872a = m13872a((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f));
                    int m13872a2 = m13872a((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f));
                    int m13872a3 = m13872a((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f));
                    int m13872a4 = m13872a((int) (fArr[3] * 255.0f));
                    ColorDrawable colorDrawable = new ColorDrawable();
                    colorDrawable.setColor((m13872a << 16) | (m13872a4 << 24) | (m13872a2 << 8) | m13872a3);
                    method.invoke(view, colorDrawable);
                    return;
                case 3:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf((int) fArr[0]));
                    return;
                case 4:
                    cls.getMethod(str, Float.TYPE).invoke(view, Float.valueOf(fArr[0]));
                    return;
                case 5:
                    throw new RuntimeException("unable to interpolate strings " + this.f1291a);
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
            Log.e("TransitionLayout", "cannot access method " + str + "on View \"" + C0175a.m14282c(view) + "\"");
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            Log.e("TransitionLayout", "no method " + str + "on View \"" + C0175a.m14282c(view) + "\"");
            e2.printStackTrace();
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
        }
    }

    /* renamed from: j */
    public void m13863j(Object obj) {
        switch (C0215a.f1306a[this.f1292b.ordinal()]) {
            case 1:
            case 2:
                this.f1297g = ((Integer) obj).intValue();
                return;
            case 3:
                this.f1293c = ((Integer) obj).intValue();
                return;
            case 4:
            case 7:
                this.f1294d = ((Float) obj).floatValue();
                return;
            case 5:
                this.f1295e = (String) obj;
                return;
            case 6:
                this.f1296f = ((Boolean) obj).booleanValue();
                return;
            default:
                return;
        }
    }
}
