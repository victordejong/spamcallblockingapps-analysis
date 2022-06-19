package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import l00;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$u.class */
public final class RecyclerView$u {

    /* renamed from: a */
    public final ArrayList<RecyclerView$b0> f1367a;

    /* renamed from: d */
    public final List<RecyclerView$b0> f1370d;

    /* renamed from: g */
    public RecyclerView$t f1373g;

    /* renamed from: h */
    public RecyclerView$z f1374h;

    /* renamed from: i */
    public final /* synthetic */ RecyclerView f1375i;

    /* renamed from: b */
    public ArrayList<RecyclerView$b0> f1368b = null;

    /* renamed from: c */
    public final ArrayList<RecyclerView$b0> f1369c = new ArrayList<>();

    /* renamed from: e */
    public int f1371e = 2;

    /* renamed from: f */
    public int f1372f = 2;

    public RecyclerView$u(RecyclerView recyclerView) {
        this.f1375i = recyclerView;
        ArrayList<RecyclerView$b0> arrayList = new ArrayList<>();
        this.f1367a = arrayList;
        this.f1370d = Collections.unmodifiableList(arrayList);
    }

    /* renamed from: A */
    public void m6160A(int i) {
        m6147a(this.f1369c.get(i), true);
        this.f1369c.remove(i);
    }

    /* renamed from: B */
    public void m6159B(View view) {
        RecyclerView$b0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt.isTmpDetached()) {
            this.f1375i.removeDetachedView(view, false);
        }
        if (childViewHolderInt.isScrap()) {
            childViewHolderInt.unScrap();
        } else if (childViewHolderInt.wasReturnedFromScrap()) {
            childViewHolderInt.clearReturnedFromScrapFlag();
        }
        m6158C(childViewHolderInt);
        if (this.f1375i.mItemAnimator == null || childViewHolderInt.isRecyclable()) {
            return;
        }
        this.f1375i.mItemAnimator.m6196j(childViewHolderInt);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0062, code lost:
        if (r5.isRecyclable() != false) goto L23;
     */
    /* renamed from: C */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m6158C(androidx.recyclerview.widget.RecyclerView$b0 r5) {
        /*
            Method dump skipped, instructions count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView$u.m6158C(androidx.recyclerview.widget.RecyclerView$b0):void");
    }

    /* renamed from: D */
    public void m6157D(View view) {
        ArrayList<RecyclerView$b0> arrayList;
        RecyclerView$b0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (!childViewHolderInt.hasAnyOfTheFlags(12) && childViewHolderInt.isUpdated() && !this.f1375i.canReuseUpdatedViewHolder(childViewHolderInt)) {
            if (this.f1368b == null) {
                this.f1368b = new ArrayList<>();
            }
            childViewHolderInt.setScrapContainer(this, true);
            arrayList = this.f1368b;
        } else if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !this.f1375i.mAdapter.hasStableIds()) {
            throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + this.f1375i.exceptionLabel());
        } else {
            childViewHolderInt.setScrapContainer(this, false);
            arrayList = this.f1367a;
        }
        arrayList.add(childViewHolderInt);
    }

    /* renamed from: E */
    public void m6156E(RecyclerView$t recyclerView$t) {
        RecyclerView$t recyclerView$t2 = this.f1373g;
        if (recyclerView$t2 != null) {
            recyclerView$t2.m6170c();
        }
        this.f1373g = recyclerView$t;
        if (recyclerView$t == null || this.f1375i.getAdapter() == null) {
            return;
        }
        this.f1373g.m6172a();
    }

    /* renamed from: F */
    public void m6155F(RecyclerView$z recyclerView$z) {
    }

    /* renamed from: G */
    public void m6154G(int i) {
        this.f1371e = i;
        m6150K();
    }

    /* renamed from: H */
    public final boolean m6153H(RecyclerView$b0 recyclerView$b0, int i, int i2, long j) {
        recyclerView$b0.mOwnerRecyclerView = this.f1375i;
        int itemViewType = recyclerView$b0.getItemViewType();
        long nanoTime = this.f1375i.getNanoTime();
        if (j == Long.MAX_VALUE || this.f1373g.m6162k(itemViewType, nanoTime, j)) {
            this.f1375i.mAdapter.bindViewHolder(recyclerView$b0, i);
            this.f1373g.m6169d(recyclerView$b0.getItemViewType(), this.f1375i.getNanoTime() - nanoTime);
            m6146b(recyclerView$b0);
            if (!this.f1375i.mState.m6111e()) {
                return true;
            }
            recyclerView$b0.mPreLayoutPosition = i2;
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x03b3  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x03d0  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x03fd  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0378  */
    /* renamed from: I */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.recyclerview.widget.RecyclerView$b0 m6152I(int r8, boolean r9, long r10) {
        /*
            Method dump skipped, instructions count: 1134
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView$u.m6152I(int, boolean, long):androidx.recyclerview.widget.RecyclerView$b0");
    }

    /* renamed from: J */
    public void m6151J(RecyclerView$b0 recyclerView$b0) {
        (recyclerView$b0.mInChangeScrap ? this.f1368b : this.f1367a).remove(recyclerView$b0);
        recyclerView$b0.mScrapContainer = null;
        recyclerView$b0.mInChangeScrap = false;
        recyclerView$b0.clearReturnedFromScrapFlag();
    }

    /* renamed from: K */
    public void m6150K() {
        RecyclerView$o recyclerView$o = this.f1375i.mLayout;
        this.f1372f = this.f1371e + (recyclerView$o != null ? recyclerView$o.mPrefetchMaxCountObserved : 0);
        for (int size = this.f1369c.size() - 1; size >= 0 && this.f1369c.size() > this.f1372f; size--) {
            m6160A(size);
        }
    }

    /* renamed from: L */
    public boolean m6149L(RecyclerView$b0 recyclerView$b0) {
        if (recyclerView$b0.isRemoved()) {
            return this.f1375i.mState.m6111e();
        }
        int i = recyclerView$b0.mPosition;
        if (i < 0 || i >= this.f1375i.mAdapter.getItemCount()) {
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + recyclerView$b0 + this.f1375i.exceptionLabel());
        }
        boolean z = false;
        if (!this.f1375i.mState.m6111e() && this.f1375i.mAdapter.getItemViewType(recyclerView$b0.mPosition) != recyclerView$b0.getItemViewType()) {
            return false;
        }
        if (!this.f1375i.mAdapter.hasStableIds()) {
            return true;
        }
        if (recyclerView$b0.getItemId() == this.f1375i.mAdapter.getItemId(recyclerView$b0.mPosition)) {
            z = true;
        }
        return z;
    }

    /* renamed from: M */
    public void m6148M(int i, int i2) {
        int i3;
        for (int size = this.f1369c.size() - 1; size >= 0; size--) {
            RecyclerView$b0 recyclerView$b0 = this.f1369c.get(size);
            if (recyclerView$b0 != null && (i3 = recyclerView$b0.mPosition) >= i && i3 < i2 + i) {
                recyclerView$b0.addFlags(2);
                m6160A(size);
            }
        }
    }

    /* renamed from: a */
    public void m6147a(RecyclerView$b0 recyclerView$b0, boolean z) {
        RecyclerView.clearNestedRecyclerViewIfNotNested(recyclerView$b0);
        View view = recyclerView$b0.itemView;
        l00 l00Var = this.f1375i.mAccessibilityDelegate;
        if (l00Var != null) {
            l00.a itemDelegate = l00Var.getItemDelegate();
            jb.n0(view, itemDelegate instanceof l00.a ? itemDelegate.a(view) : null);
        }
        if (z) {
            m6141g(recyclerView$b0);
        }
        recyclerView$b0.mOwnerRecyclerView = null;
        m6139i().m6164i(recyclerView$b0);
    }

    /* renamed from: b */
    public final void m6146b(RecyclerView$b0 recyclerView$b0) {
        if (this.f1375i.isAccessibilityEnabled()) {
            View view = recyclerView$b0.itemView;
            if (jb.z(view) == 0) {
                jb.x0(view, 1);
            }
            l00 l00Var = this.f1375i.mAccessibilityDelegate;
            if (l00Var == null) {
                return;
            }
            l00.a itemDelegate = l00Var.getItemDelegate();
            if (itemDelegate instanceof l00.a) {
                itemDelegate.b(view);
            }
            jb.n0(view, itemDelegate);
        }
    }

    /* renamed from: c */
    public void m6145c() {
        this.f1367a.clear();
        m6122z();
    }

    /* renamed from: d */
    public void m6144d() {
        int size = this.f1369c.size();
        for (int i = 0; i < size; i++) {
            this.f1369c.get(i).clearOldPosition();
        }
        int size2 = this.f1367a.size();
        for (int i2 = 0; i2 < size2; i2++) {
            this.f1367a.get(i2).clearOldPosition();
        }
        ArrayList<RecyclerView$b0> arrayList = this.f1368b;
        if (arrayList != null) {
            int size3 = arrayList.size();
            for (int i3 = 0; i3 < size3; i3++) {
                this.f1368b.get(i3).clearOldPosition();
            }
        }
    }

    /* renamed from: e */
    public void m6143e() {
        this.f1367a.clear();
        ArrayList<RecyclerView$b0> arrayList = this.f1368b;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    /* renamed from: f */
    public int m6142f(int i) {
        if (i >= 0 && i < this.f1375i.mState.m6114b()) {
            return !this.f1375i.mState.m6111e() ? i : this.f1375i.mAdapterHelper.m(i);
        }
        throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + this.f1375i.mState.m6114b() + this.f1375i.exceptionLabel());
    }

    /* renamed from: g */
    public void m6141g(RecyclerView$b0 recyclerView$b0) {
        RecyclerView$v recyclerView$v = this.f1375i.mRecyclerListener;
        if (recyclerView$v != null) {
            recyclerView$v.m6121a(recyclerView$b0);
        }
        RecyclerView$g recyclerView$g = this.f1375i.mAdapter;
        if (recyclerView$g != null) {
            recyclerView$g.onViewRecycled(recyclerView$b0);
        }
        RecyclerView recyclerView = this.f1375i;
        if (recyclerView.mState != null) {
            recyclerView.mViewInfoStore.q(recyclerView$b0);
        }
    }

    /* renamed from: h */
    public RecyclerView$b0 m6140h(int i) {
        int size;
        int m;
        ArrayList<RecyclerView$b0> arrayList = this.f1368b;
        if (arrayList == null || (size = arrayList.size()) == 0) {
            return null;
        }
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView$b0 recyclerView$b0 = this.f1368b.get(i2);
            if (!recyclerView$b0.wasReturnedFromScrap() && recyclerView$b0.getLayoutPosition() == i) {
                recyclerView$b0.addFlags(32);
                return recyclerView$b0;
            }
        }
        if (!this.f1375i.mAdapter.hasStableIds() || (m = this.f1375i.mAdapterHelper.m(i)) <= 0 || m >= this.f1375i.mAdapter.getItemCount()) {
            return null;
        }
        long itemId = this.f1375i.mAdapter.getItemId(m);
        for (int i3 = 0; i3 < size; i3++) {
            RecyclerView$b0 recyclerView$b02 = this.f1368b.get(i3);
            if (!recyclerView$b02.wasReturnedFromScrap() && recyclerView$b02.getItemId() == itemId) {
                recyclerView$b02.addFlags(32);
                return recyclerView$b02;
            }
        }
        return null;
    }

    /* renamed from: i */
    public RecyclerView$t m6139i() {
        if (this.f1373g == null) {
            this.f1373g = new RecyclerView$t();
        }
        return this.f1373g;
    }

    /* renamed from: j */
    public int m6138j() {
        return this.f1367a.size();
    }

    /* renamed from: k */
    public List<RecyclerView$b0> m6137k() {
        return this.f1370d;
    }

    /* renamed from: l */
    public RecyclerView$b0 m6136l(long j, int i, boolean z) {
        for (int size = this.f1367a.size() - 1; size >= 0; size--) {
            RecyclerView$b0 recyclerView$b0 = this.f1367a.get(size);
            if (recyclerView$b0.getItemId() == j && !recyclerView$b0.wasReturnedFromScrap()) {
                if (i == recyclerView$b0.getItemViewType()) {
                    recyclerView$b0.addFlags(32);
                    if (recyclerView$b0.isRemoved() && !this.f1375i.mState.m6111e()) {
                        recyclerView$b0.setFlags(2, 14);
                    }
                    return recyclerView$b0;
                } else if (!z) {
                    this.f1367a.remove(size);
                    this.f1375i.removeDetachedView(recyclerView$b0.itemView, false);
                    m6123y(recyclerView$b0.itemView);
                }
            }
        }
        for (int size2 = this.f1369c.size() - 1; size2 >= 0; size2--) {
            RecyclerView$b0 recyclerView$b02 = this.f1369c.get(size2);
            if (recyclerView$b02.getItemId() == j && !recyclerView$b02.isAttachedToTransitionOverlay()) {
                if (i == recyclerView$b02.getItemViewType()) {
                    if (!z) {
                        this.f1369c.remove(size2);
                    }
                    return recyclerView$b02;
                } else if (!z) {
                    m6160A(size2);
                    return null;
                }
            }
        }
        return null;
    }

    /* renamed from: m */
    public RecyclerView$b0 m6135m(int i, boolean z) {
        View m7456e;
        int size = this.f1367a.size();
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView$b0 recyclerView$b0 = this.f1367a.get(i2);
            if (!recyclerView$b0.wasReturnedFromScrap() && recyclerView$b0.getLayoutPosition() == i && !recyclerView$b0.isInvalid() && (this.f1375i.mState.f1390h || !recyclerView$b0.isRemoved())) {
                recyclerView$b0.addFlags(32);
                return recyclerView$b0;
            }
        }
        if (z || (m7456e = this.f1375i.mChildHelper.m7456e(i)) == null) {
            int size2 = this.f1369c.size();
            for (int i3 = 0; i3 < size2; i3++) {
                RecyclerView$b0 recyclerView$b02 = this.f1369c.get(i3);
                if (!recyclerView$b02.isInvalid() && recyclerView$b02.getLayoutPosition() == i && !recyclerView$b02.isAttachedToTransitionOverlay()) {
                    if (!z) {
                        this.f1369c.remove(i3);
                    }
                    return recyclerView$b02;
                }
            }
            return null;
        }
        RecyclerView$b0 childViewHolderInt = RecyclerView.getChildViewHolderInt(m7456e);
        this.f1375i.mChildHelper.m7442s(m7456e);
        int m7448m = this.f1375i.mChildHelper.m7448m(m7456e);
        if (m7448m != -1) {
            this.f1375i.mChildHelper.m7457d(m7448m);
            m6157D(m7456e);
            childViewHolderInt.addFlags(8224);
            return childViewHolderInt;
        }
        throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + childViewHolderInt + this.f1375i.exceptionLabel());
    }

    /* renamed from: n */
    public View m6134n(int i) {
        return this.f1367a.get(i).itemView;
    }

    /* renamed from: o */
    public View m6133o(int i) {
        return m6132p(i, false);
    }

    /* renamed from: p */
    public View m6132p(int i, boolean z) {
        return m6152I(i, z, Long.MAX_VALUE).itemView;
    }

    /* renamed from: q */
    public final void m6131q(ViewGroup viewGroup, boolean z) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt instanceof ViewGroup) {
                m6131q((ViewGroup) childAt, true);
            }
        }
        if (!z) {
            return;
        }
        if (viewGroup.getVisibility() == 4) {
            viewGroup.setVisibility(0);
            viewGroup.setVisibility(4);
            return;
        }
        int visibility = viewGroup.getVisibility();
        viewGroup.setVisibility(4);
        viewGroup.setVisibility(visibility);
    }

    /* renamed from: r */
    public final void m6130r(RecyclerView$b0 recyclerView$b0) {
        View view = recyclerView$b0.itemView;
        if (view instanceof ViewGroup) {
            m6131q((ViewGroup) view, false);
        }
    }

    /* renamed from: s */
    public void m6129s() {
        int size = this.f1369c.size();
        for (int i = 0; i < size; i++) {
            RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) this.f1369c.get(i).itemView.getLayoutParams();
            if (recyclerView$LayoutParams != null) {
                recyclerView$LayoutParams.f1338c = true;
            }
        }
    }

    /* renamed from: t */
    public void m6128t() {
        int size = this.f1369c.size();
        for (int i = 0; i < size; i++) {
            RecyclerView$b0 recyclerView$b0 = this.f1369c.get(i);
            if (recyclerView$b0 != null) {
                recyclerView$b0.addFlags(6);
                recyclerView$b0.addChangePayload(null);
            }
        }
        RecyclerView$g recyclerView$g = this.f1375i.mAdapter;
        if (recyclerView$g == null || !recyclerView$g.hasStableIds()) {
            m6122z();
        }
    }

    /* renamed from: u */
    public void m6127u(int i, int i2) {
        int size = this.f1369c.size();
        for (int i3 = 0; i3 < size; i3++) {
            RecyclerView$b0 recyclerView$b0 = this.f1369c.get(i3);
            if (recyclerView$b0 != null && recyclerView$b0.mPosition >= i) {
                recyclerView$b0.offsetPosition(i2, true);
            }
        }
    }

    /* renamed from: v */
    public void m6126v(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        if (i < i2) {
            i5 = -1;
            i4 = i;
            i3 = i2;
        } else {
            i5 = 1;
            i3 = i;
            i4 = i2;
        }
        int size = this.f1369c.size();
        for (int i7 = 0; i7 < size; i7++) {
            RecyclerView$b0 recyclerView$b0 = this.f1369c.get(i7);
            if (recyclerView$b0 != null && (i6 = recyclerView$b0.mPosition) >= i4 && i6 <= i3) {
                if (i6 == i) {
                    recyclerView$b0.offsetPosition(i2 - i, false);
                } else {
                    recyclerView$b0.offsetPosition(i5, false);
                }
            }
        }
    }

    /* renamed from: w */
    public void m6125w(int i, int i2, boolean z) {
        for (int size = this.f1369c.size() - 1; size >= 0; size--) {
            RecyclerView$b0 recyclerView$b0 = this.f1369c.get(size);
            if (recyclerView$b0 != null) {
                int i3 = recyclerView$b0.mPosition;
                if (i3 >= i + i2) {
                    recyclerView$b0.offsetPosition(-i2, z);
                } else if (i3 >= i) {
                    recyclerView$b0.addFlags(8);
                    m6160A(size);
                }
            }
        }
    }

    /* renamed from: x */
    public void m6124x(RecyclerView$g recyclerView$g, RecyclerView$g recyclerView$g2, boolean z) {
        m6145c();
        m6139i().m6165h(recyclerView$g, recyclerView$g2, z);
    }

    /* renamed from: y */
    public void m6123y(View view) {
        RecyclerView$b0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        childViewHolderInt.mScrapContainer = null;
        childViewHolderInt.mInChangeScrap = false;
        childViewHolderInt.clearReturnedFromScrapFlag();
        m6158C(childViewHolderInt);
    }

    /* renamed from: z */
    public void m6122z() {
        for (int size = this.f1369c.size() - 1; size >= 0; size--) {
            m6160A(size);
        }
        this.f1369c.clear();
        if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
            this.f1375i.mPrefetchRegistry.b();
        }
    }
}
