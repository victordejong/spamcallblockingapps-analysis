package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import d.a.j;
import d.h.m.t;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.m */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/m.class */
public class C0143m {

    /* renamed from: l */
    private static final RectF f652l = new RectF();

    /* renamed from: m */
    private static ConcurrentHashMap<String, Method> f653m = new ConcurrentHashMap<>();

    /* renamed from: n */
    private static ConcurrentHashMap<String, Field> f654n = new ConcurrentHashMap<>();

    /* renamed from: a */
    private int f655a = 0;

    /* renamed from: b */
    private boolean f656b = false;

    /* renamed from: c */
    private float f657c = -1.0f;

    /* renamed from: d */
    private float f658d = -1.0f;

    /* renamed from: e */
    private float f659e = -1.0f;

    /* renamed from: f */
    private int[] f660f = new int[0];

    /* renamed from: g */
    private boolean f661g = false;

    /* renamed from: h */
    private TextPaint f662h;

    /* renamed from: i */
    private final TextView f663i;

    /* renamed from: j */
    private final Context f664j;

    /* renamed from: k */
    private final C0144c f665k;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.m$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/m$c.class */
    public static class C0144c {
        C0144c() {
        }

        /* renamed from: a */
        void m14501a(StaticLayout.Builder builder, TextView textView) {
        }

        /* renamed from: b */
        boolean m14500b(TextView textView) {
            return ((Boolean) C0143m.m14510r(textView, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0143m(TextView textView) {
        this.f663i = textView;
        this.f664j = textView.getContext();
        int i = Build.VERSION.SDK_INT;
        this.f665k = i >= 29 ? new b() : i >= 23 ? new a() : new C0144c();
    }

    /* renamed from: A */
    private void m14532A(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i = 0; i < length; i++) {
                iArr[i] = typedArray.getDimensionPixelSize(i, -1);
            }
            this.f660f = m14525c(iArr);
            m14531B();
        }
    }

    /* renamed from: B */
    private boolean m14531B() {
        int[] iArr = this.f660f;
        int length = iArr.length;
        boolean z = length > 0;
        this.f661g = z;
        if (z) {
            this.f655a = 1;
            this.f658d = iArr[0];
            this.f659e = iArr[length - 1];
            this.f657c = -1.0f;
        }
        return z;
    }

    /* renamed from: C */
    private boolean m14530C(int i, RectF rectF) {
        CharSequence text = this.f663i.getText();
        TransformationMethod transformationMethod = this.f663i.getTransformationMethod();
        CharSequence charSequence = text;
        if (transformationMethod != null) {
            CharSequence transformation = transformationMethod.getTransformation(text, this.f663i);
            charSequence = text;
            if (transformation != null) {
                charSequence = transformation;
            }
        }
        int maxLines = Build.VERSION.SDK_INT >= 16 ? this.f663i.getMaxLines() : -1;
        m14511q(i);
        StaticLayout e = m14523e(charSequence, (Layout.Alignment) m14510r(this.f663i, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines);
        return (maxLines == -1 || (e.getLineCount() <= maxLines && e.getLineEnd(e.getLineCount() - 1) == charSequence.length())) && ((float) e.getHeight()) <= rectF.bottom;
    }

    /* renamed from: D */
    private boolean m14529D() {
        return !(this.f663i instanceof AppCompatEditText);
    }

    /* renamed from: E */
    private void m14528E(float f, float f2, float f3) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f + "px) is less or equal to (0px)");
        } else if (f2 <= f) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f2 + "px) is less or equal to minimum auto-size text size (" + f + "px)");
        } else if (f3 > 0.0f) {
            this.f655a = 1;
            this.f658d = f;
            this.f659e = f2;
            this.f657c = f3;
            this.f661g = false;
        } else {
            throw new IllegalArgumentException("The auto-size step granularity (" + f3 + "px) is less or equal to (0px)");
        }
    }

    /* renamed from: a */
    private static <T> T m14527a(Object obj, String str, T t) {
        try {
            Field o = m14513o(str);
            return o == null ? t : (T) o.get(obj);
        } catch (IllegalAccessException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e);
            return t;
        }
    }

    /* renamed from: c */
    private int[] m14525c(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i : iArr) {
            if (i > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i)) < 0) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr2[i2] = ((Integer) arrayList.get(i2)).intValue();
        }
        return iArr2;
    }

    /* renamed from: d */
    private void m14524d() {
        this.f655a = 0;
        this.f658d = -1.0f;
        this.f659e = -1.0f;
        this.f657c = -1.0f;
        this.f660f = new int[0];
        this.f656b = false;
    }

    /* renamed from: f */
    private StaticLayout m14522f(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.f662h, i);
        StaticLayout.Builder hyphenationFrequency = obtain.setAlignment(alignment).setLineSpacing(this.f663i.getLineSpacingExtra(), this.f663i.getLineSpacingMultiplier()).setIncludePad(this.f663i.getIncludeFontPadding()).setBreakStrategy(this.f663i.getBreakStrategy()).setHyphenationFrequency(this.f663i.getHyphenationFrequency());
        int i3 = i2;
        if (i2 == -1) {
            i3 = Integer.MAX_VALUE;
        }
        hyphenationFrequency.setMaxLines(i3);
        try {
            this.f665k.m14501a(obtain, this.f663i);
        } catch (ClassCastException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
        }
        return obtain.build();
    }

    /* renamed from: g */
    private StaticLayout m14521g(CharSequence charSequence, Layout.Alignment alignment, int i) {
        return new StaticLayout(charSequence, this.f662h, i, alignment, ((Float) m14527a(this.f663i, "mSpacingMult", Float.valueOf(1.0f))).floatValue(), ((Float) m14527a(this.f663i, "mSpacingAdd", Float.valueOf(0.0f))).floatValue(), ((Boolean) m14527a(this.f663i, "mIncludePad", Boolean.TRUE)).booleanValue());
    }

    /* renamed from: h */
    private StaticLayout m14520h(CharSequence charSequence, Layout.Alignment alignment, int i) {
        return new StaticLayout(charSequence, this.f662h, i, alignment, this.f663i.getLineSpacingMultiplier(), this.f663i.getLineSpacingExtra(), this.f663i.getIncludeFontPadding());
    }

    /* renamed from: i */
    private int m14519i(RectF rectF) {
        int length = this.f660f.length;
        if (length != 0) {
            int i = length - 1;
            int i2 = 1;
            int i3 = 0;
            while (i2 <= i) {
                int i4 = (i2 + i) / 2;
                if (m14530C(this.f660f[i4], rectF)) {
                    i3 = i2;
                    i2 = i4 + 1;
                } else {
                    i3 = i4 - 1;
                    i = i3;
                }
            }
            return this.f660f[i3];
        }
        throw new IllegalStateException("No available text sizes to choose from.");
    }

    /* renamed from: o */
    private static Field m14513o(String str) {
        try {
            Field field = f654n.get(str);
            Field field2 = field;
            if (field == null) {
                Field declaredField = TextView.class.getDeclaredField(str);
                field2 = declaredField;
                if (declaredField != null) {
                    declaredField.setAccessible(true);
                    f654n.put(str, declaredField);
                    field2 = declaredField;
                }
            }
            return field2;
        } catch (NoSuchFieldException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e);
            return null;
        }
    }

    /* renamed from: p */
    private static Method m14512p(String str) {
        try {
            Method method = f653m.get(str);
            Method method2 = method;
            if (method == null) {
                Method declaredMethod = TextView.class.getDeclaredMethod(str, new Class[0]);
                method2 = declaredMethod;
                if (declaredMethod != null) {
                    declaredMethod.setAccessible(true);
                    f653m.put(str, declaredMethod);
                    method2 = declaredMethod;
                }
            }
            return method2;
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e);
            return null;
        }
    }

    /* renamed from: r */
    static <T> T m14510r(Object obj, String str, T t) {
        try {
            t = (T) m14512p(str).invoke(obj, new Object[0]);
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e);
        }
        return t;
    }

    /* renamed from: x */
    private void m14504x(float f) {
        if (f != this.f663i.getPaint().getTextSize()) {
            this.f663i.getPaint().setTextSize(f);
            boolean isInLayout = Build.VERSION.SDK_INT >= 18 ? this.f663i.isInLayout() : false;
            if (this.f663i.getLayout() != null) {
                this.f656b = false;
                try {
                    Method p = m14512p("nullLayouts");
                    if (p != null) {
                        p.invoke(this.f663i, new Object[0]);
                    }
                } catch (Exception e) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e);
                }
                if (!isInLayout) {
                    this.f663i.requestLayout();
                } else {
                    this.f663i.forceLayout();
                }
                this.f663i.invalidate();
            }
        }
    }

    /* renamed from: z */
    private boolean m14502z() {
        if (!m14529D() || this.f655a != 1) {
            this.f656b = false;
        } else {
            if (!this.f661g || this.f660f.length == 0) {
                int floor = ((int) Math.floor((this.f659e - this.f658d) / this.f657c)) + 1;
                int[] iArr = new int[floor];
                for (int i = 0; i < floor; i++) {
                    iArr[i] = Math.round(this.f658d + (i * this.f657c));
                }
                this.f660f = m14525c(iArr);
            }
            this.f656b = true;
        }
        return this.f656b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m14526b() {
        if (m14509s()) {
            if (this.f656b) {
                if (this.f663i.getMeasuredHeight() > 0 && this.f663i.getMeasuredWidth() > 0) {
                    int measuredWidth = this.f665k.m14500b(this.f663i) ? 1048576 : (this.f663i.getMeasuredWidth() - this.f663i.getTotalPaddingLeft()) - this.f663i.getTotalPaddingRight();
                    int height = (this.f663i.getHeight() - this.f663i.getCompoundPaddingBottom()) - this.f663i.getCompoundPaddingTop();
                    if (measuredWidth > 0 && height > 0) {
                        RectF rectF = f652l;
                        synchronized (rectF) {
                            rectF.setEmpty();
                            rectF.right = measuredWidth;
                            rectF.bottom = height;
                            float i = m14519i(rectF);
                            if (i != this.f663i.getTextSize()) {
                                m14503y(0, i);
                            }
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            this.f656b = true;
        }
    }

    /* renamed from: e */
    StaticLayout m14523e(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        return i3 >= 23 ? m14522f(charSequence, alignment, i, i2) : i3 >= 16 ? m14520h(charSequence, alignment, i) : m14521g(charSequence, alignment, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public int m14518j() {
        return Math.round(this.f659e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public int m14517k() {
        return Math.round(this.f658d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public int m14516l() {
        return Math.round(this.f657c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public int[] m14515m() {
        return this.f660f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public int m14514n() {
        return this.f655a;
    }

    /* renamed from: q */
    void m14511q(int i) {
        TextPaint textPaint = this.f662h;
        if (textPaint == null) {
            this.f662h = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.f662h.set(this.f663i.getPaint());
        this.f662h.setTextSize(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public boolean m14509s() {
        return m14529D() && this.f655a != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public void m14508t(AttributeSet attributeSet, int i) {
        int resourceId;
        Context context = this.f664j;
        int[] iArr = j.AppCompatTextView;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        TextView textView = this.f663i;
        t.l0(textView, textView.getContext(), iArr, attributeSet, obtainStyledAttributes, i, 0);
        int i2 = j.AppCompatTextView_autoSizeTextType;
        if (obtainStyledAttributes.hasValue(i2)) {
            this.f655a = obtainStyledAttributes.getInt(i2, 0);
        }
        int i3 = j.AppCompatTextView_autoSizeStepGranularity;
        float dimension = obtainStyledAttributes.hasValue(i3) ? obtainStyledAttributes.getDimension(i3, -1.0f) : -1.0f;
        int i4 = j.AppCompatTextView_autoSizeMinTextSize;
        float dimension2 = obtainStyledAttributes.hasValue(i4) ? obtainStyledAttributes.getDimension(i4, -1.0f) : -1.0f;
        int i5 = j.AppCompatTextView_autoSizeMaxTextSize;
        float dimension3 = obtainStyledAttributes.hasValue(i5) ? obtainStyledAttributes.getDimension(i5, -1.0f) : -1.0f;
        int i6 = j.AppCompatTextView_autoSizePresetSizes;
        if (obtainStyledAttributes.hasValue(i6) && (resourceId = obtainStyledAttributes.getResourceId(i6, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            m14532A(obtainTypedArray);
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (!m14529D()) {
            this.f655a = 0;
        } else if (this.f655a == 1) {
            if (!this.f661g) {
                DisplayMetrics displayMetrics = this.f664j.getResources().getDisplayMetrics();
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
                m14528E(f, f2, f3);
            }
            m14502z();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public void m14507u(int i, int i2, int i3, int i4) {
        if (m14529D()) {
            DisplayMetrics displayMetrics = this.f664j.getResources().getDisplayMetrics();
            m14528E(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (m14502z()) {
                m14526b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v */
    public void m14506v(int[] iArr, int i) {
        int[] iArr2;
        if (m14529D()) {
            int length = iArr.length;
            int i2 = 0;
            if (length > 0) {
                int[] iArr3 = new int[length];
                if (i != 0) {
                    DisplayMetrics displayMetrics = this.f664j.getResources().getDisplayMetrics();
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
                this.f660f = m14525c(iArr2);
                if (!m14531B()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.f661g = false;
            }
            if (m14502z()) {
                m14526b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public void m14505w(int i) {
        if (!m14529D()) {
            return;
        }
        if (i == 0) {
            m14524d();
        } else if (i == 1) {
            DisplayMetrics displayMetrics = this.f664j.getResources().getDisplayMetrics();
            m14528E(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (m14502z()) {
                m14526b();
            }
        } else {
            throw new IllegalArgumentException("Unknown auto-size text type: " + i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y */
    public void m14503y(int i, float f) {
        Context context = this.f664j;
        m14504x(TypedValue.applyDimension(i, f, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }
}
