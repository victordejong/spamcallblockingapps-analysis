package p193e.p194a.p195a.p200c;

import androidx.recyclerview.widget.RecyclerView;
import s1.z.c.l;
/* renamed from: e.a.a.c.b5 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/b5.class */
public abstract class AbstractC5110b5 extends RecyclerView.AbstractC0338t {

    /* renamed from: a */
    public int f17484a;

    /* renamed from: b */
    public boolean f17485b;

    /* renamed from: c */
    public final int f17486c;

    public AbstractC5110b5(int i) {
        this.f17486c = i;
    }

    /* renamed from: d */
    public abstract int mo32393d();

    /* renamed from: e */
    public abstract void mo32392e();

    /* renamed from: f */
    public abstract void mo32391f();

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0338t
    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        int mo32393d;
        l.e(recyclerView, "recyclerView");
        if (i2 == 0 || (mo32393d = mo32393d()) == -1) {
            return;
        }
        if (mo32393d == 0) {
            if (this.f17485b) {
                mo32392e();
            }
            this.f17485b = false;
        } else if (i2 >= 0) {
        } else {
            int i3 = this.f17484a + i2;
            this.f17484a = i3;
            if (i3 >= (-this.f17486c)) {
                return;
            }
            this.f17484a = 0;
            if (!this.f17485b) {
                mo32391f();
            }
            this.f17485b = true;
        }
    }
}
