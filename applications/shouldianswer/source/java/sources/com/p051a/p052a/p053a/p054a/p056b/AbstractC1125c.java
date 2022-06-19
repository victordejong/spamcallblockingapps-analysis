package com.p051a.p052a.p053a.p054a.p056b;

import android.util.Log;
import androidx.core.p023g.C0552u;
import androidx.recyclerview.widget.RecyclerView;
import com.p051a.p052a.p053a.p054a.p056b.p057a.AbstractC1117d;
import com.p051a.p052a.p053a.p054a.p056b.p057a.AbstractC1119f;
import com.p051a.p052a.p053a.p054a.p056b.p057a.AbstractC1120g;
import com.p051a.p052a.p053a.p054a.p056b.p057a.AbstractC1121h;
/* renamed from: com.a.a.a.a.b.c */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/b/c.class */
public abstract class AbstractC1125c extends AbstractC1110a {

    /* renamed from: a */
    private boolean f3526a;

    /* renamed from: b */
    private AbstractC1121h f3527b;

    /* renamed from: c */
    private AbstractC1117d f3528c;

    /* renamed from: d */
    private AbstractC1119f f3529d;

    /* renamed from: e */
    private AbstractC1120g f3530e;

    public AbstractC1125c() {
        m4163p();
    }

    /* renamed from: p */
    private void m4163p() {
        mo4160l();
        if (this.f3527b == null || this.f3528c == null || this.f3529d == null || this.f3530e == null) {
            throw new IllegalStateException("setup incomplete");
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0950f
    /* renamed from: a */
    public void mo4179a() {
        if (!m4165m()) {
            return;
        }
        mo4159n();
    }

    /* renamed from: a */
    public void m4175a(AbstractC1117d abstractC1117d) {
        this.f3528c = abstractC1117d;
    }

    /* renamed from: a */
    public void m4174a(AbstractC1119f abstractC1119f) {
        this.f3529d = abstractC1119f;
    }

    /* renamed from: a */
    public void m4173a(AbstractC1120g abstractC1120g) {
        this.f3530e = abstractC1120g;
    }

    /* renamed from: a */
    public void m4172a(AbstractC1121h abstractC1121h) {
        this.f3527b = abstractC1121h;
    }

    @Override // androidx.recyclerview.widget.AbstractC1020l
    /* renamed from: a */
    public boolean mo4178a(RecyclerView.AbstractC0977w abstractC0977w) {
        if (this.f3526a) {
            Log.d("ARVGeneralItemAnimator", "animateRemove(id = " + abstractC0977w.getItemId() + ", position = " + abstractC0977w.getLayoutPosition() + ")");
        }
        return this.f3527b.mo4142a(abstractC0977w);
    }

    @Override // androidx.recyclerview.widget.AbstractC1020l
    /* renamed from: a */
    public boolean mo4177a(RecyclerView.AbstractC0977w abstractC0977w, int i, int i2, int i3, int i4) {
        if (this.f3526a) {
            Log.d("ARVGeneralItemAnimator", "animateMove(id = " + abstractC0977w.getItemId() + ", position = " + abstractC0977w.getLayoutPosition() + ", fromX = " + i + ", fromY = " + i2 + ", toX = " + i3 + ", toY = " + i4 + ")");
        }
        return this.f3530e.mo4147a(abstractC0977w, i, i2, i3, i4);
    }

    @Override // androidx.recyclerview.widget.AbstractC1020l
    /* renamed from: a */
    public boolean mo4176a(RecyclerView.AbstractC0977w abstractC0977w, RecyclerView.AbstractC0977w abstractC0977w2, int i, int i2, int i3, int i4) {
        if (abstractC0977w == abstractC0977w2) {
            return this.f3530e.mo4147a(abstractC0977w, i, i2, i3, i4);
        }
        if (this.f3526a) {
            String str = "-";
            String l = abstractC0977w != null ? Long.toString(abstractC0977w.getItemId()) : "-";
            String l2 = abstractC0977w != null ? Long.toString(abstractC0977w.getLayoutPosition()) : "-";
            String l3 = abstractC0977w2 != null ? Long.toString(abstractC0977w2.getItemId()) : "-";
            if (abstractC0977w2 != null) {
                str = Long.toString(abstractC0977w2.getLayoutPosition());
            }
            Log.d("ARVGeneralItemAnimator", "animateChange(old.id = " + l + ", old.position = " + l2 + ", new.id = " + l3 + ", new.position = " + str + ", fromX = " + i + ", fromY = " + i2 + ", toX = " + i3 + ", toY = " + i4 + ")");
        }
        return this.f3529d.mo4153a(abstractC0977w, abstractC0977w2, i, i2, i3, i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0950f
    /* renamed from: b */
    public boolean mo4171b() {
        return this.f3527b.m4211c() || this.f3528c.m4211c() || this.f3529d.m4211c() || this.f3530e.m4211c();
    }

    @Override // androidx.recyclerview.widget.AbstractC1020l
    /* renamed from: b */
    public boolean mo4170b(RecyclerView.AbstractC0977w abstractC0977w) {
        if (this.f3526a) {
            Log.d("ARVGeneralItemAnimator", "animateAdd(id = " + abstractC0977w.getItemId() + ", position = " + abstractC0977w.getLayoutPosition() + ")");
        }
        return this.f3528c.mo4158a(abstractC0977w);
    }

    @Override // com.p051a.p052a.p053a.p054a.p056b.AbstractC1110a
    /* renamed from: c */
    public boolean mo4169c() {
        if (this.f3526a && !mo4171b()) {
            Log.d("ARVGeneralItemAnimator", "dispatchFinishedWhenDone()");
        }
        return super.mo4169c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0950f
    /* renamed from: d */
    public void mo4168d() {
        this.f3530e.m4206e();
        this.f3527b.m4206e();
        this.f3528c.m4206e();
        this.f3529d.m4206e();
        if (!mo4171b()) {
            return;
        }
        this.f3530e.m4204f();
        this.f3528c.m4204f();
        this.f3529d.m4204f();
        this.f3527b.m4208d();
        this.f3530e.m4208d();
        this.f3528c.m4208d();
        this.f3529d.m4208d();
        m4929i();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0950f
    /* renamed from: d */
    public void mo4167d(RecyclerView.AbstractC0977w abstractC0977w) {
        m4162z(abstractC0977w);
        this.f3530e.m4210c(abstractC0977w);
        this.f3529d.m4210c(abstractC0977w);
        this.f3527b.m4210c(abstractC0977w);
        this.f3528c.m4210c(abstractC0977w);
        this.f3530e.m4207d(abstractC0977w);
        this.f3529d.m4207d(abstractC0977w);
        this.f3527b.m4207d(abstractC0977w);
        this.f3528c.m4207d(abstractC0977w);
        if (!this.f3527b.m4213b(abstractC0977w) || !this.f3526a) {
            if (this.f3528c.m4213b(abstractC0977w) && this.f3526a) {
                throw new IllegalStateException("after animation is cancelled, item should not be in the active animation list [add]");
            }
            if (this.f3529d.m4213b(abstractC0977w) && this.f3526a) {
                throw new IllegalStateException("after animation is cancelled, item should not be in the active animation list [change]");
            }
            if (this.f3530e.m4213b(abstractC0977w) && this.f3526a) {
                throw new IllegalStateException("after animation is cancelled, item should not be in the active animation list [move]");
            }
            mo4169c();
            return;
        }
        throw new IllegalStateException("after animation is cancelled, item should not be in the active animation list [remove]");
    }

    @Override // com.p051a.p052a.p053a.p054a.p056b.AbstractC1110a
    /* renamed from: k */
    public boolean mo4166k() {
        return this.f3526a;
    }

    /* renamed from: l */
    protected abstract void mo4160l();

    /* renamed from: m */
    protected boolean m4165m() {
        return this.f3527b.m4214b() || this.f3530e.m4214b() || this.f3529d.m4214b() || this.f3528c.m4214b();
    }

    /* renamed from: n */
    protected void mo4159n() {
        m4164o();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [com.a.a.a.a.b.a.d] */
    /* JADX WARN: Type inference failed for: r0v32, types: [com.a.a.a.a.b.a.f] */
    /* JADX WARN: Type inference failed for: r0v34, types: [com.a.a.a.a.b.a.g] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [long] */
    /* JADX WARN: Type inference failed for: r2v0, types: [long] */
    /* JADX WARN: Type inference failed for: r2v1, types: [long] */
    /* JADX WARN: Type inference failed for: r2v2, types: [long] */
    /* renamed from: o */
    public void m4164o() {
        boolean b = this.f3527b.m4214b();
        boolean b2 = this.f3530e.m4214b();
        boolean b3 = this.f3529d.m4214b();
        boolean b4 = this.f3528c.m4214b();
        ?? g = b ? m4932g() : (char) 0;
        ?? e = b2 ? m4936e() : false;
        ?? h = b3 ? m4930h() : false;
        boolean z = false;
        if (b) {
            this.f3527b.m4215a(false, 0L);
        }
        if (b2) {
            this.f3530e.m4215a(b, g);
        }
        if (b3) {
            this.f3529d.m4215a(b, g);
        }
        if (b4) {
            if (b || b2 || b3) {
                z = true;
            }
            ?? max = Math.max(e == true ? 1L : 0L, h == true ? 1L : 0L) + g;
            if (!z) {
                max = 0;
            }
            this.f3528c.m4215a(z, max);
        }
    }

    /* renamed from: z */
    protected void m4162z(RecyclerView.AbstractC0977w abstractC0977w) {
        C0552u.m6233n(abstractC0977w.itemView).m6182b();
    }
}
