package androidx.recyclerview.widget;

import androidx.core.p022f.C0498d;
import androidx.recyclerview.widget.C1012h;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.recyclerview.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/a.class */
public class C0984a implements C1012h.AbstractC1013a {

    /* renamed from: a */
    final ArrayList<C0986b> f3068a;

    /* renamed from: b */
    final ArrayList<C0986b> f3069b;

    /* renamed from: c */
    final AbstractC0985a f3070c;

    /* renamed from: d */
    Runnable f3071d;

    /* renamed from: e */
    final boolean f3072e;

    /* renamed from: f */
    final C1012h f3073f;

    /* renamed from: g */
    private C0498d.AbstractC0499a<C0986b> f3074g;

    /* renamed from: h */
    private int f3075h;

    /* renamed from: androidx.recyclerview.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/a$a.class */
    public interface AbstractC0985a {
        /* renamed from: a */
        RecyclerView.AbstractC0977w mo4695a(int i);

        /* renamed from: a */
        void mo4694a(int i, int i2);

        /* renamed from: a */
        void mo4693a(int i, int i2, Object obj);

        /* renamed from: a */
        void mo4692a(C0986b c0986b);

        /* renamed from: b */
        void mo4691b(int i, int i2);

        /* renamed from: b */
        void mo4690b(C0986b c0986b);

        /* renamed from: c */
        void mo4689c(int i, int i2);

        /* renamed from: d */
        void mo4688d(int i, int i2);
    }

    /* renamed from: androidx.recyclerview.widget.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/a$b.class */
    public static class C0986b {

        /* renamed from: a */
        int f3076a;

        /* renamed from: b */
        int f3077b;

        /* renamed from: c */
        Object f3078c;

        /* renamed from: d */
        int f3079d;

        C0986b(int i, int i2, int i3, Object obj) {
            this.f3076a = i;
            this.f3077b = i2;
            this.f3079d = i3;
            this.f3078c = obj;
        }

        /* renamed from: a */
        String m4687a() {
            int i = this.f3076a;
            return i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C0986b c0986b = (C0986b) obj;
            int i = this.f3076a;
            if (i != c0986b.f3076a) {
                return false;
            }
            if (i == 8 && Math.abs(this.f3079d - this.f3077b) == 1 && this.f3079d == c0986b.f3077b && this.f3077b == c0986b.f3079d) {
                return true;
            }
            if (this.f3079d != c0986b.f3079d || this.f3077b != c0986b.f3077b) {
                return false;
            }
            Object obj2 = this.f3078c;
            return obj2 != null ? obj2.equals(c0986b.f3078c) : c0986b.f3078c == null;
        }

        public int hashCode() {
            return (((this.f3076a * 31) + this.f3077b) * 31) + this.f3079d;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + m4687a() + ",s:" + this.f3077b + "c:" + this.f3079d + ",p:" + this.f3078c + "]";
        }
    }

    public C0984a(AbstractC0985a abstractC0985a) {
        this(abstractC0985a, false);
    }

    C0984a(AbstractC0985a abstractC0985a, boolean z) {
        this.f3074g = new C0498d.C0500b(30);
        this.f3068a = new ArrayList<>();
        this.f3069b = new ArrayList<>();
        this.f3075h = 0;
        this.f3070c = abstractC0985a;
        this.f3072e = z;
        this.f3073f = new C1012h(this);
    }

    /* renamed from: b */
    private void m4709b(C0986b c0986b) {
        m4696g(c0986b);
    }

    /* renamed from: c */
    private void m4705c(C0986b c0986b) {
        int i;
        boolean z;
        int i2;
        boolean z2;
        int i3 = c0986b.f3077b;
        int i4 = c0986b.f3077b + c0986b.f3079d;
        int i5 = c0986b.f3077b;
        boolean z3 = true;
        int i6 = 0;
        while (true) {
            i = i6;
            if (i5 >= i4) {
                break;
            }
            if (this.f3070c.mo4695a(i5) != null || m4703d(i5)) {
                if (!z3) {
                    m4699e(mo4580a(2, i3, i, null));
                    z = true;
                } else {
                    z = false;
                }
                z3 = true;
            } else {
                if (z3) {
                    m4696g(mo4580a(2, i3, i, null));
                    z2 = true;
                } else {
                    z2 = false;
                }
                z = z2;
                z3 = false;
            }
            if (z) {
                i5 -= i;
                i4 -= i;
                i2 = 1;
            } else {
                i2 = i + 1;
            }
            i5++;
            i6 = i2;
        }
        C0986b c0986b2 = c0986b;
        if (i != c0986b.f3079d) {
            mo4579a(c0986b);
            c0986b2 = mo4580a(2, i3, i, null);
        }
        if (!z3) {
            m4699e(c0986b2);
        } else {
            m4696g(c0986b2);
        }
    }

    /* renamed from: d */
    private int m4702d(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int size = this.f3069b.size() - 1;
        while (true) {
            i3 = i;
            if (size < 0) {
                break;
            }
            C0986b c0986b = this.f3069b.get(size);
            if (c0986b.f3076a == 8) {
                if (c0986b.f3077b < c0986b.f3079d) {
                    i5 = c0986b.f3077b;
                    i4 = c0986b.f3079d;
                } else {
                    i5 = c0986b.f3079d;
                    i4 = c0986b.f3077b;
                }
                if (i3 < i5 || i3 > i4) {
                    i = i3;
                    if (i3 < c0986b.f3077b) {
                        if (i2 == 1) {
                            c0986b.f3077b++;
                            c0986b.f3079d++;
                            i = i3;
                        } else {
                            i = i3;
                            if (i2 == 2) {
                                c0986b.f3077b--;
                                c0986b.f3079d--;
                                i = i3;
                            }
                        }
                    }
                } else if (i5 == c0986b.f3077b) {
                    if (i2 == 1) {
                        c0986b.f3079d++;
                    } else if (i2 == 2) {
                        c0986b.f3079d--;
                    }
                    i = i3 + 1;
                } else {
                    if (i2 == 1) {
                        c0986b.f3077b++;
                    } else if (i2 == 2) {
                        c0986b.f3077b--;
                    }
                    i = i3 - 1;
                }
            } else if (c0986b.f3077b <= i3) {
                if (c0986b.f3076a == 1) {
                    i = i3 - c0986b.f3079d;
                } else {
                    i = i3;
                    if (c0986b.f3076a == 2) {
                        i = i3 + c0986b.f3079d;
                    }
                }
            } else if (i2 == 1) {
                c0986b.f3077b++;
                i = i3;
            } else {
                i = i3;
                if (i2 == 2) {
                    c0986b.f3077b--;
                    i = i3;
                }
            }
            size--;
        }
        for (int size2 = this.f3069b.size() - 1; size2 >= 0; size2--) {
            C0986b c0986b2 = this.f3069b.get(size2);
            if (c0986b2.f3076a == 8) {
                if (c0986b2.f3079d == c0986b2.f3077b || c0986b2.f3079d < 0) {
                    this.f3069b.remove(size2);
                    mo4579a(c0986b2);
                }
            } else if (c0986b2.f3079d <= 0) {
                this.f3069b.remove(size2);
                mo4579a(c0986b2);
            }
        }
        return i3;
    }

    /* renamed from: d */
    private void m4701d(C0986b c0986b) {
        boolean z;
        int i;
        int i2 = c0986b.f3077b;
        int i3 = c0986b.f3077b;
        int i4 = c0986b.f3079d;
        int i5 = c0986b.f3077b;
        boolean z2 = true;
        int i6 = 0;
        while (i5 < i3 + i4) {
            if (this.f3070c.mo4695a(i5) != null || m4703d(i5)) {
                int i7 = i6;
                int i8 = i2;
                if (!z2) {
                    m4699e(mo4580a(4, i2, i6, c0986b.f3078c));
                    i8 = i5;
                    i7 = 0;
                }
                z = true;
                i2 = i8;
                i = i7;
            } else {
                i = i6;
                int i9 = i2;
                if (z2) {
                    m4696g(mo4580a(4, i2, i6, c0986b.f3078c));
                    i9 = i5;
                    i = 0;
                }
                i2 = i9;
                z = false;
            }
            i6 = i + 1;
            i5++;
            z2 = z;
        }
        C0986b c0986b2 = c0986b;
        if (i6 != c0986b.f3079d) {
            Object obj = c0986b.f3078c;
            mo4579a(c0986b);
            c0986b2 = mo4580a(4, i2, i6, obj);
        }
        if (!z2) {
            m4699e(c0986b2);
        } else {
            m4696g(c0986b2);
        }
    }

    /* renamed from: d */
    private boolean m4703d(int i) {
        int size = this.f3069b.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0986b c0986b = this.f3069b.get(i2);
            if (c0986b.f3076a == 8) {
                if (m4717a(c0986b.f3079d, i2 + 1) == i) {
                    return true;
                }
            } else if (c0986b.f3076a == 1) {
                int i3 = c0986b.f3077b;
                int i4 = c0986b.f3079d;
                for (int i5 = c0986b.f3077b; i5 < i3 + i4; i5++) {
                    if (m4717a(i5, i2 + 1) == i) {
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

    /* renamed from: e */
    private void m4699e(C0986b c0986b) {
        int i;
        int i2;
        int i3;
        if (c0986b.f3076a == 1 || c0986b.f3076a == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int m4702d = m4702d(c0986b.f3077b, c0986b.f3076a);
        int i4 = c0986b.f3077b;
        int i5 = c0986b.f3076a;
        if (i5 == 2) {
            i = 0;
        } else if (i5 != 4) {
            throw new IllegalArgumentException("op should be remove or update." + c0986b);
        } else {
            i = 1;
        }
        int i6 = 1;
        int i7 = 1;
        while (true) {
            i2 = i7;
            if (i6 >= c0986b.f3079d) {
                break;
            }
            int m4702d2 = m4702d(c0986b.f3077b + (i * i6), c0986b.f3076a);
            int i8 = c0986b.f3076a;
            if (i8 == 2 ? m4702d2 == m4702d : i8 == 4 && m4702d2 == m4702d + 1) {
                i3 = i2 + 1;
            } else {
                C0986b mo4580a = mo4580a(c0986b.f3076a, m4702d, i2, c0986b.f3078c);
                m4714a(mo4580a, i4);
                mo4579a(mo4580a);
                int i9 = i4;
                if (c0986b.f3076a == 4) {
                    i9 = i4 + i2;
                }
                m4702d = m4702d2;
                i4 = i9;
                i3 = 1;
            }
            i6++;
            i7 = i3;
        }
        Object obj = c0986b.f3078c;
        mo4579a(c0986b);
        if (i2 <= 0) {
            return;
        }
        C0986b mo4580a2 = mo4580a(c0986b.f3076a, m4702d, i2, obj);
        m4714a(mo4580a2, i4);
        mo4579a(mo4580a2);
    }

    /* renamed from: f */
    private void m4697f(C0986b c0986b) {
        m4696g(c0986b);
    }

    /* renamed from: g */
    private void m4696g(C0986b c0986b) {
        this.f3069b.add(c0986b);
        int i = c0986b.f3076a;
        if (i == 1) {
            this.f3070c.mo4689c(c0986b.f3077b, c0986b.f3079d);
        } else if (i == 2) {
            this.f3070c.mo4691b(c0986b.f3077b, c0986b.f3079d);
        } else if (i == 4) {
            this.f3070c.mo4693a(c0986b.f3077b, c0986b.f3079d, c0986b.f3078c);
        } else if (i == 8) {
            this.f3070c.mo4688d(c0986b.f3077b, c0986b.f3079d);
        } else {
            throw new IllegalArgumentException("Unknown update op type for " + c0986b);
        }
    }

    /* renamed from: a */
    int m4717a(int i, int i2) {
        int size = this.f3069b.size();
        int i3 = i2;
        while (true) {
            int i4 = i;
            if (i3 < size) {
                C0986b c0986b = this.f3069b.get(i3);
                if (c0986b.f3076a != 8) {
                    i = i4;
                    if (c0986b.f3077b > i4) {
                        continue;
                    } else if (c0986b.f3076a != 2) {
                        i = i4;
                        if (c0986b.f3076a == 1) {
                            i = i4 + c0986b.f3079d;
                        }
                    } else if (i4 < c0986b.f3077b + c0986b.f3079d) {
                        return -1;
                    } else {
                        i = i4 - c0986b.f3079d;
                    }
                } else if (c0986b.f3077b == i4) {
                    i = c0986b.f3079d;
                } else {
                    int i5 = i4;
                    if (c0986b.f3077b < i4) {
                        i5 = i4 - 1;
                    }
                    i = i5;
                    if (c0986b.f3079d <= i5) {
                        i = i5 + 1;
                    }
                }
                i3++;
            } else {
                return i4;
            }
        }
    }

    @Override // androidx.recyclerview.widget.C1012h.AbstractC1013a
    /* renamed from: a */
    public C0986b mo4580a(int i, int i2, int i3, Object obj) {
        C0986b c0986b;
        C0986b mo6465a = this.f3074g.mo6465a();
        if (mo6465a == null) {
            c0986b = new C0986b(i, i2, i3, obj);
        } else {
            mo6465a.f3076a = i;
            mo6465a.f3077b = i2;
            mo6465a.f3079d = i3;
            mo6465a.f3078c = obj;
            c0986b = mo6465a;
        }
        return c0986b;
    }

    /* renamed from: a */
    public void m4719a() {
        m4713a(this.f3068a);
        m4713a(this.f3069b);
        this.f3075h = 0;
    }

    @Override // androidx.recyclerview.widget.C1012h.AbstractC1013a
    /* renamed from: a */
    public void mo4579a(C0986b c0986b) {
        if (!this.f3072e) {
            c0986b.f3078c = null;
            this.f3074g.mo6464a(c0986b);
        }
    }

    /* renamed from: a */
    void m4714a(C0986b c0986b, int i) {
        this.f3070c.mo4692a(c0986b);
        int i2 = c0986b.f3076a;
        if (i2 == 2) {
            this.f3070c.mo4694a(i, c0986b.f3079d);
        } else if (i2 != 4) {
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        } else {
            this.f3070c.mo4693a(i, c0986b.f3079d, c0986b.f3078c);
        }
    }

    /* renamed from: a */
    void m4713a(List<C0986b> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            mo4579a(list.get(i));
        }
        list.clear();
    }

    /* renamed from: a */
    public boolean m4718a(int i) {
        return (i & this.f3075h) != 0;
    }

    /* renamed from: a */
    public boolean m4716a(int i, int i2, int i3) {
        boolean z = false;
        if (i == i2) {
            return false;
        }
        if (i3 != 1) {
            throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
        }
        this.f3068a.add(mo4580a(8, i, i2, null));
        this.f3075h |= 8;
        if (this.f3068a.size() == 1) {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public boolean m4715a(int i, int i2, Object obj) {
        boolean z = false;
        if (i2 < 1) {
            return false;
        }
        this.f3068a.add(mo4580a(4, i, i2, obj));
        this.f3075h |= 4;
        if (this.f3068a.size() == 1) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public int m4711b(int i) {
        return m4717a(i, 0);
    }

    /* renamed from: b */
    public void m4712b() {
        this.f3073f.m4586a(this.f3068a);
        int size = this.f3068a.size();
        for (int i = 0; i < size; i++) {
            C0986b c0986b = this.f3068a.get(i);
            int i2 = c0986b.f3076a;
            if (i2 == 1) {
                m4697f(c0986b);
            } else if (i2 == 2) {
                m4705c(c0986b);
            } else if (i2 == 4) {
                m4701d(c0986b);
            } else if (i2 == 8) {
                m4709b(c0986b);
            }
            Runnable runnable = this.f3071d;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.f3068a.clear();
    }

    /* renamed from: b */
    public boolean m4710b(int i, int i2) {
        boolean z = false;
        if (i2 < 1) {
            return false;
        }
        this.f3068a.add(mo4580a(1, i, i2, null));
        this.f3075h |= 1;
        if (this.f3068a.size() == 1) {
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    public int m4707c(int i) {
        int size = this.f3068a.size();
        int i2 = 0;
        while (true) {
            int i3 = i;
            if (i2 < size) {
                C0986b c0986b = this.f3068a.get(i2);
                int i4 = c0986b.f3076a;
                if (i4 == 1) {
                    i = i3;
                    if (c0986b.f3077b <= i3) {
                        i = i3 + c0986b.f3079d;
                    }
                } else if (i4 == 2) {
                    i = i3;
                    if (c0986b.f3077b > i3) {
                        continue;
                    } else if (c0986b.f3077b + c0986b.f3079d > i3) {
                        return -1;
                    } else {
                        i = i3 - c0986b.f3079d;
                    }
                } else if (i4 != 8) {
                    i = i3;
                } else if (c0986b.f3077b == i3) {
                    i = c0986b.f3079d;
                } else {
                    int i5 = i3;
                    if (c0986b.f3077b < i3) {
                        i5 = i3 - 1;
                    }
                    i = i5;
                    if (c0986b.f3079d <= i5) {
                        i = i5 + 1;
                    }
                }
                i2++;
            } else {
                return i3;
            }
        }
    }

    /* renamed from: c */
    public void m4708c() {
        int size = this.f3069b.size();
        for (int i = 0; i < size; i++) {
            this.f3070c.mo4690b(this.f3069b.get(i));
        }
        m4713a(this.f3069b);
        this.f3075h = 0;
    }

    /* renamed from: c */
    public boolean m4706c(int i, int i2) {
        boolean z = false;
        if (i2 < 1) {
            return false;
        }
        this.f3068a.add(mo4580a(2, i, i2, null));
        this.f3075h |= 2;
        if (this.f3068a.size() == 1) {
            z = true;
        }
        return z;
    }

    /* renamed from: d */
    public boolean m4704d() {
        return this.f3068a.size() > 0;
    }

    /* renamed from: e */
    public void m4700e() {
        m4708c();
        int size = this.f3068a.size();
        for (int i = 0; i < size; i++) {
            C0986b c0986b = this.f3068a.get(i);
            int i2 = c0986b.f3076a;
            if (i2 == 1) {
                this.f3070c.mo4690b(c0986b);
                this.f3070c.mo4689c(c0986b.f3077b, c0986b.f3079d);
            } else if (i2 == 2) {
                this.f3070c.mo4690b(c0986b);
                this.f3070c.mo4694a(c0986b.f3077b, c0986b.f3079d);
            } else if (i2 == 4) {
                this.f3070c.mo4690b(c0986b);
                this.f3070c.mo4693a(c0986b.f3077b, c0986b.f3079d, c0986b.f3078c);
            } else if (i2 == 8) {
                this.f3070c.mo4690b(c0986b);
                this.f3070c.mo4688d(c0986b.f3077b, c0986b.f3079d);
            }
            Runnable runnable = this.f3071d;
            if (runnable != null) {
                runnable.run();
            }
        }
        m4713a(this.f3068a);
        this.f3075h = 0;
    }

    /* renamed from: f */
    public boolean m4698f() {
        return !this.f3069b.isEmpty() && !this.f3068a.isEmpty();
    }
}
