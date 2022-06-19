package p000;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
/* renamed from: bc0$a */
/* loaded from: classes-dex2jar.jar:bc0$a.class */
public class bc0$a {

    /* renamed from: a */
    public Drawable f1883a;

    /* renamed from: b */
    public int[] f1884b;

    /* renamed from: c */
    public int f1885c;

    /* renamed from: d */
    public int f1886d;

    /* renamed from: e */
    public int f1887e;

    /* renamed from: f */
    public int f1888f;

    /* renamed from: g */
    public int f1889g;

    /* renamed from: h */
    public int f1890h;

    /* renamed from: i */
    public int f1891i;

    /* renamed from: j */
    public int f1892j;

    /* renamed from: k */
    public int f1893k;

    /* renamed from: l */
    public int f1894l;

    public bc0$a() {
        this.f1889g = Integer.MIN_VALUE;
        this.f1890h = Integer.MIN_VALUE;
        this.f1891i = -1;
        this.f1892j = -1;
        this.f1893k = 0;
        this.f1894l = -1;
    }

    public bc0$a(bc0$a bc0_a, bc0 bc0Var, Resources resources) {
        Drawable drawable;
        this.f1889g = Integer.MIN_VALUE;
        this.f1890h = Integer.MIN_VALUE;
        this.f1891i = -1;
        this.f1892j = -1;
        this.f1893k = 0;
        this.f1894l = -1;
        Drawable drawable2 = bc0_a.f1883a;
        if (drawable2 != null) {
            Drawable.ConstantState constantState = drawable2.getConstantState();
            drawable = resources != null ? constantState.newDrawable(resources) : constantState.newDrawable();
            drawable.setCallback(bc0Var);
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(drawable2.getLayoutDirection());
            }
            drawable.setBounds(drawable2.getBounds());
            drawable.setLevel(drawable2.getLevel());
        } else {
            drawable = null;
        }
        this.f1883a = drawable;
        this.f1884b = bc0_a.f1884b;
        this.f1885c = bc0_a.f1885c;
        this.f1886d = bc0_a.f1886d;
        this.f1887e = bc0_a.f1887e;
        this.f1888f = bc0_a.f1888f;
        this.f1889g = bc0_a.f1889g;
        this.f1890h = bc0_a.f1890h;
        this.f1891i = bc0_a.f1891i;
        this.f1892j = bc0_a.f1892j;
        this.f1893k = bc0_a.f1893k;
        this.f1894l = bc0_a.f1894l;
    }

    /* renamed from: a */
    public boolean m5683a() {
        Drawable drawable;
        return this.f1884b != null || ((drawable = this.f1883a) != null && dc0.m2703b(drawable));
    }
}
