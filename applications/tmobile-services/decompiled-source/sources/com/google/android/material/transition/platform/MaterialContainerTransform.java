package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.transition.ArcMotion;
import android.transition.PathMotion;
import android.transition.Transition;
import android.transition.TransitionValues;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import com.google.android.material.C1027R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.transition.platform.TransitionUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@RequiresApi
/* loaded from: classes-dex2jar.jar:com/google/android/material/transition/platform/MaterialContainerTransform.class */
public final class MaterialContainerTransform extends Transition {

    /* renamed from: C */
    private static final String f11802C = MaterialContainerTransform.class.getSimpleName();

    /* renamed from: D */
    private static final String[] f11803D = {"materialContainerTransition:bounds", "materialContainerTransition:shapeAppearance"};

    /* renamed from: E */
    private static final ProgressThresholdsGroup f11804E = new ProgressThresholdsGroup(new ProgressThresholds(0.0f, 0.25f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 0.75f));

    /* renamed from: F */
    private static final ProgressThresholdsGroup f11805F = new ProgressThresholdsGroup(new ProgressThresholds(0.6f, 0.9f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.3f, 0.9f));

    /* renamed from: G */
    private static final ProgressThresholdsGroup f11806G = new ProgressThresholdsGroup(new ProgressThresholds(0.1f, 0.4f), new ProgressThresholds(0.1f, 1.0f), new ProgressThresholds(0.1f, 1.0f), new ProgressThresholds(0.1f, 0.9f));

    /* renamed from: H */
    private static final ProgressThresholdsGroup f11807H = new ProgressThresholdsGroup(new ProgressThresholds(0.6f, 0.9f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.2f, 0.9f));

    /* renamed from: A */
    private float f11808A;

    /* renamed from: B */
    private float f11809B;

    /* renamed from: f */
    private boolean f11810f = false;

    /* renamed from: g */
    private boolean f11811g = false;
    @IdRes

    /* renamed from: h */
    private int f11812h = 16908290;
    @IdRes

    /* renamed from: i */
    private int f11813i = -1;
    @IdRes

    /* renamed from: j */
    private int f11814j = -1;
    @ColorInt

    /* renamed from: k */
    private int f11815k = 0;
    @ColorInt

    /* renamed from: l */
    private int f11816l = 0;
    @ColorInt

    /* renamed from: m */
    private int f11817m = 0;
    @ColorInt

    /* renamed from: n */
    private int f11818n = 1375731712;

    /* renamed from: o */
    private int f11819o = 0;

    /* renamed from: p */
    private int f11820p = 0;

    /* renamed from: q */
    private int f11821q = 0;
    @Nullable

    /* renamed from: r */
    private View f11822r;
    @Nullable

    /* renamed from: s */
    private View f11823s;
    @Nullable

    /* renamed from: t */
    private ShapeAppearanceModel f11824t;
    @Nullable

    /* renamed from: u */
    private ShapeAppearanceModel f11825u;
    @Nullable

    /* renamed from: v */
    private ProgressThresholds f11826v;
    @Nullable

    /* renamed from: w */
    private ProgressThresholds f11827w;
    @Nullable

    /* renamed from: x */
    private ProgressThresholds f11828x;
    @Nullable

    /* renamed from: y */
    private ProgressThresholds f11829y;

    /* renamed from: z */
    private boolean f11830z;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/transition/platform/MaterialContainerTransform$FadeMode.class */
    public @interface FadeMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/transition/platform/MaterialContainerTransform$FitMode.class */
    public @interface FitMode {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds.class */
    public static class ProgressThresholds {
        @FloatRange

        /* renamed from: a */
        private final float f11837a;
        @FloatRange

        /* renamed from: b */
        private final float f11838b;

        public ProgressThresholds(@FloatRange(from = 0.0d, to = 1.0d) float f, @FloatRange(from = 0.0d, to = 1.0d) float f2) {
            this.f11837a = f;
            this.f11838b = f2;
        }

        @FloatRange
        /* renamed from: c */
        public float m8520c() {
            return this.f11838b;
        }

        @FloatRange
        /* renamed from: d */
        public float m8519d() {
            return this.f11837a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup.class */
    public static class ProgressThresholdsGroup {
        @NonNull

        /* renamed from: a */
        private final ProgressThresholds f11839a;
        @NonNull

        /* renamed from: b */
        private final ProgressThresholds f11840b;
        @NonNull

        /* renamed from: c */
        private final ProgressThresholds f11841c;
        @NonNull

        /* renamed from: d */
        private final ProgressThresholds f11842d;

        private ProgressThresholdsGroup(@NonNull ProgressThresholds progressThresholds, @NonNull ProgressThresholds progressThresholds2, @NonNull ProgressThresholds progressThresholds3, @NonNull ProgressThresholds progressThresholds4) {
            this.f11839a = progressThresholds;
            this.f11840b = progressThresholds2;
            this.f11841c = progressThresholds3;
            this.f11842d = progressThresholds4;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/transition/platform/MaterialContainerTransform$TransitionDirection.class */
    public @interface TransitionDirection {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable.class */
    private static final class TransitionDrawable extends Drawable {

        /* renamed from: A */
        private final ProgressThresholdsGroup f11843A;

        /* renamed from: B */
        private final FadeModeEvaluator f11844B;

        /* renamed from: C */
        private final FitModeEvaluator f11845C;

        /* renamed from: D */
        private final boolean f11846D;

        /* renamed from: E */
        private final Paint f11847E;

        /* renamed from: F */
        private final Path f11848F;

        /* renamed from: G */
        private FadeModeResult f11849G;

        /* renamed from: H */
        private FitModeResult f11850H;

        /* renamed from: I */
        private RectF f11851I;

        /* renamed from: J */
        private float f11852J;

        /* renamed from: K */
        private float f11853K;

        /* renamed from: L */
        private float f11854L;

        /* renamed from: a */
        private final View f11855a;

        /* renamed from: b */
        private final RectF f11856b;

        /* renamed from: c */
        private final ShapeAppearanceModel f11857c;

        /* renamed from: d */
        private final float f11858d;

        /* renamed from: e */
        private final View f11859e;

        /* renamed from: f */
        private final RectF f11860f;

        /* renamed from: g */
        private final ShapeAppearanceModel f11861g;

        /* renamed from: h */
        private final float f11862h;

        /* renamed from: i */
        private final Paint f11863i;

        /* renamed from: j */
        private final Paint f11864j;

        /* renamed from: k */
        private final Paint f11865k;

        /* renamed from: l */
        private final Paint f11866l;

        /* renamed from: m */
        private final Paint f11867m;

        /* renamed from: n */
        private final MaskEvaluator f11868n;

        /* renamed from: o */
        private final PathMeasure f11869o;

        /* renamed from: p */
        private final float f11870p;

        /* renamed from: q */
        private final float[] f11871q;

        /* renamed from: r */
        private final boolean f11872r;

        /* renamed from: s */
        private final float f11873s;

        /* renamed from: t */
        private final float f11874t;

        /* renamed from: u */
        private final boolean f11875u;

        /* renamed from: v */
        private final MaterialShapeDrawable f11876v;

        /* renamed from: w */
        private final RectF f11877w;

        /* renamed from: x */
        private final RectF f11878x;

        /* renamed from: y */
        private final RectF f11879y;

        /* renamed from: z */
        private final RectF f11880z;

        private TransitionDrawable(PathMotion pathMotion, View view, RectF rectF, ShapeAppearanceModel shapeAppearanceModel, float f, View view2, RectF rectF2, ShapeAppearanceModel shapeAppearanceModel2, float f2, @ColorInt int i, @ColorInt int i2, @ColorInt int i3, int i4, boolean z, boolean z2, FadeModeEvaluator fadeModeEvaluator, FitModeEvaluator fitModeEvaluator, ProgressThresholdsGroup progressThresholdsGroup, boolean z3) {
            this.f11863i = new Paint();
            this.f11864j = new Paint();
            this.f11865k = new Paint();
            this.f11866l = new Paint();
            this.f11867m = new Paint();
            this.f11868n = new MaskEvaluator();
            this.f11871q = new float[2];
            this.f11876v = new MaterialShapeDrawable();
            this.f11847E = new Paint();
            this.f11848F = new Path();
            this.f11855a = view;
            this.f11856b = rectF;
            this.f11857c = shapeAppearanceModel;
            this.f11858d = f;
            this.f11859e = view2;
            this.f11860f = rectF2;
            this.f11861g = shapeAppearanceModel2;
            this.f11862h = f2;
            this.f11872r = z;
            this.f11875u = z2;
            this.f11844B = fadeModeEvaluator;
            this.f11845C = fitModeEvaluator;
            this.f11843A = progressThresholdsGroup;
            this.f11846D = z3;
            WindowManager windowManager = (WindowManager) view.getContext().getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            this.f11873s = displayMetrics.widthPixels;
            this.f11874t = displayMetrics.heightPixels;
            this.f11863i.setColor(i);
            this.f11864j.setColor(i2);
            this.f11865k.setColor(i3);
            this.f11876v.m9328W(ColorStateList.valueOf(0));
            this.f11876v.m9316e0(2);
            this.f11876v.m9322b0(false);
            this.f11876v.m9320c0(-7829368);
            this.f11877w = new RectF(rectF);
            this.f11878x = new RectF(this.f11877w);
            this.f11879y = new RectF(this.f11877w);
            this.f11880z = new RectF(this.f11879y);
            PointF m = m8502m(rectF);
            PointF m2 = m8502m(rectF2);
            PathMeasure pathMeasure = new PathMeasure(pathMotion.getPath(m.x, m.y, m2.x, m2.y), false);
            this.f11869o = pathMeasure;
            this.f11870p = pathMeasure.getLength();
            this.f11871q[0] = rectF.centerX();
            this.f11871q[1] = rectF.top;
            this.f11867m.setStyle(Paint.Style.FILL);
            this.f11867m.setShader(TransitionUtils.m8472c(i4));
            this.f11847E.setStyle(Paint.Style.STROKE);
            this.f11847E.setStrokeWidth(10.0f);
            m8499p(0.0f);
        }

        /* renamed from: d */
        private static float m8511d(RectF rectF, float f) {
            return ((rectF.centerX() / (f / 2.0f)) - 1.0f) * 0.3f;
        }

        /* renamed from: e */
        private static float m8510e(RectF rectF, float f) {
            return (rectF.centerY() / f) * 1.5f;
        }

        /* renamed from: f */
        private void m8509f(Canvas canvas, RectF rectF, Path path, @ColorInt int i) {
            PointF m = m8502m(rectF);
            if (this.f11854L == 0.0f) {
                path.reset();
                path.moveTo(m.x, m.y);
                return;
            }
            path.lineTo(m.x, m.y);
            this.f11847E.setColor(i);
            canvas.drawPath(path, this.f11847E);
        }

        /* renamed from: g */
        private void m8508g(Canvas canvas, RectF rectF, @ColorInt int i) {
            this.f11847E.setColor(i);
            canvas.drawRect(rectF, this.f11847E);
        }

        /* renamed from: h */
        private void m8507h(Canvas canvas) {
            canvas.save();
            canvas.clipPath(this.f11868n.m8535d(), Region.Op.DIFFERENCE);
            if (Build.VERSION.SDK_INT > 28) {
                m8505j(canvas);
            } else {
                m8506i(canvas);
            }
            canvas.restore();
        }

        /* renamed from: i */
        private void m8506i(Canvas canvas) {
            MaterialShapeDrawable materialShapeDrawable = this.f11876v;
            RectF rectF = this.f11851I;
            materialShapeDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
            this.f11876v.m9329V(this.f11852J);
            this.f11876v.m9314f0((int) this.f11853K);
            this.f11876v.setShapeAppearanceModel(this.f11868n.m8536c());
            this.f11876v.draw(canvas);
        }

        /* renamed from: j */
        private void m8505j(Canvas canvas) {
            ShapeAppearanceModel c = this.f11868n.m8536c();
            if (c.m9257u(this.f11851I)) {
                float a = c.m9260r().mo9279a(this.f11851I);
                canvas.drawRoundRect(this.f11851I, a, a, this.f11866l);
                return;
            }
            canvas.drawPath(this.f11868n.m8535d(), this.f11866l);
        }

        /* renamed from: k */
        private void m8504k(Canvas canvas) {
            m8501n(canvas, this.f11865k);
            Rect bounds = getBounds();
            RectF rectF = this.f11879y;
            TransitionUtils.m8459p(canvas, bounds, rectF.left, rectF.top, this.f11850H.f11792b, this.f11849G.f11776b, new TransitionUtils.CanvasOperation() { // from class: com.google.android.material.transition.platform.MaterialContainerTransform.TransitionDrawable.2
                @Override // com.google.android.material.transition.platform.TransitionUtils.CanvasOperation
                /* renamed from: a */
                public void mo8456a(Canvas canvas2) {
                    TransitionDrawable.this.f11859e.draw(canvas2);
                }
            });
        }

        /* renamed from: l */
        private void m8503l(Canvas canvas) {
            m8501n(canvas, this.f11864j);
            Rect bounds = getBounds();
            RectF rectF = this.f11877w;
            TransitionUtils.m8459p(canvas, bounds, rectF.left, rectF.top, this.f11850H.f11791a, this.f11849G.f11775a, new TransitionUtils.CanvasOperation() { // from class: com.google.android.material.transition.platform.MaterialContainerTransform.TransitionDrawable.1
                @Override // com.google.android.material.transition.platform.TransitionUtils.CanvasOperation
                /* renamed from: a */
                public void mo8456a(Canvas canvas2) {
                    TransitionDrawable.this.f11855a.draw(canvas2);
                }
            });
        }

        /* renamed from: m */
        private static PointF m8502m(RectF rectF) {
            return new PointF(rectF.centerX(), rectF.top);
        }

        /* renamed from: n */
        private void m8501n(Canvas canvas, Paint paint) {
            if (paint.getColor() != 0 && paint.getAlpha() > 0) {
                canvas.drawRect(getBounds(), paint);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: o */
        public void m8500o(float f) {
            if (this.f11854L != f) {
                m8499p(f);
            }
        }

        /* renamed from: p */
        private void m8499p(float f) {
            this.f11854L = f;
            this.f11867m.setAlpha((int) (this.f11872r ? TransitionUtils.m8464k(0.0f, 255.0f, f) : TransitionUtils.m8464k(255.0f, 0.0f, f)));
            this.f11869o.getPosTan(this.f11870p * f, this.f11871q, null);
            float[] fArr = this.f11871q;
            float f2 = fArr[0];
            float f3 = fArr[1];
            Float valueOf = Float.valueOf(this.f11843A.f11840b.f11837a);
            Preconditions.m19337d(valueOf);
            float floatValue = valueOf.floatValue();
            Float valueOf2 = Float.valueOf(this.f11843A.f11840b.f11838b);
            Preconditions.m19337d(valueOf2);
            FitModeResult a = this.f11845C.mo8541a(f, floatValue, valueOf2.floatValue(), this.f11856b.width(), this.f11856b.height(), this.f11860f.width(), this.f11860f.height());
            this.f11850H = a;
            RectF rectF = this.f11877w;
            float f4 = a.f11793c;
            rectF.set(f2 - (f4 / 2.0f), f3, (f4 / 2.0f) + f2, a.f11794d + f3);
            RectF rectF2 = this.f11879y;
            FitModeResult fitModeResult = this.f11850H;
            float f5 = fitModeResult.f11795e;
            rectF2.set(f2 - (f5 / 2.0f), f3, f2 + (f5 / 2.0f), fitModeResult.f11796f + f3);
            this.f11878x.set(this.f11877w);
            this.f11880z.set(this.f11879y);
            Float valueOf3 = Float.valueOf(this.f11843A.f11841c.f11837a);
            Preconditions.m19337d(valueOf3);
            float floatValue2 = valueOf3.floatValue();
            Float valueOf4 = Float.valueOf(this.f11843A.f11841c.f11838b);
            Preconditions.m19337d(valueOf4);
            float floatValue3 = valueOf4.floatValue();
            boolean b = this.f11845C.mo8540b(this.f11850H);
            RectF rectF3 = b ? this.f11878x : this.f11880z;
            float l = TransitionUtils.m8463l(0.0f, 1.0f, floatValue2, floatValue3, f);
            if (!b) {
                l = 1.0f - l;
            }
            this.f11845C.mo8539c(rectF3, l, this.f11850H);
            this.f11851I = new RectF(Math.min(this.f11878x.left, this.f11880z.left), Math.min(this.f11878x.top, this.f11880z.top), Math.max(this.f11878x.right, this.f11880z.right), Math.max(this.f11878x.bottom, this.f11880z.bottom));
            this.f11868n.m8537b(f, this.f11857c, this.f11861g, this.f11877w, this.f11878x, this.f11880z, this.f11843A.f11842d);
            this.f11852J = TransitionUtils.m8464k(this.f11858d, this.f11862h, f);
            float d = m8511d(this.f11851I, this.f11873s);
            float e = m8510e(this.f11851I, this.f11874t);
            float f6 = this.f11852J;
            float f7 = (int) (d * f6);
            float f8 = (int) (e * f6);
            this.f11853K = f8;
            this.f11866l.setShadowLayer(f6, f7, f8, 754974720);
            Float valueOf5 = Float.valueOf(this.f11843A.f11839a.f11837a);
            Preconditions.m19337d(valueOf5);
            float floatValue4 = valueOf5.floatValue();
            Float valueOf6 = Float.valueOf(this.f11843A.f11839a.f11838b);
            Preconditions.m19337d(valueOf6);
            this.f11849G = this.f11844B.mo8549a(f, floatValue4, valueOf6.floatValue());
            if (this.f11864j.getColor() != 0) {
                this.f11864j.setAlpha(this.f11849G.f11775a);
            }
            if (this.f11865k.getColor() != 0) {
                this.f11865k.setAlpha(this.f11849G.f11776b);
            }
            invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(@NonNull Canvas canvas) {
            if (this.f11867m.getAlpha() > 0) {
                canvas.drawRect(getBounds(), this.f11867m);
            }
            int save = this.f11846D ? canvas.save() : -1;
            if (this.f11875u && this.f11852J > 0.0f) {
                m8507h(canvas);
            }
            this.f11868n.m8538a(canvas);
            m8501n(canvas, this.f11863i);
            if (this.f11849G.f11777c) {
                m8503l(canvas);
                m8504k(canvas);
            } else {
                m8504k(canvas);
                m8503l(canvas);
            }
            if (this.f11846D) {
                canvas.restoreToCount(save);
                m8509f(canvas, this.f11877w, this.f11848F, -65281);
                m8508g(canvas, this.f11878x, -256);
                m8508g(canvas, this.f11877w, -16711936);
                m8508g(canvas, this.f11880z, -16711681);
                m8508g(canvas, this.f11879y, -16776961);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            throw new UnsupportedOperationException("Setting alpha on is not supported");
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(@Nullable ColorFilter colorFilter) {
            throw new UnsupportedOperationException("Setting a color filter is not supported");
        }
    }

    public MaterialContainerTransform() {
        boolean z = false;
        this.f11830z = Build.VERSION.SDK_INT >= 28 ? true : z;
        this.f11808A = -1.0f;
        this.f11809B = -1.0f;
        setInterpolator(AnimationUtils.f9924b);
    }

    /* renamed from: b */
    private ProgressThresholdsGroup m8532b(boolean z) {
        PathMotion pathMotion = getPathMotion();
        return ((pathMotion instanceof ArcMotion) || (pathMotion instanceof MaterialArcMotion)) ? m8526j(z, f11806G, f11807H) : m8526j(z, f11804E, f11805F);
    }

    /* renamed from: c */
    private static RectF m8531c(View view, @Nullable View view2, float f, float f2) {
        if (view2 == null) {
            return new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
        }
        RectF g = TransitionUtils.m8468g(view2);
        g.offset(f, f2);
        return g;
    }

    /* renamed from: d */
    private static ShapeAppearanceModel m8530d(@NonNull View view, @NonNull RectF rectF, @Nullable ShapeAppearanceModel shapeAppearanceModel) {
        return TransitionUtils.m8473b(m8527i(view, shapeAppearanceModel), rectF);
    }

    /* renamed from: f */
    private static void m8529f(@NonNull TransitionValues transitionValues, @Nullable View view, @IdRes int i, @Nullable ShapeAppearanceModel shapeAppearanceModel) {
        if (i != -1) {
            transitionValues.view = TransitionUtils.m8469f(transitionValues.view, i);
        } else if (view != null) {
            transitionValues.view = view;
        } else if (transitionValues.view.getTag(C1027R.C1030id.mtrl_motion_snapshot_view) instanceof View) {
            View view2 = (View) transitionValues.view.getTag(C1027R.C1030id.mtrl_motion_snapshot_view);
            transitionValues.view.setTag(C1027R.C1030id.mtrl_motion_snapshot_view, null);
            transitionValues.view = view2;
        }
        View view3 = transitionValues.view;
        if (ViewCompat.m19218S(view3) || view3.getWidth() != 0 || view3.getHeight() != 0) {
            RectF h = view3.getParent() == null ? TransitionUtils.m8467h(view3) : TransitionUtils.m8468g(view3);
            transitionValues.values.put("materialContainerTransition:bounds", h);
            transitionValues.values.put("materialContainerTransition:shapeAppearance", m8530d(view3, h, shapeAppearanceModel));
        }
    }

    /* renamed from: g */
    private static float m8528g(float f, View view) {
        if (f == -1.0f) {
            f = ViewCompat.m19168v(view);
        }
        return f;
    }

    /* renamed from: i */
    private static ShapeAppearanceModel m8527i(@NonNull View view, @Nullable ShapeAppearanceModel shapeAppearanceModel) {
        if (shapeAppearanceModel != null) {
            return shapeAppearanceModel;
        }
        if (view.getTag(C1027R.C1030id.mtrl_motion_snapshot_view) instanceof ShapeAppearanceModel) {
            return (ShapeAppearanceModel) view.getTag(C1027R.C1030id.mtrl_motion_snapshot_view);
        }
        Context context = view.getContext();
        int l = m8525l(context);
        return l != -1 ? ShapeAppearanceModel.m9276b(context, l, 0).m9232m() : view instanceof Shapeable ? ((Shapeable) view).getShapeAppearanceModel() : ShapeAppearanceModel.m9277a().m9232m();
    }

    /* renamed from: j */
    private ProgressThresholdsGroup m8526j(boolean z, ProgressThresholdsGroup progressThresholdsGroup, ProgressThresholdsGroup progressThresholdsGroup2) {
        if (!z) {
            progressThresholdsGroup = progressThresholdsGroup2;
        }
        return new ProgressThresholdsGroup((ProgressThresholds) TransitionUtils.m8471d(this.f11826v, progressThresholdsGroup.f11839a), (ProgressThresholds) TransitionUtils.m8471d(this.f11827w, progressThresholdsGroup.f11840b), (ProgressThresholds) TransitionUtils.m8471d(this.f11828x, progressThresholdsGroup.f11841c), (ProgressThresholds) TransitionUtils.m8471d(this.f11829y, progressThresholdsGroup.f11842d));
    }

    @StyleRes
    /* renamed from: l */
    private static int m8525l(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{C1027R.attr.transitionShapeAppearance});
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    /* renamed from: m */
    private boolean m8524m(@NonNull RectF rectF, @NonNull RectF rectF2) {
        int i = this.f11819o;
        boolean z = false;
        if (i == 0) {
            if (TransitionUtils.m8474a(rectF2) > TransitionUtils.m8474a(rectF)) {
                z = true;
            }
            return z;
        } else if (i == 1) {
            return true;
        } else {
            if (i == 2) {
                return false;
            }
            throw new IllegalArgumentException("Invalid transition direction: " + this.f11819o);
        }
    }

    @Override // android.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        m8529f(transitionValues, this.f11823s, this.f11814j, this.f11825u);
    }

    @Override // android.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        m8529f(transitionValues, this.f11822r, this.f11813i, this.f11824t);
    }

    @Override // android.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        View view;
        final View view2;
        if (transitionValues == null || transitionValues2 == null) {
            return null;
        }
        RectF rectF = (RectF) transitionValues.values.get("materialContainerTransition:bounds");
        ShapeAppearanceModel shapeAppearanceModel = (ShapeAppearanceModel) transitionValues.values.get("materialContainerTransition:shapeAppearance");
        if (rectF == null || shapeAppearanceModel == null) {
            Log.w(f11802C, "Skipping due to null start bounds. Ensure start view is laid out and measured.");
            return null;
        }
        RectF rectF2 = (RectF) transitionValues2.values.get("materialContainerTransition:bounds");
        ShapeAppearanceModel shapeAppearanceModel2 = (ShapeAppearanceModel) transitionValues2.values.get("materialContainerTransition:shapeAppearance");
        if (rectF2 == null || shapeAppearanceModel2 == null) {
            Log.w(f11802C, "Skipping due to null end bounds. Ensure end view is laid out and measured.");
            return null;
        }
        final View view3 = transitionValues.view;
        final View view4 = transitionValues2.view;
        View view5 = view4.getParent() != null ? view4 : view3;
        if (this.f11812h == view5.getId()) {
            view2 = (View) view5.getParent();
            view = view5;
        } else {
            view2 = TransitionUtils.m8470e(view5, this.f11812h);
            view = null;
        }
        RectF g = TransitionUtils.m8468g(view2);
        float f = -g.left;
        float f2 = -g.top;
        RectF c = m8531c(view2, view, f, f2);
        rectF.offset(f, f2);
        rectF2.offset(f, f2);
        boolean m = m8524m(rectF, rectF2);
        final TransitionDrawable transitionDrawable = new TransitionDrawable(getPathMotion(), view3, rectF, shapeAppearanceModel, m8528g(this.f11808A, view3), view4, rectF2, shapeAppearanceModel2, m8528g(this.f11809B, view4), this.f11815k, this.f11816l, this.f11817m, this.f11818n, m, this.f11830z, FadeModeEvaluators.m8550a(this.f11820p, m), FitModeEvaluators.m8543a(this.f11821q, m, rectF, rectF2), m8532b(m), this.f11810f);
        transitionDrawable.setBounds(Math.round(c.left), Math.round(c.top), Math.round(c.right), Math.round(c.bottom));
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: com.google.android.material.transition.platform.MaterialContainerTransform.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                transitionDrawable.m8500o(valueAnimator.getAnimatedFraction());
            }
        });
        addListener(new TransitionListenerAdapter() { // from class: com.google.android.material.transition.platform.MaterialContainerTransform.2
            @Override // com.google.android.material.transition.platform.TransitionListenerAdapter, android.transition.Transition.TransitionListener
            public void onTransitionEnd(@NonNull Transition transition) {
                MaterialContainerTransform.this.removeListener(this);
                if (!MaterialContainerTransform.this.f11811g) {
                    view3.setAlpha(1.0f);
                    view4.setAlpha(1.0f);
                    ViewUtils.m9430f(view2).mo9436b(transitionDrawable);
                }
            }

            @Override // com.google.android.material.transition.platform.TransitionListenerAdapter, android.transition.Transition.TransitionListener
            public void onTransitionStart(@NonNull Transition transition) {
                ViewUtils.m9430f(view2).mo9437a(transitionDrawable);
                view3.setAlpha(0.0f);
                view4.setAlpha(0.0f);
            }
        });
        return ofFloat;
    }

    @Override // android.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return f11803D;
    }

    /* renamed from: n */
    public void m8523n(boolean z) {
        this.f11811g = z;
    }
}
