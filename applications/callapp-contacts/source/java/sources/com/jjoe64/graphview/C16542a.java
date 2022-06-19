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
import com.jjoe64.graphview.p455a.AbstractC16546b;
import com.jjoe64.graphview.p455a.AbstractC16549d;
import com.jjoe64.graphview.p455a.AbstractC16559h;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.jjoe64.graphview.a */
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/a.class */
public final class C16542a {

    /* renamed from: a */
    protected final Paint f58166a;

    /* renamed from: b */
    protected final GraphView f58167b;

    /* renamed from: c */
    protected float f58168c;

    /* renamed from: d */
    protected float f58169d;

    /* renamed from: e */
    protected boolean f58170e;

    /* renamed from: i */
    protected double f58174i;

    /* renamed from: k */
    protected int f58176k;

    /* renamed from: j */
    protected C16544a f58175j = new C16544a();

    /* renamed from: f */
    protected final Map<AbstractC16546b, AbstractC16549d> f58171f = new HashMap();

    /* renamed from: g */
    protected final Paint f58172g = new Paint();

    /* renamed from: h */
    protected final Paint f58173h = new Paint();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.jjoe64.graphview.a$a */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/a$a.class */
    public static final class C16544a {

        /* renamed from: a */
        public float f58177a;

        /* renamed from: b */
        public int f58178b;

        /* renamed from: c */
        public int f58179c;

        /* renamed from: d */
        public int f58180d;

        /* renamed from: e */
        public int f58181e;

        /* renamed from: f */
        public int f58182f;

        /* renamed from: g */
        public int f58183g;

        private C16544a() {
        }
    }

    public C16542a(GraphView graphView) {
        int i;
        this.f58167b = graphView;
        Paint paint = new Paint();
        this.f58166a = paint;
        paint.setColor(Color.argb(128, 180, 180, 180));
        paint.setStrokeWidth(10.0f);
        this.f58175j.f58177a = graphView.f58150b.m7022a();
        C16544a c16544a = this.f58175j;
        c16544a.f58178b = (int) (c16544a.f58177a / 5.0f);
        C16544a c16544a2 = this.f58175j;
        c16544a2.f58179c = (int) (c16544a2.f58177a / 2.0f);
        this.f58175j.f58180d = 0;
        this.f58175j.f58181e = Color.argb(180, 100, 100, 100);
        C16544a c16544a3 = this.f58175j;
        c16544a3.f58182f = (int) c16544a3.f58177a;
        TypedValue typedValue = new TypedValue();
        graphView.getContext().getTheme().resolveAttribute(16842818, typedValue, true);
        try {
            TypedArray obtainStyledAttributes = graphView.getContext().obtainStyledAttributes(typedValue.data, new int[]{16842806});
            i = obtainStyledAttributes.getColor(0, -16777216);
            obtainStyledAttributes.recycle();
        } catch (Exception e) {
            i = -16777216;
        }
        this.f58175j.f58183g = i;
        this.f58176k = 0;
    }

    /* renamed from: a */
    private String m7048a(AbstractC16559h abstractC16559h, AbstractC16549d abstractC16549d) {
        StringBuffer stringBuffer = new StringBuffer();
        if (abstractC16559h.mo7025f() != null) {
            stringBuffer.append(abstractC16559h.mo7025f());
            stringBuffer.append(": ");
        }
        stringBuffer.append(this.f58167b.f58150b.f58249c.mo6982a(abstractC16549d.mo7039b(), false));
        return stringBuffer.toString();
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [double] */
    /* renamed from: b */
    private void m7047b() {
        AbstractC16546b abstractC16546b;
        AbstractC16549d m7044a;
        this.f58171f.clear();
        char c = 0;
        for (AbstractC16559h abstractC16559h : this.f58167b.f58149a) {
            if ((abstractC16559h instanceof AbstractC16546b) && (m7044a = (abstractC16546b = (AbstractC16546b) abstractC16559h).m7044a(this.f58168c)) != null) {
                c = m7044a.mo7040a();
                this.f58171f.put(abstractC16546b, m7044a);
            }
        }
        if (!this.f58171f.isEmpty()) {
            this.f58174i = c;
        }
    }

    /* renamed from: a */
    public final void m7050a(Canvas canvas) {
        int i;
        if (this.f58170e) {
            float f = this.f58168c;
            canvas.drawLine(f, BitmapDescriptorFactory.HUE_RED, f, canvas.getHeight(), this.f58166a);
        }
        for (Map.Entry<AbstractC16546b, AbstractC16549d> entry : this.f58171f.entrySet()) {
            entry.getKey().mo7035a(this.f58167b, canvas, entry.getValue());
        }
        if (!this.f58171f.isEmpty()) {
            this.f58173h.setTextSize(this.f58175j.f58177a);
            this.f58173h.setColor(this.f58175j.f58183g);
            int i2 = (int) (this.f58175j.f58177a * 0.8d);
            int i3 = this.f58175j.f58180d;
            int i4 = i3;
            if (i3 == 0) {
                int i5 = this.f58176k;
                i4 = i5;
                if (i5 == 0) {
                    Rect rect = new Rect();
                    Iterator<Map.Entry<AbstractC16546b, AbstractC16549d>> it2 = this.f58171f.entrySet().iterator();
                    int i6 = i5;
                    while (true) {
                        i = i6;
                        if (!it2.hasNext()) {
                            break;
                        }
                        Map.Entry<AbstractC16546b, AbstractC16549d> next = it2.next();
                        String m7048a = m7048a(next.getKey(), next.getValue());
                        this.f58173h.getTextBounds(m7048a, 0, m7048a.length(), rect);
                        i6 = Math.max(i, rect.width());
                    }
                    int i7 = i;
                    if (i == 0) {
                        i7 = 1;
                    }
                    i4 = i7 + (this.f58175j.f58179c * 2) + i2 + this.f58175j.f58178b;
                    this.f58176k = i4;
                }
            }
            float f2 = i4;
            float f3 = (this.f58168c - this.f58175j.f58182f) - f2;
            float f4 = 0.0f;
            float f5 = f3;
            if (f3 < BitmapDescriptorFactory.HUE_RED) {
                f5 = 0.0f;
            }
            float size = ((this.f58175j.f58177a + this.f58175j.f58178b) * (this.f58171f.size() + 1)) - this.f58175j.f58178b;
            float f6 = (this.f58169d - size) - (this.f58175j.f58177a * 4.5f);
            if (f6 >= BitmapDescriptorFactory.HUE_RED) {
                f4 = f6;
            }
            float f7 = this.f58175j.f58179c * 2;
            this.f58172g.setColor(this.f58175j.f58181e);
            canvas.drawRoundRect(new RectF(f5, f4, f2 + f5, size + f4 + f7), 8.0f, 8.0f, this.f58172g);
            this.f58173h.setFakeBoldText(true);
            canvas.drawText(this.f58167b.f58150b.f58249c.mo6982a(this.f58174i, true), this.f58175j.f58179c + f5, (this.f58175j.f58179c / 2) + f4 + this.f58175j.f58177a, this.f58173h);
            this.f58173h.setFakeBoldText(false);
            int i8 = 1;
            for (Map.Entry<AbstractC16546b, AbstractC16549d> entry2 : this.f58171f.entrySet()) {
                this.f58172g.setColor(entry2.getKey().f58200c);
                float f8 = i8;
                float f9 = i2;
                canvas.drawRect(new RectF(this.f58175j.f58179c + f5, this.f58175j.f58179c + f4 + ((this.f58175j.f58177a + this.f58175j.f58178b) * f8), this.f58175j.f58179c + f5 + f9, this.f58175j.f58179c + f4 + ((this.f58175j.f58177a + this.f58175j.f58178b) * f8) + f9), this.f58172g);
                canvas.drawText(m7048a(entry2.getKey(), entry2.getValue()), this.f58175j.f58179c + f5 + f9 + this.f58175j.f58178b, (this.f58175j.f58179c / 2) + f4 + this.f58175j.f58177a + (f8 * (this.f58175j.f58177a + this.f58175j.f58178b)), this.f58173h);
                i8++;
            }
        }
    }

    /* renamed from: a */
    public final void m7049a(MotionEvent motionEvent) {
        float max = Math.max(motionEvent.getX(), this.f58167b.m7063a());
        this.f58168c = max;
        this.f58168c = Math.min(max, this.f58167b.m7063a() + this.f58167b.m7057d());
        this.f58169d = motionEvent.getY();
        this.f58170e = true;
        m7047b();
        this.f58167b.invalidate();
    }

    /* renamed from: a */
    public final boolean m7051a() {
        this.f58170e = false;
        m7047b();
        this.f58167b.invalidate();
        return true;
    }

    /* renamed from: b */
    public final void m7046b(MotionEvent motionEvent) {
        if (this.f58170e) {
            float max = Math.max(motionEvent.getX(), this.f58167b.m7063a());
            this.f58168c = max;
            this.f58168c = Math.min(max, this.f58167b.m7063a() + this.f58167b.m7057d());
            this.f58169d = motionEvent.getY();
            m7047b();
            this.f58167b.invalidate();
        }
    }
}
