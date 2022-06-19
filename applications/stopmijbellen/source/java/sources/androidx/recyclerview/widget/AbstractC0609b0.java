package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.b0 */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/b0.class */
public abstract class AbstractC0609b0 extends RecyclerView.AbstractC0579o {

    /* renamed from: a */
    public RecyclerView f2396a;

    /* renamed from: b */
    public final RecyclerView.AbstractC0581q f2397b = new C0610a();

    /* renamed from: androidx.recyclerview.widget.b0$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/b0$a.class */
    public class C0610a extends RecyclerView.AbstractC0581q {

        /* renamed from: a */
        public boolean f2398a = false;

        public C0610a() {
            AbstractC0609b0.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0581q
        /* renamed from: a */
        public void mo4618a(RecyclerView recyclerView, int i) {
            if (i != 0 || !this.f2398a) {
                return;
            }
            this.f2398a = false;
            AbstractC0609b0.this.m7618b();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0581q
        /* renamed from: b */
        public void mo4617b(RecyclerView recyclerView, int i, int i2) {
            if (i == 0 && i2 == 0) {
                return;
            }
            this.f2398a = true;
        }
    }

    /* renamed from: a */
    public abstract int[] mo7535a(RecyclerView.AbstractC0573m abstractC0573m, View view);

    /* renamed from: b */
    public void m7618b() {
        RecyclerView.AbstractC0573m layoutManager;
        RecyclerView recyclerView = this.f2396a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null) {
            return;
        }
        C0648v c0648v = (C0648v) this;
        View m7533d = layoutManager.mo7704f() ? c0648v.m7533d(layoutManager, c0648v.m7531f(layoutManager)) : layoutManager.mo7707e() ? c0648v.m7533d(layoutManager, c0648v.m7532e(layoutManager)) : null;
        if (m7533d == null) {
            return;
        }
        int[] mo7535a = mo7535a(layoutManager, m7533d);
        if (mo7535a[0] == 0 && mo7535a[1] == 0) {
            return;
        }
        this.f2396a.m7879g0(mo7535a[0], mo7535a[1], null, Integer.MIN_VALUE, false);
    }
}
