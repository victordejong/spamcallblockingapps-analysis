package p1727n3.p1734b.p1743f;

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
import android.util.TypedValue;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: n3.b.f.s */
/* loaded from: classes-dex2jar.jar:n3/b/f/s.class */
public class C25541s {

    /* renamed from: l */
    public static final RectF f71468l = new RectF();

    /* renamed from: m */
    public static ConcurrentHashMap<String, Method> f71469m = new ConcurrentHashMap<>();

    /* renamed from: n */
    public static ConcurrentHashMap<String, Field> f71470n = new ConcurrentHashMap<>();

    /* renamed from: a */
    public int f71471a = 0;

    /* renamed from: b */
    public boolean f71472b = false;

    /* renamed from: c */
    public float f71473c = -1.0f;

    /* renamed from: d */
    public float f71474d = -1.0f;

    /* renamed from: e */
    public float f71475e = -1.0f;

    /* renamed from: f */
    public int[] f71476f = new int[0];

    /* renamed from: g */
    public boolean f71477g = false;

    /* renamed from: h */
    public TextPaint f71478h;

    /* renamed from: i */
    public final TextView f71479i;

    /* renamed from: j */
    public final Context f71480j;

    /* renamed from: k */
    public final C25543c f71481k;

    /* renamed from: n3.b.f.s$a */
    /* loaded from: classes-dex2jar.jar:n3/b/f/s$a.class */
    public static class C25542a extends C25543c {
        @Override // p1727n3.p1734b.p1743f.C25541s.C25543c
        /* renamed from: a */
        public void mo3295a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection((TextDirectionHeuristic) C25541s.m3301e(textView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        }
    }

    /* renamed from: n3.b.f.s$c */
    /* loaded from: classes-dex2jar.jar:n3/b/f/s$c.class */
    public static class C25543c {
        /* renamed from: a */
        public void mo3295a(StaticLayout.Builder builder, TextView textView) {
            throw null;
        }

        /* renamed from: b */
        public boolean m3294b(TextView textView) {
            return ((Boolean) C25541s.m3301e(textView, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue();
        }
    }

    public C25541s(TextView textView) {
        this.f71479i = textView;
        this.f71480j = textView.getContext();
        if (Build.VERSION.SDK_INT >= 29) {
            this.f71481k = new b();
        } else {
            this.f71481k = new C25542a();
        }
    }

    /* renamed from: d */
    public static Method m3302d(String str) {
        try {
            Method method = f71469m.get(str);
            Method method2 = method;
            if (method == null) {
                Method declaredMethod = TextView.class.getDeclaredMethod(str, new Class[0]);
                method2 = declaredMethod;
                if (declaredMethod != null) {
                    declaredMethod.setAccessible(true);
                    f71469m.put(str, declaredMethod);
                    method2 = declaredMethod;
                }
            }
            return method2;
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: e */
    public static <T> T m3301e(Object obj, String str, T t) {
        try {
            t = m3302d(str).invoke(obj, new Object[0]);
        } catch (Exception e) {
        }
        return t;
    }

    /* renamed from: a */
    public void m3305a() {
        if (!(m3297i() && this.f71471a != 0)) {
            return;
        }
        if (this.f71472b) {
            if (this.f71479i.getMeasuredHeight() <= 0 || this.f71479i.getMeasuredWidth() <= 0) {
                return;
            }
            int measuredWidth = this.f71481k.m3294b(this.f71479i) ? 1048576 : (this.f71479i.getMeasuredWidth() - this.f71479i.getTotalPaddingLeft()) - this.f71479i.getTotalPaddingRight();
            int height = (this.f71479i.getHeight() - this.f71479i.getCompoundPaddingBottom()) - this.f71479i.getCompoundPaddingTop();
            if (measuredWidth <= 0 || height <= 0) {
                return;
            }
            RectF rectF = f71468l;
            synchronized (rectF) {
                rectF.setEmpty();
                rectF.right = measuredWidth;
                rectF.bottom = height;
                float m3303c = m3303c(rectF);
                if (m3303c != this.f71479i.getTextSize()) {
                    m3300f(0, m3303c);
                }
            }
        }
        this.f71472b = true;
    }

    /* renamed from: b */
    public final int[] m3304b(int[] iArr) {
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
    public final int m3303c(RectF rectF) {
        int length = this.f71476f.length;
        if (length != 0) {
            int i = length - 1;
            int i2 = 1;
            int i3 = 0;
            while (i2 <= i) {
                int i4 = (i2 + i) / 2;
                int i5 = this.f71476f[i4];
                CharSequence text = this.f71479i.getText();
                TransformationMethod transformationMethod = this.f71479i.getTransformationMethod();
                CharSequence charSequence = text;
                if (transformationMethod != null) {
                    CharSequence transformation = transformationMethod.getTransformation(text, this.f71479i);
                    charSequence = text;
                    if (transformation != null) {
                        charSequence = transformation;
                    }
                }
                int maxLines = this.f71479i.getMaxLines();
                TextPaint textPaint = this.f71478h;
                if (textPaint == null) {
                    this.f71478h = new TextPaint();
                } else {
                    textPaint.reset();
                }
                this.f71478h.set(this.f71479i.getPaint());
                this.f71478h.setTextSize(i5);
                Layout.Alignment alignment = (Layout.Alignment) m3301e(this.f71479i, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL);
                StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.f71478h, Math.round(rectF.right));
                obtain.setAlignment(alignment).setLineSpacing(this.f71479i.getLineSpacingExtra(), this.f71479i.getLineSpacingMultiplier()).setIncludePad(this.f71479i.getIncludeFontPadding()).setBreakStrategy(this.f71479i.getBreakStrategy()).setHyphenationFrequency(this.f71479i.getHyphenationFrequency()).setMaxLines(maxLines == -1 ? Integer.MAX_VALUE : maxLines);
                try {
                    this.f71481k.mo3295a(obtain, this.f71479i);
                } catch (ClassCastException e) {
                }
                StaticLayout build = obtain.build();
                if ((maxLines == -1 || (build.getLineCount() <= maxLines && build.getLineEnd(build.getLineCount() - 1) == charSequence.length())) && ((float) build.getHeight()) <= rectF.bottom) {
                    i3 = i2;
                    i2 = i4 + 1;
                } else {
                    i3 = i4 - 1;
                    i = i3;
                }
            }
            return this.f71476f[i3];
        }
        throw new IllegalStateException("No available text sizes to choose from.");
    }

    /* renamed from: f */
    public void m3300f(int i, float f) {
        Context context = this.f71480j;
        float applyDimension = TypedValue.applyDimension(i, f, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics());
        if (applyDimension != this.f71479i.getPaint().getTextSize()) {
            this.f71479i.getPaint().setTextSize(applyDimension);
            boolean isInLayout = this.f71479i.isInLayout();
            if (this.f71479i.getLayout() == null) {
                return;
            }
            this.f71472b = false;
            try {
                Method m3302d = m3302d("nullLayouts");
                if (m3302d != null) {
                    m3302d.invoke(this.f71479i, new Object[0]);
                }
            } catch (Exception e) {
            }
            if (!isInLayout) {
                this.f71479i.requestLayout();
            } else {
                this.f71479i.forceLayout();
            }
            this.f71479i.invalidate();
        }
    }

    /* renamed from: g */
    public final boolean m3299g() {
        if (!m3297i() || this.f71471a != 1) {
            this.f71472b = false;
        } else {
            if (!this.f71477g || this.f71476f.length == 0) {
                int floor = ((int) Math.floor((this.f71475e - this.f71474d) / this.f71473c)) + 1;
                int[] iArr = new int[floor];
                for (int i = 0; i < floor; i++) {
                    iArr[i] = Math.round((i * this.f71473c) + this.f71474d);
                }
                this.f71476f = m3304b(iArr);
            }
            this.f71472b = true;
        }
        return this.f71472b;
    }

    /* renamed from: h */
    public final boolean m3298h() {
        int[] iArr = this.f71476f;
        int length = iArr.length;
        boolean z = length > 0;
        this.f71477g = z;
        if (z) {
            this.f71471a = 1;
            this.f71474d = iArr[0];
            this.f71475e = iArr[length - 1];
            this.f71473c = -1.0f;
        }
        return z;
    }

    /* renamed from: i */
    public final boolean m3297i() {
        return !(this.f71479i instanceof AppCompatEditText);
    }

    /* renamed from: j */
    public final void m3296j(float f, float f2, float f3) throws IllegalArgumentException {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f + "px) is less or equal to (0px)");
        } else if (f2 <= f) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f2 + "px) is less or equal to minimum auto-size text size (" + f + "px)");
        } else if (f3 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f3 + "px) is less or equal to (0px)");
        } else {
            this.f71471a = 1;
            this.f71474d = f;
            this.f71475e = f2;
            this.f71473c = f3;
            this.f71477g = false;
        }
    }
}
