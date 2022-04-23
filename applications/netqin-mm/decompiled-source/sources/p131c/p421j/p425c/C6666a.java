package p131c.p421j.p425c;

import android.content.Context;
import android.graphics.Rect;
import com.mopub.common.util.Dips;
/* renamed from: c.j.c.a */
/* loaded from: classes2-dex2jar.jar:c/j/c/a.class */
public class C6666a {

    /* renamed from: a */
    public final Context f20568a;

    /* renamed from: b */
    public final Rect f20569b = new Rect();

    /* renamed from: c */
    public final Rect f20570c = new Rect();

    /* renamed from: d */
    public final Rect f20571d = new Rect();

    /* renamed from: e */
    public final Rect f20572e = new Rect();

    /* renamed from: f */
    public final Rect f20573f = new Rect();

    /* renamed from: g */
    public final Rect f20574g = new Rect();

    /* renamed from: h */
    public final Rect f20575h = new Rect();

    /* renamed from: i */
    public final Rect f20576i = new Rect();

    /* renamed from: j */
    public final float f20577j;

    public C6666a(Context context, float f) {
        this.f20568a = context.getApplicationContext();
        this.f20577j = f;
    }

    /* renamed from: a */
    public Rect m20119a() {
        return this.f20574g;
    }

    /* renamed from: a */
    public void m20118a(int i, int i2) {
        this.f20569b.set(0, 0, i, i2);
        m20116a(this.f20569b, this.f20570c);
    }

    /* renamed from: a */
    public void m20117a(int i, int i2, int i3, int i4) {
        this.f20573f.set(i, i2, i3 + i, i4 + i2);
        m20116a(this.f20573f, this.f20574g);
    }

    /* renamed from: a */
    public final void m20116a(Rect rect, Rect rect2) {
        rect2.set(Dips.pixelsToIntDips(rect.left, this.f20568a), Dips.pixelsToIntDips(rect.top, this.f20568a), Dips.pixelsToIntDips(rect.right, this.f20568a), Dips.pixelsToIntDips(rect.bottom, this.f20568a));
    }

    /* renamed from: b */
    public Rect m20115b() {
        return this.f20575h;
    }

    /* renamed from: b */
    public void m20114b(int i, int i2, int i3, int i4) {
        this.f20575h.set(i, i2, i3 + i, i4 + i2);
        m20116a(this.f20575h, this.f20576i);
    }

    /* renamed from: c */
    public Rect m20113c() {
        return this.f20576i;
    }

    /* renamed from: c */
    public void m20112c(int i, int i2, int i3, int i4) {
        this.f20571d.set(i, i2, i3 + i, i4 + i2);
        m20116a(this.f20571d, this.f20572e);
    }

    /* renamed from: d */
    public Rect m20111d() {
        return this.f20571d;
    }

    /* renamed from: e */
    public Rect m20110e() {
        return this.f20572e;
    }

    /* renamed from: f */
    public Rect m20109f() {
        return this.f20570c;
    }

    public float getDensity() {
        return this.f20577j;
    }
}
