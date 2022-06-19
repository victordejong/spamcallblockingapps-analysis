package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.C0229e;
import androidx.core.widget.NestedScrollView;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: androidx.constraintlayout.motion.widget.t */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/t.class */
public class C0196t {

    /* renamed from: v */
    private static final float[][] f986v = {new float[]{0.5f, 0.0f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}, new float[]{0.5f, 1.0f}, new float[]{0.5f, 0.5f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}};

    /* renamed from: w */
    private static final float[][] f987w = {new float[]{0.0f, -1.0f}, new float[]{0.0f, 1.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}};

    /* renamed from: m */
    private float f1000m;

    /* renamed from: n */
    private float f1001n;

    /* renamed from: o */
    private final MotionLayout f1002o;

    /* renamed from: a */
    private int f988a = 0;

    /* renamed from: b */
    private int f989b = 0;

    /* renamed from: c */
    private int f990c = 0;

    /* renamed from: d */
    private int f991d = -1;

    /* renamed from: e */
    private int f992e = -1;

    /* renamed from: f */
    private int f993f = -1;

    /* renamed from: g */
    private float f994g = 0.5f;

    /* renamed from: h */
    private float f995h = 0.5f;

    /* renamed from: i */
    private float f996i = 0.0f;

    /* renamed from: j */
    private float f997j = 1.0f;

    /* renamed from: k */
    private boolean f998k = false;

    /* renamed from: l */
    private float[] f999l = new float[2];

    /* renamed from: p */
    private float f1003p = 4.0f;

    /* renamed from: q */
    private float f1004q = 1.2f;

    /* renamed from: r */
    private boolean f1005r = true;

    /* renamed from: s */
    private float f1006s = 1.0f;

    /* renamed from: t */
    private int f1007t = 0;

    /* renamed from: u */
    private float f1008u = 10.0f;

    /* renamed from: androidx.constraintlayout.motion.widget.t$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/t$a.class */
    public class View$OnTouchListenerC0197a implements View.OnTouchListener {
        View$OnTouchListenerC0197a(C0196t c0196t) {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return false;
        }
    }

    public C0196t(Context context, MotionLayout motionLayout, XmlPullParser xmlPullParser) {
        this.f1002o = motionLayout;
        m14099c(context, Xml.asAttributeSet(xmlPullParser));
    }

    /* renamed from: b */
    private void m14100b(TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            if (index == C0229e.OnSwipe_touchAnchorId) {
                this.f991d = typedArray.getResourceId(index, this.f991d);
            } else if (index == C0229e.OnSwipe_touchAnchorSide) {
                int i2 = typedArray.getInt(index, this.f988a);
                this.f988a = i2;
                float[][] fArr = f986v;
                this.f995h = fArr[i2][0];
                this.f994g = fArr[i2][1];
            } else if (index == C0229e.OnSwipe_dragDirection) {
                int i3 = typedArray.getInt(index, this.f989b);
                this.f989b = i3;
                float[][] fArr2 = f987w;
                this.f996i = fArr2[i3][0];
                this.f997j = fArr2[i3][1];
            } else if (index == C0229e.OnSwipe_maxVelocity) {
                this.f1003p = typedArray.getFloat(index, this.f1003p);
            } else if (index == C0229e.OnSwipe_maxAcceleration) {
                this.f1004q = typedArray.getFloat(index, this.f1004q);
            } else if (index == C0229e.OnSwipe_moveWhenScrollAtTop) {
                this.f1005r = typedArray.getBoolean(index, this.f1005r);
            } else if (index == C0229e.OnSwipe_dragScale) {
                this.f1006s = typedArray.getFloat(index, this.f1006s);
            } else if (index == C0229e.OnSwipe_dragThreshold) {
                this.f1008u = typedArray.getFloat(index, this.f1008u);
            } else if (index == C0229e.OnSwipe_touchRegionId) {
                this.f992e = typedArray.getResourceId(index, this.f992e);
            } else if (index == C0229e.OnSwipe_onTouchUp) {
                this.f990c = typedArray.getInt(index, this.f990c);
            } else if (index == C0229e.OnSwipe_nestedScrollFlags) {
                this.f1007t = typedArray.getInteger(index, 0);
            } else if (index == C0229e.OnSwipe_limitBoundsTo) {
                this.f993f = typedArray.getResourceId(index, 0);
            }
        }
    }

    /* renamed from: c */
    private void m14099c(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0229e.OnSwipe);
        m14100b(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    public float m14101a(float f, float f2) {
        return (f * this.f996i) + (f2 * this.f997j);
    }

    /* renamed from: d */
    public int m14098d() {
        return this.f1007t;
    }

    /* renamed from: e */
    public RectF m14097e(ViewGroup viewGroup, RectF rectF) {
        View findViewById;
        int i = this.f993f;
        if (i == -1 || (findViewById = viewGroup.findViewById(i)) == null) {
            return null;
        }
        rectF.set(findViewById.getLeft(), findViewById.getTop(), findViewById.getRight(), findViewById.getBottom());
        return rectF;
    }

    /* renamed from: f */
    public float m14096f() {
        return this.f1004q;
    }

    /* renamed from: g */
    public float m14095g() {
        return this.f1003p;
    }

    /* renamed from: h */
    public boolean m14094h() {
        return this.f1005r;
    }

    /* renamed from: i */
    public float m14093i(float f, float f2) {
        float f3;
        this.f1002o.d0(this.f991d, this.f1002o.getProgress(), this.f995h, this.f994g, this.f999l);
        float f4 = this.f996i;
        if (f4 != 0.0f) {
            float[] fArr = this.f999l;
            if (fArr[0] == 0.0f) {
                fArr[0] = 1.0E-7f;
            }
            f3 = (f * f4) / fArr[0];
        } else {
            float[] fArr2 = this.f999l;
            if (fArr2[1] == 0.0f) {
                fArr2[1] = 1.0E-7f;
            }
            f3 = (f2 * this.f997j) / fArr2[1];
        }
        return f3;
    }

    /* renamed from: j */
    public RectF m14092j(ViewGroup viewGroup, RectF rectF) {
        View findViewById;
        int i = this.f992e;
        if (i == -1 || (findViewById = viewGroup.findViewById(i)) == null) {
            return null;
        }
        rectF.set(findViewById.getLeft(), findViewById.getTop(), findViewById.getRight(), findViewById.getBottom());
        return rectF;
    }

    /* renamed from: k */
    int m14091k() {
        return this.f992e;
    }

    /* renamed from: l */
    public void m14090l(MotionEvent motionEvent, MotionLayout$f motionLayout$f, int i, C0188q c0188q) {
        int i2;
        motionLayout$f.m14300b(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f1000m = motionEvent.getRawX();
            this.f1001n = motionEvent.getRawY();
            this.f998k = false;
        } else if (action == 1) {
            this.f998k = false;
            motionLayout$f.m14297e(1000);
            float m14298d = motionLayout$f.m14298d();
            float m14299c = motionLayout$f.m14299c();
            float progress = this.f1002o.getProgress();
            int i3 = this.f991d;
            if (i3 != -1) {
                this.f1002o.d0(i3, progress, this.f995h, this.f994g, this.f999l);
            } else {
                float min = Math.min(this.f1002o.getWidth(), this.f1002o.getHeight());
                float[] fArr = this.f999l;
                fArr[1] = this.f997j * min;
                fArr[0] = min * this.f996i;
            }
            float f = this.f996i;
            float[] fArr2 = this.f999l;
            float f2 = fArr2[0];
            float f3 = fArr2[1];
            float f4 = f != 0.0f ? m14298d / fArr2[0] : m14299c / fArr2[1];
            float f5 = !Float.isNaN(f4) ? (f4 / 3.0f) + progress : progress;
            if (f5 != 0.0f && f5 != 1.0f && (i2 = this.f990c) != 3) {
                this.f1002o.o0(i2, ((double) f5) < 0.5d ? 0.0f : 1.0f, f4);
                if (0.0f < progress && 1.0f > progress) {
                    return;
                }
            } else if (0.0f < f5 && 1.0f > f5) {
                return;
            }
            this.f1002o.setState(MotionLayout$TransitionState.FINISHED);
        } else if (action != 2) {
        } else {
            float rawY = motionEvent.getRawY() - this.f1001n;
            float rawX = motionEvent.getRawX() - this.f1000m;
            if (Math.abs((this.f996i * rawX) + (this.f997j * rawY)) <= this.f1008u && !this.f998k) {
                return;
            }
            float progress2 = this.f1002o.getProgress();
            if (!this.f998k) {
                this.f998k = true;
                this.f1002o.setProgress(progress2);
            }
            int i4 = this.f991d;
            if (i4 != -1) {
                this.f1002o.d0(i4, progress2, this.f995h, this.f994g, this.f999l);
            } else {
                float min2 = Math.min(this.f1002o.getWidth(), this.f1002o.getHeight());
                float[] fArr3 = this.f999l;
                fArr3[1] = this.f997j * min2;
                fArr3[0] = min2 * this.f996i;
            }
            float f6 = this.f996i;
            float[] fArr4 = this.f999l;
            if (Math.abs(((f6 * fArr4[0]) + (this.f997j * fArr4[1])) * this.f1006s) < 0.01d) {
                float[] fArr5 = this.f999l;
                fArr5[0] = 0.01f;
                fArr5[1] = 0.01f;
            }
            float max = Math.max(Math.min(progress2 + (this.f996i != 0.0f ? rawX / this.f999l[0] : rawY / this.f999l[1]), 1.0f), 0.0f);
            if (max != this.f1002o.getProgress()) {
                this.f1002o.setProgress(max);
                motionLayout$f.m14297e(1000);
                this.f1002o.u = this.f996i != 0.0f ? motionLayout$f.m14298d() / this.f999l[0] : motionLayout$f.m14299c() / this.f999l[1];
            } else {
                this.f1002o.u = 0.0f;
            }
            this.f1000m = motionEvent.getRawX();
            this.f1001n = motionEvent.getRawY();
        }
    }

    /* renamed from: m */
    public void m14089m(float f, float f2) {
        float progress = this.f1002o.getProgress();
        if (!this.f998k) {
            this.f998k = true;
            this.f1002o.setProgress(progress);
        }
        this.f1002o.d0(this.f991d, progress, this.f995h, this.f994g, this.f999l);
        float f3 = this.f996i;
        float[] fArr = this.f999l;
        if (Math.abs((f3 * fArr[0]) + (this.f997j * fArr[1])) < 0.01d) {
            float[] fArr2 = this.f999l;
            fArr2[0] = 0.01f;
            fArr2[1] = 0.01f;
        }
        float f4 = this.f996i;
        float max = Math.max(Math.min(progress + (f4 != 0.0f ? (f * f4) / this.f999l[0] : (f2 * this.f997j) / this.f999l[1]), 1.0f), 0.0f);
        if (max != this.f1002o.getProgress()) {
            this.f1002o.setProgress(max);
        }
    }

    /* renamed from: n */
    public void m14088n(float f, float f2) {
        boolean z = false;
        this.f998k = false;
        float progress = this.f1002o.getProgress();
        this.f1002o.d0(this.f991d, progress, this.f995h, this.f994g, this.f999l);
        float f3 = this.f996i;
        float[] fArr = this.f999l;
        float f4 = fArr[0];
        float f5 = this.f997j;
        float f6 = fArr[1];
        float f7 = f3 != 0.0f ? (f * f3) / fArr[0] : (f2 * f5) / fArr[1];
        float f8 = progress;
        if (!Float.isNaN(f7)) {
            f8 = progress + (f7 / 3.0f);
        }
        if (f8 != 0.0f) {
            boolean z2 = f8 != 1.0f;
            int i = this.f990c;
            if (i != 3) {
                z = true;
            }
            if (!z || !z2) {
                return;
            }
            this.f1002o.o0(i, ((double) f8) < 0.5d ? 0.0f : 1.0f, f7);
        }
    }

    /* renamed from: o */
    public void m14087o(float f, float f2) {
        this.f1000m = f;
        this.f1001n = f2;
    }

    /* renamed from: p */
    public void m14086p(boolean z) {
        if (z) {
            float[][] fArr = f987w;
            fArr[4] = fArr[3];
            fArr[5] = fArr[2];
            float[][] fArr2 = f986v;
            fArr2[5] = fArr2[2];
            fArr2[6] = fArr2[1];
        } else {
            float[][] fArr3 = f987w;
            fArr3[4] = fArr3[2];
            fArr3[5] = fArr3[3];
            float[][] fArr4 = f986v;
            fArr4[5] = fArr4[1];
            fArr4[6] = fArr4[2];
        }
        float[][] fArr5 = f986v;
        int i = this.f988a;
        this.f995h = fArr5[i][0];
        this.f994g = fArr5[i][1];
        float[][] fArr6 = f987w;
        int i2 = this.f989b;
        this.f996i = fArr6[i2][0];
        this.f997j = fArr6[i2][1];
    }

    /* renamed from: q */
    public void m14085q(float f, float f2) {
        this.f1000m = f;
        this.f1001n = f2;
        this.f998k = false;
    }

    /* renamed from: r */
    public void m14084r() {
        View view;
        int i = this.f991d;
        if (i != -1) {
            View findViewById = this.f1002o.findViewById(i);
            view = findViewById;
            if (findViewById == null) {
                Log.e("TouchResponse", "cannot find TouchAnchorId @id/" + C0175a.m14283b(this.f1002o.getContext(), this.f991d));
                view = findViewById;
            }
        } else {
            view = null;
        }
        if (view instanceof NestedScrollView) {
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            nestedScrollView.setOnTouchListener(new View$OnTouchListenerC0197a(this));
            nestedScrollView.setOnScrollChangeListener(new b(this));
        }
    }

    public String toString() {
        return this.f996i + " , " + this.f997j;
    }
}
