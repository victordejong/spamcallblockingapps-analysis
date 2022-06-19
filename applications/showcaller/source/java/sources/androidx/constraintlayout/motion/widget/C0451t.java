package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.C0523e;
import androidx.core.widget.NestedScrollView;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: androidx.constraintlayout.motion.widget.t */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/t.class */
public class C0451t {

    /* renamed from: a */
    private static final float[][] f1943a = {new float[]{0.5f, 0.0f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}, new float[]{0.5f, 1.0f}, new float[]{0.5f, 0.5f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}};

    /* renamed from: b */
    private static final float[][] f1944b = {new float[]{0.0f, -1.0f}, new float[]{0.0f, 1.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}};

    /* renamed from: o */
    private float f1957o;

    /* renamed from: p */
    private float f1958p;

    /* renamed from: q */
    private final MotionLayout f1959q;

    /* renamed from: c */
    private int f1945c = 0;

    /* renamed from: d */
    private int f1946d = 0;

    /* renamed from: e */
    private int f1947e = 0;

    /* renamed from: f */
    private int f1948f = -1;

    /* renamed from: g */
    private int f1949g = -1;

    /* renamed from: h */
    private int f1950h = -1;

    /* renamed from: i */
    private float f1951i = 0.5f;

    /* renamed from: j */
    private float f1952j = 0.5f;

    /* renamed from: k */
    private float f1953k = 0.0f;

    /* renamed from: l */
    private float f1954l = 1.0f;

    /* renamed from: m */
    private boolean f1955m = false;

    /* renamed from: n */
    private float[] f1956n = new float[2];

    /* renamed from: r */
    private float f1960r = 4.0f;

    /* renamed from: s */
    private float f1961s = 1.2f;

    /* renamed from: t */
    private boolean f1962t = true;

    /* renamed from: u */
    private float f1963u = 1.0f;

    /* renamed from: v */
    private int f1964v = 0;

    /* renamed from: w */
    private float f1965w = 10.0f;

    /* renamed from: androidx.constraintlayout.motion.widget.t$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/t$a.class */
    public class View$OnTouchListenerC0452a implements View.OnTouchListener {
        View$OnTouchListenerC0452a() {
            C0451t.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return false;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.t$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/t$b.class */
    public class C0453b implements NestedScrollView.AbstractC0636b {
        C0453b() {
            C0451t.this = r4;
        }

        @Override // androidx.core.widget.NestedScrollView.AbstractC0636b
        /* renamed from: a */
        public void mo26923a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
        }
    }

    public C0451t(Context context, MotionLayout motionLayout, XmlPullParser xmlPullParser) {
        this.f1959q = motionLayout;
        m34187c(context, Xml.asAttributeSet(xmlPullParser));
    }

    /* renamed from: b */
    private void m34188b(TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            if (index == C0523e.OnSwipe_touchAnchorId) {
                this.f1948f = typedArray.getResourceId(index, this.f1948f);
            } else if (index == C0523e.OnSwipe_touchAnchorSide) {
                int i2 = typedArray.getInt(index, this.f1945c);
                this.f1945c = i2;
                float[][] fArr = f1943a;
                this.f1952j = fArr[i2][0];
                this.f1951i = fArr[i2][1];
            } else if (index == C0523e.OnSwipe_dragDirection) {
                int i3 = typedArray.getInt(index, this.f1946d);
                this.f1946d = i3;
                float[][] fArr2 = f1944b;
                this.f1953k = fArr2[i3][0];
                this.f1954l = fArr2[i3][1];
            } else if (index == C0523e.OnSwipe_maxVelocity) {
                this.f1960r = typedArray.getFloat(index, this.f1960r);
            } else if (index == C0523e.OnSwipe_maxAcceleration) {
                this.f1961s = typedArray.getFloat(index, this.f1961s);
            } else if (index == C0523e.OnSwipe_moveWhenScrollAtTop) {
                this.f1962t = typedArray.getBoolean(index, this.f1962t);
            } else if (index == C0523e.OnSwipe_dragScale) {
                this.f1963u = typedArray.getFloat(index, this.f1963u);
            } else if (index == C0523e.OnSwipe_dragThreshold) {
                this.f1965w = typedArray.getFloat(index, this.f1965w);
            } else if (index == C0523e.OnSwipe_touchRegionId) {
                this.f1949g = typedArray.getResourceId(index, this.f1949g);
            } else if (index == C0523e.OnSwipe_onTouchUp) {
                this.f1947e = typedArray.getInt(index, this.f1947e);
            } else if (index == C0523e.OnSwipe_nestedScrollFlags) {
                this.f1964v = typedArray.getInteger(index, 0);
            } else if (index == C0523e.OnSwipe_limitBoundsTo) {
                this.f1950h = typedArray.getResourceId(index, 0);
            }
        }
    }

    /* renamed from: c */
    private void m34187c(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0523e.OnSwipe);
        m34188b(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    public float m34189a(float f, float f2) {
        return (f * this.f1953k) + (f2 * this.f1954l);
    }

    /* renamed from: d */
    public int m34186d() {
        return this.f1964v;
    }

    /* renamed from: e */
    public RectF m34185e(ViewGroup viewGroup, RectF rectF) {
        View findViewById;
        int i = this.f1950h;
        if (i == -1 || (findViewById = viewGroup.findViewById(i)) == null) {
            return null;
        }
        rectF.set(findViewById.getLeft(), findViewById.getTop(), findViewById.getRight(), findViewById.getBottom());
        return rectF;
    }

    /* renamed from: f */
    public float m34184f() {
        return this.f1961s;
    }

    /* renamed from: g */
    public float m34183g() {
        return this.f1960r;
    }

    /* renamed from: h */
    public boolean m34182h() {
        return this.f1962t;
    }

    /* renamed from: i */
    public float m34181i(float f, float f2) {
        float f3;
        this.f1959q.m34551e0(this.f1948f, this.f1959q.getProgress(), this.f1952j, this.f1951i, this.f1956n);
        float f4 = this.f1953k;
        if (f4 != 0.0f) {
            float[] fArr = this.f1956n;
            if (fArr[0] == 0.0f) {
                fArr[0] = 1.0E-7f;
            }
            f3 = (f * f4) / fArr[0];
        } else {
            float[] fArr2 = this.f1956n;
            if (fArr2[1] == 0.0f) {
                fArr2[1] = 1.0E-7f;
            }
            f3 = (f2 * this.f1954l) / fArr2[1];
        }
        return f3;
    }

    /* renamed from: j */
    public RectF m34180j(ViewGroup viewGroup, RectF rectF) {
        View findViewById;
        int i = this.f1949g;
        if (i == -1 || (findViewById = viewGroup.findViewById(i)) == null) {
            return null;
        }
        rectF.set(findViewById.getLeft(), findViewById.getTop(), findViewById.getRight(), findViewById.getBottom());
        return rectF;
    }

    /* renamed from: k */
    public int m34179k() {
        return this.f1949g;
    }

    /* renamed from: l */
    public void m34178l(MotionEvent motionEvent, MotionLayout.AbstractC0374f abstractC0374f, int i, C0415q c0415q) {
        int i2;
        abstractC0374f.mo34510b(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f1957o = motionEvent.getRawX();
            this.f1958p = motionEvent.getRawY();
            this.f1955m = false;
        } else if (action == 1) {
            this.f1955m = false;
            abstractC0374f.mo34507e(1000);
            float mo34508d = abstractC0374f.mo34508d();
            float mo34509c = abstractC0374f.mo34509c();
            float progress = this.f1959q.getProgress();
            int i3 = this.f1948f;
            if (i3 != -1) {
                this.f1959q.m34551e0(i3, progress, this.f1952j, this.f1951i, this.f1956n);
            } else {
                float min = Math.min(this.f1959q.getWidth(), this.f1959q.getHeight());
                float[] fArr = this.f1956n;
                fArr[1] = this.f1954l * min;
                fArr[0] = min * this.f1953k;
            }
            float f = this.f1953k;
            float[] fArr2 = this.f1956n;
            float f2 = fArr2[0];
            float f3 = fArr2[1];
            float f4 = f != 0.0f ? mo34508d / fArr2[0] : mo34509c / fArr2[1];
            float f5 = !Float.isNaN(f4) ? (f4 / 3.0f) + progress : progress;
            if (f5 == 0.0f || f5 == 1.0f || (i2 = this.f1947e) == 3) {
                if (0.0f < f5 && 1.0f > f5) {
                    return;
                }
                this.f1959q.setState(MotionLayout.TransitionState.FINISHED);
                return;
            }
            this.f1959q.m34540p0(i2, ((double) f5) < 0.5d ? 0.0f : 1.0f, f4);
            if (0.0f < progress && 1.0f > progress) {
                return;
            }
            this.f1959q.setState(MotionLayout.TransitionState.FINISHED);
        } else if (action != 2) {
        } else {
            float rawY = motionEvent.getRawY() - this.f1958p;
            float rawX = motionEvent.getRawX() - this.f1957o;
            if (Math.abs((this.f1953k * rawX) + (this.f1954l * rawY)) <= this.f1965w && !this.f1955m) {
                return;
            }
            float progress2 = this.f1959q.getProgress();
            if (!this.f1955m) {
                this.f1955m = true;
                this.f1959q.setProgress(progress2);
            }
            int i4 = this.f1948f;
            if (i4 != -1) {
                this.f1959q.m34551e0(i4, progress2, this.f1952j, this.f1951i, this.f1956n);
            } else {
                float min2 = Math.min(this.f1959q.getWidth(), this.f1959q.getHeight());
                float[] fArr3 = this.f1956n;
                fArr3[1] = this.f1954l * min2;
                fArr3[0] = min2 * this.f1953k;
            }
            float f6 = this.f1953k;
            float[] fArr4 = this.f1956n;
            if (Math.abs(((f6 * fArr4[0]) + (this.f1954l * fArr4[1])) * this.f1963u) < 0.01d) {
                float[] fArr5 = this.f1956n;
                fArr5[0] = 0.01f;
                fArr5[1] = 0.01f;
            }
            float max = Math.max(Math.min(progress2 + (this.f1953k != 0.0f ? rawX / this.f1956n[0] : rawY / this.f1956n[1]), 1.0f), 0.0f);
            if (max != this.f1959q.getProgress()) {
                this.f1959q.setProgress(max);
                abstractC0374f.mo34507e(1000);
                this.f1959q.f1557D = this.f1953k != 0.0f ? abstractC0374f.mo34508d() / this.f1956n[0] : abstractC0374f.mo34509c() / this.f1956n[1];
            } else {
                this.f1959q.f1557D = 0.0f;
            }
            this.f1957o = motionEvent.getRawX();
            this.f1958p = motionEvent.getRawY();
        }
    }

    /* renamed from: m */
    public void m34177m(float f, float f2) {
        float progress = this.f1959q.getProgress();
        if (!this.f1955m) {
            this.f1955m = true;
            this.f1959q.setProgress(progress);
        }
        this.f1959q.m34551e0(this.f1948f, progress, this.f1952j, this.f1951i, this.f1956n);
        float f3 = this.f1953k;
        float[] fArr = this.f1956n;
        if (Math.abs((f3 * fArr[0]) + (this.f1954l * fArr[1])) < 0.01d) {
            float[] fArr2 = this.f1956n;
            fArr2[0] = 0.01f;
            fArr2[1] = 0.01f;
        }
        float f4 = this.f1953k;
        float max = Math.max(Math.min(progress + (f4 != 0.0f ? (f * f4) / this.f1956n[0] : (f2 * this.f1954l) / this.f1956n[1]), 1.0f), 0.0f);
        if (max != this.f1959q.getProgress()) {
            this.f1959q.setProgress(max);
        }
    }

    /* renamed from: n */
    public void m34176n(float f, float f2) {
        boolean z = false;
        this.f1955m = false;
        float progress = this.f1959q.getProgress();
        this.f1959q.m34551e0(this.f1948f, progress, this.f1952j, this.f1951i, this.f1956n);
        float f3 = this.f1953k;
        float[] fArr = this.f1956n;
        float f4 = fArr[0];
        float f5 = this.f1954l;
        float f6 = fArr[1];
        float f7 = f3 != 0.0f ? (f * f3) / fArr[0] : (f2 * f5) / fArr[1];
        float f8 = progress;
        if (!Float.isNaN(f7)) {
            f8 = progress + (f7 / 3.0f);
        }
        if (f8 != 0.0f) {
            boolean z2 = f8 != 1.0f;
            int i = this.f1947e;
            if (i != 3) {
                z = true;
            }
            if (!z || !z2) {
                return;
            }
            this.f1959q.m34540p0(i, ((double) f8) < 0.5d ? 0.0f : 1.0f, f7);
        }
    }

    /* renamed from: o */
    public void m34175o(float f, float f2) {
        this.f1957o = f;
        this.f1958p = f2;
    }

    /* renamed from: p */
    public void m34174p(boolean z) {
        if (z) {
            float[][] fArr = f1944b;
            fArr[4] = fArr[3];
            fArr[5] = fArr[2];
            float[][] fArr2 = f1943a;
            fArr2[5] = fArr2[2];
            fArr2[6] = fArr2[1];
        } else {
            float[][] fArr3 = f1944b;
            fArr3[4] = fArr3[2];
            fArr3[5] = fArr3[3];
            float[][] fArr4 = f1943a;
            fArr4[5] = fArr4[1];
            fArr4[6] = fArr4[2];
        }
        float[][] fArr5 = f1943a;
        int i = this.f1945c;
        this.f1952j = fArr5[i][0];
        this.f1951i = fArr5[i][1];
        float[][] fArr6 = f1944b;
        int i2 = this.f1946d;
        this.f1953k = fArr6[i2][0];
        this.f1954l = fArr6[i2][1];
    }

    /* renamed from: q */
    public void m34173q(float f, float f2) {
        this.f1957o = f;
        this.f1958p = f2;
        this.f1955m = false;
    }

    /* renamed from: r */
    public void m34172r() {
        KeyEvent.Callback callback;
        int i = this.f1948f;
        if (i != -1) {
            KeyEvent.Callback findViewById = this.f1959q.findViewById(i);
            callback = findViewById;
            if (findViewById == null) {
                Log.e("TouchResponse", "cannot find TouchAnchorId @id/" + C0378a.m34492b(this.f1959q.getContext(), this.f1948f));
                callback = findViewById;
            }
        } else {
            callback = null;
        }
        if (callback instanceof NestedScrollView) {
            NestedScrollView nestedScrollView = (NestedScrollView) callback;
            nestedScrollView.setOnTouchListener(new View$OnTouchListenerC0452a());
            nestedScrollView.setOnScrollChangeListener(new C0453b());
        }
    }

    public String toString() {
        return this.f1953k + " , " + this.f1954l;
    }
}
