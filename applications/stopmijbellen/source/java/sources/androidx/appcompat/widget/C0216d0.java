package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: androidx.appcompat.widget.d0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/d0.class */
public class C0216d0 {

    /* renamed from: l */
    public static final RectF f897l = new RectF();
    @SuppressLint({"BanConcurrentHashMap"})

    /* renamed from: m */
    public static ConcurrentHashMap<String, Method> f898m = new ConcurrentHashMap<>();
    @SuppressLint({"BanConcurrentHashMap"})

    /* renamed from: n */
    public static ConcurrentHashMap<String, Field> f899n = new ConcurrentHashMap<>();

    /* renamed from: a */
    public int f900a = 0;

    /* renamed from: b */
    public boolean f901b = false;

    /* renamed from: c */
    public float f902c = -1.0f;

    /* renamed from: d */
    public float f903d = -1.0f;

    /* renamed from: e */
    public float f904e = -1.0f;

    /* renamed from: f */
    public int[] f905f = new int[0];

    /* renamed from: g */
    public boolean f906g = false;

    /* renamed from: h */
    public TextPaint f907h;

    /* renamed from: i */
    public final TextView f908i;

    /* renamed from: j */
    public final Context f909j;

    /* renamed from: k */
    public final C0219c f910k;

    /* renamed from: androidx.appcompat.widget.d0$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/d0$a.class */
    public static class C0217a extends C0219c {
        @Override // androidx.appcompat.widget.C0216d0.C0219c
        /* renamed from: a */
        public void mo8551a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection((TextDirectionHeuristic) C0216d0.m8557e(textView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        }
    }

    /* renamed from: androidx.appcompat.widget.d0$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/d0$b.class */
    public static class C0218b extends C0217a {
        @Override // androidx.appcompat.widget.C0216d0.C0217a, androidx.appcompat.widget.C0216d0.C0219c
        /* renamed from: a */
        public void mo8551a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection(textView.getTextDirectionHeuristic());
        }

        @Override // androidx.appcompat.widget.C0216d0.C0219c
        /* renamed from: b */
        public boolean mo8550b(TextView textView) {
            return textView.isHorizontallyScrollable();
        }
    }

    /* renamed from: androidx.appcompat.widget.d0$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/d0$c.class */
    public static class C0219c {
        /* renamed from: a */
        public void mo8551a(StaticLayout.Builder builder, TextView textView) {
        }

        /* renamed from: b */
        public boolean mo8550b(TextView textView) {
            return ((Boolean) C0216d0.m8557e(textView, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue();
        }
    }

    public C0216d0(TextView textView) {
        this.f908i = textView;
        this.f909j = textView.getContext();
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            this.f910k = new C0218b();
        } else if (i >= 23) {
            this.f910k = new C0217a();
        } else {
            this.f910k = new C0219c();
        }
    }

    /* renamed from: d */
    public static Method m8558d(String str) {
        try {
            Method method = f898m.get(str);
            Method method2 = method;
            if (method == null) {
                Method declaredMethod = TextView.class.getDeclaredMethod(str, new Class[0]);
                method2 = declaredMethod;
                if (declaredMethod != null) {
                    declaredMethod.setAccessible(true);
                    f898m.put(str, declaredMethod);
                    method2 = declaredMethod;
                }
            }
            return method2;
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e);
            return null;
        }
    }

    /* renamed from: e */
    public static <T> T m8557e(Object obj, String str, T t) {
        try {
            t = m8558d(str).invoke(obj, new Object[0]);
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e);
        }
        return t;
    }

    /* renamed from: a */
    public void m8561a() {
        if (!(m8553i() && this.f900a != 0)) {
            return;
        }
        if (this.f901b) {
            if (this.f908i.getMeasuredHeight() <= 0 || this.f908i.getMeasuredWidth() <= 0) {
                return;
            }
            int measuredWidth = this.f910k.mo8550b(this.f908i) ? 1048576 : (this.f908i.getMeasuredWidth() - this.f908i.getTotalPaddingLeft()) - this.f908i.getTotalPaddingRight();
            int height = (this.f908i.getHeight() - this.f908i.getCompoundPaddingBottom()) - this.f908i.getCompoundPaddingTop();
            if (measuredWidth <= 0 || height <= 0) {
                return;
            }
            RectF rectF = f897l;
            synchronized (rectF) {
                rectF.setEmpty();
                rectF.right = measuredWidth;
                rectF.bottom = height;
                float m8559c = m8559c(rectF);
                if (m8559c != this.f908i.getTextSize()) {
                    m8556f(0, m8559c);
                }
            }
        }
        this.f901b = true;
    }

    /* renamed from: b */
    public final int[] m8560b(int[] iArr) {
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

    /* renamed from: c */
    public final int m8559c(RectF rectF) {
        StaticLayout staticLayout;
        int length = this.f905f.length;
        if (length != 0) {
            int i = length - 1;
            int i2 = 1;
            int i3 = 0;
            while (i2 <= i) {
                int i4 = (i2 + i) / 2;
                int i5 = this.f905f[i4];
                CharSequence text = this.f908i.getText();
                TransformationMethod transformationMethod = this.f908i.getTransformationMethod();
                CharSequence charSequence = text;
                if (transformationMethod != null) {
                    CharSequence transformation = transformationMethod.getTransformation(text, this.f908i);
                    charSequence = text;
                    if (transformation != null) {
                        charSequence = transformation;
                    }
                }
                int i6 = Build.VERSION.SDK_INT;
                int maxLines = this.f908i.getMaxLines();
                TextPaint textPaint = this.f907h;
                if (textPaint == null) {
                    this.f907h = new TextPaint();
                } else {
                    textPaint.reset();
                }
                this.f907h.set(this.f908i.getPaint());
                this.f907h.setTextSize(i5);
                Layout.Alignment alignment = (Layout.Alignment) m8557e(this.f908i, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL);
                int round = Math.round(rectF.right);
                if (i6 >= 23) {
                    StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.f907h, round);
                    obtain.setAlignment(alignment).setLineSpacing(this.f908i.getLineSpacingExtra(), this.f908i.getLineSpacingMultiplier()).setIncludePad(this.f908i.getIncludeFontPadding()).setBreakStrategy(this.f908i.getBreakStrategy()).setHyphenationFrequency(this.f908i.getHyphenationFrequency()).setMaxLines(maxLines == -1 ? Integer.MAX_VALUE : maxLines);
                    try {
                        this.f910k.mo8551a(obtain, this.f908i);
                    } catch (ClassCastException e) {
                        Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
                    }
                    staticLayout = obtain.build();
                } else {
                    staticLayout = new StaticLayout(charSequence, this.f907h, round, alignment, this.f908i.getLineSpacingMultiplier(), this.f908i.getLineSpacingExtra(), this.f908i.getIncludeFontPadding());
                }
                if ((maxLines == -1 || (staticLayout.getLineCount() <= maxLines && staticLayout.getLineEnd(staticLayout.getLineCount() - 1) == charSequence.length())) && ((float) staticLayout.getHeight()) <= rectF.bottom) {
                    i3 = i2;
                    i2 = i4 + 1;
                } else {
                    i3 = i4 - 1;
                    i = i3;
                }
            }
            return this.f905f[i3];
        }
        throw new IllegalStateException("No available text sizes to choose from.");
    }

    /* renamed from: f */
    public void m8556f(int i, float f) {
        Context context = this.f909j;
        float applyDimension = TypedValue.applyDimension(i, f, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics());
        if (applyDimension != this.f908i.getPaint().getTextSize()) {
            this.f908i.getPaint().setTextSize(applyDimension);
            boolean isInLayout = this.f908i.isInLayout();
            if (this.f908i.getLayout() == null) {
                return;
            }
            this.f901b = false;
            try {
                Method m8558d = m8558d("nullLayouts");
                if (m8558d != null) {
                    m8558d.invoke(this.f908i, new Object[0]);
                }
            } catch (Exception e) {
                Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e);
            }
            if (!isInLayout) {
                this.f908i.requestLayout();
            } else {
                this.f908i.forceLayout();
            }
            this.f908i.invalidate();
        }
    }

    /* renamed from: g */
    public final boolean m8555g() {
        if (!m8553i() || this.f900a != 1) {
            this.f901b = false;
        } else {
            if (!this.f906g || this.f905f.length == 0) {
                int floor = ((int) Math.floor((this.f904e - this.f903d) / this.f902c)) + 1;
                int[] iArr = new int[floor];
                for (int i = 0; i < floor; i++) {
                    iArr[i] = Math.round((i * this.f902c) + this.f903d);
                }
                this.f905f = m8560b(iArr);
            }
            this.f901b = true;
        }
        return this.f901b;
    }

    /* renamed from: h */
    public final boolean m8554h() {
        int[] iArr = this.f905f;
        int length = iArr.length;
        boolean z = length > 0;
        this.f906g = z;
        if (z) {
            this.f900a = 1;
            this.f903d = iArr[0];
            this.f904e = iArr[length - 1];
            this.f902c = -1.0f;
        }
        return z;
    }

    /* renamed from: i */
    public final boolean m8553i() {
        return !(this.f908i instanceof C0245k);
    }

    /* renamed from: j */
    public final void m8552j(float f, float f2, float f3) throws IllegalArgumentException {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f + "px) is less or equal to (0px)");
        } else if (f2 <= f) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f2 + "px) is less or equal to minimum auto-size text size (" + f + "px)");
        } else if (f3 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f3 + "px) is less or equal to (0px)");
        } else {
            this.f900a = 1;
            this.f903d = f;
            this.f904e = f2;
            this.f902c = f3;
            this.f906g = false;
        }
    }
}
