package p000;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
/* renamed from: bc0$b */
/* loaded from: classes-dex2jar.jar:bc0$b.class */
public class bc0$b extends Drawable.ConstantState {

    /* renamed from: a */
    public int f1895a;

    /* renamed from: b */
    public bc0$a[] f1896b;

    /* renamed from: c */
    public int[] f1897c;

    /* renamed from: d */
    public int f1898d;

    /* renamed from: e */
    public int f1899e;

    /* renamed from: f */
    public int f1900f;

    /* renamed from: g */
    public int f1901g;

    /* renamed from: h */
    public int f1902h;

    /* renamed from: i */
    public int f1903i;

    /* renamed from: j */
    public int f1904j;

    /* renamed from: k */
    public int f1905k;

    /* renamed from: l */
    public int f1906l;

    /* renamed from: m */
    public boolean f1907m;

    /* renamed from: n */
    public int f1908n;

    /* renamed from: o */
    public boolean f1909o;

    /* renamed from: p */
    public boolean f1910p;

    /* renamed from: q */
    public boolean f1911q;

    /* renamed from: r */
    public int f1912r;

    public bc0$b(bc0$b bc0_b, bc0 bc0Var, Resources resources) {
        this.f1898d = -1;
        this.f1899e = -1;
        this.f1900f = -1;
        this.f1901g = -1;
        this.f1902h = -1;
        this.f1903i = -1;
        this.f1904j = 0;
        this.f1911q = false;
        this.f1912r = 0;
        if (bc0_b == null) {
            this.f1895a = 0;
            this.f1896b = null;
            return;
        }
        bc0$a[] bc0_aArr = bc0_b.f1896b;
        int i = bc0_b.f1895a;
        this.f1895a = i;
        this.f1896b = new bc0$a[i];
        this.f1905k = bc0_b.f1905k;
        this.f1906l = bc0_b.f1906l;
        for (int i2 = 0; i2 < i; i2++) {
            this.f1896b[i2] = new bc0$a(bc0_aArr[i2], bc0Var, resources);
        }
        this.f1907m = bc0_b.f1907m;
        this.f1908n = bc0_b.f1908n;
        this.f1909o = bc0_b.f1909o;
        this.f1910p = bc0_b.f1910p;
        this.f1911q = bc0_b.f1911q;
        this.f1912r = bc0_b.f1912r;
        this.f1897c = bc0_b.f1897c;
        this.f1898d = bc0_b.f1898d;
        this.f1899e = bc0_b.f1899e;
        this.f1900f = bc0_b.f1900f;
        this.f1901g = bc0_b.f1901g;
        this.f1902h = bc0_b.f1902h;
        this.f1903i = bc0_b.f1903i;
        this.f1904j = bc0_b.f1904j;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public boolean canApplyTheme() {
        if (this.f1897c != null || super.canApplyTheme()) {
            return true;
        }
        bc0$a[] bc0_aArr = this.f1896b;
        int i = this.f1895a;
        for (int i2 = 0; i2 < i; i2++) {
            if (bc0_aArr[i2].m5683a()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    public void m5678e() {
        this.f1907m = false;
        this.f1909o = false;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return this.f1905k | this.f1906l;
    }
}
