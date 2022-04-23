package com.jjoe64.graphview;

import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.TypedValue;
import android.view.MotionEvent;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.jjoe64.graphview.a.b;
import com.jjoe64.graphview.a.d;
import com.jjoe64.graphview.a.h;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    protected final Paint f33530a;

    /* renamed from: b  reason: collision with root package name */
    protected final GraphView f33531b;

    /* renamed from: c  reason: collision with root package name */
    protected float f33532c;

    /* renamed from: d  reason: collision with root package name */
    protected float f33533d;
    protected boolean e;
    protected double i;
    protected int k;
    protected C0540a j = new C0540a();
    protected final Map<b, d> f = new HashMap();
    protected final Paint g = new Paint();
    protected final Paint h = new Paint();

    /* renamed from: com.jjoe64.graphview.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/a$a.class */
    static final class C0540a {

        /* renamed from: a  reason: collision with root package name */
        public float f33534a;

        /* renamed from: b  reason: collision with root package name */
        public int f33535b;

        /* renamed from: c  reason: collision with root package name */
        public int f33536c;

        /* renamed from: d  reason: collision with root package name */
        public int f33537d;
        public int e;
        public int f;
        public int g;

        private C0540a() {
        }
    }

    public a(GraphView graphView) {
        this.f33531b = graphView;
        Paint paint = new Paint();
        this.f33530a = paint;
        paint.setColor(Color.argb(128, 180, 180, 180));
        paint.setStrokeWidth(10.0f);
        this.j.f33534a = graphView.f33522b.a();
        C0540a aVar = this.j;
        aVar.f33535b = (int) (aVar.f33534a / 5.0f);
        C0540a aVar2 = this.j;
        aVar2.f33536c = (int) (aVar2.f33534a / 2.0f);
        this.j.f33537d = 0;
        this.j.e = Color.argb(180, 100, 100, 100);
        C0540a aVar3 = this.j;
        aVar3.f = (int) aVar3.f33534a;
        TypedValue typedValue = new TypedValue();
        graphView.getContext().getTheme().resolveAttribute(16842818, typedValue, true);
        int i = -16777216;
        try {
            TypedArray obtainStyledAttributes = graphView.getContext().obtainStyledAttributes(typedValue.data, new int[]{16842806});
            i = obtainStyledAttributes.getColor(0, -16777216);
            obtainStyledAttributes.recycle();
        } catch (Exception e) {
        }
        this.j.g = i;
        this.k = 0;
    }

    private String a(h hVar, d dVar) {
        StringBuffer stringBuffer = new StringBuffer();
        if (hVar.f() != null) {
            stringBuffer.append(hVar.f());
            stringBuffer.append(": ");
        }
        stringBuffer.append(this.f33531b.f33522b.f33563c.a(dVar.b(), false));
        return stringBuffer.toString();
    }

    private void b() {
        b bVar;
        d a2;
        this.f.clear();
        double d2 = 0.0d;
        for (h hVar : this.f33531b.f33521a) {
            if ((hVar instanceof b) && (a2 = (bVar = (b) hVar).a(this.f33532c)) != null) {
                d2 = a2.a();
                this.f.put(bVar, a2);
            }
        }
        if (!this.f.isEmpty()) {
            this.i = d2;
        }
    }

    public final void a(Canvas canvas) {
        if (this.e) {
            float f = this.f33532c;
            canvas.drawLine(f, BitmapDescriptorFactory.HUE_RED, f, canvas.getHeight(), this.f33530a);
        }
        for (Map.Entry<b, d> entry : this.f.entrySet()) {
            entry.getKey().a(this.f33531b, canvas, entry.getValue());
        }
        if (!this.f.isEmpty()) {
            this.h.setTextSize(this.j.f33534a);
            this.h.setColor(this.j.g);
            int i = (int) (this.j.f33534a * 0.8d);
            int i2 = this.j.f33537d;
            int i3 = i2;
            if (i2 == 0) {
                int i4 = this.k;
                i3 = i4;
                if (i4 == 0) {
                    Rect rect = new Rect();
                    int i5 = i4;
                    for (Map.Entry<b, d> entry2 : this.f.entrySet()) {
                        String a2 = a(entry2.getKey(), entry2.getValue());
                        this.h.getTextBounds(a2, 0, a2.length(), rect);
                        i5 = Math.max(i5, rect.width());
                    }
                    int i6 = i5;
                    if (i5 == 0) {
                        i6 = 1;
                    }
                    i3 = i6 + (this.j.f33536c * 2) + i + this.j.f33535b;
                    this.k = i3;
                }
            }
            float f2 = i3;
            float f3 = (this.f33532c - this.j.f) - f2;
            float f4 = BitmapDescriptorFactory.HUE_RED;
            float f5 = f3;
            if (f3 < BitmapDescriptorFactory.HUE_RED) {
                f5 = BitmapDescriptorFactory.HUE_RED;
            }
            float size = ((this.j.f33534a + this.j.f33535b) * (this.f.size() + 1)) - this.j.f33535b;
            float f6 = (this.f33533d - size) - (this.j.f33534a * 4.5f);
            if (f6 >= BitmapDescriptorFactory.HUE_RED) {
                f4 = f6;
            }
            float f7 = this.j.f33536c * 2;
            this.g.setColor(this.j.e);
            canvas.drawRoundRect(new RectF(f5, f4, f2 + f5, size + f4 + f7), 8.0f, 8.0f, this.g);
            this.h.setFakeBoldText(true);
            canvas.drawText(this.f33531b.f33522b.f33563c.a(this.i, true), this.j.f33536c + f5, (this.j.f33536c / 2) + f4 + this.j.f33534a, this.h);
            this.h.setFakeBoldText(false);
            int i7 = 1;
            for (Map.Entry<b, d> entry3 : this.f.entrySet()) {
                this.g.setColor(entry3.getKey().f33540c);
                float f8 = i7;
                float f9 = i;
                canvas.drawRect(new RectF(this.j.f33536c + f5, this.j.f33536c + f4 + ((this.j.f33534a + this.j.f33535b) * f8), this.j.f33536c + f5 + f9, this.j.f33536c + f4 + ((this.j.f33534a + this.j.f33535b) * f8) + f9), this.g);
                canvas.drawText(a(entry3.getKey(), entry3.getValue()), this.j.f33536c + f5 + f9 + this.j.f33535b, (this.j.f33536c / 2) + f4 + this.j.f33534a + (f8 * (this.j.f33534a + this.j.f33535b)), this.h);
                i7++;
            }
        }
    }

    public final void a(MotionEvent motionEvent) {
        float max = Math.max(motionEvent.getX(), this.f33531b.a());
        this.f33532c = max;
        this.f33532c = Math.min(max, this.f33531b.a() + this.f33531b.d());
        this.f33533d = motionEvent.getY();
        this.e = true;
        b();
        this.f33531b.invalidate();
    }

    public final boolean a() {
        this.e = false;
        b();
        this.f33531b.invalidate();
        return true;
    }

    public final void b(MotionEvent motionEvent) {
        if (this.e) {
            float max = Math.max(motionEvent.getX(), this.f33531b.a());
            this.f33532c = max;
            this.f33532c = Math.min(max, this.f33531b.a() + this.f33531b.d());
            this.f33533d = motionEvent.getY();
            b();
            this.f33531b.invalidate();
        }
    }
}
