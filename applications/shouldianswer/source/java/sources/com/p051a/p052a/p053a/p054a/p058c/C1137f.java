package com.p051a.p052a.p053a.p054a.p058c;

import android.util.Log;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.AbstractC0977w;
import com.p051a.p052a.p053a.p054a.p055a.C1106e;
import com.p051a.p052a.p053a.p054a.p059d.C1155a;
import com.p051a.p052a.p053a.p054a.p059d.C1157c;
import java.util.List;
/* renamed from: com.a.a.a.a.c.f */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/c/f.class */
public class C1137f<VH extends RecyclerView.AbstractC0977w> extends C1106e<VH> {

    /* renamed from: b */
    private C1143l f3547b;

    /* renamed from: c */
    private AbstractC1135d f3548c;

    /* renamed from: d */
    private RecyclerView.AbstractC0977w f3549d;

    /* renamed from: e */
    private C1140i f3550e;

    /* renamed from: f */
    private C1141j f3551f;

    /* renamed from: g */
    private int f3552g = -1;

    /* renamed from: h */
    private int f3553h = -1;

    /* renamed from: i */
    private int f3554i;

    /* renamed from: j */
    private boolean f3555j;

    public C1137f(C1143l c1143l, RecyclerView.AbstractC0945a<VH> abstractC0945a) {
        super(abstractC0945a);
        if (c1143l != null) {
            this.f3547b = c1143l;
            return;
        }
        throw new IllegalArgumentException("manager cannot be null");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001f, code lost:
        if (r4 >= r6) goto L14;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected static int m4113a(int r4, int r5, int r6, int r7) {
        /*
            r0 = r5
            if (r0 < 0) goto L6d
            r0 = r6
            if (r0 >= 0) goto Lb
            goto L6d
        Lb:
            r0 = r7
            if (r0 != 0) goto L4e
            r0 = r4
            r7 = r0
            r0 = r5
            r1 = r6
            if (r0 == r1) goto L4c
            r0 = r4
            r1 = r5
            if (r0 >= r1) goto L22
            r0 = r4
            r7 = r0
            r0 = r4
            r1 = r6
            if (r0 < r1) goto L4c
        L22:
            r0 = r4
            r1 = r5
            if (r0 <= r1) goto L31
            r0 = r4
            r1 = r6
            if (r0 <= r1) goto L31
            r0 = r4
            r7 = r0
            goto L4c
        L31:
            r0 = r6
            r1 = r5
            if (r0 >= r1) goto L41
            r0 = r4
            r1 = r6
            if (r0 != r1) goto L3d
            r0 = r5
            return r0
        L3d:
            r0 = r4
            r1 = 1
            int r0 = r0 - r1
            return r0
        L41:
            r0 = r4
            r1 = r6
            if (r0 != r1) goto L48
            r0 = r5
            return r0
        L48:
            r0 = r4
            r1 = 1
            int r0 = r0 + r1
            r7 = r0
        L4c:
            r0 = r7
            return r0
        L4e:
            r0 = r7
            r1 = 1
            if (r0 != r1) goto L63
            r0 = r4
            r1 = r6
            if (r0 != r1) goto L5a
            r0 = r5
            return r0
        L5a:
            r0 = r4
            r1 = r5
            if (r0 != r1) goto L61
            r0 = r6
            return r0
        L61:
            r0 = r4
            return r0
        L63:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "unexpected state"
            r1.<init>(r2)
            throw r0
        L6d:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p051a.p052a.p053a.p054a.p058c.C1137f.m4113a(int, int, int, int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
        if (((r0 ^ r4) & com.google.android.gms.common.api.Api.BaseClientBuilder.API_PRIORITY_OTHER) != 0) goto L9;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m4099f(androidx.recyclerview.widget.RecyclerView.AbstractC0977w r3, int r4) {
        /*
            r0 = r3
            boolean r0 = r0 instanceof com.p051a.p052a.p053a.p054a.p058c.AbstractC1136e
            if (r0 != 0) goto L8
            return
        L8:
            r0 = r3
            com.a.a.a.a.c.e r0 = (com.p051a.p052a.p053a.p054a.p058c.AbstractC1136e) r0
            r3 = r0
            r0 = r3
            int r0 = r0.mo708a()
            r5 = r0
            r0 = r5
            r1 = -1
            if (r0 == r1) goto L24
            r0 = r4
            r6 = r0
            r0 = r5
            r1 = r4
            r0 = r0 ^ r1
            r1 = 2147483647(0x7fffffff, float:NaN)
            r0 = r0 & r1
            if (r0 == 0) goto L29
        L24:
            r0 = r4
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 | r1
            r6 = r0
        L29:
            r0 = r3
            r1 = r6
            r0.mo4116a(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p051a.p052a.p053a.p054a.p058c.C1137f.m4099f(androidx.recyclerview.widget.RecyclerView$w, int):void");
    }

    /* renamed from: h */
    private boolean m4097h() {
        return m4102e() && !this.f3555j;
    }

    /* renamed from: i */
    private void m4096i() {
        C1143l c1143l = this.f3547b;
        if (c1143l != null) {
            c1143l.m4013d();
        }
    }

    @Override // com.p051a.p052a.p053a.p054a.p055a.C1106e
    /* renamed from: a */
    public void mo4115a(int i, int i2) {
        if (m4097h()) {
            m4096i();
        } else {
            super.mo4115a(i, i2);
        }
    }

    @Override // com.p051a.p052a.p053a.p054a.p055a.C1106e
    /* renamed from: a */
    public void mo4114a(int i, int i2, int i3) {
        if (m4097h()) {
            m4096i();
        } else {
            super.mo4114a(i, i2, i3);
        }
    }

    /* renamed from: a */
    public void m4112a(int i, int i2, boolean z) {
        AbstractC1135d abstractC1135d = this.f3548c;
        this.f3552g = -1;
        this.f3553h = -1;
        this.f3551f = null;
        this.f3550e = null;
        this.f3549d = null;
        this.f3548c = null;
        if (z && i2 != i) {
            abstractC1135d.mo690a(i, i2);
        }
        abstractC1135d.mo689a(i, i2, z);
    }

    /* renamed from: a */
    public void m4110a(C1140i c1140i, RecyclerView.AbstractC0977w abstractC0977w, C1141j c1141j, int i, int i2) {
        if (abstractC0977w.getItemId() != -1) {
            this.f3548c = (AbstractC1135d) C1157c.m3932a(this, AbstractC1135d.class, i);
            if (this.f3548c == null) {
                throw new IllegalStateException("DraggableItemAdapter not found!");
            }
            this.f3553h = i;
            this.f3552g = i;
            this.f3550e = c1140i;
            this.f3549d = abstractC0977w;
            this.f3551f = c1141j;
            this.f3554i = i2;
            return;
        }
        throw new IllegalStateException("dragging target must provides valid ID");
    }

    /* renamed from: a */
    public boolean m4111a(RecyclerView.AbstractC0977w abstractC0977w, int i, int i2, int i3) {
        AbstractC1135d abstractC1135d = (AbstractC1135d) C1157c.m3932a(this, AbstractC1135d.class, i);
        if (abstractC1135d == null) {
            return false;
        }
        return abstractC1135d.mo686a(abstractC0977w, i, i2, i3);
    }

    @Override // com.p051a.p052a.p053a.p054a.p055a.C1106e
    /* renamed from: b */
    public void mo4109b(int i, int i2) {
        if (m4097h()) {
            m4096i();
        } else {
            super.mo4109b(i, i2);
        }
    }

    /* renamed from: b */
    public void m4108b(int i, int i2, int i3) {
        int m4113a = m4113a(i, this.f3552g, this.f3553h, this.f3554i);
        if (m4113a == this.f3552g) {
            this.f3553h = i2;
            if (this.f3554i != 0 || !C1155a.m3947b(i3)) {
                notifyDataSetChanged();
                return;
            } else {
                notifyItemMoved(i, i2);
                return;
            }
        }
        throw new IllegalStateException("onMoveItem() - may be a bug or has duplicate IDs  --- mDraggingItemInitialPosition = " + this.f3552g + ", mDraggingItemCurrentPosition = " + this.f3553h + ", origFromPosition = " + m4113a + ", fromPosition = " + i + ", toPosition = " + i2);
    }

    @Override // com.p051a.p052a.p053a.p054a.p055a.C1106e
    /* renamed from: c */
    public void mo4107c() {
        if (m4097h()) {
            m4096i();
        } else {
            super.mo4107c();
        }
    }

    @Override // com.p051a.p052a.p053a.p054a.p055a.C1106e
    /* renamed from: c */
    public void mo4106c(int i, int i2) {
        if (m4097h()) {
            m4096i();
        } else {
            super.mo4106c(i, i2);
        }
    }

    @Override // com.p051a.p052a.p053a.p054a.p055a.C1106e, com.p051a.p052a.p053a.p054a.p055a.AbstractC1108g
    /* renamed from: c */
    public void mo4105c(VH vh, int i) {
        if (m4102e()) {
            this.f3547b.m4051a(vh);
            this.f3549d = this.f3547b.m4002g();
        }
        super.mo4105c((C1137f<VH>) vh, i);
    }

    /* renamed from: d */
    public void m4104d() {
        this.f3555j = true;
        this.f3548c.mo4117a(m4100f());
        this.f3555j = false;
    }

    /* renamed from: d */
    public boolean m4103d(int i, int i2) {
        return this.f3548c.mo678b(i, i2);
    }

    /* renamed from: e */
    public C1141j m4101e(RecyclerView.AbstractC0977w abstractC0977w, int i) {
        AbstractC1135d abstractC1135d = (AbstractC1135d) C1157c.m3932a(this, AbstractC1135d.class, i);
        if (abstractC1135d == null) {
            return null;
        }
        return abstractC1135d.mo687a((AbstractC1135d) abstractC0977w, i);
    }

    /* renamed from: e */
    protected boolean m4102e() {
        return this.f3550e != null;
    }

    /* renamed from: f */
    public int m4100f() {
        return this.f3552g;
    }

    /* renamed from: g */
    public int m4098g() {
        return this.f3553h;
    }

    @Override // com.p051a.p052a.p053a.p054a.p055a.C1106e, androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public long getItemId(int i) {
        return m4102e() ? super.getItemId(m4113a(i, this.f3552g, this.f3553h, this.f3554i)) : super.getItemId(i);
    }

    @Override // com.p051a.p052a.p053a.p054a.p055a.C1106e, androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public int getItemViewType(int i) {
        return m4102e() ? super.getItemViewType(m4113a(i, this.f3552g, this.f3553h, this.f3554i)) : super.getItemViewType(i);
    }

    @Override // com.p051a.p052a.p053a.p054a.p055a.C1106e, androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public void onBindViewHolder(VH vh, int i, List<Object> list) {
        if (!m4102e()) {
            m4099f(vh, 0);
            super.onBindViewHolder(vh, i, list);
            return;
        }
        long j = this.f3550e.f3597c;
        long itemId = vh.getItemId();
        int m4113a = m4113a(i, this.f3552g, this.f3553h, this.f3554i);
        int i2 = (itemId > j ? 1 : (itemId == j ? 0 : -1));
        if (i2 == 0 && vh != this.f3549d) {
            Log.i("ARVDraggableWrapper", "a new view holder object for the currently dragging item is assigned");
            this.f3549d = vh;
            this.f3547b.m4029b(vh);
        }
        int i3 = 1;
        if (i2 == 0) {
            i3 = 3;
        }
        int i4 = i3;
        if (this.f3551f.m4064a(i)) {
            i4 = i3 | 4;
        }
        m4099f(vh, i4);
        super.onBindViewHolder(vh, m4113a, list);
    }

    @Override // com.p051a.p052a.p053a.p054a.p055a.C1106e, androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public VH onCreateViewHolder(ViewGroup viewGroup, int i) {
        VH vh = (VH) super.onCreateViewHolder(viewGroup, i);
        if (vh instanceof AbstractC1136e) {
            ((AbstractC1136e) vh).mo4116a(-1);
        }
        return vh;
    }
}
