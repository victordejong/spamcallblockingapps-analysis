package p081h.p093b.p099c.p103c.p109k;

import android.widget.ProgressBar;
/* renamed from: h.b.c.c.k.a */
/* loaded from: classes-dex2jar.jar:h/b/c/c/k/a.class */
public class C5662a {

    /* renamed from: a */
    public final ProgressBar f14170a;

    /* renamed from: b */
    public final ProgressBar f14171b;

    /* renamed from: c */
    public boolean f14172c;

    public C5662a(ProgressBar progressBar, ProgressBar progressBar2, boolean z) {
        this.f14170a = progressBar;
        this.f14171b = progressBar2;
        m24857a(z);
    }

    /* renamed from: a */
    public void m24858a(int i) {
        if (i == 4 || i == 8) {
            this.f14171b.setVisibility(i);
            this.f14170a.setVisibility(i);
            return;
        }
        m24856b(this.f14172c);
    }

    /* renamed from: a */
    public void m24857a(boolean z) {
        this.f14172c = z;
        m24856b(this.f14172c);
    }

    /* renamed from: b */
    public final void m24856b(boolean z) {
        int i = 0;
        this.f14171b.setVisibility(z ? 0 : 8);
        ProgressBar progressBar = this.f14170a;
        if (z) {
            i = 8;
        }
        progressBar.setVisibility(i);
    }
}
