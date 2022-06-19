package androidx.appcompat.widget;

import android.annotation.SuppressLint;
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
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;
import p020b.p021a.C1432j;
import p020b.p041h.p050l.C1679w;
/* renamed from: androidx.appcompat.widget.n */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/n.class */
public class C0311n {

    /* renamed from: a */
    private static final RectF f1347a = new RectF();
    @SuppressLint({"BanConcurrentHashMap"})

    /* renamed from: b */
    private static ConcurrentHashMap<String, Method> f1348b = new ConcurrentHashMap<>();
    @SuppressLint({"BanConcurrentHashMap"})

    /* renamed from: c */
    private static ConcurrentHashMap<String, Field> f1349c = new ConcurrentHashMap<>();

    /* renamed from: d */
    private int f1350d = 0;

    /* renamed from: e */
    private boolean f1351e = false;

    /* renamed from: f */
    private float f1352f = -1.0f;

    /* renamed from: g */
    private float f1353g = -1.0f;

    /* renamed from: h */
    private float f1354h = -1.0f;

    /* renamed from: i */
    private int[] f1355i = new int[0];

    /* renamed from: j */
    private boolean f1356j = false;

    /* renamed from: k */
    private TextPaint f1357k;

    /* renamed from: l */
    private final TextView f1358l;

    /* renamed from: m */
    private final Context f1359m;

    /* renamed from: n */
    private final C0314c f1360n;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.n$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/n$a.class */
    public static class C0312a extends C0314c {
        C0312a() {
        }

        @Override // androidx.appcompat.widget.C0311n.C0314c
        /* renamed from: a */
        void mo34804a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection((TextDirectionHeuristic) C0311n.m34813r(textView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.n$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/n$b.class */
    public static class C0313b extends C0312a {
        C0313b() {
        }

        @Override // androidx.appcompat.widget.C0311n.C0312a, androidx.appcompat.widget.C0311n.C0314c
        /* renamed from: a */
        void mo34804a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection(textView.getTextDirectionHeuristic());
        }

        @Override // androidx.appcompat.widget.C0311n.C0314c
        /* renamed from: b */
        boolean mo34803b(TextView textView) {
            return textView.isHorizontallyScrollable();
        }
    }

    /* renamed from: androidx.appcompat.widget.n$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/n$c.class */
    public static class C0314c {
        C0314c() {
        }

        /* renamed from: a */
        void mo34804a(StaticLayout.Builder builder, TextView textView) {
        }

        /* renamed from: b */
        boolean mo34803b(TextView textView) {
            return ((Boolean) C0311n.m34813r(textView, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue();
        }
    }

    public C0311n(TextView textView) {
        this.f1358l = textView;
        this.f1359m = textView.getContext();
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            this.f1360n = new C0313b();
        } else if (i >= 23) {
            this.f1360n = new C0312a();
        } else {
            this.f1360n = new C0314c();
        }
    }

    /* renamed from: A */
    private void m34835A(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i = 0; i < length; i++) {
                iArr[i] = typedArray.getDimensionPixelSize(i, -1);
            }
            this.f1355i = m34828c(iArr);
            m34834B();
        }
    }

    /* renamed from: B */
    private boolean m34834B() {
        int[] iArr = this.f1355i;
        int length = iArr.length;
        boolean z = length > 0;
        this.f1356j = z;
        if (z) {
            this.f1350d = 1;
            this.f1353g = iArr[0];
            this.f1354h = iArr[length - 1];
            this.f1352f = -1.0f;
        }
        return z;
    }

    /* renamed from: C */
    private boolean m34833C(int i, RectF rectF) {
        CharSequence text = this.f1358l.getText();
        TransformationMethod transformationMethod = this.f1358l.getTransformationMethod();
        CharSequence charSequence = text;
        if (transformationMethod != null) {
            CharSequence transformation = transformationMethod.getTransformation(text, this.f1358l);
            charSequence = text;
            if (transformation != null) {
                charSequence = transformation;
            }
        }
        int maxLines = Build.VERSION.SDK_INT >= 16 ? this.f1358l.getMaxLines() : -1;
        m34814q(i);
        StaticLayout m34826e = m34826e(charSequence, (Layout.Alignment) m34813r(this.f1358l, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines);
        return (maxLines == -1 || (m34826e.getLineCount() <= maxLines && m34826e.getLineEnd(m34826e.getLineCount() - 1) == charSequence.length())) && ((float) m34826e.getHeight()) <= rectF.bottom;
    }

    /* renamed from: D */
    private boolean m34832D() {
        return !(this.f1358l instanceof AppCompatEditText);
    }

    /* renamed from: E */
    private void m34831E(float f, float f2, float f3) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f + "px) is less or equal to (0px)");
        } else if (f2 <= f) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f2 + "px) is less or equal to minimum auto-size text size (" + f + "px)");
        } else if (f3 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f3 + "px) is less or equal to (0px)");
        } else {
            this.f1350d = 1;
            this.f1353g = f;
            this.f1354h = f2;
            this.f1352f = f3;
            this.f1356j = false;
        }
    }

    /* renamed from: a */
    private static <T> T m34830a(Object obj, String str, T t) {
        try {
            Field m34816o = m34816o(str);
            return m34816o == null ? t : (T) m34816o.get(obj);
        } catch (IllegalAccessException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e);
            return t;
        }
    }

    /* renamed from: c */
    private int[] m34828c(int[] iArr) {
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
    private void m34827d() {
        this.f1350d = 0;
        this.f1353g = -1.0f;
        this.f1354h = -1.0f;
        this.f1352f = -1.0f;
        this.f1355i = new int[0];
        this.f1351e = false;
    }

    /* renamed from: f */
    private StaticLayout m34825f(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.f1357k, i);
        StaticLayout.Builder hyphenationFrequency = obtain.setAlignment(alignment).setLineSpacing(this.f1358l.getLineSpacingExtra(), this.f1358l.getLineSpacingMultiplier()).setIncludePad(this.f1358l.getIncludeFontPadding()).setBreakStrategy(this.f1358l.getBreakStrategy()).setHyphenationFrequency(this.f1358l.getHyphenationFrequency());
        int i3 = i2;
        if (i2 == -1) {
            i3 = Integer.MAX_VALUE;
        }
        hyphenationFrequency.setMaxLines(i3);
        try {
            this.f1360n.mo34804a(obtain, this.f1358l);
        } catch (ClassCastException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
        }
        return obtain.build();
    }

    /* renamed from: g */
    private StaticLayout m34824g(CharSequence charSequence, Layout.Alignment alignment, int i) {
        return new StaticLayout(charSequence, this.f1357k, i, alignment, ((Float) m34830a(this.f1358l, "mSpacingMult", Float.valueOf(1.0f))).floatValue(), ((Float) m34830a(this.f1358l, "mSpacingAdd", Float.valueOf(0.0f))).floatValue(), ((Boolean) m34830a(this.f1358l, "mIncludePad", Boolean.TRUE)).booleanValue());
    }

    /* renamed from: h */
    private StaticLayout m34823h(CharSequence charSequence, Layout.Alignment alignment, int i) {
        return new StaticLayout(charSequence, this.f1357k, i, alignment, this.f1358l.getLineSpacingMultiplier(), this.f1358l.getLineSpacingExtra(), this.f1358l.getIncludeFontPadding());
    }

    /* renamed from: i */
    private int m34822i(RectF rectF) {
        int length = this.f1355i.length;
        if (length != 0) {
            int i = length - 1;
            int i2 = 1;
            int i3 = 0;
            while (i2 <= i) {
                int i4 = (i2 + i) / 2;
                if (m34833C(this.f1355i[i4], rectF)) {
                    i3 = i2;
                    i2 = i4 + 1;
                } else {
                    i3 = i4 - 1;
                    i = i3;
                }
            }
            return this.f1355i[i3];
        }
        throw new IllegalStateException("No available text sizes to choose from.");
    }

    /* renamed from: o */
    private static Field m34816o(String str) {
        try {
            Field field = f1349c.get(str);
            Field field2 = field;
            if (field == null) {
                Field declaredField = TextView.class.getDeclaredField(str);
                field2 = declaredField;
                if (declaredField != null) {
                    declaredField.setAccessible(true);
                    f1349c.put(str, declaredField);
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
    private static Method m34815p(String str) {
        try {
            Method method = f1348b.get(str);
            Method method2 = method;
            if (method == null) {
                Method declaredMethod = TextView.class.getDeclaredMethod(str, new Class[0]);
                method2 = declaredMethod;
                if (declaredMethod != null) {
                    declaredMethod.setAccessible(true);
                    f1348b.put(str, declaredMethod);
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
    static <T> T m34813r(Object obj, String str, T t) {
        try {
            t = m34815p(str).invoke(obj, new Object[0]);
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e);
        }
        return t;
    }

    /* renamed from: x */
    private void m34807x(float f) {
        if (f != this.f1358l.getPaint().getTextSize()) {
            this.f1358l.getPaint().setTextSize(f);
            boolean isInLayout = Build.VERSION.SDK_INT >= 18 ? this.f1358l.isInLayout() : false;
            if (this.f1358l.getLayout() == null) {
                return;
            }
            this.f1351e = false;
            try {
                Method m34815p = m34815p("nullLayouts");
                if (m34815p != null) {
                    m34815p.invoke(this.f1358l, new Object[0]);
                }
            } catch (Exception e) {
                Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e);
            }
            if (!isInLayout) {
                this.f1358l.requestLayout();
            } else {
                this.f1358l.forceLayout();
            }
            this.f1358l.invalidate();
        }
    }

    /* renamed from: z */
    private boolean m34805z() {
        if (!m34832D() || this.f1350d != 1) {
            this.f1351e = false;
        } else {
            if (!this.f1356j || this.f1355i.length == 0) {
                int floor = ((int) Math.floor((this.f1354h - this.f1353g) / this.f1352f)) + 1;
                int[] iArr = new int[floor];
                for (int i = 0; i < floor; i++) {
                    iArr[i] = Math.round(this.f1353g + (i * this.f1352f));
                }
                this.f1355i = m34828c(iArr);
            }
            this.f1351e = true;
        }
        return this.f1351e;
    }

    /* renamed from: b */
    public void m34829b() {
        if (!m34812s()) {
            return;
        }
        if (this.f1351e) {
            if (this.f1358l.getMeasuredHeight() <= 0 || this.f1358l.getMeasuredWidth() <= 0) {
                return;
            }
            int measuredWidth = this.f1360n.mo34803b(this.f1358l) ? 1048576 : (this.f1358l.getMeasuredWidth() - this.f1358l.getTotalPaddingLeft()) - this.f1358l.getTotalPaddingRight();
            int height = (this.f1358l.getHeight() - this.f1358l.getCompoundPaddingBottom()) - this.f1358l.getCompoundPaddingTop();
            if (measuredWidth <= 0 || height <= 0) {
                return;
            }
            RectF rectF = f1347a;
            synchronized (rectF) {
                rectF.setEmpty();
                rectF.right = measuredWidth;
                rectF.bottom = height;
                float m34822i = m34822i(rectF);
                if (m34822i != this.f1358l.getTextSize()) {
                    m34806y(0, m34822i);
                }
            }
        }
        this.f1351e = true;
    }

    /* renamed from: e */
    StaticLayout m34826e(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        return i3 >= 23 ? m34825f(charSequence, alignment, i, i2) : i3 >= 16 ? m34823h(charSequence, alignment, i) : m34824g(charSequence, alignment, i);
    }

    /* renamed from: j */
    public int m34821j() {
        return Math.round(this.f1354h);
    }

    /* renamed from: k */
    public int m34820k() {
        return Math.round(this.f1353g);
    }

    /* renamed from: l */
    public int m34819l() {
        return Math.round(this.f1352f);
    }

    /* renamed from: m */
    public int[] m34818m() {
        return this.f1355i;
    }

    /* renamed from: n */
    public int m34817n() {
        return this.f1350d;
    }

    /* renamed from: q */
    void m34814q(int i) {
        TextPaint textPaint = this.f1357k;
        if (textPaint == null) {
            this.f1357k = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.f1357k.set(this.f1358l.getPaint());
        this.f1357k.setTextSize(i);
    }

    /* renamed from: s */
    public boolean m34812s() {
        return m34832D() && this.f1350d != 0;
    }

    /* renamed from: t */
    public void m34811t(AttributeSet attributeSet, int i) {
        int resourceId;
        Context context = this.f1359m;
        int[] iArr = C1432j.AppCompatTextView;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        TextView textView = this.f1358l;
        C1679w.m29277p0(textView, textView.getContext(), iArr, attributeSet, obtainStyledAttributes, i, 0);
        int i2 = C1432j.AppCompatTextView_autoSizeTextType;
        if (obtainStyledAttributes.hasValue(i2)) {
            this.f1350d = obtainStyledAttributes.getInt(i2, 0);
        }
        int i3 = C1432j.AppCompatTextView_autoSizeStepGranularity;
        float dimension = obtainStyledAttributes.hasValue(i3) ? obtainStyledAttributes.getDimension(i3, -1.0f) : -1.0f;
        int i4 = C1432j.AppCompatTextView_autoSizeMinTextSize;
        float dimension2 = obtainStyledAttributes.hasValue(i4) ? obtainStyledAttributes.getDimension(i4, -1.0f) : -1.0f;
        int i5 = C1432j.AppCompatTextView_autoSizeMaxTextSize;
        float dimension3 = obtainStyledAttributes.hasValue(i5) ? obtainStyledAttributes.getDimension(i5, -1.0f) : -1.0f;
        int i6 = C1432j.AppCompatTextView_autoSizePresetSizes;
        if (obtainStyledAttributes.hasValue(i6) && (resourceId = obtainStyledAttributes.getResourceId(i6, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            m34835A(obtainTypedArray);
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (!m34832D()) {
            this.f1350d = 0;
        } else if (this.f1350d != 1) {
        } else {
            if (!this.f1356j) {
                DisplayMetrics displayMetrics = this.f1359m.getResources().getDisplayMetrics();
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
                m34831E(f, f2, f3);
            }
            m34805z();
        }
    }

    /* renamed from: u */
    public void m34810u(int i, int i2, int i3, int i4) {
        if (m34832D()) {
            DisplayMetrics displayMetrics = this.f1359m.getResources().getDisplayMetrics();
            m34831E(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (!m34805z()) {
                return;
            }
            m34829b();
        }
    }

    /* renamed from: v */
    public void m34809v(int[] iArr, int i) {
        int[] iArr2;
        if (m34832D()) {
            int length = iArr.length;
            int i2 = 0;
            if (length > 0) {
                int[] iArr3 = new int[length];
                if (i != 0) {
                    DisplayMetrics displayMetrics = this.f1359m.getResources().getDisplayMetrics();
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
                this.f1355i = m34828c(iArr2);
                if (!m34834B()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.f1356j = false;
            }
            if (!m34805z()) {
                return;
            }
            m34829b();
        }
    }

    /* renamed from: w */
    public void m34808w(int i) {
        if (m34832D()) {
            if (i == 0) {
                m34827d();
            } else if (i != 1) {
                throw new IllegalArgumentException("Unknown auto-size text type: " + i);
            } else {
                DisplayMetrics displayMetrics = this.f1359m.getResources().getDisplayMetrics();
                m34831E(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
                if (!m34805z()) {
                    return;
                }
                m34829b();
            }
        }
    }

    /* renamed from: y */
    public void m34806y(int i, float f) {
        Context context = this.f1359m;
        m34807x(TypedValue.applyDimension(i, f, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }
}
