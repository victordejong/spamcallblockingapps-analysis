package p000;

import android.animation.AnimatorInflater;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Html;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import carbon.animation.AnimatedColorStateList;
import carbon.drawable.DefaultAccentColorStateList;
import carbon.drawable.DefaultColorStateList;
import carbon.drawable.DefaultIconColorAccentInverseStateList;
import carbon.drawable.DefaultIconColorAccentStateList;
import carbon.drawable.DefaultIconColorInverseStateList;
import carbon.drawable.DefaultIconColorPrimaryInverseStateList;
import carbon.drawable.DefaultIconColorPrimaryStateList;
import carbon.drawable.DefaultIconColorStateList;
import carbon.drawable.DefaultPrimaryColorStateList;
import carbon.drawable.DefaultTextColorAccentStateList;
import carbon.drawable.DefaultTextColorPrimaryStateList;
import carbon.drawable.DefaultTextPrimaryColorInverseStateList;
import carbon.drawable.DefaultTextPrimaryColorStateList;
import carbon.drawable.DefaultTextSecondaryColorInverseStateList;
import carbon.drawable.DefaultTextSecondaryColorStateList;
import hc0;
import p000.fa0;
/* renamed from: d80 */
/* loaded from: classes-dex2jar.jar:d80.class */
public class d80 {

    /* renamed from: a */
    public static final boolean f5791a;

    /* renamed from: b */
    public static final boolean f5792b;

    /* renamed from: c */
    public static PorterDuffXfermode f5793c;

    static {
        int i = Build.VERSION.SDK_INT;
        f5791a = i >= 21;
        f5792b = i >= 28;
        f5793c = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
    }

    /* renamed from: B */
    public static void m2775B(Exception exc) {
        StackTraceElement stackTraceElement = exc.getStackTrace()[0];
        StackTraceElement stackTraceElement2 = Thread.currentThread().getStackTrace()[3];
        Log.e("Carbon", "This feature is implemented using reflection. If you see this exception, something in your setup is not standard. Please create an issue on https://github.com/ZieIony/Carbon/issues. Please provide at least the following information: \n - device: " + Build.MANUFACTURER + " " + Build.MODEL + ", API " + Build.VERSION.SDK_INT + "\n - method: " + stackTraceElement2.getClassName() + "." + stackTraceElement2.getMethodName() + "(...)\n - cause: " + exc.getClass().getName() + ": " + exc.getMessage() + " at " + stackTraceElement.getMethodName() + "(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")\n", exc);
    }

    /* renamed from: C */
    public static void m2774C(Drawable drawable, ColorStateList colorStateList) {
        drawable.mutate();
        if (f5791a) {
            drawable.setTintList(colorStateList);
        } else if (drawable instanceof AbstractC1355e9) {
            ((AbstractC1355e9) drawable).setTintList(colorStateList);
        } else {
            drawable.setColorFilter(colorStateList == null ? null : new PorterDuffColorFilter(colorStateList.getColorForState(drawable.getState(), colorStateList.getDefaultColor()), PorterDuff.Mode.MULTIPLY));
        }
    }

    /* renamed from: D */
    public static void m2773D(Drawable drawable, ColorStateList colorStateList, PorterDuff.Mode mode) {
        drawable.mutate();
        if (f5791a) {
            drawable.setTintList(colorStateList);
            drawable.setTintMode(mode);
        } else if (!(drawable instanceof AbstractC1355e9)) {
            drawable.setColorFilter(colorStateList == null ? null : new PorterDuffColorFilter(colorStateList.getColorForState(drawable.getState(), colorStateList.getDefaultColor()), mode));
        } else {
            AbstractC1355e9 abstractC1355e9 = (AbstractC1355e9) drawable;
            abstractC1355e9.setTintList(colorStateList);
            abstractC1355e9.setTintMode(mode);
        }
    }

    /* renamed from: E */
    public static void m2772E(Drawable drawable, PorterDuff.Mode mode) {
        drawable.mutate();
        if (f5791a) {
            drawable.setTintMode(mode);
        } else if (!(drawable instanceof AbstractC1355e9)) {
        } else {
            ((AbstractC1355e9) drawable).setTintMode(mode);
        }
    }

    /* renamed from: a */
    public static float m2771a(View view) {
        ColorStateList backgroundTint;
        if ((view instanceof he0) && (backgroundTint = ((he0) view).getBackgroundTint()) != null) {
            return (backgroundTint.getColorForState(view.getDrawableState(), backgroundTint.getDefaultColor()) >> 24) & 255;
        }
        return 255.0f;
    }

    /* renamed from: b */
    public static ColorStateList m2770b(View view, TypedArray typedArray, int i) {
        int i2;
        if (!typedArray.hasValue(i)) {
            return null;
        }
        try {
            int color = typedArray.getColor(i, 0);
            Resources resources = view.getResources();
            int i3 = i80.carbon_defaultColor;
            if (color != resources.getColor(i3)) {
                return null;
            }
            Context context = view.getContext();
            int resourceId = typedArray.getResourceId(i, 0);
            if (resourceId == i3) {
                return new DefaultColorStateList(context);
            }
            if (resourceId == i80.carbon_defaultColorPrimary) {
                return new DefaultPrimaryColorStateList(context);
            }
            if (resourceId == i80.carbon_defaultColorAccent) {
                return new DefaultAccentColorStateList(context);
            }
            if (resourceId == i80.carbon_defaultIconColor) {
                return new DefaultIconColorStateList(context);
            }
            if (resourceId == i80.carbon_defaultIconColorInverse) {
                return new DefaultIconColorInverseStateList(context);
            }
            if (resourceId == i80.carbon_defaultIconColorAccent) {
                return new DefaultIconColorAccentStateList(context);
            }
            if (resourceId == i80.carbon_defaultIconColorAccentInverse) {
                return new DefaultIconColorAccentInverseStateList(context);
            }
            if (resourceId == i80.carbon_defaultIconColorPrimary) {
                return new DefaultIconColorPrimaryStateList(context);
            }
            if (resourceId == i80.carbon_defaultIconColorPrimaryInverse) {
                return new DefaultIconColorPrimaryInverseStateList(context);
            }
            if (resourceId == i80.carbon_defaultTextPrimaryColor) {
                return new DefaultTextPrimaryColorStateList(context);
            }
            if (resourceId == i80.carbon_defaultTextSecondaryColor) {
                return new DefaultTextSecondaryColorStateList(context);
            }
            if (resourceId == i80.carbon_defaultTextPrimaryColorInverse) {
                return new DefaultTextPrimaryColorInverseStateList(context);
            }
            if (resourceId == i80.carbon_defaultTextSecondaryColorInverse) {
                return new DefaultTextSecondaryColorInverseStateList(context);
            }
            if (resourceId == i80.carbon_defaultTextColorPrimary) {
                return new DefaultTextColorPrimaryStateList(context);
            }
            if (resourceId == i80.carbon_defaultTextColorAccent) {
                return new DefaultTextColorAccentStateList(context);
            }
            if (resourceId == i80.carbon_defaultRippleColor) {
                i2 = h80.carbon_rippleColor;
            } else if (resourceId == i80.carbon_defaultRippleColorPrimary) {
                i2 = h80.colorPrimary;
            } else if (resourceId != i80.carbon_defaultRippleColorAccent) {
                return null;
            } else {
                i2 = h80.colorAccent;
            }
            return ColorStateList.valueOf((m2765g(context, i2) & 16777215) | 301989888);
        } catch (Resources.NotFoundException e) {
            return null;
        }
    }

    /* renamed from: c */
    public static float m2769c(Context context) {
        return TypedValue.applyDimension(1, 1.0f, context.getResources().getDisplayMetrics());
    }

    /* renamed from: d */
    public static int m2768d(Drawable drawable) {
        if (drawable == null) {
            return 255;
        }
        ob0 current = drawable.getCurrent();
        if (current instanceof ColorDrawable) {
            return ((ColorDrawable) current).getAlpha();
        }
        if (!(current instanceof ob0)) {
            return 255;
        }
        return current.getAlpha();
    }

    /* renamed from: e */
    public static wc0 m2767e(Context context, int i) {
        Context m1920a = f80.m1920a(context);
        Menu wc0Var = new wc0(m1920a);
        new MenuInflater(m1920a).inflate(i, wc0Var);
        return wc0Var;
    }

    /* renamed from: f */
    public static wc0 m2766f(Context context, Menu menu) {
        wc0 wc0Var = new wc0(f80.m1920a(context));
        for (int i = 0; i < menu.size(); i++) {
            MenuItem item = menu.getItem(i);
            wc0Var.add(item.getGroupId(), item.getItemId(), item.getOrder(), item.getTitle()).setIcon(item.getIcon()).setVisible(item.isVisible()).setEnabled(item.isEnabled());
        }
        return wc0Var;
    }

    /* renamed from: g */
    public static int m2765g(Context context, int i) {
        Resources.Theme theme = context.getTheme();
        TypedValue typedValue = new TypedValue();
        theme.resolveAttribute(i, typedValue, true);
        return typedValue.resourceId != 0 ? context.getResources().getColor(typedValue.resourceId) : typedValue.data;
    }

    /* renamed from: h */
    public static Context m2764h(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        if (obtainStyledAttributes.hasValue(i2)) {
            int resourceId = obtainStyledAttributes.getResourceId(i2, 0);
            obtainStyledAttributes.recycle();
            return new e80(context, resourceId);
        }
        return context;
    }

    /* renamed from: i */
    public static void m2763i(ga0 ga0Var, TypedArray typedArray, int[] iArr) {
        View view = (View) ga0Var;
        if (view.isInEditMode()) {
            return;
        }
        int i = iArr[0];
        if (typedArray.hasValue(i)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            ga0Var.setInAnimator(typedValue.resourceId != 0 ? AnimatorInflater.loadAnimator(view.getContext(), typedValue.resourceId) : fa0.EnumC1415h.values()[typedValue.data].m1869a());
        }
        int i2 = iArr[1];
        if (!typedArray.hasValue(i2)) {
            return;
        }
        TypedValue typedValue2 = new TypedValue();
        typedArray.getValue(i2, typedValue2);
        ga0Var.setOutAnimator(typedValue2.resourceId != 0 ? AnimatorInflater.loadAnimator(view.getContext(), typedValue2.resourceId) : fa0.EnumC1415h.values()[typedValue2.data].m1868b());
    }

    /* renamed from: j */
    public static void m2762j(ae0 ae0Var, TypedArray typedArray, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        ae0Var.setAutoSizeText(gh0.values()[typedArray.getInt(i, 0)]);
        ae0Var.setMinTextSize(typedArray.getDimension(i2, 0.0f));
        ae0Var.setMaxTextSize(typedArray.getDimension(i3, 0.0f));
        ae0Var.setAutoSizeStepGranularity(typedArray.getDimension(i4, 1.0f));
    }

    /* renamed from: k */
    public static void m2761k(ee0 ee0Var, TypedArray typedArray, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = iArr[8];
        int i10 = iArr[9];
        vd0 shapeModel = ee0Var.getShapeModel();
        float max = Math.max(typedArray.getDimension(i5, 0.0f), 0.1f);
        float dimension = typedArray.getDimension(i, max);
        float dimension2 = typedArray.getDimension(i2, max);
        float dimension3 = typedArray.getDimension(i3, max);
        float dimension4 = typedArray.getDimension(i4, max);
        float dimension5 = typedArray.getDimension(i10, 0.0f);
        float dimension6 = typedArray.getDimension(i6, dimension5);
        float dimension7 = typedArray.getDimension(i7, dimension5);
        float dimension8 = typedArray.getDimension(i8, dimension5);
        float dimension9 = typedArray.getDimension(i9, dimension5);
        shapeModel.q(dimension6 >= dimension ? new od0(dimension6) : new sd0(dimension));
        shapeModel.r(dimension7 >= dimension2 ? new od0(dimension7) : new sd0(dimension2));
        shapeModel.l(dimension8 >= dimension3 ? new od0(dimension8) : new sd0(dimension3));
        shapeModel.m(dimension9 >= dimension4 ? new od0(dimension9) : new sd0(dimension4));
        ee0Var.setShapeModel(shapeModel);
    }

    /* renamed from: l */
    public static void m2760l(View view, TypedArray typedArray, int i) {
        ColorStateList m2770b = m2770b(view, typedArray, i);
        if (m2770b != null) {
            view.setBackgroundDrawable(new sb0(AnimatedColorStateList.m5400b(m2770b, new y70(view))));
        }
    }

    /* renamed from: m */
    public static void m2759m(TextView textView, TypedArray typedArray, int i) {
        ColorStateList m2770b = m2770b(textView, typedArray, i);
        if (m2770b != null) {
            textView.setTextColor(AnimatedColorStateList.m5400b(m2770b, new z70(textView)));
        }
    }

    /* renamed from: n */
    public static void m2758n(ud0 ud0Var, TypedArray typedArray, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        float dimension = typedArray.getDimension(i, 0.0f);
        ud0Var.setElevation(dimension);
        if (dimension > 0.0f) {
            fa0.m1896N(((fe0) ud0Var).getStateAnimator(), ud0Var);
        }
        ud0Var.setElevationShadowColor(typedArray.getColorStateList(i2));
        if (typedArray.hasValue(i3)) {
            ud0Var.setOutlineAmbientShadowColor(typedArray.getColorStateList(i3));
        }
        if (typedArray.hasValue(i4)) {
            ud0Var.setOutlineSpotShadowColor(typedArray.getColorStateList(i4));
        }
    }

    /* renamed from: o */
    public static void m2757o(TextView textView, TypedArray typedArray, int i) {
        String string = typedArray.getString(i);
        if (string != null) {
            textView.setText(Html.fromHtml(string));
        }
    }

    /* renamed from: p */
    public static void m2756p(ce0 ce0Var, TypedArray typedArray, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        float dimension = (int) typedArray.getDimension(i, -1.0f);
        ce0Var.setInset((int) typedArray.getDimension(i2, dimension), (int) typedArray.getDimension(i3, dimension), (int) typedArray.getDimension(i4, dimension), (int) typedArray.getDimension(i5, dimension));
        ce0Var.setInsetColor(typedArray.getColor(i6, 0));
    }

    /* renamed from: q */
    public static void m2755q(de0 de0Var, TypedArray typedArray, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        de0Var.setMaximumWidth((int) typedArray.getDimension(i, 2.14748365E9f));
        de0Var.setMaximumHeight((int) typedArray.getDimension(i2, 2.14748365E9f));
    }

    /* renamed from: r */
    public static void m2754r(mc0 mc0Var, TypedArray typedArray, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        View view = (View) mc0Var;
        if (view.isInEditMode()) {
            return;
        }
        ColorStateList m2770b = m2770b(view, typedArray, i);
        ColorStateList colorStateList = m2770b;
        if (m2770b == null) {
            colorStateList = typedArray.getColorStateList(i);
        }
        if (colorStateList == null) {
            return;
        }
        mc0Var.setRippleDrawable(gc0.a(colorStateList, hc0.a.values()[typedArray.getInt(i2, hc0.a.b.ordinal())], view, typedArray.getBoolean(i3, true), (int) typedArray.getDimension(i4, -1.0f)));
    }

    /* renamed from: s */
    public static void m2753s(ge0 ge0Var, TypedArray typedArray, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        final View view = (View) ge0Var;
        ColorStateList m2770b = m2770b(view, typedArray, i);
        ColorStateList colorStateList = m2770b;
        if (m2770b == null) {
            colorStateList = typedArray.getColorStateList(i);
        }
        if (colorStateList != null) {
            ge0Var.setStroke(AnimatedColorStateList.m5400b(colorStateList, new ValueAnimator.AnimatorUpdateListener() { // from class: b80
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    view.postInvalidate();
                }
            }));
        }
        ge0Var.setStrokeWidth(typedArray.getDimension(i2, 0.0f));
    }

    /* renamed from: t */
    public static void m2752t(final he0 he0Var, TypedArray typedArray, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        if (typedArray.hasValue(i)) {
            ColorStateList m2770b = m2770b((View) he0Var, typedArray, i);
            ColorStateList colorStateList = m2770b;
            if (m2770b == null) {
                colorStateList = typedArray.getColorStateList(i);
            }
            if (colorStateList != null) {
                he0Var.setTintList(AnimatedColorStateList.m5400b(colorStateList, new ValueAnimator.AnimatorUpdateListener() { // from class: c80
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ((View) he0Var).postInvalidate();
                    }
                }));
            }
        }
        PorterDuff.Mode[] modeArr = he0.i;
        he0Var.setTintMode(modeArr[typedArray.getInt(i2, 1)]);
        if (typedArray.hasValue(i3)) {
            ColorStateList m2770b2 = m2770b((View) he0Var, typedArray, i3);
            ColorStateList colorStateList2 = m2770b2;
            if (m2770b2 == null) {
                colorStateList2 = typedArray.getColorStateList(i3);
            }
            if (colorStateList2 != null) {
                he0Var.setBackgroundTintList(AnimatedColorStateList.m5400b(colorStateList2, new ValueAnimator.AnimatorUpdateListener() { // from class: a80
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ((View) he0Var).postInvalidate();
                    }
                }));
            }
        }
        he0Var.setBackgroundTintMode(modeArr[typedArray.getInt(i4, 1)]);
        if (typedArray.hasValue(i5)) {
            he0Var.setAnimateColorChangesEnabled(typedArray.getBoolean(i5, false));
        }
    }

    /* renamed from: u */
    public static void m2751u(ie0 ie0Var, TypedArray typedArray, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        float dimension = (int) typedArray.getDimension(i, 0.0f);
        ie0Var.setTouchMargin((int) typedArray.getDimension(i2, dimension), (int) typedArray.getDimension(i3, dimension), (int) typedArray.getDimension(i4, dimension), (int) typedArray.getDimension(i5, dimension));
    }

    /* renamed from: v */
    public static boolean m2750v(vd0 vd0Var) {
        return vd0Var.g().d() <= 0.2f && vd0Var.h().d() <= 0.2f && vd0Var.b().d() <= 0.2f && vd0Var.c().d() <= 0.2f;
    }
}
