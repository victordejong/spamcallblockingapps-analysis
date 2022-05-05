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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.C0042R;
import androidx.core.view.ViewCompat;
import com.google.android.gms.common.api.Api;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatTextViewAutoSizeHelper.class */
public class AppCompatTextViewAutoSizeHelper {

    /* renamed from: l */
    private static final RectF f1025l = new RectF();

    /* renamed from: m */
    private static ConcurrentHashMap<String, Method> f1026m = new ConcurrentHashMap<>();

    /* renamed from: n */
    private static ConcurrentHashMap<String, Field> f1027n = new ConcurrentHashMap<>();

    /* renamed from: a */
    private int f1028a = 0;

    /* renamed from: b */
    private boolean f1029b = false;

    /* renamed from: c */
    private float f1030c = -1.0f;

    /* renamed from: d */
    private float f1031d = -1.0f;

    /* renamed from: e */
    private float f1032e = -1.0f;

    /* renamed from: f */
    private int[] f1033f = new int[0];

    /* renamed from: g */
    private boolean f1034g = false;

    /* renamed from: h */
    private TextPaint f1035h;
    @NonNull

    /* renamed from: i */
    private final TextView f1036i;

    /* renamed from: j */
    private final Context f1037j;

    /* renamed from: k */
    private final Impl f1038k;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl.class */
    public static class Impl {
        Impl() {
        }

        /* renamed from: a */
        void mo21518a(StaticLayout.Builder builder, TextView textView) {
        }

        /* renamed from: b */
        boolean mo21517b(TextView textView) {
            return ((Boolean) AppCompatTextViewAutoSizeHelper.m21527r(textView, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue();
        }
    }

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl23.class */
    private static class Impl23 extends Impl {
        Impl23() {
        }

        @Override // androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper.Impl
        /* renamed from: a */
        void mo21518a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection((TextDirectionHeuristic) AppCompatTextViewAutoSizeHelper.m21527r(textView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        }
    }

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl29.class */
    private static class Impl29 extends Impl23 {
        Impl29() {
        }

        @Override // androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper.Impl23, androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper.Impl
        /* renamed from: a */
        void mo21518a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection(textView.getTextDirectionHeuristic());
        }

        @Override // androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper.Impl
        /* renamed from: b */
        boolean mo21517b(TextView textView) {
            return textView.isHorizontallyScrollable();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatTextViewAutoSizeHelper(@NonNull TextView textView) {
        this.f1036i = textView;
        this.f1037j = textView.getContext();
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            this.f1038k = new Impl29();
        } else if (i >= 23) {
            this.f1038k = new Impl23();
        } else {
            this.f1038k = new Impl();
        }
    }

    /* renamed from: A */
    private void m21549A(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i = 0; i < length; i++) {
                iArr[i] = typedArray.getDimensionPixelSize(i, -1);
            }
            this.f1033f = m21542c(iArr);
            m21548B();
        }
    }

    /* renamed from: B */
    private boolean m21548B() {
        int length = this.f1033f.length;
        boolean z = length > 0;
        this.f1034g = z;
        if (z) {
            this.f1028a = 1;
            int[] iArr = this.f1033f;
            this.f1031d = iArr[0];
            this.f1032e = iArr[length - 1];
            this.f1030c = -1.0f;
        }
        return this.f1034g;
    }

    /* renamed from: C */
    private boolean m21547C(int i, RectF rectF) {
        CharSequence text = this.f1036i.getText();
        TransformationMethod transformationMethod = this.f1036i.getTransformationMethod();
        CharSequence charSequence = text;
        if (transformationMethod != null) {
            CharSequence transformation = transformationMethod.getTransformation(text, this.f1036i);
            charSequence = text;
            if (transformation != null) {
                charSequence = transformation;
            }
        }
        int maxLines = Build.VERSION.SDK_INT >= 16 ? this.f1036i.getMaxLines() : -1;
        m21528q(i);
        StaticLayout e = m21540e(charSequence, (Layout.Alignment) m21527r(this.f1036i, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines);
        return (maxLines == -1 || (e.getLineCount() <= maxLines && e.getLineEnd(e.getLineCount() - 1) == charSequence.length())) && ((float) e.getHeight()) <= rectF.bottom;
    }

    /* renamed from: D */
    private boolean m21546D() {
        return !(this.f1036i instanceof AppCompatEditText);
    }

    /* renamed from: E */
    private void m21545E(float f, float f2, float f3) throws IllegalArgumentException {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f + "px) is less or equal to (0px)");
        } else if (f2 <= f) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f2 + "px) is less or equal to minimum auto-size text size (" + f + "px)");
        } else if (f3 > 0.0f) {
            this.f1028a = 1;
            this.f1031d = f;
            this.f1032e = f2;
            this.f1030c = f3;
            this.f1034g = false;
        } else {
            throw new IllegalArgumentException("The auto-size step granularity (" + f3 + "px) is less or equal to (0px)");
        }
    }

    /* renamed from: a */
    private static <T> T m21544a(@NonNull Object obj, @NonNull String str, @NonNull T t) {
        try {
            Field o = m21530o(str);
            return o == null ? t : (T) o.get(obj);
        } catch (IllegalAccessException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e);
            return t;
        }
    }

    /* renamed from: c */
    private int[] m21542c(int[] iArr) {
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
    private void m21541d() {
        this.f1028a = 0;
        this.f1031d = -1.0f;
        this.f1032e = -1.0f;
        this.f1030c = -1.0f;
        this.f1033f = new int[0];
        this.f1029b = false;
    }

    @RequiresApi
    /* renamed from: f */
    private StaticLayout m21539f(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.f1035h, i);
        StaticLayout.Builder hyphenationFrequency = obtain.setAlignment(alignment).setLineSpacing(this.f1036i.getLineSpacingExtra(), this.f1036i.getLineSpacingMultiplier()).setIncludePad(this.f1036i.getIncludeFontPadding()).setBreakStrategy(this.f1036i.getBreakStrategy()).setHyphenationFrequency(this.f1036i.getHyphenationFrequency());
        int i3 = i2;
        if (i2 == -1) {
            i3 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
        hyphenationFrequency.setMaxLines(i3);
        try {
            this.f1038k.mo21518a(obtain, this.f1036i);
        } catch (ClassCastException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
        }
        return obtain.build();
    }

    /* renamed from: g */
    private StaticLayout m21538g(CharSequence charSequence, Layout.Alignment alignment, int i) {
        return new StaticLayout(charSequence, this.f1035h, i, alignment, ((Float) m21544a(this.f1036i, "mSpacingMult", Float.valueOf(1.0f))).floatValue(), ((Float) m21544a(this.f1036i, "mSpacingAdd", Float.valueOf(0.0f))).floatValue(), ((Boolean) m21544a(this.f1036i, "mIncludePad", Boolean.TRUE)).booleanValue());
    }

    @RequiresApi
    /* renamed from: h */
    private StaticLayout m21537h(CharSequence charSequence, Layout.Alignment alignment, int i) {
        return new StaticLayout(charSequence, this.f1035h, i, alignment, this.f1036i.getLineSpacingMultiplier(), this.f1036i.getLineSpacingExtra(), this.f1036i.getIncludeFontPadding());
    }

    /* renamed from: i */
    private int m21536i(RectF rectF) {
        int length = this.f1033f.length;
        if (length != 0) {
            int i = length - 1;
            int i2 = 1;
            int i3 = 0;
            while (i2 <= i) {
                int i4 = (i2 + i) / 2;
                if (m21547C(this.f1033f[i4], rectF)) {
                    i3 = i2;
                    i2 = i4 + 1;
                } else {
                    i3 = i4 - 1;
                    i = i3;
                }
            }
            return this.f1033f[i3];
        }
        throw new IllegalStateException("No available text sizes to choose from.");
    }

    @Nullable
    /* renamed from: o */
    private static Field m21530o(@NonNull String str) {
        try {
            Field field = f1027n.get(str);
            Field field2 = field;
            if (field == null) {
                Field declaredField = TextView.class.getDeclaredField(str);
                field2 = declaredField;
                if (declaredField != null) {
                    declaredField.setAccessible(true);
                    f1027n.put(str, declaredField);
                    field2 = declaredField;
                }
            }
            return field2;
        } catch (NoSuchFieldException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e);
            return null;
        }
    }

    @Nullable
    /* renamed from: p */
    private static Method m21529p(@NonNull String str) {
        try {
            Method method = f1026m.get(str);
            Method method2 = method;
            if (method == null) {
                Method declaredMethod = TextView.class.getDeclaredMethod(str, new Class[0]);
                method2 = declaredMethod;
                if (declaredMethod != null) {
                    declaredMethod.setAccessible(true);
                    f1026m.put(str, declaredMethod);
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
    static <T> T m21527r(@NonNull Object obj, @NonNull String str, @NonNull T t) {
        try {
            t = (T) m21529p(str).invoke(obj, new Object[0]);
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e);
        }
        return t;
    }

    /* renamed from: x */
    private void m21521x(float f) {
        if (f != this.f1036i.getPaint().getTextSize()) {
            this.f1036i.getPaint().setTextSize(f);
            boolean isInLayout = Build.VERSION.SDK_INT >= 18 ? this.f1036i.isInLayout() : false;
            if (this.f1036i.getLayout() != null) {
                this.f1029b = false;
                try {
                    Method p = m21529p("nullLayouts");
                    if (p != null) {
                        p.invoke(this.f1036i, new Object[0]);
                    }
                } catch (Exception e) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e);
                }
                if (!isInLayout) {
                    this.f1036i.requestLayout();
                } else {
                    this.f1036i.forceLayout();
                }
                this.f1036i.invalidate();
            }
        }
    }

    /* renamed from: z */
    private boolean m21519z() {
        if (!m21546D() || this.f1028a != 1) {
            this.f1029b = false;
        } else {
            if (!this.f1034g || this.f1033f.length == 0) {
                int floor = ((int) Math.floor((this.f1032e - this.f1031d) / this.f1030c)) + 1;
                int[] iArr = new int[floor];
                for (int i = 0; i < floor; i++) {
                    iArr[i] = Math.round(this.f1031d + (i * this.f1030c));
                }
                this.f1033f = m21542c(iArr);
            }
            this.f1029b = true;
        }
        return this.f1029b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo
    /* renamed from: b */
    public void m21543b() {
        if (m21526s()) {
            if (this.f1029b) {
                if (this.f1036i.getMeasuredHeight() > 0 && this.f1036i.getMeasuredWidth() > 0) {
                    int measuredWidth = this.f1038k.mo21517b(this.f1036i) ? 1048576 : (this.f1036i.getMeasuredWidth() - this.f1036i.getTotalPaddingLeft()) - this.f1036i.getTotalPaddingRight();
                    int height = (this.f1036i.getHeight() - this.f1036i.getCompoundPaddingBottom()) - this.f1036i.getCompoundPaddingTop();
                    if (measuredWidth > 0 && height > 0) {
                        synchronized (f1025l) {
                            f1025l.setEmpty();
                            f1025l.right = measuredWidth;
                            f1025l.bottom = height;
                            float i = m21536i(f1025l);
                            if (i != this.f1036i.getTextSize()) {
                                m21520y(0, i);
                            }
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            this.f1029b = true;
        }
    }

    @VisibleForTesting
    /* renamed from: e */
    StaticLayout m21540e(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        return i3 >= 23 ? m21539f(charSequence, alignment, i, i2) : i3 >= 16 ? m21537h(charSequence, alignment, i) : m21538g(charSequence, alignment, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo
    /* renamed from: j */
    public int m21535j() {
        return Math.round(this.f1032e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo
    /* renamed from: k */
    public int m21534k() {
        return Math.round(this.f1031d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo
    /* renamed from: l */
    public int m21533l() {
        return Math.round(this.f1030c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo
    /* renamed from: m */
    public int[] m21532m() {
        return this.f1033f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo
    /* renamed from: n */
    public int m21531n() {
        return this.f1028a;
    }

    @VisibleForTesting
    /* renamed from: q */
    void m21528q(int i) {
        TextPaint textPaint = this.f1035h;
        if (textPaint == null) {
            this.f1035h = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.f1035h.set(this.f1036i.getPaint());
        this.f1035h.setTextSize(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo
    /* renamed from: s */
    public boolean m21526s() {
        return m21546D() && this.f1028a != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public void m21525t(@Nullable AttributeSet attributeSet, int i) {
        int resourceId;
        TypedArray obtainStyledAttributes = this.f1037j.obtainStyledAttributes(attributeSet, C0042R.styleable.AppCompatTextView, i, 0);
        TextView textView = this.f1036i;
        ViewCompat.m19187l0(textView, textView.getContext(), C0042R.styleable.AppCompatTextView, attributeSet, obtainStyledAttributes, i, 0);
        if (obtainStyledAttributes.hasValue(C0042R.styleable.AppCompatTextView_autoSizeTextType)) {
            this.f1028a = obtainStyledAttributes.getInt(C0042R.styleable.AppCompatTextView_autoSizeTextType, 0);
        }
        float dimension = obtainStyledAttributes.hasValue(C0042R.styleable.AppCompatTextView_autoSizeStepGranularity) ? obtainStyledAttributes.getDimension(C0042R.styleable.AppCompatTextView_autoSizeStepGranularity, -1.0f) : -1.0f;
        float dimension2 = obtainStyledAttributes.hasValue(C0042R.styleable.AppCompatTextView_autoSizeMinTextSize) ? obtainStyledAttributes.getDimension(C0042R.styleable.AppCompatTextView_autoSizeMinTextSize, -1.0f) : -1.0f;
        float dimension3 = obtainStyledAttributes.hasValue(C0042R.styleable.AppCompatTextView_autoSizeMaxTextSize) ? obtainStyledAttributes.getDimension(C0042R.styleable.AppCompatTextView_autoSizeMaxTextSize, -1.0f) : -1.0f;
        if (obtainStyledAttributes.hasValue(C0042R.styleable.AppCompatTextView_autoSizePresetSizes) && (resourceId = obtainStyledAttributes.getResourceId(C0042R.styleable.AppCompatTextView_autoSizePresetSizes, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            m21549A(obtainTypedArray);
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (!m21546D()) {
            this.f1028a = 0;
        } else if (this.f1028a == 1) {
            if (!this.f1034g) {
                DisplayMetrics displayMetrics = this.f1037j.getResources().getDisplayMetrics();
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
                m21545E(f, f2, f3);
            }
            m21519z();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo
    /* renamed from: u */
    public void m21524u(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (m21546D()) {
            DisplayMetrics displayMetrics = this.f1037j.getResources().getDisplayMetrics();
            m21545E(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (m21519z()) {
                m21543b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo
    /* renamed from: v */
    public void m21523v(@NonNull int[] iArr, int i) throws IllegalArgumentException {
        int[] iArr2;
        if (m21546D()) {
            int length = iArr.length;
            int i2 = 0;
            if (length > 0) {
                int[] iArr3 = new int[length];
                if (i != 0) {
                    DisplayMetrics displayMetrics = this.f1037j.getResources().getDisplayMetrics();
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
                this.f1033f = m21542c(iArr2);
                if (!m21548B()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.f1034g = false;
            }
            if (m21519z()) {
                m21543b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo
    /* renamed from: w */
    public void m21522w(int i) {
        if (!m21546D()) {
            return;
        }
        if (i == 0) {
            m21541d();
        } else if (i == 1) {
            DisplayMetrics displayMetrics = this.f1037j.getResources().getDisplayMetrics();
            m21545E(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (m21519z()) {
                m21543b();
            }
        } else {
            throw new IllegalArgumentException("Unknown auto-size text type: " + i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo
    /* renamed from: y */
    public void m21520y(int i, float f) {
        Context context = this.f1037j;
        m21521x(TypedValue.applyDimension(i, f, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }
}
