package androidx.recyclerview.widget;

import androidx.core.p025g.C0523e;
import androidx.recyclerview.widget.C0988j;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.recyclerview.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/a.class */
public class C0958a implements C0988j.AbstractC0989a {

    /* renamed from: a */
    final ArrayList<C0960b> f3257a;

    /* renamed from: b */
    final ArrayList<C0960b> f3258b;

    /* renamed from: c */
    final AbstractC0959a f3259c;

    /* renamed from: d */
    Runnable f3260d;

    /* renamed from: e */
    final boolean f3261e;

    /* renamed from: f */
    final C0988j f3262f;

    /* renamed from: g */
    private C0523e.AbstractC0524a<C0960b> f3263g;

    /* renamed from: h */
    private int f3264h;

    /* renamed from: androidx.recyclerview.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/a$a.class */
    public interface AbstractC0959a {
        /* renamed from: a */
        RecyclerView.AbstractC0948x mo18602a(int i);

        /* renamed from: a */
        void mo18601a(int i, int i2);

        /* renamed from: a */
        void mo18600a(int i, int i2, Object obj);

        /* renamed from: a */
        void mo18599a(C0960b c0960b);

        /* renamed from: b */
        void mo18598b(int i, int i2);

        /* renamed from: b */
        void mo18597b(C0960b c0960b);

        /* renamed from: c */
        void mo18596c(int i, int i2);

        /* renamed from: d */
        void mo18595d(int i, int i2);
    }

    /* renamed from: androidx.recyclerview.widget.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/a$b.class */
    public static class C0960b {

        /* renamed from: a */
        int f3265a;

        /* renamed from: b */
        int f3266b;

        /* renamed from: c */
        Object f3267c;

        /* renamed from: d */
        int f3268d;

        C0960b(int i, int i2, int i3, Object obj) {
            this.f3265a = i;
            this.f3266b = i2;
            this.f3268d = i3;
            this.f3267c = obj;
        }

        /* renamed from: a */
        String m18594a() {
            String str;
            switch (this.f3265a) {
                case 1:
                    str = "add";
                    break;
                case 2:
                    str = "rm";
                    break;
                case 3:
                case 5:
                case 6:
                case 7:
                default:
                    str = "??";
                    break;
                case 4:
                    str = "up";
                    break;
                case 8:
                    str = "mv";
                    break;
            }
            return str;
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0062, code lost:
            if (r3.f3266b != r0.f3268d) goto L23;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean equals(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = 1
                r5 = r0
                r0 = r3
                r1 = r4
                if (r0 != r1) goto Lb
                r0 = r5
                r6 = r0
            L9:
                r0 = r6
                return r0
            Lb:
                r0 = r4
                if (r0 == 0) goto L1a
                r0 = r3
                java.lang.Class r0 = r0.getClass()
                r1 = r4
                java.lang.Class r1 = r1.getClass()
                if (r0 == r1) goto L1f
            L1a:
                r0 = 0
                r6 = r0
                goto L9
            L1f:
                r0 = r4
                androidx.recyclerview.widget.a$b r0 = (androidx.recyclerview.widget.C0958a.C0960b) r0
                r4 = r0
                r0 = r3
                int r0 = r0.f3265a
                r1 = r4
                int r1 = r1.f3265a
                if (r0 == r1) goto L34
                r0 = 0
                r6 = r0
                goto L9
            L34:
                r0 = r3
                int r0 = r0.f3265a
                r1 = 8
                if (r0 != r1) goto L65
                r0 = r3
                int r0 = r0.f3268d
                r1 = r3
                int r1 = r1.f3266b
                int r0 = r0 - r1
                int r0 = java.lang.Math.abs(r0)
                r1 = 1
                if (r0 != r1) goto L65
                r0 = r3
                int r0 = r0.f3268d
                r1 = r4
                int r1 = r1.f3266b
                if (r0 != r1) goto L65
                r0 = r5
                r6 = r0
                r0 = r3
                int r0 = r0.f3266b
                r1 = r4
                int r1 = r1.f3268d
                if (r0 == r1) goto L9
            L65:
                r0 = r3
                int r0 = r0.f3268d
                r1 = r4
                int r1 = r1.f3268d
                if (r0 == r1) goto L75
                r0 = 0
                r6 = r0
                goto L9
            L75:
                r0 = r3
                int r0 = r0.f3266b
                r1 = r4
                int r1 = r1.f3266b
                if (r0 == r1) goto L85
                r0 = 0
                r6 = r0
                goto L9
            L85:
                r0 = r3
                java.lang.Object r0 = r0.f3267c
                if (r0 == 0) goto La1
                r0 = r5
                r6 = r0
                r0 = r3
                java.lang.Object r0 = r0.f3267c
                r1 = r4
                java.lang.Object r1 = r1.f3267c
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L9
                r0 = 0
                r6 = r0
                goto L9
            La1:
                r0 = r5
                r6 = r0
                r0 = r4
                java.lang.Object r0 = r0.f3267c
                if (r0 == 0) goto L9
                r0 = 0
                r6 = r0
                goto L9
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0958a.C0960b.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            return (((this.f3265a * 31) + this.f3266b) * 31) + this.f3268d;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + m18594a() + ",s:" + this.f3266b + "c:" + this.f3268d + ",p:" + this.f3267c + "]";
        }
    }

    public C0958a(AbstractC0959a abstractC0959a) {
        this(abstractC0959a, false);
    }

    C0958a(AbstractC0959a abstractC0959a, boolean z) {
        this.f3263g = new C0523e.C0525b(30);
        this.f3257a = new ArrayList<>();
        this.f3258b = new ArrayList<>();
        this.f3264h = 0;
        this.f3259c = abstractC0959a;
        this.f3261e = z;
        this.f3262f = new C0988j(this);
    }

    /* renamed from: b */
    private void m18615b(C0960b c0960b) {
        m18603g(c0960b);
    }

    /* renamed from: c */
    private int m18612c(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int size = this.f3258b.size() - 1;
        while (size >= 0) {
            C0960b c0960b = this.f3258b.get(size);
            if (c0960b.f3265a == 8) {
                if (c0960b.f3266b < c0960b.f3268d) {
                    i4 = c0960b.f3266b;
                    i5 = c0960b.f3268d;
                } else {
                    i4 = c0960b.f3268d;
                    i5 = c0960b.f3266b;
                }
                if (i < i4 || i > i5) {
                    if (i < c0960b.f3266b) {
                        if (i2 == 1) {
                            c0960b.f3266b++;
                            c0960b.f3268d++;
                        } else if (i2 == 2) {
                            c0960b.f3266b--;
                            c0960b.f3268d--;
                        }
                    }
                } else if (i4 == c0960b.f3266b) {
                    if (i2 == 1) {
                        c0960b.f3268d++;
                    } else if (i2 == 2) {
                        c0960b.f3268d--;
                    }
                    i++;
                } else {
                    if (i2 == 1) {
                        c0960b.f3266b++;
                    } else if (i2 == 2) {
                        c0960b.f3266b--;
                    }
                    i--;
                }
                i3 = i;
            } else if (c0960b.f3266b <= i) {
                if (c0960b.f3265a == 1) {
                    i3 = i - c0960b.f3268d;
                } else {
                    i3 = i;
                    if (c0960b.f3265a == 2) {
                        i3 = i + c0960b.f3268d;
                    }
                }
            } else if (i2 == 1) {
                c0960b.f3266b++;
                i3 = i;
            } else {
                i3 = i;
                if (i2 == 2) {
                    c0960b.f3266b--;
                    i3 = i;
                }
            }
            size--;
            i = i3;
        }
        for (int size2 = this.f3258b.size() - 1; size2 >= 0; size2--) {
            C0960b c0960b2 = this.f3258b.get(size2);
            if (c0960b2.f3265a == 8) {
                if (c0960b2.f3268d == c0960b2.f3266b || c0960b2.f3268d < 0) {
                    this.f3258b.remove(size2);
                    mo18469a(c0960b2);
                }
            } else if (c0960b2.f3268d <= 0) {
                this.f3258b.remove(size2);
                mo18469a(c0960b2);
            }
        }
        return i;
    }

    /* renamed from: c */
    private void m18611c(C0960b c0960b) {
        int i;
        boolean z;
        int i2;
        boolean z2;
        int i3 = c0960b.f3266b;
        int i4 = c0960b.f3266b + c0960b.f3268d;
        boolean z3 = true;
        int i5 = c0960b.f3266b;
        int i6 = 0;
        while (true) {
            i = i6;
            if (i5 >= i4) {
                break;
            }
            if (this.f3259c.mo18602a(i5) != null || m18609d(i5)) {
                if (!z3) {
                    m18606e(mo18470a(2, i3, i, null));
                    z = true;
                } else {
                    z = false;
                }
                z3 = true;
            } else {
                if (z3) {
                    m18603g(mo18470a(2, i3, i, null));
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
        C0960b c0960b2 = c0960b;
        if (i != c0960b.f3268d) {
            mo18469a(c0960b);
            c0960b2 = mo18470a(2, i3, i, null);
        }
        if (!z3) {
            m18606e(c0960b2);
        } else {
            m18603g(c0960b2);
        }
    }

    /* renamed from: d */
    private void m18608d(C0960b c0960b) {
        boolean z;
        int i;
        int i2 = c0960b.f3266b;
        int i3 = c0960b.f3266b;
        int i4 = c0960b.f3268d;
        boolean z2 = true;
        int i5 = c0960b.f3266b;
        int i6 = 0;
        while (i5 < i3 + i4) {
            if (this.f3259c.mo18602a(i5) != null || m18609d(i5)) {
                i = i6;
                int i7 = i2;
                if (!z2) {
                    m18606e(mo18470a(4, i2, i6, c0960b.f3267c));
                    i = 0;
                    i7 = i5;
                }
                z = true;
                i2 = i7;
            } else {
                i = i6;
                int i8 = i2;
                if (z2) {
                    m18603g(mo18470a(4, i2, i6, c0960b.f3267c));
                    i = 0;
                    i8 = i5;
                }
                i2 = i8;
                z = false;
            }
            i6 = i + 1;
            i5++;
            z2 = z;
        }
        C0960b c0960b2 = c0960b;
        if (i6 != c0960b.f3268d) {
            Object obj = c0960b.f3267c;
            mo18469a(c0960b);
            c0960b2 = mo18470a(4, i2, i6, obj);
        }
        if (!z2) {
            m18606e(c0960b2);
        } else {
            m18603g(c0960b2);
        }
    }

    /* renamed from: d */
    private boolean m18609d(int i) {
        boolean z;
        int size = this.f3258b.size();
        int i2 = 0;
        loop0: while (true) {
            if (i2 >= size) {
                z = false;
                break;
            }
            C0960b c0960b = this.f3258b.get(i2);
            if (c0960b.f3265a != 8) {
                if (c0960b.f3265a == 1) {
                    int i3 = c0960b.f3266b;
                    int i4 = c0960b.f3268d;
                    for (int i5 = c0960b.f3266b; i5 < i3 + i4; i5++) {
                        if (m18622a(i5, i2 + 1) == i) {
                            z = true;
                            break loop0;
                        }
                    }
                    continue;
                } else {
                    continue;
                }
                i2++;
            } else if (m18622a(c0960b.f3268d, i2 + 1) == i) {
                z = true;
                break;
            } else {
                i2++;
            }
        }
        return z;
    }

    /* renamed from: e */
    private void m18606e(C0960b c0960b) {
        int i;
        boolean z;
        int i2;
        if (c0960b.f3265a == 1 || c0960b.f3265a == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int m18612c = m18612c(c0960b.f3266b, c0960b.f3265a);
        int i3 = c0960b.f3266b;
        switch (c0960b.f3265a) {
            case 2:
                i = 0;
                break;
            case 3:
            default:
                throw new IllegalArgumentException("op should be remove or update." + c0960b);
            case 4:
                i = 1;
                break;
        }
        int i4 = 1;
        int i5 = 1;
        while (true) {
            int i6 = i5;
            if (i4 >= c0960b.f3268d) {
                Object obj = c0960b.f3267c;
                mo18469a(c0960b);
                if (i6 <= 0) {
                    return;
                }
                C0960b mo18470a = mo18470a(c0960b.f3265a, m18612c, i6, obj);
                m18620a(mo18470a, i3);
                mo18469a(mo18470a);
                return;
            }
            int m18612c2 = m18612c(c0960b.f3266b + (i * i4), c0960b.f3265a);
            switch (c0960b.f3265a) {
                case 2:
                    if (m18612c2 != m18612c) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 3:
                default:
                    z = false;
                    break;
                case 4:
                    if (m18612c2 != m18612c + 1) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
            }
            if (z) {
                i2 = i6 + 1;
            } else {
                C0960b mo18470a2 = mo18470a(c0960b.f3265a, m18612c, i6, c0960b.f3267c);
                m18620a(mo18470a2, i3);
                mo18469a(mo18470a2);
                int i7 = i3;
                if (c0960b.f3265a == 4) {
                    i7 = i3 + i6;
                }
                m18612c = m18612c2;
                i3 = i7;
                i2 = 1;
            }
            i4++;
            i5 = i2;
        }
    }

    /* renamed from: f */
    private void m18604f(C0960b c0960b) {
        m18603g(c0960b);
    }

    /* renamed from: g */
    private void m18603g(C0960b c0960b) {
        this.f3258b.add(c0960b);
        switch (c0960b.f3265a) {
            case 1:
                this.f3259c.mo18596c(c0960b.f3266b, c0960b.f3268d);
                return;
            case 2:
                this.f3259c.mo18598b(c0960b.f3266b, c0960b.f3268d);
                return;
            case 3:
            case 5:
            case 6:
            case 7:
            default:
                throw new IllegalArgumentException("Unknown update op type for " + c0960b);
            case 4:
                this.f3259c.mo18600a(c0960b.f3266b, c0960b.f3268d, c0960b.f3267c);
                return;
            case 8:
                this.f3259c.mo18595d(c0960b.f3266b, c0960b.f3268d);
                return;
        }
    }

    /* renamed from: a */
    int m18622a(int i, int i2) {
        int i3;
        int size = this.f3258b.size();
        int i4 = i2;
        while (true) {
            int i5 = i;
            i3 = i5;
            if (i4 >= size) {
                break;
            }
            C0960b c0960b = this.f3258b.get(i4);
            if (c0960b.f3265a != 8) {
                i = i5;
                if (c0960b.f3266b > i5) {
                    continue;
                } else if (c0960b.f3265a != 2) {
                    i = i5;
                    if (c0960b.f3265a == 1) {
                        i = i5 + c0960b.f3268d;
                    }
                } else if (i5 < c0960b.f3266b + c0960b.f3268d) {
                    i3 = -1;
                    break;
                } else {
                    i = i5 - c0960b.f3268d;
                }
            } else if (c0960b.f3266b == i5) {
                i = c0960b.f3268d;
            } else {
                int i6 = i5;
                if (c0960b.f3266b < i5) {
                    i6 = i5 - 1;
                }
                i = i6;
                if (c0960b.f3268d <= i6) {
                    i = i6 + 1;
                }
            }
            i4++;
        }
        return i3;
    }

    @Override // androidx.recyclerview.widget.C0988j.AbstractC0989a
    /* renamed from: a */
    public C0960b mo18470a(int i, int i2, int i3, Object obj) {
        C0960b c0960b;
        C0960b mo17021a = this.f3263g.mo17021a();
        if (mo17021a == null) {
            c0960b = new C0960b(i, i2, i3, obj);
        } else {
            mo17021a.f3265a = i;
            mo17021a.f3266b = i2;
            mo17021a.f3268d = i3;
            mo17021a.f3267c = obj;
            c0960b = mo17021a;
        }
        return c0960b;
    }

    /* renamed from: a */
    public void m18624a() {
        m18619a(this.f3257a);
        m18619a(this.f3258b);
        this.f3264h = 0;
    }

    @Override // androidx.recyclerview.widget.C0988j.AbstractC0989a
    /* renamed from: a */
    public void mo18469a(C0960b c0960b) {
        if (!this.f3261e) {
            c0960b.f3267c = null;
            this.f3263g.mo17020a(c0960b);
        }
    }

    /* renamed from: a */
    void m18620a(C0960b c0960b, int i) {
        this.f3259c.mo18599a(c0960b);
        switch (c0960b.f3265a) {
            case 2:
                this.f3259c.mo18601a(i, c0960b.f3268d);
                return;
            case 3:
            default:
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            case 4:
                this.f3259c.mo18600a(i, c0960b.f3268d, c0960b.f3267c);
                return;
        }
    }

    /* renamed from: a */
    void m18619a(List<C0960b> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            mo18469a(list.get(i));
        }
        list.clear();
    }

    /* renamed from: a */
    public boolean m18623a(int i) {
        return (this.f3264h & i) != 0;
    }

    /* renamed from: a */
    public boolean m18621a(int i, int i2, Object obj) {
        boolean z = false;
        if (i2 >= 1) {
            this.f3257a.add(mo18470a(4, i, i2, obj));
            this.f3264h |= 4;
            z = this.f3257a.size() == 1;
        }
        return z;
    }

    /* renamed from: b */
    public int m18617b(int i) {
        return m18622a(i, 0);
    }

    /* renamed from: b */
    public void m18618b() {
        this.f3262f.m18476a(this.f3257a);
        int size = this.f3257a.size();
        for (int i = 0; i < size; i++) {
            C0960b c0960b = this.f3257a.get(i);
            switch (c0960b.f3265a) {
                case 1:
                    m18604f(c0960b);
                    break;
                case 2:
                    m18611c(c0960b);
                    break;
                case 4:
                    m18608d(c0960b);
                    break;
                case 8:
                    m18615b(c0960b);
                    break;
            }
            if (this.f3260d != null) {
                this.f3260d.run();
            }
        }
        this.f3257a.clear();
    }

    /* renamed from: b */
    public boolean m18616b(int i, int i2) {
        boolean z = false;
        if (i2 >= 1) {
            this.f3257a.add(mo18470a(2, i, i2, null));
            this.f3264h |= 2;
            z = this.f3257a.size() == 1;
        }
        return z;
    }

    /* renamed from: c */
    public int m18613c(int i) {
        int i2;
        int size = this.f3257a.size();
        int i3 = 0;
        while (true) {
            int i4 = i;
            i2 = i4;
            if (i3 < size) {
                C0960b c0960b = this.f3257a.get(i3);
                switch (c0960b.f3265a) {
                    case 1:
                        i = i4;
                        if (c0960b.f3266b > i4) {
                            break;
                        } else {
                            i = i4 + c0960b.f3268d;
                            break;
                        }
                    case 2:
                        i = i4;
                        if (c0960b.f3266b <= i4) {
                            if (c0960b.f3266b + c0960b.f3268d <= i4) {
                                i = i4 - c0960b.f3268d;
                                break;
                            } else {
                                i2 = -1;
                                break;
                            }
                        } else {
                            continue;
                        }
                    case 8:
                        if (c0960b.f3266b != i4) {
                            int i5 = i4;
                            if (c0960b.f3266b < i4) {
                                i5 = i4 - 1;
                            }
                            i = i5;
                            if (c0960b.f3268d > i5) {
                                break;
                            } else {
                                i = i5 + 1;
                                break;
                            }
                        } else {
                            i = c0960b.f3268d;
                            break;
                        }
                    default:
                        i = i4;
                        break;
                }
                i3++;
            }
        }
        return i2;
    }

    /* renamed from: c */
    public void m18614c() {
        int size = this.f3258b.size();
        for (int i = 0; i < size; i++) {
            this.f3259c.mo18597b(this.f3258b.get(i));
        }
        m18619a(this.f3258b);
        this.f3264h = 0;
    }

    /* renamed from: d */
    public boolean m18610d() {
        return this.f3257a.size() > 0;
    }

    /* renamed from: e */
    public void m18607e() {
        m18614c();
        int size = this.f3257a.size();
        for (int i = 0; i < size; i++) {
            C0960b c0960b = this.f3257a.get(i);
            switch (c0960b.f3265a) {
                case 1:
                    this.f3259c.mo18597b(c0960b);
                    this.f3259c.mo18596c(c0960b.f3266b, c0960b.f3268d);
                    break;
                case 2:
                    this.f3259c.mo18597b(c0960b);
                    this.f3259c.mo18601a(c0960b.f3266b, c0960b.f3268d);
                    break;
                case 4:
                    this.f3259c.mo18597b(c0960b);
                    this.f3259c.mo18600a(c0960b.f3266b, c0960b.f3268d, c0960b.f3267c);
                    break;
                case 8:
                    this.f3259c.mo18597b(c0960b);
                    this.f3259c.mo18595d(c0960b.f3266b, c0960b.f3268d);
                    break;
            }
            if (this.f3260d != null) {
                this.f3260d.run();
            }
        }
        m18619a(this.f3257a);
        this.f3264h = 0;
    }

    /* renamed from: f */
    public boolean m18605f() {
        return !this.f3258b.isEmpty() && !this.f3257a.isEmpty();
    }
}
