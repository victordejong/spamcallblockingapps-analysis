package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.Log;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.e;
import androidx.core.widget.NestedScrollView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.xmlpull.v1.XmlPullParser;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/s.class */
public final class s {
    private static final float[][] v = {new float[]{0.5f, BitmapDescriptorFactory.HUE_RED}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.5f}, new float[]{1.0f, 0.5f}, new float[]{0.5f, 1.0f}, new float[]{0.5f, 0.5f}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.5f}, new float[]{1.0f, 0.5f}};
    private static final float[][] w = {new float[]{BitmapDescriptorFactory.HUE_RED, -1.0f}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, new float[]{-1.0f, BitmapDescriptorFactory.HUE_RED}, new float[]{1.0f, BitmapDescriptorFactory.HUE_RED}, new float[]{-1.0f, BitmapDescriptorFactory.HUE_RED}, new float[]{1.0f, BitmapDescriptorFactory.HUE_RED}};
    float k;
    float l;
    final MotionLayout m;
    private int t = 0;
    private int u = 0;

    /* renamed from: a  reason: collision with root package name */
    int f1550a = 0;

    /* renamed from: b  reason: collision with root package name */
    int f1551b = -1;

    /* renamed from: c  reason: collision with root package name */
    int f1552c = -1;

    /* renamed from: d  reason: collision with root package name */
    int f1553d = -1;
    float e = 0.5f;
    float f = 0.5f;
    float g = BitmapDescriptorFactory.HUE_RED;
    float h = 1.0f;
    boolean i = false;
    float[] j = new float[2];
    float n = 4.0f;
    float o = 1.2f;
    boolean p = true;
    float q = 1.0f;
    int r = 0;
    float s = 10.0f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(Context context, MotionLayout motionLayout, XmlPullParser xmlPullParser) {
        this.m = motionLayout;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), e.b.OnSwipe);
        a(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    private void a(TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            if (index == e.b.OnSwipe_touchAnchorId) {
                this.f1551b = typedArray.getResourceId(index, this.f1551b);
            } else if (index == e.b.OnSwipe_touchAnchorSide) {
                int i2 = typedArray.getInt(index, this.t);
                this.t = i2;
                float[][] fArr = v;
                this.f = fArr[i2][0];
                this.e = fArr[i2][1];
            } else if (index == e.b.OnSwipe_dragDirection) {
                int i3 = typedArray.getInt(index, this.u);
                this.u = i3;
                float[][] fArr2 = w;
                this.g = fArr2[i3][0];
                this.h = fArr2[i3][1];
            } else if (index == e.b.OnSwipe_maxVelocity) {
                this.n = typedArray.getFloat(index, this.n);
            } else if (index == e.b.OnSwipe_maxAcceleration) {
                this.o = typedArray.getFloat(index, this.o);
            } else if (index == e.b.OnSwipe_moveWhenScrollAtTop) {
                this.p = typedArray.getBoolean(index, this.p);
            } else if (index == e.b.OnSwipe_dragScale) {
                this.q = typedArray.getFloat(index, this.q);
            } else if (index == e.b.OnSwipe_dragThreshold) {
                this.s = typedArray.getFloat(index, this.s);
            } else if (index == e.b.OnSwipe_touchRegionId) {
                this.f1552c = typedArray.getResourceId(index, this.f1552c);
            } else if (index == e.b.OnSwipe_onTouchUp) {
                this.f1550a = typedArray.getInt(index, this.f1550a);
            } else if (index == e.b.OnSwipe_nestedScrollFlags) {
                this.r = typedArray.getInteger(index, 0);
            } else if (index == e.b.OnSwipe_limitBoundsTo) {
                this.f1553d = typedArray.getResourceId(index, 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final RectF a(ViewGroup viewGroup, RectF rectF) {
        View findViewById;
        int i = this.f1552c;
        if (i == -1 || (findViewById = viewGroup.findViewById(i)) == null) {
            return null;
        }
        rectF.set(findViewById.getLeft(), findViewById.getTop(), findViewById.getRight(), findViewById.getBottom());
        return rectF;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        NestedScrollView nestedScrollView;
        int i = this.f1551b;
        if (i != -1) {
            View findViewById = this.m.findViewById(i);
            nestedScrollView = findViewById;
            if (findViewById == 0) {
                Log.e("TouchResponse", "cannot find TouchAnchorId @id/" + a.a(this.m.getContext(), this.f1551b));
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
            nestedScrollView2.setOnScrollChangeListener(new NestedScrollView.b() { // from class: androidx.constraintlayout.motion.widget.s.2
                @Override // androidx.core.widget.NestedScrollView.b
                public final void a(NestedScrollView nestedScrollView3) {
                }
            });
        }
    }

    public final void a(boolean z) {
        if (z) {
            float[][] fArr = w;
            fArr[4] = fArr[3];
            fArr[5] = fArr[2];
            float[][] fArr2 = v;
            fArr2[5] = fArr2[2];
            fArr2[6] = fArr2[1];
        } else {
            float[][] fArr3 = w;
            fArr3[4] = fArr3[2];
            fArr3[5] = fArr3[3];
            float[][] fArr4 = v;
            fArr4[5] = fArr4[1];
            fArr4[6] = fArr4[2];
        }
        float[][] fArr5 = v;
        int i = this.t;
        this.f = fArr5[i][0];
        this.e = fArr5[i][1];
        float[][] fArr6 = w;
        int i2 = this.u;
        this.g = fArr6[i2][0];
        this.h = fArr6[i2][1];
    }

    public final String toString() {
        return this.g + " , " + this.h;
    }
}
