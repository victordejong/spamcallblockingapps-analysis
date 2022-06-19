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
import androidx.appcompat.C0142a;
import androidx.core.view.C0926v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: androidx.appcompat.widget.m */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/m.class */
public final class C0401m {

    /* renamed from: f */
    private static final RectF f1616f = new RectF();

    /* renamed from: g */
    private static ConcurrentHashMap<String, Method> f1617g = new ConcurrentHashMap<>();

    /* renamed from: h */
    private static ConcurrentHashMap<String, Field> f1618h = new ConcurrentHashMap<>();

    /* renamed from: k */
    private TextPaint f1626k;

    /* renamed from: l */
    private final TextView f1627l;

    /* renamed from: m */
    private final Context f1628m;

    /* renamed from: n */
    private final C0402a f1629n;

    /* renamed from: a */
    int f1619a = 0;

    /* renamed from: i */
    private boolean f1624i = false;

    /* renamed from: b */
    float f1620b = -1.0f;

    /* renamed from: c */
    float f1621c = -1.0f;

    /* renamed from: d */
    float f1622d = -1.0f;

    /* renamed from: e */
    int[] f1623e = new int[0];

    /* renamed from: j */
    private boolean f1625j = false;

    /* renamed from: androidx.appcompat.widget.m$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/m$a.class */
    public static class C0402a {
        C0402a() {
        }

        /* renamed from: a */
        void mo45664a(StaticLayout.Builder builder, TextView textView) {
        }

        /* renamed from: a */
        boolean mo45663a(TextView textView) {
            return ((Boolean) C0401m.m45677a(textView, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.m$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/m$b.class */
    public static class C0403b extends C0402a {
        C0403b() {
        }

        @Override // androidx.appcompat.widget.C0401m.C0402a
        /* renamed from: a */
        void mo45664a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection((TextDirectionHeuristic) C0401m.m45677a(textView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.m$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/m$c.class */
    public static final class C0404c extends C0403b {
        C0404c() {
        }

        @Override // androidx.appcompat.widget.C0401m.C0403b, androidx.appcompat.widget.C0401m.C0402a
        /* renamed from: a */
        final void mo45664a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection(textView.getTextDirectionHeuristic());
        }

        @Override // androidx.appcompat.widget.C0401m.C0402a
        /* renamed from: a */
        final boolean mo45663a(TextView textView) {
            return textView.isHorizontallyScrollable();
        }
    }

    public C0401m(TextView textView) {
        this.f1627l = textView;
        this.f1628m = textView.getContext();
        if (Build.VERSION.SDK_INT >= 29) {
            this.f1629n = new C0404c();
        } else if (Build.VERSION.SDK_INT >= 23) {
            this.f1629n = new C0403b();
        } else {
            this.f1629n = new C0402a();
        }
    }

    /* renamed from: a */
    private int m45680a(RectF rectF) {
        int length = this.f1623e.length;
        if (length != 0) {
            int i = length - 1;
            int i2 = 1;
            int i3 = 0;
            while (i2 <= i) {
                int i4 = (i2 + i) / 2;
                if (m45682a(this.f1623e[i4], rectF)) {
                    i3 = i2;
                    i2 = i4 + 1;
                } else {
                    i3 = i4 - 1;
                    i = i3;
                }
            }
            return this.f1623e[i3];
        }
        throw new IllegalStateException("No available text sizes to choose from.");
    }

    /* renamed from: a */
    private StaticLayout m45678a(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return m45671b(charSequence, alignment, i, i2);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return new StaticLayout(charSequence, this.f1626k, i, alignment, this.f1627l.getLineSpacingMultiplier(), this.f1627l.getLineSpacingExtra(), this.f1627l.getIncludeFontPadding());
        }
        return new StaticLayout(charSequence, this.f1626k, i, alignment, ((Float) m45670b(this.f1627l, "mSpacingMult", Float.valueOf(1.0f))).floatValue(), ((Float) m45670b(this.f1627l, "mSpacingAdd", Float.valueOf((float) BitmapDescriptorFactory.HUE_RED))).floatValue(), ((Boolean) m45670b(this.f1627l, "mIncludePad", Boolean.TRUE)).booleanValue());
    }

    /* renamed from: a */
    static <T> T m45677a(Object obj, String str, T t) {
        try {
            t = m45676a(str).invoke(obj, new Object[0]);
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e);
        }
        return t;
    }

    /* renamed from: a */
    private static Method m45676a(String str) {
        try {
            Method method = f1617g.get(str);
            Method method2 = method;
            if (method == null) {
                Method declaredMethod = TextView.class.getDeclaredMethod(str, new Class[0]);
                method2 = declaredMethod;
                if (declaredMethod != null) {
                    declaredMethod.setAccessible(true);
                    f1617g.put(str, declaredMethod);
                    method2 = declaredMethod;
                }
            }
            return method2;
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e);
            return null;
        }
    }

    /* renamed from: a */
    private void m45687a(float f) {
        if (f != this.f1627l.getPaint().getTextSize()) {
            this.f1627l.getPaint().setTextSize(f);
            boolean isInLayout = Build.VERSION.SDK_INT >= 18 ? this.f1627l.isInLayout() : false;
            if (this.f1627l.getLayout() == null) {
                return;
            }
            this.f1624i = false;
            try {
                Method m45676a = m45676a("nullLayouts");
                if (m45676a != null) {
                    m45676a.invoke(this.f1627l, new Object[0]);
                }
            } catch (Exception e) {
                Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e);
            }
            if (!isInLayout) {
                this.f1627l.requestLayout();
            } else {
                this.f1627l.forceLayout();
            }
            this.f1627l.invalidate();
        }
    }

    /* renamed from: a */
    private void m45686a(float f, float f2, float f3) throws IllegalArgumentException {
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f + "px) is less or equal to (0px)");
        } else if (f2 <= f) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f2 + "px) is less or equal to minimum auto-size text size (" + f + "px)");
        } else if (f3 <= BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f3 + "px) is less or equal to (0px)");
        } else {
            this.f1619a = 1;
            this.f1621c = f;
            this.f1622d = f2;
            this.f1620b = f3;
            this.f1625j = false;
        }
    }

    /* renamed from: a */
    private void m45681a(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i = 0; i < length; i++) {
                iArr[i] = typedArray.getDimensionPixelSize(i, -1);
            }
            this.f1623e = m45675a(iArr);
            m45668c();
        }
    }

    /* renamed from: a */
    private boolean m45682a(int i, RectF rectF) {
        CharSequence text = this.f1627l.getText();
        TransformationMethod transformationMethod = this.f1627l.getTransformationMethod();
        CharSequence charSequence = text;
        if (transformationMethod != null) {
            CharSequence transformation = transformationMethod.getTransformation(text, this.f1627l);
            charSequence = text;
            if (transformation != null) {
                charSequence = transformation;
            }
        }
        int maxLines = Build.VERSION.SDK_INT >= 16 ? this.f1627l.getMaxLines() : -1;
        m45672b(i);
        StaticLayout m45678a = m45678a(charSequence, (Layout.Alignment) m45677a(this.f1627l, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines);
        return (maxLines == -1 || (m45678a.getLineCount() <= maxLines && m45678a.getLineEnd(m45678a.getLineCount() - 1) == charSequence.length())) && ((float) m45678a.getHeight()) <= rectF.bottom;
    }

    /* renamed from: a */
    private static int[] m45675a(int[] iArr) {
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

    /* renamed from: b */
    private StaticLayout m45671b(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.f1626k, i);
        StaticLayout.Builder hyphenationFrequency = obtain.setAlignment(alignment).setLineSpacing(this.f1627l.getLineSpacingExtra(), this.f1627l.getLineSpacingMultiplier()).setIncludePad(this.f1627l.getIncludeFontPadding()).setBreakStrategy(this.f1627l.getBreakStrategy()).setHyphenationFrequency(this.f1627l.getHyphenationFrequency());
        int i3 = i2;
        if (i2 == -1) {
            i3 = Integer.MAX_VALUE;
        }
        hyphenationFrequency.setMaxLines(i3);
        try {
            this.f1629n.mo45664a(obtain, this.f1627l);
        } catch (ClassCastException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
        }
        return obtain.build();
    }

    /* renamed from: b */
    private static <T> T m45670b(Object obj, String str, T t) {
        try {
            Field m45669b = m45669b(str);
            return m45669b == null ? t : (T) m45669b.get(obj);
        } catch (IllegalAccessException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e);
            return t;
        }
    }

    /* renamed from: b */
    private static Field m45669b(String str) {
        try {
            Field field = f1618h.get(str);
            Field field2 = field;
            if (field == null) {
                Field declaredField = TextView.class.getDeclaredField(str);
                field2 = declaredField;
                if (declaredField != null) {
                    declaredField.setAccessible(true);
                    f1618h.put(str, declaredField);
                    field2 = declaredField;
                }
            }
            return field2;
        } catch (NoSuchFieldException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e);
            return null;
        }
    }

    /* renamed from: b */
    private void m45672b(int i) {
        TextPaint textPaint = this.f1626k;
        if (textPaint == null) {
            this.f1626k = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.f1626k.set(this.f1627l.getPaint());
        this.f1626k.setTextSize(i);
    }

    /* renamed from: c */
    private boolean m45668c() {
        int[] iArr = this.f1623e;
        int length = iArr.length;
        boolean z = length > 0;
        this.f1625j = z;
        if (z) {
            this.f1619a = 1;
            this.f1621c = iArr[0];
            this.f1622d = iArr[length - 1];
            this.f1620b = -1.0f;
        }
        return z;
    }

    /* renamed from: d */
    private boolean m45667d() {
        if (!m45665f() || this.f1619a != 1) {
            this.f1624i = false;
        } else {
            if (!this.f1625j || this.f1623e.length == 0) {
                int floor = ((int) Math.floor((this.f1622d - this.f1621c) / this.f1620b)) + 1;
                int[] iArr = new int[floor];
                for (int i = 0; i < floor; i++) {
                    iArr[i] = Math.round(this.f1621c + (i * this.f1620b));
                }
                this.f1623e = m45675a(iArr);
            }
            this.f1624i = true;
        }
        return this.f1624i;
    }

    /* renamed from: e */
    private void m45666e() {
        this.f1619a = 0;
        this.f1621c = -1.0f;
        this.f1622d = -1.0f;
        this.f1620b = -1.0f;
        this.f1623e = new int[0];
        this.f1624i = false;
    }

    /* renamed from: f */
    private boolean m45665f() {
        return !(this.f1627l instanceof AppCompatEditText);
    }

    /* renamed from: a */
    public final void m45688a() {
        if (!m45673b()) {
            return;
        }
        if (this.f1624i) {
            if (this.f1627l.getMeasuredHeight() <= 0 || this.f1627l.getMeasuredWidth() <= 0) {
                return;
            }
            int measuredWidth = this.f1629n.mo45663a(this.f1627l) ? 1048576 : (this.f1627l.getMeasuredWidth() - this.f1627l.getTotalPaddingLeft()) - this.f1627l.getTotalPaddingRight();
            int height = (this.f1627l.getHeight() - this.f1627l.getCompoundPaddingBottom()) - this.f1627l.getCompoundPaddingTop();
            if (measuredWidth <= 0 || height <= 0) {
                return;
            }
            RectF rectF = f1616f;
            synchronized (rectF) {
                rectF.setEmpty();
                rectF.right = measuredWidth;
                rectF.bottom = height;
                float m45680a = m45680a(rectF);
                if (m45680a != this.f1627l.getTextSize()) {
                    m45684a(0, m45680a);
                }
            }
        }
        this.f1624i = true;
    }

    /* renamed from: a */
    public final void m45685a(int i) {
        if (m45665f()) {
            if (i == 0) {
                m45666e();
            } else if (i != 1) {
                throw new IllegalArgumentException("Unknown auto-size text type: ".concat(String.valueOf(i)));
            } else {
                DisplayMetrics displayMetrics = this.f1628m.getResources().getDisplayMetrics();
                m45686a(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
                if (!m45667d()) {
                    return;
                }
                m45688a();
            }
        }
    }

    /* renamed from: a */
    public final void m45684a(int i, float f) {
        Context context = this.f1628m;
        m45687a(TypedValue.applyDimension(i, f, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }

    /* renamed from: a */
    public final void m45683a(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (m45665f()) {
            DisplayMetrics displayMetrics = this.f1628m.getResources().getDisplayMetrics();
            m45686a(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (!m45667d()) {
                return;
            }
            m45688a();
        }
    }

    /* renamed from: a */
    public final void m45679a(AttributeSet attributeSet, int i) {
        int resourceId;
        TypedArray obtainStyledAttributes = this.f1628m.obtainStyledAttributes(attributeSet, C0142a.C0152j.AppCompatTextView, i, 0);
        TextView textView = this.f1627l;
        C0926v.m44133a(textView, textView.getContext(), C0142a.C0152j.AppCompatTextView, attributeSet, obtainStyledAttributes, i);
        if (obtainStyledAttributes.hasValue(C0142a.C0152j.AppCompatTextView_autoSizeTextType)) {
            this.f1619a = obtainStyledAttributes.getInt(C0142a.C0152j.AppCompatTextView_autoSizeTextType, 0);
        }
        float dimension = obtainStyledAttributes.hasValue(C0142a.C0152j.AppCompatTextView_autoSizeStepGranularity) ? obtainStyledAttributes.getDimension(C0142a.C0152j.AppCompatTextView_autoSizeStepGranularity, -1.0f) : -1.0f;
        float dimension2 = obtainStyledAttributes.hasValue(C0142a.C0152j.AppCompatTextView_autoSizeMinTextSize) ? obtainStyledAttributes.getDimension(C0142a.C0152j.AppCompatTextView_autoSizeMinTextSize, -1.0f) : -1.0f;
        float dimension3 = obtainStyledAttributes.hasValue(C0142a.C0152j.AppCompatTextView_autoSizeMaxTextSize) ? obtainStyledAttributes.getDimension(C0142a.C0152j.AppCompatTextView_autoSizeMaxTextSize, -1.0f) : -1.0f;
        if (obtainStyledAttributes.hasValue(C0142a.C0152j.AppCompatTextView_autoSizePresetSizes) && (resourceId = obtainStyledAttributes.getResourceId(C0142a.C0152j.AppCompatTextView_autoSizePresetSizes, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            m45681a(obtainTypedArray);
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (!m45665f()) {
            this.f1619a = 0;
        } else if (this.f1619a != 1) {
        } else {
            if (!this.f1625j) {
                DisplayMetrics displayMetrics = this.f1628m.getResources().getDisplayMetrics();
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
                m45686a(f, f2, f3);
            }
            m45667d();
        }
    }

    /* renamed from: a */
    public final void m45674a(int[] iArr, int i) throws IllegalArgumentException {
        int[] iArr2;
        if (m45665f()) {
            int length = iArr.length;
            int i2 = 0;
            if (length > 0) {
                int[] iArr3 = new int[length];
                if (i != 0) {
                    DisplayMetrics displayMetrics = this.f1628m.getResources().getDisplayMetrics();
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
                this.f1623e = m45675a(iArr2);
                if (!m45668c()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.f1625j = false;
            }
            if (!m45667d()) {
                return;
            }
            m45688a();
        }
    }

    /* renamed from: b */
    public final boolean m45673b() {
        return m45665f() && this.f1619a != 0;
    }
}
