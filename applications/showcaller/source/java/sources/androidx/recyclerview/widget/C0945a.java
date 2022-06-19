package androidx.recyclerview.widget;

import androidx.recyclerview.widget.C0973h;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import p020b.p041h.p049k.AbstractC1594e;
import p020b.p041h.p049k.C1595f;
/* renamed from: androidx.recyclerview.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/a.class */
public final class C0945a implements C0973h.AbstractC0974a {

    /* renamed from: a */
    private AbstractC1594e<C0947b> f4232a;

    /* renamed from: b */
    final ArrayList<C0947b> f4233b;

    /* renamed from: c */
    final ArrayList<C0947b> f4234c;

    /* renamed from: d */
    final AbstractC0946a f4235d;

    /* renamed from: e */
    Runnable f4236e;

    /* renamed from: f */
    final boolean f4237f;

    /* renamed from: g */
    final C0973h f4238g;

    /* renamed from: h */
    private int f4239h;

    /* renamed from: androidx.recyclerview.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/a$a.class */
    public interface AbstractC0946a {
        /* renamed from: a */
        void mo31527a(int i, int i2);

        /* renamed from: b */
        void mo31526b(C0947b c0947b);

        /* renamed from: c */
        void mo31525c(int i, int i2, Object obj);

        /* renamed from: d */
        void mo31524d(C0947b c0947b);

        /* renamed from: e */
        RecyclerView.AbstractC0905b0 mo31523e(int i);

        /* renamed from: f */
        void mo31522f(int i, int i2);

        /* renamed from: g */
        void mo31521g(int i, int i2);

        /* renamed from: h */
        void mo31520h(int i, int i2);
    }

    /* renamed from: androidx.recyclerview.widget.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/a$b.class */
    public static final class C0947b {

        /* renamed from: a */
        int f4240a;

        /* renamed from: b */
        int f4241b;

        /* renamed from: c */
        Object f4242c;

        /* renamed from: d */
        int f4243d;

        C0947b(int i, int i2, int i3, Object obj) {
            this.f4240a = i;
            this.f4241b = i2;
            this.f4243d = i3;
            this.f4242c = obj;
        }

        /* renamed from: a */
        String m31519a() {
            int i = this.f4240a;
            return i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0947b)) {
                return false;
            }
            C0947b c0947b = (C0947b) obj;
            int i = this.f4240a;
            if (i != c0947b.f4240a) {
                return false;
            }
            if (i == 8 && Math.abs(this.f4243d - this.f4241b) == 1 && this.f4243d == c0947b.f4241b && this.f4241b == c0947b.f4243d) {
                return true;
            }
            if (this.f4243d != c0947b.f4243d || this.f4241b != c0947b.f4241b) {
                return false;
            }
            Object obj2 = this.f4242c;
            return obj2 != null ? obj2.equals(c0947b.f4242c) : c0947b.f4242c == null;
        }

        public int hashCode() {
            return (((this.f4240a * 31) + this.f4241b) * 31) + this.f4243d;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + m31519a() + ",s:" + this.f4241b + "c:" + this.f4243d + ",p:" + this.f4242c + "]";
        }
    }

    public C0945a(AbstractC0946a abstractC0946a) {
        this(abstractC0946a, false);
    }

    C0945a(AbstractC0946a abstractC0946a, boolean z) {
        this.f4232a = new C1595f(30);
        this.f4233b = new ArrayList<>();
        this.f4234c = new ArrayList<>();
        this.f4239h = 0;
        this.f4235d = abstractC0946a;
        this.f4237f = z;
        this.f4238g = new C0973h(this);
    }

    /* renamed from: c */
    private void m31550c(C0947b c0947b) {
        m31532u(c0947b);
    }

    /* renamed from: d */
    private void m31549d(C0947b c0947b) {
        m31532u(c0947b);
    }

    /* renamed from: f */
    private void m31547f(C0947b c0947b) {
        int i;
        boolean z;
        int i2;
        boolean z2;
        int i3 = c0947b.f4241b;
        int i4 = c0947b.f4243d + i3;
        boolean z3 = true;
        int i5 = i3;
        int i6 = 0;
        while (true) {
            i = i6;
            if (i5 >= i4) {
                break;
            }
            if (this.f4235d.mo31523e(i5) != null || m31545h(i5)) {
                if (!z3) {
                    m31542k(mo31402b(2, i3, i, null));
                    z = true;
                } else {
                    z = false;
                }
                z3 = true;
            } else {
                if (z3) {
                    m31532u(mo31402b(2, i3, i, null));
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
        C0947b c0947b2 = c0947b;
        if (i != c0947b.f4243d) {
            mo31403a(c0947b);
            c0947b2 = mo31402b(2, i3, i, null);
        }
        if (!z3) {
            m31542k(c0947b2);
        } else {
            m31532u(c0947b2);
        }
    }

    /* renamed from: g */
    private void m31546g(C0947b c0947b) {
        int i;
        boolean z;
        int i2 = c0947b.f4241b;
        int i3 = c0947b.f4243d;
        int i4 = i2;
        boolean z2 = true;
        int i5 = 0;
        int i6 = i2;
        while (i6 < i3 + i2) {
            if (this.f4235d.mo31523e(i6) != null || m31545h(i6)) {
                int i7 = i4;
                i = i5;
                if (!z2) {
                    m31542k(mo31402b(4, i4, i5, c0947b.f4242c));
                    i7 = i6;
                    i = 0;
                }
                z = true;
                i4 = i7;
            } else {
                int i8 = i4;
                int i9 = i5;
                if (z2) {
                    m31532u(mo31402b(4, i4, i5, c0947b.f4242c));
                    i8 = i6;
                    i9 = 0;
                }
                z = false;
                i4 = i8;
                i = i9;
            }
            i6++;
            z2 = z;
            i5 = i + 1;
        }
        C0947b c0947b2 = c0947b;
        if (i5 != c0947b.f4243d) {
            Object obj = c0947b.f4242c;
            mo31403a(c0947b);
            c0947b2 = mo31402b(4, i4, i5, obj);
        }
        if (!z2) {
            m31542k(c0947b2);
        } else {
            m31532u(c0947b2);
        }
    }

    /* renamed from: h */
    private boolean m31545h(int i) {
        int size = this.f4234c.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0947b c0947b = this.f4234c.get(i2);
            int i3 = c0947b.f4240a;
            if (i3 == 8) {
                if (m31539n(c0947b.f4243d, i2 + 1) == i) {
                    return true;
                }
            } else if (i3 == 1) {
                int i4 = c0947b.f4241b;
                int i5 = c0947b.f4243d;
                for (int i6 = i4; i6 < i5 + i4; i6++) {
                    if (m31539n(i6, i2 + 1) == i) {
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
    private void m31542k(C0947b c0947b) {
        int i;
        int i2 = c0947b.f4240a;
        if (i2 == 1 || i2 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int m31528y = m31528y(c0947b.f4241b, i2);
        int i3 = c0947b.f4241b;
        int i4 = c0947b.f4240a;
        if (i4 == 2) {
            i = 0;
        } else if (i4 != 4) {
            throw new IllegalArgumentException("op should be remove or update." + c0947b);
        } else {
            i = 1;
        }
        int i5 = 1;
        for (int i6 = 1; i6 < c0947b.f4243d; i6++) {
            int m31528y2 = m31528y(c0947b.f4241b + (i * i6), c0947b.f4240a);
            int i7 = c0947b.f4240a;
            if (i7 == 2 ? m31528y2 == m31528y : i7 == 4 && m31528y2 == m31528y + 1) {
                i5++;
            } else {
                C0947b mo31402b = mo31402b(i7, m31528y, i5, c0947b.f4242c);
                m31541l(mo31402b, i3);
                mo31403a(mo31402b);
                int i8 = i3;
                if (c0947b.f4240a == 4) {
                    i8 = i3 + i5;
                }
                i5 = 1;
                i3 = i8;
                m31528y = m31528y2;
            }
        }
        Object obj = c0947b.f4242c;
        mo31403a(c0947b);
        if (i5 <= 0) {
            return;
        }
        C0947b mo31402b2 = mo31402b(c0947b.f4240a, m31528y, i5, obj);
        m31541l(mo31402b2, i3);
        mo31403a(mo31402b2);
    }

    /* renamed from: u */
    private void m31532u(C0947b c0947b) {
        this.f4234c.add(c0947b);
        int i = c0947b.f4240a;
        if (i == 1) {
            this.f4235d.mo31521g(c0947b.f4241b, c0947b.f4243d);
        } else if (i == 2) {
            this.f4235d.mo31522f(c0947b.f4241b, c0947b.f4243d);
        } else if (i == 4) {
            this.f4235d.mo31525c(c0947b.f4241b, c0947b.f4243d, c0947b.f4242c);
        } else if (i == 8) {
            this.f4235d.mo31527a(c0947b.f4241b, c0947b.f4243d);
        } else {
            throw new IllegalArgumentException("Unknown update op type for " + c0947b);
        }
    }

    /* renamed from: y */
    private int m31528y(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int size = this.f4234c.size() - 1;
        while (true) {
            i3 = i;
            if (size < 0) {
                break;
            }
            C0947b c0947b = this.f4234c.get(size);
            int i6 = c0947b.f4240a;
            if (i6 == 8) {
                int i7 = c0947b.f4241b;
                int i8 = c0947b.f4243d;
                if (i7 < i8) {
                    i4 = i7;
                    i5 = i8;
                } else {
                    i5 = i7;
                    i4 = i8;
                }
                if (i3 < i4 || i3 > i5) {
                    i = i3;
                    if (i3 < i7) {
                        if (i2 == 1) {
                            c0947b.f4241b = i7 + 1;
                            c0947b.f4243d = i8 + 1;
                            i = i3;
                        } else {
                            i = i3;
                            if (i2 == 2) {
                                c0947b.f4241b = i7 - 1;
                                c0947b.f4243d = i8 - 1;
                                i = i3;
                            }
                        }
                    }
                } else if (i4 == i7) {
                    if (i2 == 1) {
                        c0947b.f4243d = i8 + 1;
                    } else if (i2 == 2) {
                        c0947b.f4243d = i8 - 1;
                    }
                    i = i3 + 1;
                } else {
                    if (i2 == 1) {
                        c0947b.f4241b = i7 + 1;
                    } else if (i2 == 2) {
                        c0947b.f4241b = i7 - 1;
                    }
                    i = i3 - 1;
                }
            } else {
                int i9 = c0947b.f4241b;
                if (i9 <= i3) {
                    if (i6 == 1) {
                        i = i3 - c0947b.f4243d;
                    } else {
                        i = i3;
                        if (i6 == 2) {
                            i = i3 + c0947b.f4243d;
                        }
                    }
                } else if (i2 == 1) {
                    c0947b.f4241b = i9 + 1;
                    i = i3;
                } else {
                    i = i3;
                    if (i2 == 2) {
                        c0947b.f4241b = i9 - 1;
                        i = i3;
                    }
                }
            }
            size--;
        }
        for (int size2 = this.f4234c.size() - 1; size2 >= 0; size2--) {
            C0947b c0947b2 = this.f4234c.get(size2);
            if (c0947b2.f4240a == 8) {
                int i10 = c0947b2.f4243d;
                if (i10 == c0947b2.f4241b || i10 < 0) {
                    this.f4234c.remove(size2);
                    mo31403a(c0947b2);
                }
            } else if (c0947b2.f4243d <= 0) {
                this.f4234c.remove(size2);
                mo31403a(c0947b2);
            }
        }
        return i3;
    }

    @Override // androidx.recyclerview.widget.C0973h.AbstractC0974a
    /* renamed from: a */
    public void mo31403a(C0947b c0947b) {
        if (!this.f4237f) {
            c0947b.f4242c = null;
            this.f4232a.mo22685b(c0947b);
        }
    }

    @Override // androidx.recyclerview.widget.C0973h.AbstractC0974a
    /* renamed from: b */
    public C0947b mo31402b(int i, int i2, int i3, Object obj) {
        C0947b c0947b;
        C0947b mo22686a = this.f4232a.mo22686a();
        if (mo22686a == null) {
            c0947b = new C0947b(i, i2, i3, obj);
        } else {
            mo22686a.f4240a = i;
            mo22686a.f4241b = i2;
            mo22686a.f4243d = i3;
            mo22686a.f4242c = obj;
            c0947b = mo22686a;
        }
        return c0947b;
    }

    /* renamed from: e */
    public int m31548e(int i) {
        int size = this.f4233b.size();
        int i2 = 0;
        while (true) {
            int i3 = i;
            if (i2 < size) {
                C0947b c0947b = this.f4233b.get(i2);
                int i4 = c0947b.f4240a;
                if (i4 == 1) {
                    i = i3;
                    if (c0947b.f4241b <= i3) {
                        i = i3 + c0947b.f4243d;
                    }
                } else if (i4 == 2) {
                    int i5 = c0947b.f4241b;
                    i = i3;
                    if (i5 <= i3) {
                        int i6 = c0947b.f4243d;
                        if (i5 + i6 > i3) {
                            return -1;
                        }
                        i = i3 - i6;
                    } else {
                        continue;
                    }
                } else if (i4 != 8) {
                    i = i3;
                } else {
                    int i7 = c0947b.f4241b;
                    if (i7 == i3) {
                        i = c0947b.f4243d;
                    } else {
                        int i8 = i3;
                        if (i7 < i3) {
                            i8 = i3 - 1;
                        }
                        i = i8;
                        if (c0947b.f4243d <= i8) {
                            i = i8 + 1;
                        }
                    }
                }
                i2++;
            } else {
                return i3;
            }
        }
    }

    /* renamed from: i */
    public void m31544i() {
        int size = this.f4234c.size();
        for (int i = 0; i < size; i++) {
            this.f4235d.mo31524d(this.f4234c.get(i));
        }
        m31530w(this.f4234c);
        this.f4239h = 0;
    }

    /* renamed from: j */
    public void m31543j() {
        m31544i();
        int size = this.f4233b.size();
        for (int i = 0; i < size; i++) {
            C0947b c0947b = this.f4233b.get(i);
            int i2 = c0947b.f4240a;
            if (i2 == 1) {
                this.f4235d.mo31524d(c0947b);
                this.f4235d.mo31521g(c0947b.f4241b, c0947b.f4243d);
            } else if (i2 == 2) {
                this.f4235d.mo31524d(c0947b);
                this.f4235d.mo31520h(c0947b.f4241b, c0947b.f4243d);
            } else if (i2 == 4) {
                this.f4235d.mo31524d(c0947b);
                this.f4235d.mo31525c(c0947b.f4241b, c0947b.f4243d, c0947b.f4242c);
            } else if (i2 == 8) {
                this.f4235d.mo31524d(c0947b);
                this.f4235d.mo31527a(c0947b.f4241b, c0947b.f4243d);
            }
            Runnable runnable = this.f4236e;
            if (runnable != null) {
                runnable.run();
            }
        }
        m31530w(this.f4233b);
        this.f4239h = 0;
    }

    /* renamed from: l */
    void m31541l(C0947b c0947b, int i) {
        this.f4235d.mo31526b(c0947b);
        int i2 = c0947b.f4240a;
        if (i2 == 2) {
            this.f4235d.mo31520h(i, c0947b.f4243d);
        } else if (i2 != 4) {
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        } else {
            this.f4235d.mo31525c(i, c0947b.f4243d, c0947b.f4242c);
        }
    }

    /* renamed from: m */
    public int m31540m(int i) {
        return m31539n(i, 0);
    }

    /* renamed from: n */
    int m31539n(int i, int i2) {
        int size = this.f4234c.size();
        int i3 = i2;
        while (true) {
            int i4 = i;
            if (i3 < size) {
                C0947b c0947b = this.f4234c.get(i3);
                int i5 = c0947b.f4240a;
                if (i5 == 8) {
                    int i6 = c0947b.f4241b;
                    if (i6 == i4) {
                        i = c0947b.f4243d;
                    } else {
                        int i7 = i4;
                        if (i6 < i4) {
                            i7 = i4 - 1;
                        }
                        i = i7;
                        if (c0947b.f4243d <= i7) {
                            i = i7 + 1;
                        }
                    }
                } else {
                    int i8 = c0947b.f4241b;
                    i = i4;
                    if (i8 > i4) {
                        continue;
                    } else if (i5 == 2) {
                        int i9 = c0947b.f4243d;
                        if (i4 < i8 + i9) {
                            return -1;
                        }
                        i = i4 - i9;
                    } else {
                        i = i4;
                        if (i5 == 1) {
                            i = i4 + c0947b.f4243d;
                        }
                    }
                }
                i3++;
            } else {
                return i4;
            }
        }
    }

    /* renamed from: o */
    public boolean m31538o(int i) {
        return (i & this.f4239h) != 0;
    }

    /* renamed from: p */
    public boolean m31537p() {
        return this.f4233b.size() > 0;
    }

    /* renamed from: q */
    public boolean m31536q() {
        return !this.f4234c.isEmpty() && !this.f4233b.isEmpty();
    }

    /* renamed from: r */
    public boolean m31535r(int i, int i2, Object obj) {
        boolean z = false;
        if (i2 < 1) {
            return false;
        }
        this.f4233b.add(mo31402b(4, i, i2, obj));
        this.f4239h |= 4;
        if (this.f4233b.size() == 1) {
            z = true;
        }
        return z;
    }

    /* renamed from: s */
    public boolean m31534s(int i, int i2) {
        boolean z = false;
        if (i2 < 1) {
            return false;
        }
        this.f4233b.add(mo31402b(1, i, i2, null));
        this.f4239h |= 1;
        if (this.f4233b.size() == 1) {
            z = true;
        }
        return z;
    }

    /* renamed from: t */
    public boolean m31533t(int i, int i2) {
        boolean z = false;
        if (i2 < 1) {
            return false;
        }
        this.f4233b.add(mo31402b(2, i, i2, null));
        this.f4239h |= 2;
        if (this.f4233b.size() == 1) {
            z = true;
        }
        return z;
    }

    /* renamed from: v */
    public void m31531v() {
        this.f4238g.m31408b(this.f4233b);
        int size = this.f4233b.size();
        for (int i = 0; i < size; i++) {
            C0947b c0947b = this.f4233b.get(i);
            int i2 = c0947b.f4240a;
            if (i2 == 1) {
                m31550c(c0947b);
            } else if (i2 == 2) {
                m31547f(c0947b);
            } else if (i2 == 4) {
                m31546g(c0947b);
            } else if (i2 == 8) {
                m31549d(c0947b);
            }
            Runnable runnable = this.f4236e;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.f4233b.clear();
    }

    /* renamed from: w */
    void m31530w(List<C0947b> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            mo31403a(list.get(i));
        }
        list.clear();
    }

    /* renamed from: x */
    public void m31529x() {
        m31530w(this.f4233b);
        m31530w(this.f4234c);
        this.f4239h = 0;
    }
}
