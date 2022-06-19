package p000;

import android.content.Context;
import android.graphics.Rect;
import com.mopub.common.util.Dips;
/* renamed from: th1 */
/* loaded from: classes3-dex2jar.jar:th1.class */
public class th1 {

    /* renamed from: a */
    public final Context f8238a;

    /* renamed from: b */
    public final Rect f8239b = new Rect();

    /* renamed from: c */
    public final Rect f8240c = new Rect();

    /* renamed from: d */
    public final Rect f8241d = new Rect();

    /* renamed from: e */
    public final Rect f8242e = new Rect();

    /* renamed from: f */
    public final Rect f8243f = new Rect();

    /* renamed from: g */
    public final Rect f8244g = new Rect();

    /* renamed from: h */
    public final Rect f8245h = new Rect();

    /* renamed from: i */
    public final Rect f8246i = new Rect();

    /* renamed from: j */
    public final float f8247j;

    public th1(Context context, float f) {
        this.f8238a = context.getApplicationContext();
        this.f8247j = f;
    }

    /* renamed from: a */
    public final void m498a(Rect rect, Rect rect2) {
        rect2.set(Dips.pixelsToIntDips(rect.left, this.f8238a), Dips.pixelsToIntDips(rect.top, this.f8238a), Dips.pixelsToIntDips(rect.right, this.f8238a), Dips.pixelsToIntDips(rect.bottom, this.f8238a));
    }

    /* renamed from: b */
    public Rect m497b() {
        return this.f8244g;
    }

    /* renamed from: c */
    public Rect m496c() {
        return this.f8245h;
    }

    /* renamed from: d */
    public Rect m495d() {
        return this.f8246i;
    }

    /* renamed from: e */
    public Rect m494e() {
        return this.f8241d;
    }

    /* renamed from: f */
    public Rect m493f() {
        return this.f8242e;
    }

    /* renamed from: g */
    public Rect m492g() {
        return this.f8240c;
    }

    public float getDensity() {
        return this.f8247j;
    }

    /* renamed from: h */
    public void m491h(int i, int i2, int i3, int i4) {
        this.f8243f.set(i, i2, i3 + i, i4 + i2);
        m498a(this.f8243f, this.f8244g);
    }

    /* renamed from: i */
    public void m490i(int i, int i2, int i3, int i4) {
        this.f8245h.set(i, i2, i3 + i, i4 + i2);
        m498a(this.f8245h, this.f8246i);
    }

    /* renamed from: j */
    public void m489j(int i, int i2, int i3, int i4) {
        this.f8241d.set(i, i2, i3 + i, i4 + i2);
        m498a(this.f8241d, this.f8242e);
    }

    /* renamed from: k */
    public void m488k(int i, int i2) {
        this.f8239b.set(0, 0, i, i2);
        m498a(this.f8239b, this.f8240c);
    }
}
