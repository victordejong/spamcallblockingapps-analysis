package p1727n3.p1795i.p1796a.p1798b;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.C0114R;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
/* renamed from: n3.i.a.b.k */
/* loaded from: classes-dex2jar.jar:n3/i/a/b/k.class */
public class C26307k extends AbstractC26280b {

    /* renamed from: q */
    public Method f73402q;

    /* renamed from: r */
    public Method f73403r;

    /* renamed from: s */
    public Method f73404s;

    /* renamed from: t */
    public float f73405t;

    /* renamed from: e */
    public String f73390e = null;

    /* renamed from: f */
    public int f73391f = -1;

    /* renamed from: g */
    public String f73392g = null;

    /* renamed from: h */
    public String f73393h = null;

    /* renamed from: i */
    public int f73394i = -1;

    /* renamed from: j */
    public int f73395j = -1;

    /* renamed from: k */
    public View f73396k = null;

    /* renamed from: l */
    public float f73397l = 0.1f;

    /* renamed from: m */
    public boolean f73398m = true;

    /* renamed from: n */
    public boolean f73399n = true;

    /* renamed from: o */
    public boolean f73400o = true;

    /* renamed from: p */
    public float f73401p = Float.NaN;

    /* renamed from: u */
    public boolean f73406u = false;

    /* renamed from: v */
    public RectF f73407v = new RectF();

    /* renamed from: w */
    public RectF f73408w = new RectF();

    /* renamed from: n3.i.a.b.k$a */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/k$a.class */
    public static class C26308a {

        /* renamed from: a */
        public static SparseIntArray f73409a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f73409a = sparseIntArray;
            sparseIntArray.append(C0114R.styleable.KeyTrigger_framePosition, 8);
            f73409a.append(C0114R.styleable.KeyTrigger_onCross, 4);
            f73409a.append(C0114R.styleable.KeyTrigger_onNegativeCross, 1);
            f73409a.append(C0114R.styleable.KeyTrigger_onPositiveCross, 2);
            f73409a.append(C0114R.styleable.KeyTrigger_motionTarget, 7);
            f73409a.append(C0114R.styleable.KeyTrigger_triggerId, 6);
            f73409a.append(C0114R.styleable.KeyTrigger_triggerSlack, 5);
            f73409a.append(C0114R.styleable.KeyTrigger_motion_triggerOnCollision, 9);
            f73409a.append(C0114R.styleable.KeyTrigger_motion_postLayoutCollision, 10);
            f73409a.append(C0114R.styleable.KeyTrigger_triggerReceiver, 11);
        }
    }

    public C26307k() {
        this.f73314d = new HashMap<>();
    }

    @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26280b
    /* renamed from: a */
    public void mo2210a(HashMap<String, AbstractC26318r> hashMap) {
    }

    @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26280b
    /* renamed from: b */
    public void mo2209b(HashSet<String> hashSet) {
    }

    @Override // p1727n3.p1795i.p1796a.p1798b.AbstractC26280b
    /* renamed from: c */
    public void mo2208c(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0114R.styleable.KeyTrigger);
        SparseIntArray sparseIntArray = C26308a.f73409a;
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            switch (C26308a.f73409a.get(index)) {
                case 1:
                    this.f73392g = obtainStyledAttributes.getString(index);
                    continue;
                case 2:
                    this.f73393h = obtainStyledAttributes.getString(index);
                    continue;
                case 4:
                    this.f73390e = obtainStyledAttributes.getString(index);
                    continue;
                case 5:
                    this.f73397l = obtainStyledAttributes.getFloat(index, this.f73397l);
                    continue;
                case 6:
                    this.f73394i = obtainStyledAttributes.getResourceId(index, this.f73394i);
                    continue;
                case 7:
                    if (MotionLayout.O0) {
                        int resourceId = obtainStyledAttributes.getResourceId(index, this.f73312b);
                        this.f73312b = resourceId;
                        if (resourceId == -1) {
                            this.f73313c = obtainStyledAttributes.getString(index);
                        } else {
                            continue;
                        }
                    } else if (obtainStyledAttributes.peekValue(index).type == 3) {
                        this.f73313c = obtainStyledAttributes.getString(index);
                    } else {
                        this.f73312b = obtainStyledAttributes.getResourceId(index, this.f73312b);
                    }
                case 8:
                    int integer = obtainStyledAttributes.getInteger(index, this.f73311a);
                    this.f73311a = integer;
                    this.f73401p = (integer + 0.5f) / 100.0f;
                    continue;
                case 9:
                    this.f73395j = obtainStyledAttributes.getResourceId(index, this.f73395j);
                    continue;
                case 10:
                    this.f73406u = obtainStyledAttributes.getBoolean(index, this.f73406u);
                    continue;
                case 11:
                    this.f73391f = obtainStyledAttributes.getResourceId(index, this.f73391f);
                    break;
            }
            Integer.toHexString(index);
            C26308a.f73409a.get(index);
        }
    }

    /* renamed from: e */
    public final void m2207e(RectF rectF, View view, boolean z) {
        rectF.top = view.getTop();
        rectF.bottom = view.getBottom();
        rectF.left = view.getLeft();
        rectF.right = view.getRight();
        if (z) {
            view.getMatrix().mapRect(rectF);
        }
    }
}
