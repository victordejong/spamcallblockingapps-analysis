package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import androidx.constraintlayout.motion.widget.Debug;
import androidx.core.view.ViewCompat;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintAttribute.class */
public class ConstraintAttribute {
    private static final String TAG = "TransitionLayout";
    boolean mBooleanValue;
    private int mColorValue;
    private float mFloatValue;
    private int mIntegerValue;
    String mName;
    private String mStringValue;
    private AttributeType mType;

    /* renamed from: androidx.constraintlayout.widget.ConstraintAttribute$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintAttribute$1.class */
    public static /* synthetic */ class C02011 {

        /* renamed from: $SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType */
        static final /* synthetic */ int[] f50x66adad53;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[AttributeType.values().length];
            f50x66adad53 = iArr;
            try {
                iArr[AttributeType.COLOR_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f50x66adad53[AttributeType.COLOR_DRAWABLE_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f50x66adad53[AttributeType.INT_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f50x66adad53[AttributeType.FLOAT_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f50x66adad53[AttributeType.STRING_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f50x66adad53[AttributeType.BOOLEAN_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f50x66adad53[AttributeType.DIMENSION_TYPE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

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

    public ConstraintAttribute(ConstraintAttribute constraintAttribute, Object obj) {
        this.mName = constraintAttribute.mName;
        this.mType = constraintAttribute.mType;
        setValue(obj);
    }

    public ConstraintAttribute(String str, AttributeType attributeType) {
        this.mName = str;
        this.mType = attributeType;
    }

    public ConstraintAttribute(String str, AttributeType attributeType, Object obj) {
        this.mName = str;
        this.mType = attributeType;
        setValue(obj);
    }

    private static int clamp(int i) {
        int i2 = (i & ((i >> 31) ^ (-1))) - 255;
        return (i2 & (i2 >> 31)) + 255;
    }

    public static HashMap<String, ConstraintAttribute> extractAttributes(HashMap<String, ConstraintAttribute> hashMap, View view) {
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

    public static void parse(Context context, XmlPullParser xmlPullParser, HashMap<String, ConstraintAttribute> hashMap) {
        AttributeType attributeType;
        Object obj;
        String str;
        AttributeType attributeType2;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0203R.styleable.CustomAttribute);
        int indexCount = obtainStyledAttributes.getIndexCount();
        String str2 = null;
        Object obj2 = null;
        AttributeType attributeType3 = null;
        int i = 0;
        while (i < indexCount) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == C0203R.styleable.CustomAttribute_attributeName) {
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
            } else if (index == C0203R.styleable.CustomAttribute_customBoolean) {
                obj = Boolean.valueOf(obtainStyledAttributes.getBoolean(index, false));
                attributeType = AttributeType.BOOLEAN_TYPE;
                str = str2;
            } else {
                if (index == C0203R.styleable.CustomAttribute_customColorValue) {
                    attributeType2 = AttributeType.COLOR_TYPE;
                    obj = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else if (index == C0203R.styleable.CustomAttribute_customColorDrawableValue) {
                    attributeType2 = AttributeType.COLOR_DRAWABLE_TYPE;
                    obj = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else if (index == C0203R.styleable.CustomAttribute_customPixelDimension) {
                    attributeType2 = AttributeType.DIMENSION_TYPE;
                    obj = Float.valueOf(TypedValue.applyDimension(1, obtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics()));
                } else if (index == C0203R.styleable.CustomAttribute_customDimension) {
                    attributeType2 = AttributeType.DIMENSION_TYPE;
                    obj = Float.valueOf(obtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == C0203R.styleable.CustomAttribute_customFloatValue) {
                    attributeType2 = AttributeType.FLOAT_TYPE;
                    obj = Float.valueOf(obtainStyledAttributes.getFloat(index, Float.NaN));
                } else if (index == C0203R.styleable.CustomAttribute_customIntegerValue) {
                    attributeType2 = AttributeType.INT_TYPE;
                    obj = Integer.valueOf(obtainStyledAttributes.getInteger(index, -1));
                } else {
                    str = str2;
                    obj = obj2;
                    attributeType = attributeType3;
                    if (index == C0203R.styleable.CustomAttribute_customStringValue) {
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

    public static void setAttributes(View view, HashMap<String, ConstraintAttribute> hashMap) {
        Class<?> cls = view.getClass();
        for (String str : hashMap.keySet()) {
            ConstraintAttribute constraintAttribute = hashMap.get(str);
            String str2 = "set" + str;
            try {
                switch (C02011.f50x66adad53[constraintAttribute.mType.ordinal()]) {
                    case 1:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(constraintAttribute.mColorValue));
                        break;
                    case 2:
                        Method method = cls.getMethod(str2, Drawable.class);
                        ColorDrawable colorDrawable = new ColorDrawable();
                        colorDrawable.setColor(constraintAttribute.mColorValue);
                        method.invoke(view, colorDrawable);
                        break;
                    case 3:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(constraintAttribute.mIntegerValue));
                        break;
                    case 4:
                        cls.getMethod(str2, Float.TYPE).invoke(view, Float.valueOf(constraintAttribute.mFloatValue));
                        break;
                    case 5:
                        cls.getMethod(str2, CharSequence.class).invoke(view, constraintAttribute.mStringValue);
                        break;
                    case 6:
                        cls.getMethod(str2, Boolean.TYPE).invoke(view, Boolean.valueOf(constraintAttribute.mBooleanValue));
                        break;
                    case 7:
                        cls.getMethod(str2, Float.TYPE).invoke(view, Float.valueOf(constraintAttribute.mFloatValue));
                        break;
                }
            } catch (IllegalAccessException e) {
                Log.e(TAG, " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                e.printStackTrace();
            } catch (NoSuchMethodException e2) {
                Log.e(TAG, e2.getMessage());
                Log.e(TAG, " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                StringBuilder sb = new StringBuilder();
                sb.append(cls.getName());
                sb.append(" must have a method ");
                sb.append(str2);
                Log.e(TAG, sb.toString());
            } catch (InvocationTargetException e3) {
                Log.e(TAG, " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                e3.printStackTrace();
            }
        }
    }

    public boolean diff(ConstraintAttribute constraintAttribute) {
        boolean z = false;
        if (constraintAttribute != null) {
            if (this.mType != constraintAttribute.mType) {
                z = false;
            } else {
                switch (C02011.f50x66adad53[this.mType.ordinal()]) {
                    case 1:
                    case 2:
                        z = false;
                        if (this.mColorValue == constraintAttribute.mColorValue) {
                            z = true;
                            break;
                        }
                        break;
                    case 3:
                        boolean z2 = false;
                        if (this.mIntegerValue == constraintAttribute.mIntegerValue) {
                            z2 = true;
                        }
                        return z2;
                    case 4:
                        boolean z3 = false;
                        if (this.mFloatValue == constraintAttribute.mFloatValue) {
                            z3 = true;
                        }
                        return z3;
                    case 5:
                        boolean z4 = false;
                        if (this.mIntegerValue == constraintAttribute.mIntegerValue) {
                            z4 = true;
                        }
                        return z4;
                    case 6:
                        boolean z5 = false;
                        if (this.mBooleanValue == constraintAttribute.mBooleanValue) {
                            z5 = true;
                        }
                        return z5;
                    case 7:
                        boolean z6 = false;
                        if (this.mFloatValue == constraintAttribute.mFloatValue) {
                            z6 = true;
                        }
                        return z6;
                    default:
                        return false;
                }
            }
        }
        return z;
    }

    public AttributeType getType() {
        return this.mType;
    }

    public float getValueToInterpolate() {
        switch (C02011.f50x66adad53[this.mType.ordinal()]) {
            case 1:
            case 2:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 3:
                return this.mIntegerValue;
            case 4:
                return this.mFloatValue;
            case 5:
                throw new RuntimeException("Cannot interpolate String");
            case 6:
                return this.mBooleanValue ? 1.0f : 0.0f;
            case 7:
                return this.mFloatValue;
            default:
                return Float.NaN;
        }
    }

    public void getValuesToInterpolate(float[] fArr) {
        switch (C02011.f50x66adad53[this.mType.ordinal()]) {
            case 1:
            case 2:
                int i = this.mColorValue;
                float pow = (float) Math.pow(((i >> 16) & 255) / 255.0f, 2.2d);
                float pow2 = (float) Math.pow(((i >> 8) & 255) / 255.0f, 2.2d);
                fArr[0] = pow;
                fArr[1] = pow2;
                fArr[2] = (float) Math.pow((i & 255) / 255.0f, 2.2d);
                fArr[3] = ((i >> 24) & 255) / 255.0f;
                return;
            case 3:
                fArr[0] = this.mIntegerValue;
                return;
            case 4:
                fArr[0] = this.mFloatValue;
                return;
            case 5:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 6:
                fArr[0] = this.mBooleanValue ? 1.0f : 0.0f;
                return;
            case 7:
                fArr[0] = this.mFloatValue;
                return;
            default:
                return;
        }
    }

    public int noOfInterpValues() {
        int i = C02011.f50x66adad53[this.mType.ordinal()];
        return (i == 1 || i == 2) ? 4 : 1;
    }

    public void setColorValue(int i) {
        this.mColorValue = i;
    }

    public void setFloatValue(float f) {
        this.mFloatValue = f;
    }

    public void setIntValue(int i) {
        this.mIntegerValue = i;
    }

    public void setInterpolatedValue(View view, float[] fArr) {
        Class<?> cls = view.getClass();
        String str = "set" + this.mName;
        try {
            boolean z = true;
            switch (C02011.f50x66adad53[this.mType.ordinal()]) {
                case 1:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf((clamp((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (clamp((int) (fArr[3] * 255.0f)) << 24) | (clamp((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | clamp((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f))));
                    return;
                case 2:
                    Method method = cls.getMethod(str, Drawable.class);
                    int clamp = clamp((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f));
                    int clamp2 = clamp((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f));
                    int clamp3 = clamp((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f));
                    int clamp4 = clamp((int) (fArr[3] * 255.0f));
                    ColorDrawable colorDrawable = new ColorDrawable();
                    colorDrawable.setColor((clamp << 16) | (clamp4 << 24) | (clamp2 << 8) | clamp3);
                    method.invoke(view, colorDrawable);
                    return;
                case 3:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf((int) fArr[0]));
                    return;
                case 4:
                    cls.getMethod(str, Float.TYPE).invoke(view, Float.valueOf(fArr[0]));
                    return;
                case 5:
                    throw new RuntimeException("unable to interpolate strings " + this.mName);
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
            Log.e(TAG, "cannot access method " + str + "on View \"" + Debug.getName(view) + "\"");
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            Log.e(TAG, "no method " + str + "on View \"" + Debug.getName(view) + "\"");
            e2.printStackTrace();
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
        }
    }

    public void setStringValue(String str) {
        this.mStringValue = str;
    }

    public void setValue(Object obj) {
        switch (C02011.f50x66adad53[this.mType.ordinal()]) {
            case 1:
            case 2:
                this.mColorValue = ((Integer) obj).intValue();
                return;
            case 3:
                this.mIntegerValue = ((Integer) obj).intValue();
                return;
            case 4:
                this.mFloatValue = ((Float) obj).floatValue();
                return;
            case 5:
                this.mStringValue = (String) obj;
                return;
            case 6:
                this.mBooleanValue = ((Boolean) obj).booleanValue();
                return;
            case 7:
                this.mFloatValue = ((Float) obj).floatValue();
                return;
            default:
                return;
        }
    }

    public void setValue(float[] fArr) {
        boolean z = false;
        switch (C02011.f50x66adad53[this.mType.ordinal()]) {
            case 1:
            case 2:
                int HSVToColor = Color.HSVToColor(fArr);
                this.mColorValue = HSVToColor;
                this.mColorValue = (clamp((int) (fArr[3] * 255.0f)) << 24) | (HSVToColor & ViewCompat.MEASURED_SIZE_MASK);
                return;
            case 3:
                this.mIntegerValue = (int) fArr[0];
                return;
            case 4:
                this.mFloatValue = fArr[0];
                return;
            case 5:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 6:
                if (fArr[0] > 0.5d) {
                    z = true;
                }
                this.mBooleanValue = z;
                return;
            case 7:
                this.mFloatValue = fArr[0];
                return;
            default:
                return;
        }
    }
}
