package ripple;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import p131c.p431l.p477b.C6870a;
import p613k.C10442c;
/* loaded from: classes2-dex2jar.jar:ripple/RippleView.class */
public class RippleView extends RelativeLayout {

    /* renamed from: a */
    public C10442c f38768a;

    /* renamed from: b */
    public int f38769b = -1;

    /* renamed from: c */
    public float f38770c = 0.0f;

    /* renamed from: d */
    public float f38771d = 0.0f;

    public RippleView(Context context) {
        super(context);
    }

    public RippleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m0a(context, attributeSet);
    }

    public RippleView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m0a(context, attributeSet);
    }

    /* renamed from: a */
    public void m1a(float f, float f2) {
        C10442c cVar = this.f38768a;
        if (cVar != null) {
            cVar.m141b(f, f2);
        }
    }

    /* renamed from: a */
    public final void m0a(Context context, AttributeSet attributeSet) {
        if (!isInEditMode()) {
            TypedArray obtainStyledAttributes = context.getApplicationContext().obtainStyledAttributes(attributeSet, C6870a.RippleView);
            int color = obtainStyledAttributes.getColor(0, getResources().getColor(2131034274));
            this.f38769b = obtainStyledAttributes.getDimensionPixelOffset(1, -1);
            this.f38770c = obtainStyledAttributes.getDimension(2, 0.0f);
            this.f38771d = obtainStyledAttributes.getDimension(3, 0.0f);
            boolean z = obtainStyledAttributes.getBoolean(4, false);
            obtainStyledAttributes.recycle();
            C10442c cVar = new C10442c(ColorStateList.valueOf(color));
            this.f38768a = cVar;
            cVar.m149a(this.f38769b);
            this.f38768a.m150a(this.f38770c, this.f38771d);
            this.f38768a.m139b(z);
            setBackgroundDrawable(this.f38768a);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002b, code lost:
        if (r0 != 3) goto L_0x003b;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            r0 = r5
            float r0 = r0.getX()
            r6 = r0
            r0 = r5
            float r0 = r0.getY()
            r7 = r0
            r0 = r4
            boolean r0 = r0.isEnabled()
            if (r0 == 0) goto L_0x003b
            r0 = r5
            int r0 = r0.getAction()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0031
            r0 = r8
            r1 = 1
            if (r0 == r1) goto L_0x0031
            r0 = r8
            r1 = 2
            if (r0 == r1) goto L_0x0035
            r0 = r8
            r1 = 3
            if (r0 == r1) goto L_0x0031
            goto L_0x003b
        L_0x0031:
            long r0 = java.lang.System.currentTimeMillis()
        L_0x0035:
            r0 = r4
            r1 = r6
            r2 = r7
            r0.m1a(r1, r2)
        L_0x003b:
            r0 = r4
            r1 = r5
            boolean r0 = super.onTouchEvent(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ripple.RippleView.onTouchEvent(android.view.MotionEvent):boolean");
    }
}
