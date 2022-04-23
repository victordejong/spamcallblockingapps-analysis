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
import androidx.core.view.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.jjoe64.graphview.a.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/GraphView.class */
public class GraphView extends View {

    /* renamed from: a  reason: collision with root package name */
    public List<h> f33521a;

    /* renamed from: b  reason: collision with root package name */
    public c f33522b;

    /* renamed from: c  reason: collision with root package name */
    public j f33523c;

    /* renamed from: d  reason: collision with root package name */
    protected h f33524d;
    public boolean e;
    com.jjoe64.graphview.a f;
    private String g;
    private a h;
    private b i;
    private e j;
    private Paint k;
    private Paint l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/GraphView$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        float f33525a;

        /* renamed from: b  reason: collision with root package name */
        int f33526b;

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/GraphView$b.class */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        long f33527a;

        /* renamed from: b  reason: collision with root package name */
        PointF f33528b;

        private b() {
        }
    }

    public GraphView(Context context) {
        super(context);
        g();
    }

    public GraphView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        g();
    }

    public GraphView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        g();
    }

    private void g() {
        Paint paint = new Paint();
        this.l = paint;
        paint.setTextAlign(Paint.Align.CENTER);
        this.l.setColor(-16777216);
        this.l.setTextSize(50.0f);
        this.h = new a();
        this.f33523c = new j(this);
        this.f33522b = new c(this);
        this.j = new e(this);
        this.f33521a = new ArrayList();
        this.k = new Paint();
        this.i = new b();
        h();
    }

    private void h() {
        this.h.f33526b = this.f33522b.b();
        this.h.f33525a = this.f33522b.a();
    }

    private int i() {
        String str = this.g;
        if (str == null || str.length() <= 0) {
            return 0;
        }
        return (int) this.k.getTextSize();
    }

    public final int a() {
        return this.f33522b.e().i + this.f33522b.f() + this.f33522b.d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(Canvas canvas) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 11 && !canvas.isHardwareAccelerated()) {
            Log.w("GraphView", "GraphView should be used in hardware accelerated mode.You can use android:hardwareAccelerated=\"true\" on your activity. Read this for more info:https://developer.android.com/guide/topics/graphics/hardware-accel.html");
        }
        String str = this.g;
        if (str != null && str.length() > 0) {
            this.k.setColor(this.h.f33526b);
            this.k.setTextSize(this.h.f33525a);
            this.k.setTextAlign(Paint.Align.CENTER);
            canvas.drawText(this.g, canvas.getWidth() / 2, this.k.getTextSize(), this.k);
        }
        this.f33523c.a(canvas);
        this.f33522b.a(canvas);
        Iterator<h> it2 = this.f33521a.iterator();
        while (true) {
            z = false;
            if (!it2.hasNext()) {
                break;
            }
            it2.next().a(this, canvas, false);
        }
        h hVar = this.f33524d;
        boolean z2 = true;
        if (hVar != null) {
            for (h hVar2 : hVar.a()) {
                hVar2.a(this, canvas, true);
            }
        }
        com.jjoe64.graphview.a aVar = this.f;
        if (aVar != null) {
            aVar.a(canvas);
        }
        j jVar = this.f33523c;
        if (!jVar.q.f2061a.isFinished()) {
            int save = canvas.save();
            canvas.translate(jVar.e.a(), jVar.e.b());
            jVar.q.a(jVar.e.d(), jVar.e.c());
            z = jVar.q.a(canvas);
            canvas.restoreToCount(save);
        }
        z = z;
        if (!jVar.r.f2061a.isFinished()) {
            int save2 = canvas.save();
            canvas.translate(jVar.e.a(), jVar.e.b() + jVar.e.c());
            canvas.rotate(180.0f, jVar.e.d() / 2, BitmapDescriptorFactory.HUE_RED);
            jVar.r.a(jVar.e.d(), jVar.e.c());
            if (jVar.r.a(canvas)) {
                z = true;
            }
            canvas.restoreToCount(save2);
        }
        z2 = z;
        if (!jVar.s.f2061a.isFinished()) {
            int save3 = canvas.save();
            canvas.translate(jVar.e.a(), jVar.e.b() + jVar.e.c());
            canvas.rotate(-90.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            jVar.s.a(jVar.e.c(), jVar.e.d());
            z2 = z;
            if (jVar.s.a(canvas)) {
                z2 = true;
            }
            canvas.restoreToCount(save3);
        }
        z2 = z2;
        if (!jVar.t.f2061a.isFinished()) {
            int save4 = canvas.save();
            canvas.translate(jVar.e.a() + jVar.e.d(), jVar.e.b());
            canvas.rotate(90.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            jVar.t.a(jVar.e.c(), jVar.e.d());
            if (jVar.t.a(canvas)) {
            }
            canvas.restoreToCount(save4);
        }
        if (z2) {
            v.d(jVar.e);
        }
        this.j.a(canvas);
    }

    public final void a(h hVar) {
        hVar.a(this);
        this.f33521a.add(hVar);
        a(false);
    }

    public final void a(boolean z) {
        this.f33523c.b();
        h hVar = this.f33524d;
        if (hVar != null) {
            hVar.e();
        }
        this.f33522b.a(z, false);
        postInvalidate();
    }

    public final int b() {
        return this.f33522b.e().i + i();
    }

    public final int c() {
        return (((getHeight() - (this.f33522b.e().i * 2)) - this.f33522b.g()) - i()) - this.f33522b.c();
    }

    @Override // android.view.View
    public void computeScroll() {
        super.computeScroll();
    }

    public final int d() {
        int width = (getWidth() - (this.f33522b.e().i * 2)) - this.f33522b.f();
        int i = width;
        if (this.f33524d != null) {
            i = (int) ((width - this.f33522b.k()) - this.f33524d.f());
        }
        return i;
    }

    public final e e() {
        return this.j;
    }

    public final h f() {
        if (this.f33524d == null) {
            h hVar = new h(this);
            this.f33524d = hVar;
            hVar.j = this.f33522b.f33561a.f33566a;
        }
        return this.f33524d;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawColor(Color.rgb(200, 200, 200));
            canvas.drawText("GraphView: No Preview available", canvas.getWidth() / 2, canvas.getHeight() / 2, this.l);
            return;
        }
        a(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        a(false);
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
        this.e = z;
        if (!z) {
            this.f = null;
            invalidate();
        } else if (this.f == null) {
            this.f = new com.jjoe64.graphview.a(this);
        }
        for (h hVar : this.f33521a) {
            if (hVar instanceof com.jjoe64.graphview.a.b) {
                ((com.jjoe64.graphview.a.b) hVar).e = null;
            }
        }
    }

    public void setLegendRenderer(e eVar) {
        this.j = eVar;
    }

    public void setTitle(String str) {
        this.g = str;
    }

    public void setTitleColor(int i) {
        this.h.f33526b = i;
    }

    public void setTitleTextSize(float f) {
        this.h.f33525a = f;
    }
}
