package androidx.recyclerview.widget;

import androidx.core.util.Pools;
import androidx.recyclerview.widget.OpReorderer;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/AdapterHelper.class */
public class AdapterHelper implements OpReorderer.Callback {

    /* renamed from: a */
    private Pools.Pool<UpdateOp> f4386a;

    /* renamed from: b */
    final ArrayList<UpdateOp> f4387b;

    /* renamed from: c */
    final ArrayList<UpdateOp> f4388c;

    /* renamed from: d */
    final Callback f4389d;

    /* renamed from: e */
    Runnable f4390e;

    /* renamed from: f */
    final boolean f4391f;

    /* renamed from: g */
    final OpReorderer f4392g;

    /* renamed from: h */
    private int f4393h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/AdapterHelper$Callback.class */
    public interface Callback {
        /* renamed from: a */
        void mo17508a(int i, int i2);

        /* renamed from: b */
        void mo17507b(UpdateOp updateOp);

        /* renamed from: c */
        void mo17506c(int i, int i2, Object obj);

        /* renamed from: d */
        void mo17505d(UpdateOp updateOp);

        /* renamed from: e */
        RecyclerView.ViewHolder mo17504e(int i);

        /* renamed from: f */
        void mo17503f(int i, int i2);

        /* renamed from: g */
        void mo17502g(int i, int i2);

        /* renamed from: h */
        void mo17501h(int i, int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/AdapterHelper$UpdateOp.class */
    public static class UpdateOp {

        /* renamed from: a */
        int f4394a;

        /* renamed from: b */
        int f4395b;

        /* renamed from: c */
        Object f4396c;

        /* renamed from: d */
        int f4397d;

        UpdateOp(int i, int i2, int i3, Object obj) {
            this.f4394a = i;
            this.f4395b = i2;
            this.f4397d = i3;
            this.f4396c = obj;
        }

        /* renamed from: a */
        String m17867a() {
            int i = this.f4394a;
            return i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || UpdateOp.class != obj.getClass()) {
                return false;
            }
            UpdateOp updateOp = (UpdateOp) obj;
            int i = this.f4394a;
            if (i != updateOp.f4394a) {
                return false;
            }
            if (i == 8 && Math.abs(this.f4397d - this.f4395b) == 1 && this.f4397d == updateOp.f4395b && this.f4395b == updateOp.f4397d) {
                return true;
            }
            if (this.f4397d != updateOp.f4397d || this.f4395b != updateOp.f4395b) {
                return false;
            }
            Object obj2 = this.f4396c;
            return obj2 != null ? obj2.equals(updateOp.f4396c) : updateOp.f4396c == null;
        }

        public int hashCode() {
            return (((this.f4394a * 31) + this.f4395b) * 31) + this.f4397d;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + m17867a() + ",s:" + this.f4395b + "c:" + this.f4397d + ",p:" + this.f4396c + "]";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdapterHelper(Callback callback) {
        this(callback, false);
    }

    AdapterHelper(Callback callback, boolean z) {
        this.f4386a = new Pools.SimplePool(30);
        this.f4387b = new ArrayList<>();
        this.f4388c = new ArrayList<>();
        this.f4393h = 0;
        this.f4389d = callback;
        this.f4391f = z;
        this.f4392g = new OpReorderer(this);
    }

    /* renamed from: c */
    private void m17891c(UpdateOp updateOp) {
        m17872v(updateOp);
    }

    /* renamed from: d */
    private void m17890d(UpdateOp updateOp) {
        m17872v(updateOp);
    }

    /* renamed from: f */
    private void m17888f(UpdateOp updateOp) {
        boolean z;
        int i = updateOp.f4395b;
        int i2 = updateOp.f4397d + i;
        char c = 65535;
        int i3 = i;
        int i4 = 0;
        while (i3 < i2) {
            if (this.f4389d.mo17504e(i3) != null || m17886h(i3)) {
                if (c == 0) {
                    m17883k(mo17547b(2, i, i4, null));
                    z = true;
                } else {
                    z = false;
                }
                c = 1;
            } else {
                if (c == 1) {
                    m17872v(mo17547b(2, i, i4, null));
                    z = true;
                } else {
                    z = false;
                }
                c = 0;
            }
            if (z) {
                i3 -= i4;
                i2 -= i4;
                i4 = 1;
            } else {
                i4++;
            }
            i3++;
        }
        UpdateOp updateOp2 = updateOp;
        if (i4 != updateOp.f4397d) {
            mo17548a(updateOp);
            updateOp2 = mo17547b(2, i, i4, null);
        }
        if (c == 0) {
            m17883k(updateOp2);
        } else {
            m17872v(updateOp2);
        }
    }

    /* renamed from: g */
    private void m17887g(UpdateOp updateOp) {
        int i;
        int i2 = updateOp.f4395b;
        int i3 = updateOp.f4397d;
        int i4 = i2;
        char c = 65535;
        int i5 = 0;
        for (int i6 = i2; i6 < i3 + i2; i6++) {
            if (this.f4389d.mo17504e(i6) != null || m17886h(i6)) {
                i4 = i4;
                i = i5;
                if (c == 0) {
                    m17883k(mo17547b(4, i4, i5, updateOp.f4396c));
                    i4 = i6;
                    i = 0;
                }
                c = 1;
            } else {
                i4 = i4;
                i = i5;
                if (c == 1) {
                    m17872v(mo17547b(4, i4, i5, updateOp.f4396c));
                    i4 = i6;
                    i = 0;
                }
                c = 0;
            }
            i5 = i + 1;
        }
        UpdateOp updateOp2 = updateOp;
        if (i5 != updateOp.f4397d) {
            Object obj = updateOp.f4396c;
            mo17548a(updateOp);
            updateOp2 = mo17547b(4, i4, i5, obj);
        }
        if (c == 0) {
            m17883k(updateOp2);
        } else {
            m17872v(updateOp2);
        }
    }

    /* renamed from: h */
    private boolean m17886h(int i) {
        int size = this.f4388c.size();
        for (int i2 = 0; i2 < size; i2++) {
            UpdateOp updateOp = this.f4388c.get(i2);
            int i3 = updateOp.f4394a;
            if (i3 == 8) {
                if (m17880n(updateOp.f4397d, i2 + 1) == i) {
                    return true;
                }
            } else if (i3 == 1) {
                int i4 = updateOp.f4395b;
                int i5 = updateOp.f4397d;
                for (int i6 = i4; i6 < i5 + i4; i6++) {
                    if (m17880n(i6, i2 + 1) == i) {
                        return true;
                    }
                }
                continue;
            } else {
                continue;
            }
        }
        return false;
    }

    /* renamed from: k */
    private void m17883k(UpdateOp updateOp) {
        int i;
        int i2 = updateOp.f4394a;
        if (i2 == 1 || i2 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int z = m17868z(updateOp.f4395b, i2);
        int i3 = updateOp.f4395b;
        int i4 = updateOp.f4394a;
        if (i4 == 2) {
            i = 0;
        } else if (i4 == 4) {
            i = 1;
        } else {
            throw new IllegalArgumentException("op should be remove or update." + updateOp);
        }
        int i5 = 1;
        for (int i6 = 1; i6 < updateOp.f4397d; i6++) {
            int z2 = m17868z(updateOp.f4395b + (i * i6), updateOp.f4394a);
            int i7 = updateOp.f4394a;
            if (i7 == 2 ? z2 == z : i7 == 4 && z2 == z + 1) {
                i5++;
            } else {
                UpdateOp b = mo17547b(updateOp.f4394a, z, i5, updateOp.f4396c);
                m17882l(b, i3);
                mo17548a(b);
                i3 = i3;
                if (updateOp.f4394a == 4) {
                    i3 += i5;
                }
                i5 = 1;
                z = z2;
            }
        }
        Object obj = updateOp.f4396c;
        mo17548a(updateOp);
        if (i5 > 0) {
            UpdateOp b2 = mo17547b(updateOp.f4394a, z, i5, obj);
            m17882l(b2, i3);
            mo17548a(b2);
        }
    }

    /* renamed from: v */
    private void m17872v(UpdateOp updateOp) {
        this.f4388c.add(updateOp);
        int i = updateOp.f4394a;
        if (i == 1) {
            this.f4389d.mo17502g(updateOp.f4395b, updateOp.f4397d);
        } else if (i == 2) {
            this.f4389d.mo17503f(updateOp.f4395b, updateOp.f4397d);
        } else if (i == 4) {
            this.f4389d.mo17506c(updateOp.f4395b, updateOp.f4397d, updateOp.f4396c);
        } else if (i == 8) {
            this.f4389d.mo17508a(updateOp.f4395b, updateOp.f4397d);
        } else {
            throw new IllegalArgumentException("Unknown update op type for " + updateOp);
        }
    }

    /* renamed from: z */
    private int m17868z(int i, int i2) {
        int i3;
        for (int size = this.f4388c.size() - 1; size >= 0; size--) {
            UpdateOp updateOp = this.f4388c.get(size);
            int i4 = updateOp.f4394a;
            if (i4 == 8) {
                int i5 = updateOp.f4395b;
                int i6 = updateOp.f4397d;
                if (i5 < i6) {
                    i3 = i6;
                } else {
                    i3 = i5;
                    i5 = i6;
                }
                if (i < i5 || i > i3) {
                    int i7 = updateOp.f4395b;
                    i = i;
                    if (i < i7) {
                        if (i2 == 1) {
                            updateOp.f4395b = i7 + 1;
                            updateOp.f4397d++;
                            i = i;
                        } else {
                            i = i;
                            if (i2 == 2) {
                                updateOp.f4395b = i7 - 1;
                                updateOp.f4397d--;
                                i = i;
                            }
                        }
                    }
                } else {
                    int i8 = updateOp.f4395b;
                    if (i5 == i8) {
                        if (i2 == 1) {
                            updateOp.f4397d++;
                        } else if (i2 == 2) {
                            updateOp.f4397d--;
                        }
                        i++;
                    } else {
                        if (i2 == 1) {
                            updateOp.f4395b = i8 + 1;
                        } else if (i2 == 2) {
                            updateOp.f4395b = i8 - 1;
                        }
                        i--;
                    }
                }
            } else {
                int i9 = updateOp.f4395b;
                if (i9 <= i) {
                    if (i4 == 1) {
                        i -= updateOp.f4397d;
                    } else {
                        i = i;
                        if (i4 == 2) {
                            i += updateOp.f4397d;
                        }
                    }
                } else if (i2 == 1) {
                    updateOp.f4395b = i9 + 1;
                    i = i;
                } else {
                    i = i;
                    if (i2 == 2) {
                        updateOp.f4395b = i9 - 1;
                        i = i;
                    }
                }
            }
        }
        for (int size2 = this.f4388c.size() - 1; size2 >= 0; size2--) {
            UpdateOp updateOp2 = this.f4388c.get(size2);
            if (updateOp2.f4394a == 8) {
                int i10 = updateOp2.f4397d;
                if (i10 == updateOp2.f4395b || i10 < 0) {
                    this.f4388c.remove(size2);
                    mo17548a(updateOp2);
                }
            } else if (updateOp2.f4397d <= 0) {
                this.f4388c.remove(size2);
                mo17548a(updateOp2);
            }
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.OpReorderer.Callback
    /* renamed from: a */
    public void mo17548a(UpdateOp updateOp) {
        if (!this.f4391f) {
            updateOp.f4396c = null;
            this.f4386a.mo19342a(updateOp);
        }
    }

    @Override // androidx.recyclerview.widget.OpReorderer.Callback
    /* renamed from: b */
    public UpdateOp mo17547b(int i, int i2, int i3, Object obj) {
        UpdateOp updateOp;
        UpdateOp b = this.f4386a.mo19341b();
        if (b == null) {
            updateOp = new UpdateOp(i, i2, i3, obj);
        } else {
            b.f4394a = i;
            b.f4395b = i2;
            b.f4397d = i3;
            b.f4396c = obj;
            updateOp = b;
        }
        return updateOp;
    }

    /* renamed from: e */
    public int m17889e(int i) {
        int size = this.f4387b.size();
        for (int i2 = 0; i2 < size; i2++) {
            UpdateOp updateOp = this.f4387b.get(i2);
            int i3 = updateOp.f4394a;
            if (i3 == 1) {
                i = i;
                if (updateOp.f4395b <= i) {
                    i += updateOp.f4397d;
                }
            } else if (i3 == 2) {
                int i4 = updateOp.f4395b;
                i = i;
                if (i4 <= i) {
                    int i5 = updateOp.f4397d;
                    if (i4 + i5 > i) {
                        return -1;
                    }
                    i -= i5;
                } else {
                    continue;
                }
            } else if (i3 != 8) {
                i = i;
            } else {
                int i6 = updateOp.f4395b;
                if (i6 == i) {
                    i = updateOp.f4397d;
                } else {
                    int i7 = i;
                    if (i6 < i) {
                        i7 = i - 1;
                    }
                    i = i7;
                    if (updateOp.f4397d <= i7) {
                        i = i7 + 1;
                    }
                }
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public void m17885i() {
        int size = this.f4388c.size();
        for (int i = 0; i < size; i++) {
            this.f4389d.mo17505d(this.f4388c.get(i));
        }
        m17870x(this.f4388c);
        this.f4393h = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public void m17884j() {
        m17885i();
        int size = this.f4387b.size();
        for (int i = 0; i < size; i++) {
            UpdateOp updateOp = this.f4387b.get(i);
            int i2 = updateOp.f4394a;
            if (i2 == 1) {
                this.f4389d.mo17505d(updateOp);
                this.f4389d.mo17502g(updateOp.f4395b, updateOp.f4397d);
            } else if (i2 == 2) {
                this.f4389d.mo17505d(updateOp);
                this.f4389d.mo17501h(updateOp.f4395b, updateOp.f4397d);
            } else if (i2 == 4) {
                this.f4389d.mo17505d(updateOp);
                this.f4389d.mo17506c(updateOp.f4395b, updateOp.f4397d, updateOp.f4396c);
            } else if (i2 == 8) {
                this.f4389d.mo17505d(updateOp);
                this.f4389d.mo17508a(updateOp.f4395b, updateOp.f4397d);
            }
            Runnable runnable = this.f4390e;
            if (runnable != null) {
                runnable.run();
            }
        }
        m17870x(this.f4387b);
        this.f4393h = 0;
    }

    /* renamed from: l */
    void m17882l(UpdateOp updateOp, int i) {
        this.f4389d.mo17507b(updateOp);
        int i2 = updateOp.f4394a;
        if (i2 == 2) {
            this.f4389d.mo17501h(i, updateOp.f4397d);
        } else if (i2 == 4) {
            this.f4389d.mo17506c(i, updateOp.f4397d, updateOp.f4396c);
        } else {
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public int m17881m(int i) {
        return m17880n(i, 0);
    }

    /* renamed from: n */
    int m17880n(int i, int i2) {
        int size = this.f4388c.size();
        for (int i3 = i2; i3 < size; i3++) {
            UpdateOp updateOp = this.f4388c.get(i3);
            int i4 = updateOp.f4394a;
            if (i4 == 8) {
                int i5 = updateOp.f4395b;
                if (i5 == i) {
                    i = updateOp.f4397d;
                } else {
                    int i6 = i;
                    if (i5 < i) {
                        i6 = i - 1;
                    }
                    i = i6;
                    if (updateOp.f4397d <= i6) {
                        i = i6 + 1;
                    }
                }
            } else {
                int i7 = updateOp.f4395b;
                i = i;
                if (i7 > i) {
                    continue;
                } else if (i4 == 2) {
                    int i8 = updateOp.f4397d;
                    if (i < i7 + i8) {
                        return -1;
                    }
                    i -= i8;
                } else {
                    i = i;
                    if (i4 == 1) {
                        i += updateOp.f4397d;
                    }
                }
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public boolean m17879o(int i) {
        return (i & this.f4393h) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public boolean m17878p() {
        return this.f4387b.size() > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public boolean m17877q() {
        return !this.f4388c.isEmpty() && !this.f4387b.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public boolean m17876r(int i, int i2, Object obj) {
        boolean z = false;
        if (i2 < 1) {
            return false;
        }
        this.f4387b.add(mo17547b(4, i, i2, obj));
        this.f4393h |= 4;
        if (this.f4387b.size() == 1) {
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public boolean m17875s(int i, int i2) {
        boolean z = false;
        if (i2 < 1) {
            return false;
        }
        this.f4387b.add(mo17547b(1, i, i2, null));
        this.f4393h |= 1;
        if (this.f4387b.size() == 1) {
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public boolean m17874t(int i, int i2, int i3) {
        boolean z = false;
        if (i == i2) {
            return false;
        }
        if (i3 == 1) {
            this.f4387b.add(mo17547b(8, i, i2, null));
            this.f4393h |= 8;
            if (this.f4387b.size() == 1) {
                z = true;
            }
            return z;
        }
        throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public boolean m17873u(int i, int i2) {
        boolean z = false;
        if (i2 < 1) {
            return false;
        }
        this.f4387b.add(mo17547b(2, i, i2, null));
        this.f4393h |= 2;
        if (this.f4387b.size() == 1) {
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public void m17871w() {
        this.f4392g.m17553b(this.f4387b);
        int size = this.f4387b.size();
        for (int i = 0; i < size; i++) {
            UpdateOp updateOp = this.f4387b.get(i);
            int i2 = updateOp.f4394a;
            if (i2 == 1) {
                m17891c(updateOp);
            } else if (i2 == 2) {
                m17888f(updateOp);
            } else if (i2 == 4) {
                m17887g(updateOp);
            } else if (i2 == 8) {
                m17890d(updateOp);
            }
            Runnable runnable = this.f4390e;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.f4387b.clear();
    }

    /* renamed from: x */
    void m17870x(List<UpdateOp> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            mo17548a(list.get(i));
        }
        list.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y */
    public void m17869y() {
        m17870x(this.f4387b);
        m17870x(this.f4388c);
        this.f4393h = 0;
    }
}
