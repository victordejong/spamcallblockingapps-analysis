package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import androidx.constraintlayout.widget.e;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    String f1604a;

    /* renamed from: b  reason: collision with root package name */
    public EnumC0036a f1605b;

    /* renamed from: c  reason: collision with root package name */
    boolean f1606c;

    /* renamed from: d  reason: collision with root package name */
    private int f1607d;
    private float e;
    private String f;
    private int g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.widget.a$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/a$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f1608a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0036a.values().length];
            f1608a = iArr;
            try {
                iArr[EnumC0036a.COLOR_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1608a[EnumC0036a.COLOR_DRAWABLE_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1608a[EnumC0036a.INT_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1608a[EnumC0036a.FLOAT_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f1608a[EnumC0036a.STRING_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f1608a[EnumC0036a.BOOLEAN_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f1608a[EnumC0036a.DIMENSION_TYPE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: androidx.constraintlayout.widget.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/a$a.class */
    public enum EnumC0036a {
        INT_TYPE,
        FLOAT_TYPE,
        COLOR_TYPE,
        COLOR_DRAWABLE_TYPE,
        STRING_TYPE,
        BOOLEAN_TYPE,
        DIMENSION_TYPE
    }

    public a(a aVar, Object obj) {
        this.f1604a = aVar.f1604a;
        this.f1605b = aVar.f1605b;
        a(obj);
    }

    public a(String str, EnumC0036a aVar) {
        this.f1604a = str;
        this.f1605b = aVar;
    }

    public a(String str, EnumC0036a aVar, Object obj) {
        this.f1604a = str;
        this.f1605b = aVar;
        a(obj);
    }

    private static int a(int i) {
        int i2 = (i & ((i >> 31) ^ (-1))) - 255;
        return (i2 & (i2 >> 31)) + 255;
    }

    public static HashMap<String, a> a(HashMap<String, a> hashMap, View view) {
        HashMap<String, a> hashMap2 = new HashMap<>();
        Class<?> cls = view.getClass();
        for (String str : hashMap.keySet()) {
            a aVar = hashMap.get(str);
            try {
                if (str.equals("BackgroundColor")) {
                    hashMap2.put(str, new a(aVar, Integer.valueOf(((ColorDrawable) view.getBackground()).getColor())));
                } else {
                    hashMap2.put(str, new a(aVar, cls.getMethod("getMap".concat(String.valueOf(str)), new Class[0]).invoke(view, new Object[0])));
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

    public static void a(Context context, XmlPullParser xmlPullParser, HashMap<String, a> hashMap) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), e.b.CustomAttribute);
        int indexCount = obtainStyledAttributes.getIndexCount();
        String str = null;
        Object obj = null;
        EnumC0036a aVar = null;
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == e.b.CustomAttribute_attributeName) {
                String string = obtainStyledAttributes.getString(index);
                str = string;
                obj = obj;
                aVar = aVar;
                if (string != null) {
                    str = string;
                    obj = obj;
                    aVar = aVar;
                    if (string.length() > 0) {
                        str = Character.toUpperCase(string.charAt(0)) + string.substring(1);
                        obj = obj;
                        aVar = aVar;
                    }
                }
            } else if (index == e.b.CustomAttribute_customBoolean) {
                obj = Boolean.valueOf(obtainStyledAttributes.getBoolean(index, false));
                aVar = EnumC0036a.BOOLEAN_TYPE;
                str = str;
            } else {
                if (index == e.b.CustomAttribute_customColorValue) {
                    aVar = EnumC0036a.COLOR_TYPE;
                    obj = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else if (index == e.b.CustomAttribute_customColorDrawableValue) {
                    aVar = EnumC0036a.COLOR_DRAWABLE_TYPE;
                    obj = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else if (index == e.b.CustomAttribute_customPixelDimension) {
                    aVar = EnumC0036a.DIMENSION_TYPE;
                    obj = Float.valueOf(TypedValue.applyDimension(1, obtainStyledAttributes.getDimension(index, BitmapDescriptorFactory.HUE_RED), context.getResources().getDisplayMetrics()));
                } else if (index == e.b.CustomAttribute_customDimension) {
                    aVar = EnumC0036a.DIMENSION_TYPE;
                    obj = Float.valueOf(obtainStyledAttributes.getDimension(index, BitmapDescriptorFactory.HUE_RED));
                } else if (index == e.b.CustomAttribute_customFloatValue) {
                    aVar = EnumC0036a.FLOAT_TYPE;
                    obj = Float.valueOf(obtainStyledAttributes.getFloat(index, Float.NaN));
                } else if (index == e.b.CustomAttribute_customIntegerValue) {
                    aVar = EnumC0036a.INT_TYPE;
                    obj = Integer.valueOf(obtainStyledAttributes.getInteger(index, -1));
                } else {
                    str = str;
                    obj = obj;
                    aVar = aVar;
                    if (index == e.b.CustomAttribute_customStringValue) {
                        aVar = EnumC0036a.STRING_TYPE;
                        obj = obtainStyledAttributes.getString(index);
                    }
                }
                str = str;
            }
        }
        if (!(str == null || obj == null)) {
            hashMap.put(str, new a(str, aVar, obj));
        }
        obtainStyledAttributes.recycle();
    }

    public static void a(View view, HashMap<String, a> hashMap) {
        Class<?> cls = view.getClass();
        for (String str : hashMap.keySet()) {
            a aVar = hashMap.get(str);
            String concat = "set".concat(String.valueOf(str));
            try {
                switch (AnonymousClass1.f1608a[aVar.f1605b.ordinal()]) {
                    case 1:
                        cls.getMethod(concat, Integer.TYPE).invoke(view, Integer.valueOf(aVar.g));
                        break;
                    case 2:
                        Method method = cls.getMethod(concat, Drawable.class);
                        ColorDrawable colorDrawable = new ColorDrawable();
                        colorDrawable.setColor(aVar.g);
                        method.invoke(view, colorDrawable);
                        break;
                    case 3:
                        cls.getMethod(concat, Integer.TYPE).invoke(view, Integer.valueOf(aVar.f1607d));
                        break;
                    case 4:
                        cls.getMethod(concat, Float.TYPE).invoke(view, Float.valueOf(aVar.e));
                        break;
                    case 5:
                        cls.getMethod(concat, CharSequence.class).invoke(view, aVar.f);
                        break;
                    case 6:
                        cls.getMethod(concat, Boolean.TYPE).invoke(view, Boolean.valueOf(aVar.f1606c));
                        break;
                    case 7:
                        cls.getMethod(concat, Float.TYPE).invoke(view, Float.valueOf(aVar.e));
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

    private void a(Object obj) {
        switch (AnonymousClass1.f1608a[this.f1605b.ordinal()]) {
            case 1:
            case 2:
                this.g = ((Integer) obj).intValue();
                return;
            case 3:
                this.f1607d = ((Integer) obj).intValue();
                return;
            case 4:
                this.e = ((Float) obj).floatValue();
                return;
            case 5:
                this.f = (String) obj;
                return;
            case 6:
                this.f1606c = ((Boolean) obj).booleanValue();
                return;
            case 7:
                this.e = ((Float) obj).floatValue();
                return;
            default:
                return;
        }
    }

    public final int a() {
        int i = AnonymousClass1.f1608a[this.f1605b.ordinal()];
        return (i == 1 || i == 2) ? 4 : 1;
    }

    public final void a(View view, float[] fArr) {
        Class<?> cls = view.getClass();
        String str = "set" + this.f1604a;
        try {
            boolean z = true;
            switch (AnonymousClass1.f1608a[this.f1605b.ordinal()]) {
                case 1:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf((a((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (a((int) (fArr[3] * 255.0f)) << 24) | (a((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | a((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f))));
                    return;
                case 2:
                    Method method = cls.getMethod(str, Drawable.class);
                    int a2 = a((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f));
                    int a3 = a((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f));
                    int a4 = a((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f));
                    int a5 = a((int) (fArr[3] * 255.0f));
                    ColorDrawable colorDrawable = new ColorDrawable();
                    colorDrawable.setColor((a2 << 16) | (a5 << 24) | (a3 << 8) | a4);
                    method.invoke(view, colorDrawable);
                    return;
                case 3:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf((int) fArr[0]));
                    return;
                case 4:
                    cls.getMethod(str, Float.TYPE).invoke(view, Float.valueOf(fArr[0]));
                    return;
                case 5:
                    throw new RuntimeException("unable to interpolate strings " + this.f1604a);
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
            Log.e("TransitionLayout", "cannot access method " + str + "on View \"" + androidx.constraintlayout.motion.widget.a.a(view) + "\"");
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            Log.e("TransitionLayout", "no method " + str + "on View \"" + androidx.constraintlayout.motion.widget.a.a(view) + "\"");
            e2.printStackTrace();
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
        }
    }

    public final void a(float[] fArr) {
        switch (AnonymousClass1.f1608a[this.f1605b.ordinal()]) {
            case 1:
            case 2:
                int i = this.g;
                float pow = (float) Math.pow(((i >> 16) & 255) / 255.0f, 2.2d);
                float pow2 = (float) Math.pow(((i >> 8) & 255) / 255.0f, 2.2d);
                fArr[0] = pow;
                fArr[1] = pow2;
                fArr[2] = (float) Math.pow((i & 255) / 255.0f, 2.2d);
                fArr[3] = ((i >> 24) & 255) / 255.0f;
                return;
            case 3:
                fArr[0] = this.f1607d;
                return;
            case 4:
                fArr[0] = this.e;
                return;
            case 5:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 6:
                fArr[0] = this.f1606c ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                return;
            case 7:
                fArr[0] = this.e;
                return;
            default:
                return;
        }
    }

    public final float b() {
        switch (AnonymousClass1.f1608a[this.f1605b.ordinal()]) {
            case 1:
            case 2:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 3:
                return this.f1607d;
            case 4:
                return this.e;
            case 5:
                throw new RuntimeException("Cannot interpolate String");
            case 6:
                if (this.f1606c) {
                    return 1.0f;
                }
                return BitmapDescriptorFactory.HUE_RED;
            case 7:
                return this.e;
            default:
                return Float.NaN;
        }
    }
}
