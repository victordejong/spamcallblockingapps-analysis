package androidx.recyclerview.widget;

import android.util.Log;
import android.view.View;
import d.h.m.t;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$a0.class */
public abstract class RecyclerView$a0 {

    /* renamed from: t */
    private static final List<Object> f2194t = Collections.emptyList();

    /* renamed from: a */
    public final View f2195a;

    /* renamed from: b */
    WeakReference<RecyclerView> f2196b;

    /* renamed from: j */
    int f2204j;

    /* renamed from: r */
    RecyclerView f2212r;

    /* renamed from: s */
    RecyclerView$Adapter<? extends RecyclerView$a0> f2213s;

    /* renamed from: c */
    int f2197c = -1;

    /* renamed from: d */
    int f2198d = -1;

    /* renamed from: e */
    long f2199e = -1;

    /* renamed from: f */
    int f2200f = -1;

    /* renamed from: g */
    int f2201g = -1;

    /* renamed from: h */
    RecyclerView$a0 f2202h = null;

    /* renamed from: i */
    RecyclerView$a0 f2203i = null;

    /* renamed from: k */
    List<Object> f2205k = null;

    /* renamed from: l */
    List<Object> f2206l = null;

    /* renamed from: m */
    private int f2207m = 0;

    /* renamed from: n */
    RecyclerView$t f2208n = null;

    /* renamed from: o */
    boolean f2209o = false;

    /* renamed from: p */
    private int f2210p = 0;

    /* renamed from: q */
    int f2211q = -1;

    public RecyclerView$a0(View view) {
        if (view != null) {
            this.f2195a = view;
            return;
        }
        throw new IllegalArgumentException("itemView may not be null");
    }

    /* renamed from: g */
    private void m12795g() {
        if (this.f2205k == null) {
            ArrayList arrayList = new ArrayList();
            this.f2205k = arrayList;
            this.f2206l = Collections.unmodifiableList(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A */
    public void m12813A(int i, boolean z) {
        if (this.f2198d == -1) {
            this.f2198d = this.f2197c;
        }
        if (this.f2201g == -1) {
            this.f2201g = this.f2197c;
        }
        if (z) {
            this.f2201g += i;
        }
        this.f2197c += i;
        if (this.f2195a.getLayoutParams() != null) {
            ((RecyclerView$LayoutParams) this.f2195a.getLayoutParams()).f2191c = true;
        }
    }

    /* renamed from: B */
    void m12812B(RecyclerView recyclerView) {
        int i = this.f2211q;
        if (i == -1) {
            i = t.z(this.f2195a);
        }
        this.f2210p = i;
        recyclerView.k1(this, 4);
    }

    /* renamed from: C */
    void m12811C(RecyclerView recyclerView) {
        recyclerView.k1(this, this.f2210p);
        this.f2210p = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: D */
    public void m12810D() {
        this.f2204j = 0;
        this.f2197c = -1;
        this.f2198d = -1;
        this.f2199e = -1L;
        this.f2201g = -1;
        this.f2207m = 0;
        this.f2202h = null;
        this.f2203i = null;
        m12798d();
        this.f2210p = 0;
        this.f2211q = -1;
        RecyclerView.s(this);
    }

    /* renamed from: E */
    void m12809E() {
        if (this.f2198d == -1) {
            this.f2198d = this.f2197c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: F */
    public void m12808F(int i, int i2) {
        this.f2204j = (i & i2) | (this.f2204j & (i2 ^ (-1)));
    }

    /* renamed from: G */
    public final void m12807G(boolean z) {
        int i;
        int i2 = this.f2207m;
        int i3 = z ? i2 - 1 : i2 + 1;
        this.f2207m = i3;
        if (i3 < 0) {
            this.f2207m = 0;
            Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            return;
        }
        if (!z && i3 == 1) {
            i = this.f2204j | 16;
        } else if (z && i3 == 0) {
            i = this.f2204j & (-17);
        } else {
            return;
        }
        this.f2204j = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: H */
    public void m12806H(RecyclerView$t recyclerView$t, boolean z) {
        this.f2208n = recyclerView$t;
        this.f2209o = z;
    }

    /* renamed from: I */
    boolean m12805I() {
        return (this.f2204j & 16) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: J */
    public boolean m12804J() {
        return (this.f2204j & 128) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: K */
    public void m12803K() {
        this.f2208n.m12567J(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: L */
    public boolean m12802L() {
        return (this.f2204j & 32) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m12801a(Object obj) {
        if (obj == null) {
            m12800b(1024);
        } else if ((1024 & this.f2204j) == 0) {
            m12795g();
            this.f2205k.add(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m12800b(int i) {
        this.f2204j = i | this.f2204j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m12799c() {
        this.f2198d = -1;
        this.f2201g = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m12798d() {
        List<Object> list = this.f2205k;
        if (list != null) {
            list.clear();
        }
        this.f2204j &= -1025;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m12797e() {
        this.f2204j &= -33;
    }

    /* renamed from: f */
    void m12796f() {
        this.f2204j &= -257;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public boolean m12794h() {
        return (this.f2204j & 16) == 0 && t.P(this.f2195a);
    }

    /* renamed from: i */
    void m12793i(int i, int i2, boolean z) {
        m12800b(8);
        m12813A(i2, z);
        this.f2197c = i;
    }

    /* renamed from: j */
    public final int m12792j() {
        RecyclerView recyclerView = this.f2212r;
        if (recyclerView == null) {
            return -1;
        }
        return recyclerView.c0(this);
    }

    /* renamed from: k */
    public final long m12791k() {
        return this.f2199e;
    }

    /* renamed from: l */
    public final int m12790l() {
        return this.f2200f;
    }

    /* renamed from: m */
    public final int m12789m() {
        int i = this.f2201g;
        int i2 = i;
        if (i == -1) {
            i2 = this.f2197c;
        }
        return i2;
    }

    /* renamed from: n */
    public final int m12788n() {
        return this.f2198d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public List<Object> m12787o() {
        if ((this.f2204j & 1024) != 0) {
            return f2194t;
        }
        List<Object> list = this.f2205k;
        return (list == null || list.size() == 0) ? f2194t : this.f2206l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public boolean m12786p(int i) {
        return (i & this.f2204j) != 0;
    }

    /* renamed from: q */
    boolean m12785q() {
        return (this.f2204j & 512) != 0 || m12782t();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public boolean m12784r() {
        return (this.f2195a.getParent() == null || this.f2195a.getParent() == this.f2212r) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public boolean m12783s() {
        boolean z = true;
        if ((this.f2204j & 1) == 0) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public boolean m12782t() {
        return (this.f2204j & 4) != 0;
    }

    public String toString() {
        String simpleName = getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName();
        StringBuilder sb = new StringBuilder(simpleName + "{" + Integer.toHexString(hashCode()) + " position=" + this.f2197c + " id=" + this.f2199e + ", oldPos=" + this.f2198d + ", pLpos:" + this.f2201g);
        if (m12779w()) {
            sb.append(" scrap ");
            sb.append(this.f2209o ? "[changeScrap]" : "[attachedScrap]");
        }
        if (m12782t()) {
            sb.append(" invalid");
        }
        if (!m12783s()) {
            sb.append(" unbound");
        }
        if (m12776z()) {
            sb.append(" update");
        }
        if (m12780v()) {
            sb.append(" removed");
        }
        if (m12804J()) {
            sb.append(" ignored");
        }
        if (m12778x()) {
            sb.append(" tmpDetached");
        }
        if (!m12781u()) {
            sb.append(" not recyclable(" + this.f2207m + ")");
        }
        if (m12785q()) {
            sb.append(" undefined adapter position");
        }
        if (this.f2195a.getParent() == null) {
            sb.append(" no parent");
        }
        sb.append("}");
        return sb.toString();
    }

    /* renamed from: u */
    public final boolean m12781u() {
        return (this.f2204j & 16) == 0 && !t.P(this.f2195a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v */
    public boolean m12780v() {
        return (this.f2204j & 8) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public boolean m12779w() {
        return this.f2208n != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public boolean m12778x() {
        return (this.f2204j & 256) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y */
    public boolean m12777y() {
        return (this.f2204j & 2) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: z */
    public boolean m12776z() {
        return (this.f2204j & 2) != 0;
    }
}
