package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.appcompat.C0083a;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: androidx.appcompat.widget.u */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/u.class */
public class C0365u {

    /* renamed from: a */
    private static final RectF f1510a = new RectF();

    /* renamed from: b */
    private static ConcurrentHashMap<String, Method> f1511b = new ConcurrentHashMap<>();

    /* renamed from: c */
    private static ConcurrentHashMap<String, Field> f1512c = new ConcurrentHashMap<>();

    /* renamed from: d */
    private int f1513d = 0;

    /* renamed from: e */
    private boolean f1514e = false;

    /* renamed from: f */
    private float f1515f = -1.0f;

    /* renamed from: g */
    private float f1516g = -1.0f;

    /* renamed from: h */
    private float f1517h = -1.0f;

    /* renamed from: i */
    private int[] f1518i = new int[0];

    /* renamed from: j */
    private boolean f1519j = false;

    /* renamed from: k */
    private TextPaint f1520k;

    /* renamed from: l */
    private final TextView f1521l;

    /* renamed from: m */
    private final Context f1522m;

    public C0365u(TextView textView) {
        this.f1521l = textView;
        this.f1522m = this.f1521l.getContext();
    }

    /* renamed from: a */
    private int m21230a(RectF rectF) {
        int length = this.f1518i.length;
        if (length == 0) {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int i = 0;
        int i2 = length - 1;
        int i3 = 1;
        while (i3 <= i2) {
            int i4 = (i3 + i2) / 2;
            if (m21232a(this.f1518i[i4], rectF)) {
                i = i3;
                i3 = i4 + 1;
            } else {
                i = i4 - 1;
                i2 = i;
            }
        }
        return this.f1518i[i];
    }

    /* renamed from: a */
    private StaticLayout m21228a(CharSequence charSequence, Layout.Alignment alignment, int i) {
        return new StaticLayout(charSequence, this.f1520k, i, alignment, this.f1521l.getLineSpacingMultiplier(), this.f1521l.getLineSpacingExtra(), this.f1521l.getIncludeFontPadding());
    }

    /* renamed from: a */
    private static <T> T m21226a(Object obj, String str, T t) {
        boolean z = false;
        try {
            try {
                Object invoke = m21225a(str).invoke(obj, new Object[0]);
                t = invoke;
                if (invoke == 0) {
                }
            } catch (Exception e) {
                z = true;
                Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e);
                if (0 != 0) {
                    t = null;
                }
            }
            return t;
        } catch (Throwable th) {
            if (0 != 0 || z) {
            }
            throw th;
        }
    }

    /* renamed from: a */
    private static Method m21225a(String str) {
        Method method;
        try {
            Method method2 = f1511b.get(str);
            method = method2;
            if (method2 == null) {
                Method declaredMethod = TextView.class.getDeclaredMethod(str, new Class[0]);
                method = declaredMethod;
                if (declaredMethod != null) {
                    declaredMethod.setAccessible(true);
                    f1511b.put(str, declaredMethod);
                    method = declaredMethod;
                }
            }
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e);
            method = null;
        }
        return method;
    }

    /* renamed from: a */
    private void m21237a(float f) {
        if (f != this.f1521l.getPaint().getTextSize()) {
            this.f1521l.getPaint().setTextSize(f);
            boolean isInLayout = Build.VERSION.SDK_INT >= 18 ? this.f1521l.isInLayout() : false;
            if (this.f1521l.getLayout() == null) {
                return;
            }
            this.f1514e = false;
            try {
                Method m21225a = m21225a("nullLayouts");
                if (m21225a != null) {
                    m21225a.invoke(this.f1521l, new Object[0]);
                }
            } catch (Exception e) {
                Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e);
            }
            if (!isInLayout) {
                this.f1521l.requestLayout();
            } else {
                this.f1521l.forceLayout();
            }
            this.f1521l.invalidate();
        }
    }

    /* renamed from: a */
    private void m21236a(float f, float f2, float f3) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f + "px) is less or equal to (0px)");
        }
        if (f2 <= f) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f2 + "px) is less or equal to minimum auto-size text size (" + f + "px)");
        }
        if (f3 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f3 + "px) is less or equal to (0px)");
        }
        this.f1513d = 1;
        this.f1516g = f;
        this.f1517h = f2;
        this.f1515f = f3;
        this.f1519j = false;
    }

    /* renamed from: a */
    private void m21231a(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i = 0; i < length; i++) {
                iArr[i] = typedArray.getDimensionPixelSize(i, -1);
            }
            this.f1518i = m21224a(iArr);
            m21211h();
        }
    }

    /* renamed from: a */
    private boolean m21232a(int i, RectF rectF) {
        CharSequence text = this.f1521l.getText();
        TransformationMethod transformationMethod = this.f1521l.getTransformationMethod();
        CharSequence charSequence = text;
        if (transformationMethod != null) {
            CharSequence transformation = transformationMethod.getTransformation(text, this.f1521l);
            charSequence = text;
            if (transformation != null) {
                charSequence = transformation;
            }
        }
        int maxLines = Build.VERSION.SDK_INT >= 16 ? this.f1521l.getMaxLines() : -1;
        m21221b(i);
        StaticLayout m21227a = m21227a(charSequence, (Layout.Alignment) m21226a(this.f1521l, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines);
        return (maxLines == -1 || (m21227a.getLineCount() <= maxLines && m21227a.getLineEnd(m21227a.getLineCount() - 1) == charSequence.length())) ? ((float) m21227a.getHeight()) <= rectF.bottom : false;
    }

    /* renamed from: a */
    private int[] m21224a(int[] iArr) {
        int length = iArr.length;
        if (length != 0) {
            Arrays.sort(iArr);
            ArrayList arrayList = new ArrayList();
            for (int i : iArr) {
                if (i > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i)) < 0) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            if (length != arrayList.size()) {
                int size = arrayList.size();
                int[] iArr2 = new int[size];
                int i2 = 0;
                while (true) {
                    iArr = iArr2;
                    if (i2 >= size) {
                        break;
                    }
                    iArr2[i2] = ((Integer) arrayList.get(i2)).intValue();
                    i2++;
                }
            }
        }
        return iArr;
    }

    /* renamed from: b */
    private StaticLayout m21220b(CharSequence charSequence, Layout.Alignment alignment, int i) {
        return new StaticLayout(charSequence, this.f1520k, i, alignment, ((Float) m21218b(this.f1521l, "mSpacingMult", Float.valueOf(1.0f))).floatValue(), ((Float) m21218b(this.f1521l, "mSpacingAdd", Float.valueOf(0.0f))).floatValue(), ((Boolean) m21218b(this.f1521l, "mIncludePad", true)).booleanValue());
    }

    /* renamed from: b */
    private StaticLayout m21219b(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.f1520k, i);
        StaticLayout.Builder hyphenationFrequency = obtain.setAlignment(alignment).setLineSpacing(this.f1521l.getLineSpacingExtra(), this.f1521l.getLineSpacingMultiplier()).setIncludePad(this.f1521l.getIncludeFontPadding()).setBreakStrategy(this.f1521l.getBreakStrategy()).setHyphenationFrequency(this.f1521l.getHyphenationFrequency());
        int i3 = i2;
        if (i2 == -1) {
            i3 = Integer.MAX_VALUE;
        }
        hyphenationFrequency.setMaxLines(i3);
        try {
            obtain.setTextDirection(Build.VERSION.SDK_INT >= 29 ? this.f1521l.getTextDirectionHeuristic() : (TextDirectionHeuristic) m21226a(this.f1521l, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        } catch (ClassCastException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
        }
        return obtain.build();
    }

    /* renamed from: b */
    private static <T> T m21218b(Object obj, String str, T t) {
        T t2;
        try {
            Field m21217b = m21217b(str);
            t2 = m21217b == null ? t : m21217b.get(obj);
        } catch (IllegalAccessException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e);
            t2 = t;
        }
        return t2;
    }

    /* renamed from: b */
    private static Field m21217b(String str) {
        Field field;
        try {
            Field field2 = f1512c.get(str);
            field = field2;
            if (field2 == null) {
                Field declaredField = TextView.class.getDeclaredField(str);
                field = declaredField;
                if (declaredField != null) {
                    declaredField.setAccessible(true);
                    f1512c.put(str, declaredField);
                    field = declaredField;
                }
            }
        } catch (NoSuchFieldException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e);
            field = null;
        }
        return field;
    }

    /* renamed from: h */
    private boolean m21211h() {
        int length = this.f1518i.length;
        this.f1519j = length > 0;
        if (this.f1519j) {
            this.f1513d = 1;
            this.f1516g = this.f1518i[0];
            this.f1517h = this.f1518i[length - 1];
            this.f1515f = -1.0f;
        }
        return this.f1519j;
    }

    /* renamed from: i */
    private boolean m21210i() {
        if (!m21208k() || this.f1513d != 1) {
            this.f1514e = false;
        } else {
            if (!this.f1519j || this.f1518i.length == 0) {
                int floor = ((int) Math.floor((this.f1517h - this.f1516g) / this.f1515f)) + 1;
                int[] iArr = new int[floor];
                for (int i = 0; i < floor; i++) {
                    iArr[i] = Math.round(this.f1516g + (i * this.f1515f));
                }
                this.f1518i = m21224a(iArr);
            }
            this.f1514e = true;
        }
        return this.f1514e;
    }

    /* renamed from: j */
    private void m21209j() {
        this.f1513d = 0;
        this.f1516g = -1.0f;
        this.f1517h = -1.0f;
        this.f1515f = -1.0f;
        this.f1518i = new int[0];
        this.f1514e = false;
    }

    /* renamed from: k */
    private boolean m21208k() {
        return !(this.f1521l instanceof AppCompatEditText);
    }

    /* renamed from: a */
    public int m21238a() {
        return this.f1513d;
    }

    /* renamed from: a */
    StaticLayout m21227a(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        return Build.VERSION.SDK_INT >= 23 ? m21219b(charSequence, alignment, i, i2) : Build.VERSION.SDK_INT >= 16 ? m21228a(charSequence, alignment, i) : m21220b(charSequence, alignment, i);
    }

    /* renamed from: a */
    public void m21235a(int i) {
        if (m21208k()) {
            switch (i) {
                case 0:
                    m21209j();
                    return;
                case 1:
                    DisplayMetrics displayMetrics = this.f1522m.getResources().getDisplayMetrics();
                    m21236a(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
                    if (!m21210i()) {
                        return;
                    }
                    m21213f();
                    return;
                default:
                    throw new IllegalArgumentException("Unknown auto-size text type: " + i);
            }
        }
    }

    /* renamed from: a */
    public void m21234a(int i, float f) {
        m21237a(TypedValue.applyDimension(i, f, (this.f1522m == null ? Resources.getSystem() : this.f1522m.getResources()).getDisplayMetrics()));
    }

    /* renamed from: a */
    public void m21233a(int i, int i2, int i3, int i4) {
        if (m21208k()) {
            DisplayMetrics displayMetrics = this.f1522m.getResources().getDisplayMetrics();
            m21236a(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (!m21210i()) {
                return;
            }
            m21213f();
        }
    }

    /* renamed from: a */
    public void m21229a(AttributeSet attributeSet, int i) {
        int resourceId;
        TypedArray obtainStyledAttributes = this.f1522m.obtainStyledAttributes(attributeSet, C0083a.C0093j.AppCompatTextView, i, 0);
        if (obtainStyledAttributes.hasValue(C0083a.C0093j.AppCompatTextView_autoSizeTextType)) {
            this.f1513d = obtainStyledAttributes.getInt(C0083a.C0093j.AppCompatTextView_autoSizeTextType, 0);
        }
        float dimension = obtainStyledAttributes.hasValue(C0083a.C0093j.AppCompatTextView_autoSizeStepGranularity) ? obtainStyledAttributes.getDimension(C0083a.C0093j.AppCompatTextView_autoSizeStepGranularity, -1.0f) : -1.0f;
        float dimension2 = obtainStyledAttributes.hasValue(C0083a.C0093j.AppCompatTextView_autoSizeMinTextSize) ? obtainStyledAttributes.getDimension(C0083a.C0093j.AppCompatTextView_autoSizeMinTextSize, -1.0f) : -1.0f;
        float dimension3 = obtainStyledAttributes.hasValue(C0083a.C0093j.AppCompatTextView_autoSizeMaxTextSize) ? obtainStyledAttributes.getDimension(C0083a.C0093j.AppCompatTextView_autoSizeMaxTextSize, -1.0f) : -1.0f;
        if (obtainStyledAttributes.hasValue(C0083a.C0093j.AppCompatTextView_autoSizePresetSizes) && (resourceId = obtainStyledAttributes.getResourceId(C0083a.C0093j.AppCompatTextView_autoSizePresetSizes, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            m21231a(obtainTypedArray);
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (!m21208k()) {
            this.f1513d = 0;
        } else if (this.f1513d != 1) {
        } else {
            if (!this.f1519j) {
                DisplayMetrics displayMetrics = this.f1522m.getResources().getDisplayMetrics();
                float f = dimension2;
                if (dimension2 == -1.0f) {
                    f = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                }
                float f2 = dimension3;
                if (dimension3 == -1.0f) {
                    f2 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                }
                float f3 = dimension;
                if (dimension == -1.0f) {
                    f3 = 1.0f;
                }
                m21236a(f, f2, f3);
            }
            m21210i();
        }
    }

    /* renamed from: a */
    public void m21223a(int[] iArr, int i) {
        int[] iArr2;
        int i2 = 0;
        if (m21208k()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArr3 = new int[length];
                if (i != 0) {
                    DisplayMetrics displayMetrics = this.f1522m.getResources().getDisplayMetrics();
                    while (true) {
                        iArr2 = iArr3;
                        if (i2 >= length) {
                            break;
                        }
                        iArr3[i2] = Math.round(TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                        i2++;
                    }
                } else {
                    iArr2 = Arrays.copyOf(iArr, length);
                }
                this.f1518i = m21224a(iArr2);
                if (!m21211h()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.f1519j = false;
            }
            if (!m21210i()) {
                return;
            }
            m21213f();
        }
    }

    /* renamed from: b */
    public int m21222b() {
        return Math.round(this.f1515f);
    }

    /* renamed from: b */
    void m21221b(int i) {
        if (this.f1520k == null) {
            this.f1520k = new TextPaint();
        } else {
            this.f1520k.reset();
        }
        this.f1520k.set(this.f1521l.getPaint());
        this.f1520k.setTextSize(i);
    }

    /* renamed from: c */
    public int m21216c() {
        return Math.round(this.f1516g);
    }

    /* renamed from: d */
    public int m21215d() {
        return Math.round(this.f1517h);
    }

    /* renamed from: e */
    public int[] m21214e() {
        return this.f1518i;
    }

    /* renamed from: f */
    public void m21213f() {
        if (!m21212g()) {
            return;
        }
        if (this.f1514e) {
            if (this.f1521l.getMeasuredHeight() <= 0 || this.f1521l.getMeasuredWidth() <= 0) {
                return;
            }
            int measuredWidth = Build.VERSION.SDK_INT >= 29 ? this.f1521l.isHorizontallyScrollable() : ((Boolean) m21226a(this.f1521l, "getHorizontallyScrolling", false)).booleanValue() ? 1048576 : (this.f1521l.getMeasuredWidth() - this.f1521l.getTotalPaddingLeft()) - this.f1521l.getTotalPaddingRight();
            int height = (this.f1521l.getHeight() - this.f1521l.getCompoundPaddingBottom()) - this.f1521l.getCompoundPaddingTop();
            if (measuredWidth <= 0 || height <= 0) {
                return;
            }
            synchronized (f1510a) {
                f1510a.setEmpty();
                f1510a.right = measuredWidth;
                f1510a.bottom = height;
                float m21230a = m21230a(f1510a);
                if (m21230a != this.f1521l.getTextSize()) {
                    m21234a(0, m21230a);
                }
            }
        }
        this.f1514e = true;
    }

    /* renamed from: g */
    public boolean m21212g() {
        return m21208k() && this.f1513d != 0;
    }
}
