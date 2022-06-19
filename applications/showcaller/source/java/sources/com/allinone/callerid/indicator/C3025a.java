package com.allinone.callerid.indicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;
import p078c.p133f.p134a.AbstractC2084a;
import p078c.p133f.p134a.C2096i;
/* renamed from: com.allinone.callerid.indicator.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/indicator/a.class */
public class C3025a extends BaseIndicatorController {

    /* renamed from: c */
    float f9871c;

    /* renamed from: d */
    float f9872d;

    /* renamed from: e */
    float f9873e;

    /* renamed from: com.allinone.callerid.indicator.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/indicator/a$a.class */
    class C3026a implements C2096i.AbstractC2103g {
        C3026a() {
            C3025a.this = r4;
        }

        @Override // p078c.p133f.p134a.C2096i.AbstractC2103g
        /* renamed from: a */
        public void mo26208a(C2096i c2096i) {
            C3025a.this.f9871c = ((Float) c2096i.m28047A()).floatValue();
            C3025a.this.m26213g();
        }
    }

    /* renamed from: com.allinone.callerid.indicator.a$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/indicator/a$b.class */
    class C3027b implements C2096i.AbstractC2103g {
        C3027b() {
            C3025a.this = r4;
        }

        @Override // p078c.p133f.p134a.C2096i.AbstractC2103g
        /* renamed from: a */
        public void mo26208a(C2096i c2096i) {
            C3025a.this.f9872d = ((Float) c2096i.m28047A()).floatValue();
            C3025a.this.m26213g();
        }
    }

    /* renamed from: com.allinone.callerid.indicator.a$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/indicator/a$c.class */
    class C3028c implements C2096i.AbstractC2103g {
        C3028c() {
            C3025a.this = r4;
        }

        @Override // p078c.p133f.p134a.C2096i.AbstractC2103g
        /* renamed from: a */
        public void mo26208a(C2096i c2096i) {
            C3025a.this.f9873e = ((Float) c2096i.m28047A()).floatValue();
            C3025a.this.m26213g();
        }
    }

    @Override // com.allinone.callerid.indicator.BaseIndicatorController
    /* renamed from: a */
    public List<AbstractC2084a> mo26210a() {
        C2096i m28044D = C2096i.m28044D(1.0f, 0.3f, 1.0f);
        m28044D.m28042F(1000L);
        m28044D.m28040H(-1);
        m28044D.m28021s(new C3026a());
        m28044D.mo28033d();
        C2096i m28044D2 = C2096i.m28044D(1.0f, 0.6f, 1.0f);
        m28044D2.m28042F(1000L);
        m28044D2.m28040H(-1);
        m28044D2.m28021s(new C3027b());
        m28044D2.mo28033d();
        C2096i m28044D3 = C2096i.m28044D(0.0f, 180.0f, 360.0f);
        m28044D3.m28042F(1000L);
        m28044D3.m28040H(-1);
        m28044D3.m28021s(new C3028c());
        m28044D3.mo28033d();
        ArrayList arrayList = new ArrayList();
        arrayList.add(m28044D);
        arrayList.add(m28044D2);
        arrayList.add(m28044D3);
        return arrayList;
    }

    @Override // com.allinone.callerid.indicator.BaseIndicatorController
    /* renamed from: b */
    public void mo26209b(Canvas canvas, Paint paint) {
        float m26215e = m26215e() / 2;
        float m26217c = m26217c() / 2;
        canvas.save();
        canvas.translate(m26215e, m26217c);
        float f = this.f9871c;
        canvas.scale(f, f);
        paint.setStyle(Paint.Style.FILL);
        canvas.drawCircle(0.0f, 0.0f, m26215e / 2.5f, paint);
        canvas.restore();
        canvas.translate(m26215e, m26217c);
        float f2 = this.f9872d;
        canvas.scale(f2, f2);
        canvas.rotate(this.f9873e);
        paint.setStrokeWidth(3.0f);
        paint.setStyle(Paint.Style.STROKE);
        for (int i = 0; i < 2; i++) {
            canvas.drawArc(new RectF((-m26215e) + 12.0f, (-m26217c) + 12.0f, m26215e - 12.0f, m26217c - 12.0f), new float[]{225.0f, 45.0f}[i], 90.0f, false, paint);
        }
    }
}
