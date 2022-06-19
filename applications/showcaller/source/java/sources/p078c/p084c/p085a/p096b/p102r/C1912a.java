package p078c.p084c.p085a.p096b.p102r;

import android.content.Context;
import android.graphics.Color;
import p020b.p041h.p042e.C1522a;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.p099o.C1909a;
import p078c.p084c.p085a.p096b.p105u.C1918b;
/* renamed from: c.c.a.b.r.a */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/r/a.class */
public class C1912a {

    /* renamed from: a */
    private final boolean f6840a;

    /* renamed from: b */
    private final int f6841b;

    /* renamed from: c */
    private final int f6842c;

    /* renamed from: d */
    private final float f6843d;

    public C1912a(Context context) {
        this.f6840a = C1918b.m28689b(context, C1886b.elevationOverlayEnabled, false);
        this.f6841b = C1909a.m28717b(context, C1886b.elevationOverlayColor, 0);
        this.f6842c = C1909a.m28717b(context, C1886b.colorSurface, 0);
        this.f6843d = context.getResources().getDisplayMetrics().density;
    }

    /* renamed from: e */
    private boolean m28704e(int i) {
        return C1522a.m29848d(i, 255) == this.f6842c;
    }

    /* renamed from: a */
    public float m28708a(float f) {
        float f2 = this.f6843d;
        if (f2 <= 0.0f || f <= 0.0f) {
            return 0.0f;
        }
        return Math.min(((((float) Math.log1p(f / f2)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
    }

    /* renamed from: b */
    public int m28707b(int i, float f) {
        float m28708a = m28708a(f);
        return C1522a.m29848d(C1909a.m28712g(C1522a.m29848d(i, 255), this.f6841b, m28708a), Color.alpha(i));
    }

    /* renamed from: c */
    public int m28706c(int i, float f) {
        int i2 = i;
        if (this.f6840a) {
            i2 = i;
            if (m28704e(i)) {
                i2 = m28707b(i, f);
            }
        }
        return i2;
    }

    /* renamed from: d */
    public boolean m28705d() {
        return this.f6840a;
    }
}
