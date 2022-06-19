package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.Log;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.C0687e;
import androidx.core.widget.NestedScrollView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: androidx.constraintlayout.motion.widget.s */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/s.class */
public final class C0663s {

    /* renamed from: v */
    private static final float[][] f2823v = {new float[]{0.5f, BitmapDescriptorFactory.HUE_RED}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.5f}, new float[]{1.0f, 0.5f}, new float[]{0.5f, 1.0f}, new float[]{0.5f, 0.5f}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.5f}, new float[]{1.0f, 0.5f}};

    /* renamed from: w */
    private static final float[][] f2824w = {new float[]{BitmapDescriptorFactory.HUE_RED, -1.0f}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, new float[]{-1.0f, BitmapDescriptorFactory.HUE_RED}, new float[]{1.0f, BitmapDescriptorFactory.HUE_RED}, new float[]{-1.0f, BitmapDescriptorFactory.HUE_RED}, new float[]{1.0f, BitmapDescriptorFactory.HUE_RED}};

    /* renamed from: k */
    float f2835k;

    /* renamed from: l */
    float f2836l;

    /* renamed from: m */
    final MotionLayout f2837m;

    /* renamed from: t */
    private int f2844t = 0;

    /* renamed from: u */
    private int f2845u = 0;

    /* renamed from: a */
    int f2825a = 0;

    /* renamed from: b */
    int f2826b = -1;

    /* renamed from: c */
    int f2827c = -1;

    /* renamed from: d */
    int f2828d = -1;

    /* renamed from: e */
    float f2829e = 0.5f;

    /* renamed from: f */
    float f2830f = 0.5f;

    /* renamed from: g */
    float f2831g = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: h */
    float f2832h = 1.0f;

    /* renamed from: i */
    boolean f2833i = false;

    /* renamed from: j */
    float[] f2834j = new float[2];

    /* renamed from: n */
    float f2838n = 4.0f;

    /* renamed from: o */
    float f2839o = 1.2f;

    /* renamed from: p */
    boolean f2840p = true;

    /* renamed from: q */
    float f2841q = 1.0f;

    /* renamed from: r */
    int f2842r = 0;

    /* renamed from: s */
    float f2843s = 10.0f;

    public C0663s(Context context, MotionLayout motionLayout, XmlPullParser xmlPullParser) {
        this.f2837m = motionLayout;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0687e.C0689b.OnSwipe);
        m44779a(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private void m44779a(TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            if (index == C0687e.C0689b.OnSwipe_touchAnchorId) {
                this.f2826b = typedArray.getResourceId(index, this.f2826b);
            } else if (index == C0687e.C0689b.OnSwipe_touchAnchorSide) {
                int i2 = typedArray.getInt(index, this.f2844t);
                this.f2844t = i2;
                float[][] fArr = f2823v;
                this.f2830f = fArr[i2][0];
                this.f2829e = fArr[i2][1];
            } else if (index == C0687e.C0689b.OnSwipe_dragDirection) {
                int i3 = typedArray.getInt(index, this.f2845u);
                this.f2845u = i3;
                float[][] fArr2 = f2824w;
                this.f2831g = fArr2[i3][0];
                this.f2832h = fArr2[i3][1];
            } else if (index == C0687e.C0689b.OnSwipe_maxVelocity) {
                this.f2838n = typedArray.getFloat(index, this.f2838n);
            } else if (index == C0687e.C0689b.OnSwipe_maxAcceleration) {
                this.f2839o = typedArray.getFloat(index, this.f2839o);
            } else if (index == C0687e.C0689b.OnSwipe_moveWhenScrollAtTop) {
                this.f2840p = typedArray.getBoolean(index, this.f2840p);
            } else if (index == C0687e.C0689b.OnSwipe_dragScale) {
                this.f2841q = typedArray.getFloat(index, this.f2841q);
            } else if (index == C0687e.C0689b.OnSwipe_dragThreshold) {
                this.f2843s = typedArray.getFloat(index, this.f2843s);
            } else if (index == C0687e.C0689b.OnSwipe_touchRegionId) {
                this.f2827c = typedArray.getResourceId(index, this.f2827c);
            } else if (index == C0687e.C0689b.OnSwipe_onTouchUp) {
                this.f2825a = typedArray.getInt(index, this.f2825a);
            } else if (index == C0687e.C0689b.OnSwipe_nestedScrollFlags) {
                this.f2842r = typedArray.getInteger(index, 0);
            } else if (index == C0687e.C0689b.OnSwipe_limitBoundsTo) {
                this.f2828d = typedArray.getResourceId(index, 0);
            }
        }
    }

    /* renamed from: a */
    public final RectF m44778a(ViewGroup viewGroup, RectF rectF) {
        View findViewById;
        int i = this.f2827c;
        if (i == -1 || (findViewById = viewGroup.findViewById(i)) == null) {
            return null;
        }
        rectF.set(findViewById.getLeft(), findViewById.getTop(), findViewById.getRight(), findViewById.getBottom());
        return rectF;
    }

    /* renamed from: a */
    public final void m44780a() {
        NestedScrollView nestedScrollView;
        int i = this.f2826b;
        if (i != -1) {
            View findViewById = this.f2837m.findViewById(i);
            nestedScrollView = findViewById;
            if (findViewById == 0) {
                Log.e("TouchResponse", "cannot find TouchAnchorId @id/" + C0591a.m44984a(this.f2837m.getContext(), this.f2826b));
                nestedScrollView = findViewById;
            }
        } else {
            nestedScrollView = null;
        }
        if (nestedScrollView instanceof NestedScrollView) {
            NestedScrollView nestedScrollView2 = nestedScrollView;
            nestedScrollView2.setOnTouchListener(new View.OnTouchListener() { // from class: androidx.constraintlayout.motion.widget.s.1
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return false;
                }
            });
            nestedScrollView2.setOnScrollChangeListener(new NestedScrollView.AbstractC0949b() { // from class: androidx.constraintlayout.motion.widget.s.2
                @Override // androidx.core.widget.NestedScrollView.AbstractC0949b
                /* renamed from: a */
                public final void mo43996a(NestedScrollView nestedScrollView3) {
                }
            });
        }
    }

    /* renamed from: a */
    public final void m44777a(boolean z) {
        if (z) {
            float[][] fArr = f2824w;
            fArr[4] = fArr[3];
            fArr[5] = fArr[2];
            float[][] fArr2 = f2823v;
            fArr2[5] = fArr2[2];
            fArr2[6] = fArr2[1];
        } else {
            float[][] fArr3 = f2824w;
            fArr3[4] = fArr3[2];
            fArr3[5] = fArr3[3];
            float[][] fArr4 = f2823v;
            fArr4[5] = fArr4[1];
            fArr4[6] = fArr4[2];
        }
        float[][] fArr5 = f2823v;
        int i = this.f2844t;
        this.f2830f = fArr5[i][0];
        this.f2829e = fArr5[i][1];
        float[][] fArr6 = f2824w;
        int i2 = this.f2845u;
        this.f2831g = fArr6[i2][0];
        this.f2832h = fArr6[i2][1];
    }

    public final String toString() {
        return this.f2831g + " , " + this.f2832h;
    }
}
