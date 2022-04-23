package p081h.p093b.p099c.p100a.p101j;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.style.ReplacementSpan;
import p081h.p093b.p099c.p100a.C5607h;
/* renamed from: h.b.c.a.j.c */
/* loaded from: classes-dex2jar.jar:h/b/c/a/j/c.class */
public class C5611c extends ReplacementSpan implements AbstractC5610b {

    /* renamed from: a */
    public final C5613e f14020a;

    public C5611c(C5607h hVar) {
        this.f14020a = new C5613e(hVar);
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5610b
    /* renamed from: a */
    public Rect mo25012a() {
        return new Rect(0, 0, 0, 0);
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    /* renamed from: a */
    public void mo25011a(String str) {
        this.f14020a.mo25011a(str);
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    /* renamed from: b */
    public long mo25010b() {
        return this.f14020a.mo25010b();
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    /* renamed from: c */
    public String mo25009c() {
        return this.f14020a.mo25009c();
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    /* renamed from: d */
    public C5607h mo25008d() {
        return this.f14020a.mo25008d();
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5610b
    public void draw(Canvas canvas) {
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    /* renamed from: e */
    public Long mo25007e() {
        return this.f14020a.mo25007e();
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    /* renamed from: f */
    public CharSequence mo25006f() {
        return this.f14020a.mo25006f();
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    /* renamed from: g */
    public long mo25005g() {
        return this.f14020a.mo25005g();
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        return 0;
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    public CharSequence getValue() {
        return this.f14020a.getValue();
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    public boolean isSelected() {
        return this.f14020a.isSelected();
    }
}
