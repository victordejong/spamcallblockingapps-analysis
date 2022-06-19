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
import androidx.appcompat.C0051a;
import com.google.android.flexbox.FlexItem;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.w */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/w.class */
public class C0352w {

    /* renamed from: a */
    private static final RectF f1424a = new RectF();

    /* renamed from: b */
    private static ConcurrentHashMap<String, Method> f1425b = new ConcurrentHashMap<>();

    /* renamed from: c */
    private static ConcurrentHashMap<String, Field> f1426c = new ConcurrentHashMap<>();

    /* renamed from: d */
    private int f1427d = 0;

    /* renamed from: e */
    private boolean f1428e = false;

    /* renamed from: f */
    private float f1429f = -1.0f;

    /* renamed from: g */
    private float f1430g = -1.0f;

    /* renamed from: h */
    private float f1431h = -1.0f;

    /* renamed from: i */
    private int[] f1432i = new int[0];

    /* renamed from: j */
    private boolean f1433j = false;

    /* renamed from: k */
    private TextPaint f1434k;

    /* renamed from: l */
    private final TextView f1435l;

    /* renamed from: m */
    private final Context f1436m;

    public C0352w(TextView textView) {
        this.f1435l = textView;
        this.f1436m = this.f1435l.getContext();
    }

    /* renamed from: a */
    private int m6991a(RectF rectF) {
        int length = this.f1432i.length;
        if (length != 0) {
            int i = 0;
            int i2 = 1;
            int i3 = length - 1;
            while (i2 <= i3) {
                int i4 = (i2 + i3) / 2;
                if (m6993a(this.f1432i[i4], rectF)) {
                    i = i2;
                    i2 = i4 + 1;
                } else {
                    i = i4 - 1;
                    i3 = i;
                }
            }
            return this.f1432i[i];
        }
        throw new IllegalStateException("No available text sizes to choose from.");
    }

    /* renamed from: a */
    private StaticLayout m6989a(CharSequence charSequence, Layout.Alignment alignment, int i) {
        return new StaticLayout(charSequence, this.f1434k, i, alignment, this.f1435l.getLineSpacingMultiplier(), this.f1435l.getLineSpacingExtra(), this.f1435l.getIncludeFontPadding());
    }

    /* renamed from: a */
    private static <T> T m6987a(Object obj, String str, T t) {
        try {
            t = m6986a(str).invoke(obj, new Object[0]);
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e);
        }
        return t;
    }

    /* renamed from: a */
    private static Method m6986a(String str) {
        try {
            Method method = f1425b.get(str);
            Method method2 = method;
            if (method == null) {
                Method declaredMethod = TextView.class.getDeclaredMethod(str, new Class[0]);
                method2 = declaredMethod;
                if (declaredMethod != null) {
                    declaredMethod.setAccessible(true);
                    f1425b.put(str, declaredMethod);
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
    private void m6998a(float f) {
        if (f != this.f1435l.getPaint().getTextSize()) {
            this.f1435l.getPaint().setTextSize(f);
            boolean isInLayout = Build.VERSION.SDK_INT >= 18 ? this.f1435l.isInLayout() : false;
            if (this.f1435l.getLayout() == null) {
                return;
            }
            this.f1428e = false;
            try {
                Method m6986a = m6986a("nullLayouts");
                if (m6986a != null) {
                    m6986a.invoke(this.f1435l, new Object[0]);
                }
            } catch (Exception e) {
                Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e);
            }
            if (!isInLayout) {
                this.f1435l.requestLayout();
            } else {
                this.f1435l.forceLayout();
            }
            this.f1435l.invalidate();
        }
    }

    /* renamed from: a */
    private void m6997a(float f, float f2, float f3) {
        if (f <= FlexItem.FLEX_GROW_DEFAULT) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f + "px) is less or equal to (0px)");
        } else if (f2 <= f) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f2 + "px) is less or equal to minimum auto-size text size (" + f + "px)");
        } else if (f3 <= FlexItem.FLEX_GROW_DEFAULT) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f3 + "px) is less or equal to (0px)");
        } else {
            this.f1427d = 1;
            this.f1430g = f;
            this.f1431h = f2;
            this.f1429f = f3;
            this.f1433j = false;
        }
    }

    /* renamed from: a */
    private void m6992a(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i = 0; i < length; i++) {
                iArr[i] = typedArray.getDimensionPixelSize(i, -1);
            }
            this.f1432i = m6985a(iArr);
            m6972h();
        }
    }

    /* renamed from: a */
    private boolean m6993a(int i, RectF rectF) {
        CharSequence text = this.f1435l.getText();
        TransformationMethod transformationMethod = this.f1435l.getTransformationMethod();
        CharSequence charSequence = text;
        if (transformationMethod != null) {
            CharSequence transformation = transformationMethod.getTransformation(text, this.f1435l);
            charSequence = text;
            if (transformation != null) {
                charSequence = transformation;
            }
        }
        int maxLines = Build.VERSION.SDK_INT >= 16 ? this.f1435l.getMaxLines() : -1;
        m6982b(i);
        StaticLayout m6988a = m6988a(charSequence, (Layout.Alignment) m6987a(this.f1435l, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines);
        return (maxLines == -1 || (m6988a.getLineCount() <= maxLines && m6988a.getLineEnd(m6988a.getLineCount() - 1) == charSequence.length())) && ((float) m6988a.getHeight()) <= rectF.bottom;
    }

    /* renamed from: a */
    private int[] m6985a(int[] iArr) {
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
    private StaticLayout m6981b(CharSequence charSequence, Layout.Alignment alignment, int i) {
        return new StaticLayout(charSequence, this.f1434k, i, alignment, ((Float) m6979b(this.f1435l, "mSpacingMult", Float.valueOf(1.0f))).floatValue(), ((Float) m6979b(this.f1435l, "mSpacingAdd", Float.valueOf((float) FlexItem.FLEX_GROW_DEFAULT))).floatValue(), ((Boolean) m6979b(this.f1435l, "mIncludePad", true)).booleanValue());
    }

    /* renamed from: b */
    private StaticLayout m6980b(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.f1434k, i);
        StaticLayout.Builder hyphenationFrequency = obtain.setAlignment(alignment).setLineSpacing(this.f1435l.getLineSpacingExtra(), this.f1435l.getLineSpacingMultiplier()).setIncludePad(this.f1435l.getIncludeFontPadding()).setBreakStrategy(this.f1435l.getBreakStrategy()).setHyphenationFrequency(this.f1435l.getHyphenationFrequency());
        int i3 = i2;
        if (i2 == -1) {
            i3 = Integer.MAX_VALUE;
        }
        hyphenationFrequency.setMaxLines(i3);
        try {
            obtain.setTextDirection(Build.VERSION.SDK_INT >= 29 ? this.f1435l.getTextDirectionHeuristic() : (TextDirectionHeuristic) m6987a(this.f1435l, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        } catch (ClassCastException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
        }
        return obtain.build();
    }

    /* renamed from: b */
    private static <T> T m6979b(Object obj, String str, T t) {
        try {
            Field m6978b = m6978b(str);
            return m6978b == null ? t : (T) m6978b.get(obj);
        } catch (IllegalAccessException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e);
            return t;
        }
    }

    /* renamed from: b */
    private static Field m6978b(String str) {
        try {
            Field field = f1426c.get(str);
            Field field2 = field;
            if (field == null) {
                Field declaredField = TextView.class.getDeclaredField(str);
                field2 = declaredField;
                if (declaredField != null) {
                    declaredField.setAccessible(true);
                    f1426c.put(str, declaredField);
                    field2 = declaredField;
                }
            }
            return field2;
        } catch (NoSuchFieldException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e);
            return null;
        }
    }

    /* renamed from: h */
    private boolean m6972h() {
        int length = this.f1432i.length;
        this.f1433j = length > 0;
        if (this.f1433j) {
            this.f1427d = 1;
            int[] iArr = this.f1432i;
            this.f1430g = iArr[0];
            this.f1431h = iArr[length - 1];
            this.f1429f = -1.0f;
        }
        return this.f1433j;
    }

    /* renamed from: i */
    private boolean m6971i() {
        if (!m6969k() || this.f1427d != 1) {
            this.f1428e = false;
        } else {
            if (!this.f1433j || this.f1432i.length == 0) {
                int floor = ((int) Math.floor((this.f1431h - this.f1430g) / this.f1429f)) + 1;
                int[] iArr = new int[floor];
                for (int i = 0; i < floor; i++) {
                    iArr[i] = Math.round(this.f1430g + (i * this.f1429f));
                }
                this.f1432i = m6985a(iArr);
            }
            this.f1428e = true;
        }
        return this.f1428e;
    }

    /* renamed from: j */
    private void m6970j() {
        this.f1427d = 0;
        this.f1430g = -1.0f;
        this.f1431h = -1.0f;
        this.f1429f = -1.0f;
        this.f1432i = new int[0];
        this.f1428e = false;
    }

    /* renamed from: k */
    private boolean m6969k() {
        return !(this.f1435l instanceof C0337j);
    }

    /* renamed from: a */
    public int m6999a() {
        return this.f1427d;
    }

    /* renamed from: a */
    StaticLayout m6988a(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        return Build.VERSION.SDK_INT >= 23 ? m6980b(charSequence, alignment, i, i2) : Build.VERSION.SDK_INT >= 16 ? m6989a(charSequence, alignment, i) : m6981b(charSequence, alignment, i);
    }

    /* renamed from: a */
    public void m6996a(int i) {
        if (m6969k()) {
            if (i == 0) {
                m6970j();
            } else if (i != 1) {
                throw new IllegalArgumentException("Unknown auto-size text type: " + i);
            } else {
                DisplayMetrics displayMetrics = this.f1436m.getResources().getDisplayMetrics();
                m6997a(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
                if (!m6971i()) {
                    return;
                }
                m6974f();
            }
        }
    }

    /* renamed from: a */
    public void m6995a(int i, float f) {
        Context context = this.f1436m;
        m6998a(TypedValue.applyDimension(i, f, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }

    /* renamed from: a */
    public void m6994a(int i, int i2, int i3, int i4) {
        if (m6969k()) {
            DisplayMetrics displayMetrics = this.f1436m.getResources().getDisplayMetrics();
            m6997a(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (!m6971i()) {
                return;
            }
            m6974f();
        }
    }

    /* renamed from: a */
    public void m6990a(AttributeSet attributeSet, int i) {
        int resourceId;
        TypedArray obtainStyledAttributes = this.f1436m.obtainStyledAttributes(attributeSet, C0051a.C0061j.AppCompatTextView, i, 0);
        if (obtainStyledAttributes.hasValue(C0051a.C0061j.AppCompatTextView_autoSizeTextType)) {
            this.f1427d = obtainStyledAttributes.getInt(C0051a.C0061j.AppCompatTextView_autoSizeTextType, 0);
        }
        float dimension = obtainStyledAttributes.hasValue(C0051a.C0061j.AppCompatTextView_autoSizeStepGranularity) ? obtainStyledAttributes.getDimension(C0051a.C0061j.AppCompatTextView_autoSizeStepGranularity, -1.0f) : -1.0f;
        float dimension2 = obtainStyledAttributes.hasValue(C0051a.C0061j.AppCompatTextView_autoSizeMinTextSize) ? obtainStyledAttributes.getDimension(C0051a.C0061j.AppCompatTextView_autoSizeMinTextSize, -1.0f) : -1.0f;
        float dimension3 = obtainStyledAttributes.hasValue(C0051a.C0061j.AppCompatTextView_autoSizeMaxTextSize) ? obtainStyledAttributes.getDimension(C0051a.C0061j.AppCompatTextView_autoSizeMaxTextSize, -1.0f) : -1.0f;
        if (obtainStyledAttributes.hasValue(C0051a.C0061j.AppCompatTextView_autoSizePresetSizes) && (resourceId = obtainStyledAttributes.getResourceId(C0051a.C0061j.AppCompatTextView_autoSizePresetSizes, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            m6992a(obtainTypedArray);
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (!m6969k()) {
            this.f1427d = 0;
        } else if (this.f1427d != 1) {
        } else {
            if (!this.f1433j) {
                DisplayMetrics displayMetrics = this.f1436m.getResources().getDisplayMetrics();
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
                m6997a(f, f2, f3);
            }
            m6971i();
        }
    }

    /* renamed from: a */
    public void m6984a(int[] iArr, int i) {
        int[] iArr2;
        if (m6969k()) {
            int length = iArr.length;
            int i2 = 0;
            if (length > 0) {
                int[] iArr3 = new int[length];
                if (i != 0) {
                    DisplayMetrics displayMetrics = this.f1436m.getResources().getDisplayMetrics();
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
                this.f1432i = m6985a(iArr2);
                if (!m6972h()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.f1433j = false;
            }
            if (!m6971i()) {
                return;
            }
            m6974f();
        }
    }

    /* renamed from: b */
    public int m6983b() {
        return Math.round(this.f1429f);
    }

    /* renamed from: b */
    void m6982b(int i) {
        TextPaint textPaint = this.f1434k;
        if (textPaint == null) {
            this.f1434k = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.f1434k.set(this.f1435l.getPaint());
        this.f1434k.setTextSize(i);
    }

    /* renamed from: c */
    public int m6977c() {
        return Math.round(this.f1430g);
    }

    /* renamed from: d */
    public int m6976d() {
        return Math.round(this.f1431h);
    }

    /* renamed from: e */
    public int[] m6975e() {
        return this.f1432i;
    }

    /* renamed from: f */
    public void m6974f() {
        if (!m6973g()) {
            return;
        }
        if (this.f1428e) {
            if (this.f1435l.getMeasuredHeight() <= 0 || this.f1435l.getMeasuredWidth() <= 0) {
                return;
            }
            int measuredWidth = Build.VERSION.SDK_INT >= 29 ? this.f1435l.isHorizontallyScrollable() : ((Boolean) m6987a(this.f1435l, "getHorizontallyScrolling", false)).booleanValue() ? 1048576 : (this.f1435l.getMeasuredWidth() - this.f1435l.getTotalPaddingLeft()) - this.f1435l.getTotalPaddingRight();
            int height = (this.f1435l.getHeight() - this.f1435l.getCompoundPaddingBottom()) - this.f1435l.getCompoundPaddingTop();
            if (measuredWidth <= 0 || height <= 0) {
                return;
            }
            synchronized (f1424a) {
                f1424a.setEmpty();
                f1424a.right = measuredWidth;
                f1424a.bottom = height;
                float m6991a = m6991a(f1424a);
                if (m6991a != this.f1435l.getTextSize()) {
                    m6995a(0, m6991a);
                }
            }
        }
        this.f1428e = true;
    }

    /* renamed from: g */
    public boolean m6973g() {
        return m6969k() && this.f1427d != 0;
    }
}
