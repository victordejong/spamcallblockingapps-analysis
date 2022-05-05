package p459j.p460a.p474c0.p491g.p496e0.p497o;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import java.util.List;
/* renamed from: j.a.c0.g.e0.o.d */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/o/d.class */
public class C12069d {

    /* renamed from: a */
    public Drawable f27064a;

    /* renamed from: b */
    public float f27065b;

    /* renamed from: c */
    public float f27066c;

    /* renamed from: d */
    public float f27067d;

    /* renamed from: e */
    public float f27068e;

    /* renamed from: f */
    public int f27069f;

    /* renamed from: g */
    public int f27070g;

    /* renamed from: h */
    public boolean f27071h;

    /* renamed from: i */
    public boolean f27072i;

    /* renamed from: j */
    public List<C12069d> f27073j;

    /* renamed from: k */
    public Path f27074k;

    /* renamed from: l */
    public AbstractC12070a f27075l;

    /* renamed from: j.a.c0.g.e0.o.d$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/o/d$a.class */
    public interface AbstractC12070a {
        /* renamed from: a */
        void m7277a(C12069d dVar);
    }

    /* renamed from: a */
    public float m7296a() {
        return this.f27065b;
    }

    /* renamed from: a */
    public void m7295a(float f) {
        this.f27064a.setAlpha((int) (f * 255.0f));
    }

    /* renamed from: a */
    public void m7294a(float f, float f2, int i, int i2) {
        this.f27066c = f;
        this.f27067d = f2;
        this.f27069f = i;
        this.f27070g = i2;
    }

    /* renamed from: a */
    public void m7293a(int i, int i2, int i3, int i4) {
        this.f27064a.setBounds(i, i2, i3, i4);
    }

    /* renamed from: a */
    public void m7292a(Canvas canvas) {
        this.f27064a.draw(canvas);
    }

    /* renamed from: a */
    public void m7291a(Path path) {
        this.f27074k = path;
    }

    /* renamed from: a */
    public void m7290a(boolean z) {
        this.f27071h = z;
    }

    /* renamed from: b */
    public int m7289b() {
        return this.f27069f;
    }

    /* renamed from: c */
    public int m7288c() {
        return this.f27064a.getIntrinsicHeight();
    }

    /* renamed from: d */
    public int m7287d() {
        return this.f27064a.getIntrinsicWidth();
    }

    /* renamed from: e */
    public List<C12069d> m7286e() {
        return this.f27073j;
    }

    /* renamed from: f */
    public int m7285f() {
        return this.f27070g;
    }

    /* renamed from: g */
    public Path m7284g() {
        return this.f27074k;
    }

    /* renamed from: h */
    public float m7283h() {
        return this.f27066c + this.f27068e;
    }

    /* renamed from: i */
    public float m7282i() {
        return this.f27067d;
    }

    /* renamed from: j */
    public boolean m7281j() {
        return this.f27073j != null;
    }

    /* renamed from: k */
    public boolean m7280k() {
        return this.f27072i;
    }

    /* renamed from: l */
    public boolean m7279l() {
        return this.f27071h;
    }

    /* renamed from: m */
    public void m7278m() {
        AbstractC12070a aVar = this.f27075l;
        if (aVar != null) {
            aVar.m7277a(this);
        }
    }
}
