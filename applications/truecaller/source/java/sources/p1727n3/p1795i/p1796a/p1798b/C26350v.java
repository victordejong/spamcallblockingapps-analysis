package p1727n3.p1795i.p1796a.p1798b;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.C0114R;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: n3.i.a.b.v */
/* loaded from: classes-dex2jar.jar:n3/i/a/b/v.class */
public class C26350v {

    /* renamed from: v */
    public static final float[][] f73537v = {new float[]{0.5f, 0.0f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}, new float[]{0.5f, 1.0f}, new float[]{0.5f, 0.5f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}};

    /* renamed from: w */
    public static final float[][] f73538w = {new float[]{0.0f, -1.0f}, new float[]{0.0f, 1.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}};

    /* renamed from: a */
    public int f73539a;

    /* renamed from: b */
    public int f73540b;

    /* renamed from: c */
    public int f73541c;

    /* renamed from: d */
    public int f73542d;

    /* renamed from: e */
    public int f73543e;

    /* renamed from: f */
    public int f73544f;

    /* renamed from: g */
    public float f73545g;

    /* renamed from: h */
    public float f73546h;

    /* renamed from: i */
    public float f73547i;

    /* renamed from: j */
    public float f73548j;

    /* renamed from: k */
    public boolean f73549k = false;

    /* renamed from: l */
    public float[] f73550l = new float[2];

    /* renamed from: m */
    public float f73551m;

    /* renamed from: n */
    public float f73552n;

    /* renamed from: o */
    public final MotionLayout f73553o;

    /* renamed from: p */
    public float f73554p;

    /* renamed from: q */
    public float f73555q;

    /* renamed from: r */
    public boolean f73556r;

    /* renamed from: s */
    public float f73557s;

    /* renamed from: t */
    public int f73558t;

    /* renamed from: u */
    public float f73559u;

    public C26350v(Context context, MotionLayout motionLayout, XmlPullParser xmlPullParser) {
        this.f73539a = 0;
        this.f73540b = 0;
        this.f73541c = 0;
        this.f73542d = -1;
        this.f73543e = -1;
        this.f73544f = -1;
        this.f73545g = 0.5f;
        this.f73546h = 0.5f;
        this.f73547i = 0.0f;
        this.f73548j = 1.0f;
        this.f73554p = 4.0f;
        this.f73555q = 1.2f;
        this.f73556r = true;
        this.f73557s = 1.0f;
        this.f73558t = 0;
        this.f73559u = 10.0f;
        this.f73553o = motionLayout;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0114R.styleable.OnSwipe);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == C0114R.styleable.OnSwipe_touchAnchorId) {
                this.f73542d = obtainStyledAttributes.getResourceId(index, this.f73542d);
            } else if (index == C0114R.styleable.OnSwipe_touchAnchorSide) {
                int i2 = obtainStyledAttributes.getInt(index, this.f73539a);
                this.f73539a = i2;
                float[][] fArr = f73537v;
                this.f73546h = fArr[i2][0];
                this.f73545g = fArr[i2][1];
            } else if (index == C0114R.styleable.OnSwipe_dragDirection) {
                int i3 = obtainStyledAttributes.getInt(index, this.f73540b);
                this.f73540b = i3;
                float[][] fArr2 = f73538w;
                this.f73547i = fArr2[i3][0];
                this.f73548j = fArr2[i3][1];
            } else if (index == C0114R.styleable.OnSwipe_maxVelocity) {
                this.f73554p = obtainStyledAttributes.getFloat(index, this.f73554p);
            } else if (index == C0114R.styleable.OnSwipe_maxAcceleration) {
                this.f73555q = obtainStyledAttributes.getFloat(index, this.f73555q);
            } else if (index == C0114R.styleable.OnSwipe_moveWhenScrollAtTop) {
                this.f73556r = obtainStyledAttributes.getBoolean(index, this.f73556r);
            } else if (index == C0114R.styleable.OnSwipe_dragScale) {
                this.f73557s = obtainStyledAttributes.getFloat(index, this.f73557s);
            } else if (index == C0114R.styleable.OnSwipe_dragThreshold) {
                this.f73559u = obtainStyledAttributes.getFloat(index, this.f73559u);
            } else if (index == C0114R.styleable.OnSwipe_touchRegionId) {
                this.f73543e = obtainStyledAttributes.getResourceId(index, this.f73543e);
            } else if (index == C0114R.styleable.OnSwipe_onTouchUp) {
                this.f73541c = obtainStyledAttributes.getInt(index, this.f73541c);
            } else if (index == C0114R.styleable.OnSwipe_nestedScrollFlags) {
                this.f73558t = obtainStyledAttributes.getInteger(index, 0);
            } else if (index == C0114R.styleable.OnSwipe_limitBoundsTo) {
                this.f73544f = obtainStyledAttributes.getResourceId(index, 0);
            }
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    public RectF m2160a(ViewGroup viewGroup, RectF rectF) {
        View findViewById;
        int i = this.f73543e;
        if (i == -1 || (findViewById = viewGroup.findViewById(i)) == null) {
            return null;
        }
        rectF.set(findViewById.getLeft(), findViewById.getTop(), findViewById.getRight(), findViewById.getBottom());
        return rectF;
    }

    /* renamed from: b */
    public void m2159b(boolean z) {
        float[][] fArr = f73537v;
        float[][] fArr2 = f73538w;
        if (z) {
            fArr2[4] = fArr2[3];
            fArr2[5] = fArr2[2];
            fArr[5] = fArr[2];
            fArr[6] = fArr[1];
        } else {
            fArr2[4] = fArr2[2];
            fArr2[5] = fArr2[3];
            fArr[5] = fArr[1];
            fArr[6] = fArr[2];
        }
        int i = this.f73539a;
        this.f73546h = fArr[i][0];
        this.f73545g = fArr[i][1];
        int i2 = this.f73540b;
        this.f73547i = fArr2[i2][0];
        this.f73548j = fArr2[i2][1];
    }

    public String toString() {
        return this.f73547i + " , " + this.f73548j;
    }
}
