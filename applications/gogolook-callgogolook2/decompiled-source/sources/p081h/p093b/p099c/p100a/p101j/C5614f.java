package p081h.p093b.p099c.p100a.p101j;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import p081h.p093b.p099c.p100a.C5607h;
/* renamed from: h.b.c.a.j.f */
/* loaded from: classes-dex2jar.jar:h/b/c/a/j/f.class */
public class C5614f extends C5612d implements AbstractC5610b {

    /* renamed from: e */
    public final C5613e f14034e;

    public C5614f(Drawable drawable, C5607h hVar) {
        super(drawable);
        this.f14034e = new C5613e(hVar);
    }

    @Override // p081h.p093b.p099c.p100a.p101j.C5612d, p081h.p093b.p099c.p100a.p101j.AbstractC5610b
    /* renamed from: a */
    public Rect mo25012a() {
        return super.mo25012a();
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    /* renamed from: a */
    public void mo25011a(String str) {
        this.f14034e.mo25011a(str);
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    /* renamed from: b */
    public long mo25010b() {
        return this.f14034e.mo25010b();
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    /* renamed from: c */
    public String mo25009c() {
        return this.f14034e.mo25009c();
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    /* renamed from: d */
    public C5607h mo25008d() {
        return this.f14034e.mo25008d();
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5610b
    public void draw(Canvas canvas) {
        this.f14022a.draw(canvas);
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    /* renamed from: e */
    public Long mo25007e() {
        return this.f14034e.mo25007e();
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    /* renamed from: f */
    public CharSequence mo25006f() {
        return this.f14034e.mo25006f();
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    /* renamed from: g */
    public long mo25005g() {
        return this.f14034e.mo25005g();
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    public CharSequence getValue() {
        return this.f14034e.getValue();
    }

    @Override // p081h.p093b.p099c.p100a.p101j.AbstractC5609a
    public boolean isSelected() {
        return this.f14034e.isSelected();
    }

    public String toString() {
        return this.f14034e.toString();
    }
}
