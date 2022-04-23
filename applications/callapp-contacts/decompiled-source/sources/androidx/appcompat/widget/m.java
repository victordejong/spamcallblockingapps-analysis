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
import androidx.appcompat.a;
import androidx.core.view.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/m.class */
public final class m {
    private static final RectF f = new RectF();
    private static ConcurrentHashMap<String, Method> g = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, Field> h = new ConcurrentHashMap<>();
    private TextPaint k;
    private final TextView l;
    private final Context m;
    private final a n;

    /* renamed from: a  reason: collision with root package name */
    int f1116a = 0;
    private boolean i = false;

    /* renamed from: b  reason: collision with root package name */
    float f1117b = -1.0f;

    /* renamed from: c  reason: collision with root package name */
    float f1118c = -1.0f;

    /* renamed from: d  reason: collision with root package name */
    float f1119d = -1.0f;
    int[] e = new int[0];
    private boolean j = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/m$a.class */
    public static class a {
        a() {
        }

        void a(StaticLayout.Builder builder, TextView textView) {
        }

        boolean a(TextView textView) {
            return ((Boolean) m.a(textView, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/m$b.class */
    static class b extends a {
        b() {
        }

        @Override // androidx.appcompat.widget.m.a
        void a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection((TextDirectionHeuristic) m.a(textView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/m$c.class */
    static final class c extends b {
        c() {
        }

        @Override // androidx.appcompat.widget.m.b, androidx.appcompat.widget.m.a
        final void a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection(textView.getTextDirectionHeuristic());
        }

        @Override // androidx.appcompat.widget.m.a
        final boolean a(TextView textView) {
            return textView.isHorizontallyScrollable();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(TextView textView) {
        this.l = textView;
        this.m = textView.getContext();
        if (Build.VERSION.SDK_INT >= 29) {
            this.n = new c();
        } else if (Build.VERSION.SDK_INT >= 23) {
            this.n = new b();
        } else {
            this.n = new a();
        }
    }

    private int a(RectF rectF) {
        int length = this.e.length;
        if (length != 0) {
            int i = length - 1;
            int i2 = 1;
            int i3 = 0;
            while (i2 <= i) {
                int i4 = (i2 + i) / 2;
                if (a(this.e[i4], rectF)) {
                    i3 = i2;
                    i2 = i4 + 1;
                } else {
                    i3 = i4 - 1;
                    i = i3;
                }
            }
            return this.e[i3];
        }
        throw new IllegalStateException("No available text sizes to choose from.");
    }

    private StaticLayout a(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return b(charSequence, alignment, i, i2);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return new StaticLayout(charSequence, this.k, i, alignment, this.l.getLineSpacingMultiplier(), this.l.getLineSpacingExtra(), this.l.getIncludeFontPadding());
        }
        return new StaticLayout(charSequence, this.k, i, alignment, ((Float) b(this.l, "mSpacingMult", Float.valueOf(1.0f))).floatValue(), ((Float) b(this.l, "mSpacingAdd", Float.valueOf((float) BitmapDescriptorFactory.HUE_RED))).floatValue(), ((Boolean) b(this.l, "mIncludePad", Boolean.TRUE)).booleanValue());
    }

    static <T> T a(Object obj, String str, T t) {
        try {
            t = (T) a(str).invoke(obj, new Object[0]);
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e);
        }
        return t;
    }

    private static Method a(String str) {
        try {
            Method method = g.get(str);
            Method method2 = method;
            if (method == null) {
                Method declaredMethod = TextView.class.getDeclaredMethod(str, new Class[0]);
                method2 = declaredMethod;
                if (declaredMethod != null) {
                    declaredMethod.setAccessible(true);
                    g.put(str, declaredMethod);
                    method2 = declaredMethod;
                }
            }
            return method2;
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e);
            return null;
        }
    }

    private void a(float f2) {
        if (f2 != this.l.getPaint().getTextSize()) {
            this.l.getPaint().setTextSize(f2);
            boolean isInLayout = Build.VERSION.SDK_INT >= 18 ? this.l.isInLayout() : false;
            if (this.l.getLayout() != null) {
                this.i = false;
                try {
                    Method a2 = a("nullLayouts");
                    if (a2 != null) {
                        a2.invoke(this.l, new Object[0]);
                    }
                } catch (Exception e) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e);
                }
                if (!isInLayout) {
                    this.l.requestLayout();
                } else {
                    this.l.forceLayout();
                }
                this.l.invalidate();
            }
        }
    }

    private void a(float f2, float f3, float f4) throws IllegalArgumentException {
        if (f2 <= BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f2 + "px) is less or equal to (0px)");
        } else if (f3 <= f2) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f3 + "px) is less or equal to minimum auto-size text size (" + f2 + "px)");
        } else if (f4 > BitmapDescriptorFactory.HUE_RED) {
            this.f1116a = 1;
            this.f1118c = f2;
            this.f1119d = f3;
            this.f1117b = f4;
            this.j = false;
        } else {
            throw new IllegalArgumentException("The auto-size step granularity (" + f4 + "px) is less or equal to (0px)");
        }
    }

    private void a(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i = 0; i < length; i++) {
                iArr[i] = typedArray.getDimensionPixelSize(i, -1);
            }
            this.e = a(iArr);
            c();
        }
    }

    private boolean a(int i, RectF rectF) {
        CharSequence text = this.l.getText();
        TransformationMethod transformationMethod = this.l.getTransformationMethod();
        CharSequence charSequence = text;
        if (transformationMethod != null) {
            CharSequence transformation = transformationMethod.getTransformation(text, this.l);
            charSequence = text;
            if (transformation != null) {
                charSequence = transformation;
            }
        }
        int maxLines = Build.VERSION.SDK_INT >= 16 ? this.l.getMaxLines() : -1;
        b(i);
        StaticLayout a2 = a(charSequence, (Layout.Alignment) a(this.l, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines);
        return (maxLines == -1 || (a2.getLineCount() <= maxLines && a2.getLineEnd(a2.getLineCount() - 1) == charSequence.length())) && ((float) a2.getHeight()) <= rectF.bottom;
    }

    private static int[] a(int[] iArr) {
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

    private StaticLayout b(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.k, i);
        StaticLayout.Builder hyphenationFrequency = obtain.setAlignment(alignment).setLineSpacing(this.l.getLineSpacingExtra(), this.l.getLineSpacingMultiplier()).setIncludePad(this.l.getIncludeFontPadding()).setBreakStrategy(this.l.getBreakStrategy()).setHyphenationFrequency(this.l.getHyphenationFrequency());
        int i3 = i2;
        if (i2 == -1) {
            i3 = Integer.MAX_VALUE;
        }
        hyphenationFrequency.setMaxLines(i3);
        try {
            this.n.a(obtain, this.l);
        } catch (ClassCastException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
        }
        return obtain.build();
    }

    private static <T> T b(Object obj, String str, T t) {
        try {
            Field b2 = b(str);
            return b2 == null ? t : (T) b2.get(obj);
        } catch (IllegalAccessException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e);
            return t;
        }
    }

    private static Field b(String str) {
        try {
            Field field = h.get(str);
            Field field2 = field;
            if (field == null) {
                Field declaredField = TextView.class.getDeclaredField(str);
                field2 = declaredField;
                if (declaredField != null) {
                    declaredField.setAccessible(true);
                    h.put(str, declaredField);
                    field2 = declaredField;
                }
            }
            return field2;
        } catch (NoSuchFieldException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e);
            return null;
        }
    }

    private void b(int i) {
        TextPaint textPaint = this.k;
        if (textPaint == null) {
            this.k = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.k.set(this.l.getPaint());
        this.k.setTextSize(i);
    }

    private boolean c() {
        int[] iArr = this.e;
        int length = iArr.length;
        boolean z = length > 0;
        this.j = z;
        if (z) {
            this.f1116a = 1;
            this.f1118c = iArr[0];
            this.f1119d = iArr[length - 1];
            this.f1117b = -1.0f;
        }
        return z;
    }

    private boolean d() {
        if (!f() || this.f1116a != 1) {
            this.i = false;
        } else {
            if (!this.j || this.e.length == 0) {
                int floor = ((int) Math.floor((this.f1119d - this.f1118c) / this.f1117b)) + 1;
                int[] iArr = new int[floor];
                for (int i = 0; i < floor; i++) {
                    iArr[i] = Math.round(this.f1118c + (i * this.f1117b));
                }
                this.e = a(iArr);
            }
            this.i = true;
        }
        return this.i;
    }

    private void e() {
        this.f1116a = 0;
        this.f1118c = -1.0f;
        this.f1119d = -1.0f;
        this.f1117b = -1.0f;
        this.e = new int[0];
        this.i = false;
    }

    private boolean f() {
        return !(this.l instanceof AppCompatEditText);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        if (b()) {
            if (this.i) {
                if (this.l.getMeasuredHeight() > 0 && this.l.getMeasuredWidth() > 0) {
                    int measuredWidth = this.n.a(this.l) ? 1048576 : (this.l.getMeasuredWidth() - this.l.getTotalPaddingLeft()) - this.l.getTotalPaddingRight();
                    int height = (this.l.getHeight() - this.l.getCompoundPaddingBottom()) - this.l.getCompoundPaddingTop();
                    if (measuredWidth > 0 && height > 0) {
                        RectF rectF = f;
                        synchronized (rectF) {
                            rectF.setEmpty();
                            rectF.right = measuredWidth;
                            rectF.bottom = height;
                            float a2 = a(rectF);
                            if (a2 != this.l.getTextSize()) {
                                a(0, a2);
                            }
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            this.i = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        if (!f()) {
            return;
        }
        if (i == 0) {
            e();
        } else if (i == 1) {
            DisplayMetrics displayMetrics = this.m.getResources().getDisplayMetrics();
            a(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (d()) {
                a();
            }
        } else {
            throw new IllegalArgumentException("Unknown auto-size text type: ".concat(String.valueOf(i)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, float f2) {
        Context context = this.m;
        a(TypedValue.applyDimension(i, f2, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (f()) {
            DisplayMetrics displayMetrics = this.m.getResources().getDisplayMetrics();
            a(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (d()) {
                a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(AttributeSet attributeSet, int i) {
        int resourceId;
        TypedArray obtainStyledAttributes = this.m.obtainStyledAttributes(attributeSet, a.j.AppCompatTextView, i, 0);
        TextView textView = this.l;
        v.a(textView, textView.getContext(), a.j.AppCompatTextView, attributeSet, obtainStyledAttributes, i);
        if (obtainStyledAttributes.hasValue(a.j.AppCompatTextView_autoSizeTextType)) {
            this.f1116a = obtainStyledAttributes.getInt(a.j.AppCompatTextView_autoSizeTextType, 0);
        }
        float dimension = obtainStyledAttributes.hasValue(a.j.AppCompatTextView_autoSizeStepGranularity) ? obtainStyledAttributes.getDimension(a.j.AppCompatTextView_autoSizeStepGranularity, -1.0f) : -1.0f;
        float dimension2 = obtainStyledAttributes.hasValue(a.j.AppCompatTextView_autoSizeMinTextSize) ? obtainStyledAttributes.getDimension(a.j.AppCompatTextView_autoSizeMinTextSize, -1.0f) : -1.0f;
        float dimension3 = obtainStyledAttributes.hasValue(a.j.AppCompatTextView_autoSizeMaxTextSize) ? obtainStyledAttributes.getDimension(a.j.AppCompatTextView_autoSizeMaxTextSize, -1.0f) : -1.0f;
        if (obtainStyledAttributes.hasValue(a.j.AppCompatTextView_autoSizePresetSizes) && (resourceId = obtainStyledAttributes.getResourceId(a.j.AppCompatTextView_autoSizePresetSizes, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            a(obtainTypedArray);
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (!f()) {
            this.f1116a = 0;
        } else if (this.f1116a == 1) {
            if (!this.j) {
                DisplayMetrics displayMetrics = this.m.getResources().getDisplayMetrics();
                float f2 = dimension2;
                if (dimension2 == -1.0f) {
                    f2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                }
                float f3 = dimension3;
                if (dimension3 == -1.0f) {
                    f3 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                }
                float f4 = dimension;
                if (dimension == -1.0f) {
                    f4 = 1.0f;
                }
                a(f2, f3, f4);
            }
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int[] iArr, int i) throws IllegalArgumentException {
        int[] iArr2;
        if (f()) {
            int length = iArr.length;
            int i2 = 0;
            if (length > 0) {
                int[] iArr3 = new int[length];
                if (i != 0) {
                    DisplayMetrics displayMetrics = this.m.getResources().getDisplayMetrics();
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
                this.e = a(iArr2);
                if (!c()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.j = false;
            }
            if (d()) {
                a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b() {
        return f() && this.f1116a != 0;
    }
}
