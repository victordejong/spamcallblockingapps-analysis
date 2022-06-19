package com.jjoe64.graphview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PointF;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.core.view.C0926v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.jjoe64.graphview.p455a.AbstractC16546b;
import com.jjoe64.graphview.p455a.AbstractC16559h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/GraphView.class */
public class GraphView extends View {

    /* renamed from: a */
    public List<AbstractC16559h> f58149a;

    /* renamed from: b */
    public C16561c f58150b;

    /* renamed from: c */
    public C16577j f58151c;

    /* renamed from: d */
    protected C16574h f58152d;

    /* renamed from: e */
    public boolean f58153e;

    /* renamed from: f */
    C16542a f58154f;

    /* renamed from: g */
    private String f58155g;

    /* renamed from: h */
    private C16540a f58156h;

    /* renamed from: i */
    private C16541b f58157i;

    /* renamed from: j */
    private C16567e f58158j;

    /* renamed from: k */
    private Paint f58159k;

    /* renamed from: l */
    private Paint f58160l;

    /* renamed from: com.jjoe64.graphview.GraphView$a */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/GraphView$a.class */
    public static final class C16540a {

        /* renamed from: a */
        float f58161a;

        /* renamed from: b */
        int f58162b;

        private C16540a() {
        }
    }

    /* renamed from: com.jjoe64.graphview.GraphView$b */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/GraphView$b.class */
    public final class C16541b {

        /* renamed from: a */
        long f58163a;

        /* renamed from: b */
        PointF f58164b;

        private C16541b() {
            GraphView.this = r4;
        }
    }

    public GraphView(Context context) {
        super(context);
        m7054g();
    }

    public GraphView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m7054g();
    }

    public GraphView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m7054g();
    }

    /* renamed from: g */
    private void m7054g() {
        Paint paint = new Paint();
        this.f58160l = paint;
        paint.setTextAlign(Paint.Align.CENTER);
        this.f58160l.setColor(-16777216);
        this.f58160l.setTextSize(50.0f);
        this.f58156h = new C16540a();
        this.f58151c = new C16577j(this);
        this.f58150b = new C16561c(this);
        this.f58158j = new C16567e(this);
        this.f58149a = new ArrayList();
        this.f58159k = new Paint();
        this.f58157i = new C16541b();
        m7053h();
    }

    /* renamed from: h */
    private void m7053h() {
        this.f58156h.f58162b = this.f58150b.m7015b();
        this.f58156h.f58161a = this.f58150b.m7022a();
    }

    /* renamed from: i */
    private int m7052i() {
        String str = this.f58155g;
        if (str == null || str.length() <= 0) {
            return 0;
        }
        return (int) this.f58159k.getTextSize();
    }

    /* renamed from: a */
    public final int m7063a() {
        return this.f58150b.m7007e().f58280i + this.f58150b.m7006f() + this.f58150b.m7009d();
    }

    /* renamed from: a */
    public final void m7062a(Canvas canvas) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 11 && !canvas.isHardwareAccelerated()) {
            Log.w("GraphView", "GraphView should be used in hardware accelerated mode.You can use android:hardwareAccelerated=\"true\" on your activity. Read this for more info:https://developer.android.com/guide/topics/graphics/hardware-accel.html");
        }
        String str = this.f58155g;
        if (str != null && str.length() > 0) {
            this.f58159k.setColor(this.f58156h.f58162b);
            this.f58159k.setTextSize(this.f58156h.f58161a);
            this.f58159k.setTextAlign(Paint.Align.CENTER);
            canvas.drawText(this.f58155g, canvas.getWidth() / 2, this.f58159k.getTextSize(), this.f58159k);
        }
        this.f58151c.m6975a(canvas);
        this.f58150b.m7019a(canvas);
        Iterator<AbstractC16559h> it2 = this.f58149a.iterator();
        while (true) {
            z = false;
            if (!it2.hasNext()) {
                break;
            }
            it2.next().mo7031a(this, canvas, false);
        }
        C16574h c16574h = this.f58152d;
        if (c16574h != null) {
            for (AbstractC16559h abstractC16559h : c16574h.m6989a()) {
                abstractC16559h.mo7031a(this, canvas, true);
            }
        }
        C16542a c16542a = this.f58154f;
        if (c16542a != null) {
            c16542a.m7050a(canvas);
        }
        C16577j c16577j = this.f58151c;
        if (!c16577j.f58358q.f3862a.isFinished()) {
            int save = canvas.save();
            canvas.translate(c16577j.f58346e.m7063a(), c16577j.f58346e.m7059b());
            c16577j.f58358q.m43977a(c16577j.f58346e.m7057d(), c16577j.f58346e.m7058c());
            z = c16577j.f58358q.m43976a(canvas);
            canvas.restoreToCount(save);
        }
        boolean z2 = z;
        if (!c16577j.f58359r.f3862a.isFinished()) {
            int save2 = canvas.save();
            canvas.translate(c16577j.f58346e.m7063a(), c16577j.f58346e.m7059b() + c16577j.f58346e.m7058c());
            canvas.rotate(180.0f, c16577j.f58346e.m7057d() / 2, BitmapDescriptorFactory.HUE_RED);
            c16577j.f58359r.m43977a(c16577j.f58346e.m7057d(), c16577j.f58346e.m7058c());
            if (c16577j.f58359r.m43976a(canvas)) {
                z = true;
            }
            canvas.restoreToCount(save2);
            z2 = z;
        }
        boolean z3 = z2;
        if (!c16577j.f58360s.f3862a.isFinished()) {
            int save3 = canvas.save();
            canvas.translate(c16577j.f58346e.m7063a(), c16577j.f58346e.m7059b() + c16577j.f58346e.m7058c());
            canvas.rotate(-90.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            c16577j.f58360s.m43977a(c16577j.f58346e.m7058c(), c16577j.f58346e.m7057d());
            z3 = z2;
            if (c16577j.f58360s.m43976a(canvas)) {
                z3 = true;
            }
            canvas.restoreToCount(save3);
        }
        boolean z4 = z3;
        if (!c16577j.f58361t.f3862a.isFinished()) {
            int save4 = canvas.save();
            canvas.translate(c16577j.f58346e.m7063a() + c16577j.f58346e.m7057d(), c16577j.f58346e.m7059b());
            canvas.rotate(90.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            c16577j.f58361t.m43977a(c16577j.f58346e.m7058c(), c16577j.f58346e.m7057d());
            if (c16577j.f58361t.m43976a(canvas)) {
                z3 = true;
            }
            canvas.restoreToCount(save4);
            z4 = z3;
        }
        if (z4) {
            C0926v.m44101d(c16577j.f58346e);
        }
        this.f58158j.m6994a(canvas);
    }

    /* renamed from: a */
    public final void m7061a(AbstractC16559h abstractC16559h) {
        abstractC16559h.mo7032a(this);
        this.f58149a.add(abstractC16559h);
        m7060a(false);
    }

    /* renamed from: a */
    public final void m7060a(boolean z) {
        this.f58151c.m6971b();
        C16574h c16574h = this.f58152d;
        if (c16574h != null) {
            c16574h.m6985e();
        }
        this.f58150b.m7016a(z, false);
        postInvalidate();
    }

    /* renamed from: b */
    public final int m7059b() {
        return this.f58150b.m7007e().f58280i + m7052i();
    }

    /* renamed from: c */
    public final int m7058c() {
        return (((getHeight() - (this.f58150b.m7007e().f58280i * 2)) - this.f58150b.m7005g()) - m7052i()) - this.f58150b.m7012c();
    }

    @Override // android.view.View
    public void computeScroll() {
        super.computeScroll();
    }

    /* renamed from: d */
    public final int m7057d() {
        int width = (getWidth() - (this.f58150b.m7007e().f58280i * 2)) - this.f58150b.m7006f();
        int i = width;
        if (this.f58152d != null) {
            i = (int) ((width - this.f58150b.m7001k()) - this.f58152d.m6984f());
        }
        return i;
    }

    /* renamed from: e */
    public final C16567e m7056e() {
        return this.f58158j;
    }

    /* renamed from: f */
    public final C16574h m7055f() {
        if (this.f58152d == null) {
            C16574h c16574h = new C16574h(this);
            this.f58152d = c16574h;
            c16574h.f58329j = this.f58150b.f58247a.f58272a;
        }
        return this.f58152d;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (!isInEditMode()) {
            m7062a(canvas);
            return;
        }
        canvas.drawColor(Color.rgb(200, 200, 200));
        canvas.drawText("GraphView: No Preview available", canvas.getWidth() / 2, canvas.getHeight() / 2, this.f58160l);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m7060a(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00aa  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jjoe64.graphview.GraphView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setCursorMode(boolean z) {
        this.f58153e = z;
        if (!z) {
            this.f58154f = null;
            invalidate();
        } else if (this.f58154f == null) {
            this.f58154f = new C16542a(this);
        }
        for (AbstractC16559h abstractC16559h : this.f58149a) {
            if (abstractC16559h instanceof AbstractC16546b) {
                ((AbstractC16546b) abstractC16559h).f58202e = null;
            }
        }
    }

    public void setLegendRenderer(C16567e c16567e) {
        this.f58158j = c16567e;
    }

    public void setTitle(String str) {
        this.f58155g = str;
    }

    public void setTitleColor(int i) {
        this.f58156h.f58162b = i;
    }

    public void setTitleTextSize(float f) {
        this.f58156h.f58161a = f;
    }
}
