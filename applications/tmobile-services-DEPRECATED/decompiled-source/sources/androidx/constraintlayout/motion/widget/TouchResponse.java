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
import androidx.constraintlayout.widget.C0178R;
import androidx.core.widget.NestedScrollView;
import org.xmlpull.v1.XmlPullParser;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/TouchResponse.class */
public class TouchResponse {

    /* renamed from: v */
    private static final float[][] f2009v = {new float[]{0.5f, 0.0f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}, new float[]{0.5f, 1.0f}, new float[]{0.5f, 0.5f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}};

    /* renamed from: w */
    private static final float[][] f2010w = {new float[]{0.0f, -1.0f}, new float[]{0.0f, 1.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}};

    /* renamed from: m */
    private float f2023m;

    /* renamed from: n */
    private float f2024n;

    /* renamed from: o */
    private final MotionLayout f2025o;

    /* renamed from: a */
    private int f2011a = 0;

    /* renamed from: b */
    private int f2012b = 0;

    /* renamed from: c */
    private int f2013c = 0;

    /* renamed from: d */
    private int f2014d = -1;

    /* renamed from: e */
    private int f2015e = -1;

    /* renamed from: f */
    private int f2016f = -1;

    /* renamed from: g */
    private float f2017g = 0.5f;

    /* renamed from: h */
    private float f2018h = 0.5f;

    /* renamed from: i */
    private float f2019i = 0.0f;

    /* renamed from: j */
    private float f2020j = 1.0f;

    /* renamed from: k */
    private boolean f2021k = false;

    /* renamed from: l */
    private float[] f2022l = new float[2];

    /* renamed from: p */
    private float f2026p = 4.0f;

    /* renamed from: q */
    private float f2027q = 1.2f;

    /* renamed from: r */
    private boolean f2028r = true;

    /* renamed from: s */
    private float f2029s = 1.0f;

    /* renamed from: t */
    private int f2030t = 0;

    /* renamed from: u */
    private float f2031u = 10.0f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TouchResponse(Context context, MotionLayout motionLayout, XmlPullParser xmlPullParser) {
        this.f2025o = motionLayout;
        m20550c(context, Xml.asAttributeSet(xmlPullParser));
    }

    /* renamed from: b */
    private void m20551b(TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            if (index == C0178R.styleable.OnSwipe_touchAnchorId) {
                this.f2014d = typedArray.getResourceId(index, this.f2014d);
            } else if (index == C0178R.styleable.OnSwipe_touchAnchorSide) {
                int i2 = typedArray.getInt(index, this.f2011a);
                this.f2011a = i2;
                float[][] fArr = f2009v;
                this.f2018h = fArr[i2][0];
                this.f2017g = fArr[i2][1];
            } else if (index == C0178R.styleable.OnSwipe_dragDirection) {
                int i3 = typedArray.getInt(index, this.f2012b);
                this.f2012b = i3;
                float[][] fArr2 = f2010w;
                this.f2019i = fArr2[i3][0];
                this.f2020j = fArr2[i3][1];
            } else if (index == C0178R.styleable.OnSwipe_maxVelocity) {
                this.f2026p = typedArray.getFloat(index, this.f2026p);
            } else if (index == C0178R.styleable.OnSwipe_maxAcceleration) {
                this.f2027q = typedArray.getFloat(index, this.f2027q);
            } else if (index == C0178R.styleable.OnSwipe_moveWhenScrollAtTop) {
                this.f2028r = typedArray.getBoolean(index, this.f2028r);
            } else if (index == C0178R.styleable.OnSwipe_dragScale) {
                this.f2029s = typedArray.getFloat(index, this.f2029s);
            } else if (index == C0178R.styleable.OnSwipe_dragThreshold) {
                this.f2031u = typedArray.getFloat(index, this.f2031u);
            } else if (index == C0178R.styleable.OnSwipe_touchRegionId) {
                this.f2015e = typedArray.getResourceId(index, this.f2015e);
            } else if (index == C0178R.styleable.OnSwipe_onTouchUp) {
                this.f2013c = typedArray.getInt(index, this.f2013c);
            } else if (index == C0178R.styleable.OnSwipe_nestedScrollFlags) {
                this.f2030t = typedArray.getInteger(index, 0);
            } else if (index == C0178R.styleable.OnSwipe_limitBoundsTo) {
                this.f2016f = typedArray.getResourceId(index, 0);
            }
        }
    }

    /* renamed from: c */
    private void m20550c(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0178R.styleable.OnSwipe);
        m20551b(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public float m20552a(float f, float f2) {
        return (f * this.f2019i) + (f2 * this.f2020j);
    }

    /* renamed from: d */
    public int m20549d() {
        return this.f2030t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public RectF m20548e(ViewGroup viewGroup, RectF rectF) {
        View findViewById;
        int i = this.f2016f;
        if (i == -1 || (findViewById = viewGroup.findViewById(i)) == null) {
            return null;
        }
        rectF.set(findViewById.getLeft(), findViewById.getTop(), findViewById.getRight(), findViewById.getBottom());
        return rectF;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public float m20547f() {
        return this.f2027q;
    }

    /* renamed from: g */
    public float m20546g() {
        return this.f2026p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public boolean m20545h() {
        return this.f2028r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public float m20544i(float f, float f2) {
        float f3;
        this.f2025o.m20729d0(this.f2014d, this.f2025o.getProgress(), this.f2018h, this.f2017g, this.f2022l);
        if (this.f2019i != 0.0f) {
            float[] fArr = this.f2022l;
            if (fArr[0] == 0.0f) {
                fArr[0] = 1.0E-7f;
            }
            f3 = (f * this.f2019i) / this.f2022l[0];
        } else {
            float[] fArr2 = this.f2022l;
            if (fArr2[1] == 0.0f) {
                fArr2[1] = 1.0E-7f;
            }
            f3 = (f2 * this.f2020j) / this.f2022l[1];
        }
        return f3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public RectF m20543j(ViewGroup viewGroup, RectF rectF) {
        View findViewById;
        int i = this.f2015e;
        if (i == -1 || (findViewById = viewGroup.findViewById(i)) == null) {
            return null;
        }
        rectF.set(findViewById.getLeft(), findViewById.getTop(), findViewById.getRight(), findViewById.getBottom());
        return rectF;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public int m20542k() {
        return this.f2015e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public void m20541l(MotionEvent motionEvent, MotionLayout.MotionTracker motionTracker, int i, MotionScene motionScene) {
        int i2;
        motionTracker.mo20686b(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f2023m = motionEvent.getRawX();
            this.f2024n = motionEvent.getRawY();
            this.f2021k = false;
        } else if (action == 1) {
            this.f2021k = false;
            motionTracker.mo20683e(1000);
            float d = motionTracker.mo20684d();
            float c = motionTracker.mo20685c();
            float progress = this.f2025o.getProgress();
            int i3 = this.f2014d;
            if (i3 != -1) {
                this.f2025o.m20729d0(i3, progress, this.f2018h, this.f2017g, this.f2022l);
            } else {
                float min = Math.min(this.f2025o.getWidth(), this.f2025o.getHeight());
                float[] fArr = this.f2022l;
                fArr[1] = this.f2020j * min;
                fArr[0] = min * this.f2019i;
            }
            float f = this.f2019i;
            float[] fArr2 = this.f2022l;
            float f2 = fArr2[0];
            float f3 = fArr2[1];
            float f4 = f != 0.0f ? d / fArr2[0] : c / fArr2[1];
            float f5 = !Float.isNaN(f4) ? (f4 / 3.0f) + progress : progress;
            if (f5 != 0.0f && f5 != 1.0f && (i2 = this.f2013c) != 3) {
                this.f2025o.m20718o0(i2, ((double) f5) < 0.5d ? 0.0f : 1.0f, f4);
                if (0.0f >= progress || 1.0f <= progress) {
                    this.f2025o.setState(MotionLayout.TransitionState.FINISHED);
                }
            } else if (0.0f >= f5 || 1.0f <= f5) {
                this.f2025o.setState(MotionLayout.TransitionState.FINISHED);
            }
        } else if (action == 2) {
            float rawY = motionEvent.getRawY() - this.f2024n;
            float rawX = motionEvent.getRawX() - this.f2023m;
            if (Math.abs((this.f2019i * rawX) + (this.f2020j * rawY)) > this.f2031u || this.f2021k) {
                float progress2 = this.f2025o.getProgress();
                if (!this.f2021k) {
                    this.f2021k = true;
                    this.f2025o.setProgress(progress2);
                }
                int i4 = this.f2014d;
                if (i4 != -1) {
                    this.f2025o.m20729d0(i4, progress2, this.f2018h, this.f2017g, this.f2022l);
                } else {
                    float min2 = Math.min(this.f2025o.getWidth(), this.f2025o.getHeight());
                    float[] fArr3 = this.f2022l;
                    fArr3[1] = this.f2020j * min2;
                    fArr3[0] = min2 * this.f2019i;
                }
                float f6 = this.f2019i;
                float[] fArr4 = this.f2022l;
                if (Math.abs(((f6 * fArr4[0]) + (this.f2020j * fArr4[1])) * this.f2029s) < 0.01d) {
                    float[] fArr5 = this.f2022l;
                    fArr5[0] = 0.01f;
                    fArr5[1] = 0.01f;
                }
                float max = Math.max(Math.min(progress2 + (this.f2019i != 0.0f ? rawX / this.f2022l[0] : rawY / this.f2022l[1]), 1.0f), 0.0f);
                if (max != this.f2025o.getProgress()) {
                    this.f2025o.setProgress(max);
                    motionTracker.mo20683e(1000);
                    this.f2025o.f1831A = this.f2019i != 0.0f ? motionTracker.mo20684d() / this.f2022l[0] : motionTracker.mo20685c() / this.f2022l[1];
                } else {
                    this.f2025o.f1831A = 0.0f;
                }
                this.f2023m = motionEvent.getRawX();
                this.f2024n = motionEvent.getRawY();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public void m20540m(float f, float f2) {
        float progress = this.f2025o.getProgress();
        if (!this.f2021k) {
            this.f2021k = true;
            this.f2025o.setProgress(progress);
        }
        this.f2025o.m20729d0(this.f2014d, progress, this.f2018h, this.f2017g, this.f2022l);
        float f3 = this.f2019i;
        float[] fArr = this.f2022l;
        if (Math.abs((f3 * fArr[0]) + (this.f2020j * fArr[1])) < 0.01d) {
            float[] fArr2 = this.f2022l;
            fArr2[0] = 0.01f;
            fArr2[1] = 0.01f;
        }
        float f4 = this.f2019i;
        float max = Math.max(Math.min(progress + (f4 != 0.0f ? (f * f4) / this.f2022l[0] : (f2 * this.f2020j) / this.f2022l[1]), 1.0f), 0.0f);
        if (max != this.f2025o.getProgress()) {
            this.f2025o.setProgress(max);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public void m20539n(float f, float f2) {
        boolean z = false;
        this.f2021k = false;
        float progress = this.f2025o.getProgress();
        this.f2025o.m20729d0(this.f2014d, progress, this.f2018h, this.f2017g, this.f2022l);
        float f3 = this.f2019i;
        float[] fArr = this.f2022l;
        float f4 = fArr[0];
        float f5 = this.f2020j;
        float f6 = fArr[1];
        float f7 = 0.0f;
        float f8 = f3 != 0.0f ? (f * f3) / fArr[0] : (f2 * f5) / fArr[1];
        float f9 = progress;
        if (!Float.isNaN(f8)) {
            f9 = progress + (f8 / 3.0f);
        }
        if (f9 != 0.0f) {
            boolean z2 = f9 != 1.0f;
            if (this.f2013c != 3) {
                z = true;
            }
            if (z && z2) {
                MotionLayout motionLayout = this.f2025o;
                int i = this.f2013c;
                if (f9 >= 0.5d) {
                    f7 = 1.0f;
                }
                motionLayout.m20718o0(i, f7, f8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public void m20538o(float f, float f2) {
        this.f2023m = f;
        this.f2024n = f2;
    }

    /* renamed from: p */
    public void m20537p(boolean z) {
        if (z) {
            float[][] fArr = f2010w;
            fArr[4] = fArr[3];
            fArr[5] = fArr[2];
            float[][] fArr2 = f2009v;
            fArr2[5] = fArr2[2];
            fArr2[6] = fArr2[1];
        } else {
            float[][] fArr3 = f2010w;
            fArr3[4] = fArr3[2];
            fArr3[5] = fArr3[3];
            float[][] fArr4 = f2009v;
            fArr4[5] = fArr4[1];
            fArr4[6] = fArr4[2];
        }
        float[][] fArr5 = f2009v;
        int i = this.f2011a;
        this.f2018h = fArr5[i][0];
        this.f2017g = fArr5[i][1];
        float[][] fArr6 = f2010w;
        int i2 = this.f2012b;
        this.f2019i = fArr6[i2][0];
        this.f2020j = fArr6[i2][1];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public void m20536q(float f, float f2) {
        this.f2023m = f;
        this.f2024n = f2;
        this.f2021k = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public void m20535r() {
        KeyEvent.Callback callback;
        int i = this.f2014d;
        if (i != -1) {
            KeyEvent.Callback findViewById = this.f2025o.findViewById(i);
            callback = findViewById;
            if (findViewById == null) {
                Log.e("TouchResponse", "cannot find TouchAnchorId @id/" + Debug.m20942b(this.f2025o.getContext(), this.f2014d));
                callback = findViewById;
            }
        } else {
            callback = null;
        }
        if (callback instanceof NestedScrollView) {
            NestedScrollView nestedScrollView = (NestedScrollView) callback;
            nestedScrollView.setOnTouchListener(new View.OnTouchListener(this) { // from class: androidx.constraintlayout.motion.widget.TouchResponse.1
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    return false;
                }
            });
            nestedScrollView.setOnScrollChangeListener(new NestedScrollView.OnScrollChangeListener(this) { // from class: androidx.constraintlayout.motion.widget.TouchResponse.2
                @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
                /* renamed from: a */
                public void mo6899a(NestedScrollView nestedScrollView2, int i2, int i3, int i4, int i5) {
                }
            });
        }
    }

    public String toString() {
        return this.f2019i + " , " + this.f2020j;
    }
}
