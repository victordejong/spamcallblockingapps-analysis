package androidx.recyclerview.widget;

import androidx.recyclerview.widget.C0642q;
import java.util.ArrayList;
import java.util.List;
import p152l0.C3428c;
/* renamed from: androidx.recyclerview.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/a.class */
public class C0604a implements C0642q.AbstractC0643a {

    /* renamed from: d */
    public final AbstractC0605a f2388d;

    /* renamed from: a */
    public C3428c f2385a = new C3428c(30);

    /* renamed from: b */
    public final ArrayList<C0606b> f2386b = new ArrayList<>();

    /* renamed from: c */
    public final ArrayList<C0606b> f2387c = new ArrayList<>();

    /* renamed from: f */
    public int f2390f = 0;

    /* renamed from: e */
    public final C0642q f2389e = new C0642q(this);

    /* renamed from: androidx.recyclerview.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/a$a.class */
    public interface AbstractC0605a {
    }

    /* renamed from: androidx.recyclerview.widget.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/a$b.class */
    public static class C0606b {

        /* renamed from: a */
        public int f2391a;

        /* renamed from: b */
        public int f2392b;

        /* renamed from: c */
        public Object f2393c;

        /* renamed from: d */
        public int f2394d;

        public C0606b(int i, int i2, int i3, Object obj) {
            this.f2391a = i;
            this.f2392b = i2;
            this.f2394d = i3;
            this.f2393c = obj;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0606b.class != obj.getClass()) {
                return false;
            }
            C0606b c0606b = (C0606b) obj;
            int i = this.f2391a;
            if (i != c0606b.f2391a) {
                return false;
            }
            if (i == 8 && Math.abs(this.f2394d - this.f2392b) == 1 && this.f2394d == c0606b.f2392b && this.f2392b == c0606b.f2394d) {
                return true;
            }
            if (this.f2394d != c0606b.f2394d || this.f2392b != c0606b.f2392b) {
                return false;
            }
            Object obj2 = this.f2393c;
            return obj2 != null ? obj2.equals(c0606b.f2393c) : c0606b.f2393c == null;
        }

        public int hashCode() {
            return (((this.f2391a * 31) + this.f2392b) * 31) + this.f2394d;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append("[");
            int i = this.f2391a;
            sb.append(i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add");
            sb.append(",s:");
            sb.append(this.f2392b);
            sb.append("c:");
            sb.append(this.f2394d);
            sb.append(",p:");
            sb.append(this.f2393c);
            sb.append("]");
            return sb.toString();
        }
    }

    public C0604a(AbstractC0605a abstractC0605a) {
        this.f2388d = abstractC0605a;
    }

    /* renamed from: a */
    public final boolean m7648a(int i) {
        int size = this.f2387c.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0606b c0606b = this.f2387c.get(i2);
            int i3 = c0606b.f2391a;
            if (i3 == 8) {
                if (m7643f(c0606b.f2394d, i2 + 1) == i) {
                    return true;
                }
            } else if (i3 == 1) {
                int i4 = c0606b.f2392b;
                int i5 = c0606b.f2394d;
                for (int i6 = i4; i6 < i5 + i4; i6++) {
                    if (m7643f(i6, i2 + 1) == i) {
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

    /* renamed from: b */
    public void m7647b() {
        int size = this.f2387c.size();
        for (int i = 0; i < size; i++) {
            ((C0650x) this.f2388d).m7527a(this.f2387c.get(i));
        }
        m7637l(this.f2387c);
        this.f2390f = 0;
    }

    /* renamed from: c */
    public void m7646c() {
        m7647b();
        int size = this.f2386b.size();
        for (int i = 0; i < size; i++) {
            C0606b c0606b = this.f2386b.get(i);
            int i2 = c0606b.f2391a;
            if (i2 == 1) {
                ((C0650x) this.f2388d).m7527a(c0606b);
                ((C0650x) this.f2388d).m7524d(c0606b.f2392b, c0606b.f2394d);
            } else if (i2 == 2) {
                ((C0650x) this.f2388d).m7527a(c0606b);
                AbstractC0605a abstractC0605a = this.f2388d;
                int i3 = c0606b.f2392b;
                int i4 = c0606b.f2394d;
                C0650x c0650x = (C0650x) abstractC0605a;
                c0650x.f2545a.m7900R(i3, i4, true);
                RecyclerView recyclerView = c0650x.f2545a;
                recyclerView.f2192j0 = true;
                recyclerView.f2186g0.f2313c += i4;
            } else if (i2 == 4) {
                ((C0650x) this.f2388d).m7527a(c0606b);
                ((C0650x) this.f2388d).m7525c(c0606b.f2392b, c0606b.f2394d, c0606b.f2393c);
            } else if (i2 == 8) {
                ((C0650x) this.f2388d).m7527a(c0606b);
                ((C0650x) this.f2388d).m7523e(c0606b.f2392b, c0606b.f2394d);
            }
        }
        m7637l(this.f2386b);
        this.f2390f = 0;
    }

    /* renamed from: d */
    public final void m7645d(C0606b c0606b) {
        int i;
        int i2 = c0606b.f2391a;
        if (i2 == 1 || i2 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int m7636m = m7636m(c0606b.f2392b, i2);
        int i3 = c0606b.f2392b;
        int i4 = c0606b.f2391a;
        if (i4 == 2) {
            i = 0;
        } else if (i4 != 4) {
            throw new IllegalArgumentException("op should be remove or update." + c0606b);
        } else {
            i = 1;
        }
        int i5 = 1;
        for (int i6 = 1; i6 < c0606b.f2394d; i6++) {
            int m7636m2 = m7636m((i * i6) + c0606b.f2392b, c0606b.f2391a);
            int i7 = c0606b.f2391a;
            if (i7 == 2 ? m7636m2 == m7636m : i7 == 4 && m7636m2 == m7636m + 1) {
                i5++;
            } else {
                C0606b m7641h = m7641h(i7, m7636m, i5, c0606b.f2393c);
                m7644e(m7641h, i3);
                m7641h.f2393c = null;
                this.f2385a.mo2302b(m7641h);
                int i8 = i3;
                if (c0606b.f2391a == 4) {
                    i8 = i3 + i5;
                }
                i5 = 1;
                i3 = i8;
                m7636m = m7636m2;
            }
        }
        Object obj = c0606b.f2393c;
        c0606b.f2393c = null;
        this.f2385a.mo2302b(c0606b);
        if (i5 <= 0) {
            return;
        }
        C0606b m7641h2 = m7641h(c0606b.f2391a, m7636m, i5, obj);
        m7644e(m7641h2, i3);
        m7641h2.f2393c = null;
        this.f2385a.mo2302b(m7641h2);
    }

    /* renamed from: e */
    public void m7644e(C0606b c0606b, int i) {
        ((C0650x) this.f2388d).m7527a(c0606b);
        int i2 = c0606b.f2391a;
        if (i2 != 2) {
            if (i2 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            ((C0650x) this.f2388d).m7525c(i, c0606b.f2394d, c0606b.f2393c);
            return;
        }
        AbstractC0605a abstractC0605a = this.f2388d;
        int i3 = c0606b.f2394d;
        C0650x c0650x = (C0650x) abstractC0605a;
        c0650x.f2545a.m7900R(i, i3, true);
        RecyclerView recyclerView = c0650x.f2545a;
        recyclerView.f2192j0 = true;
        recyclerView.f2186g0.f2313c += i3;
    }

    /* renamed from: f */
    public int m7643f(int i, int i2) {
        int size = this.f2387c.size();
        int i3 = i2;
        while (true) {
            int i4 = i;
            if (i3 < size) {
                C0606b c0606b = this.f2387c.get(i3);
                int i5 = c0606b.f2391a;
                if (i5 == 8) {
                    int i6 = c0606b.f2392b;
                    if (i6 == i4) {
                        i = c0606b.f2394d;
                    } else {
                        int i7 = i4;
                        if (i6 < i4) {
                            i7 = i4 - 1;
                        }
                        i = i7;
                        if (c0606b.f2394d <= i7) {
                            i = i7 + 1;
                        }
                    }
                } else {
                    int i8 = c0606b.f2392b;
                    i = i4;
                    if (i8 > i4) {
                        continue;
                    } else if (i5 == 2) {
                        int i9 = c0606b.f2394d;
                        if (i4 < i8 + i9) {
                            return -1;
                        }
                        i = i4 - i9;
                    } else {
                        i = i4;
                        if (i5 == 1) {
                            i = i4 + c0606b.f2394d;
                        }
                    }
                }
                i3++;
            } else {
                return i4;
            }
        }
    }

    /* renamed from: g */
    public boolean m7642g() {
        return this.f2386b.size() > 0;
    }

    /* renamed from: h */
    public C0606b m7641h(int i, int i2, int i3, Object obj) {
        C0606b c0606b;
        C0606b c0606b2 = (C0606b) this.f2385a.mo2303a();
        if (c0606b2 == null) {
            c0606b = new C0606b(i, i2, i3, obj);
        } else {
            c0606b2.f2391a = i;
            c0606b2.f2392b = i2;
            c0606b2.f2394d = i3;
            c0606b2.f2393c = obj;
            c0606b = c0606b2;
        }
        return c0606b;
    }

    /* renamed from: i */
    public final void m7640i(C0606b c0606b) {
        this.f2387c.add(c0606b);
        int i = c0606b.f2391a;
        if (i == 1) {
            ((C0650x) this.f2388d).m7524d(c0606b.f2392b, c0606b.f2394d);
        } else if (i == 2) {
            AbstractC0605a abstractC0605a = this.f2388d;
            C0650x c0650x = (C0650x) abstractC0605a;
            c0650x.f2545a.m7900R(c0606b.f2392b, c0606b.f2394d, false);
            c0650x.f2545a.f2192j0 = true;
        } else if (i == 4) {
            ((C0650x) this.f2388d).m7525c(c0606b.f2392b, c0606b.f2394d, c0606b.f2393c);
        } else if (i == 8) {
            ((C0650x) this.f2388d).m7523e(c0606b.f2392b, c0606b.f2394d);
        } else {
            throw new IllegalArgumentException("Unknown update op type for " + c0606b);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:202:0x01b3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x022a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:208:0x032a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:210:0x02f3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:214:0x000f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x02b1  */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m7639j() {
        /*
            Method dump skipped, instructions count: 1813
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0604a.m7639j():void");
    }

    /* renamed from: k */
    public void m7638k(C0606b c0606b) {
        c0606b.f2393c = null;
        this.f2385a.mo2302b(c0606b);
    }

    /* renamed from: l */
    public void m7637l(List<C0606b> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            m7638k(list.get(i));
        }
        list.clear();
    }

    /* renamed from: m */
    public final int m7636m(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int size = this.f2387c.size() - 1;
        while (true) {
            i3 = i;
            if (size < 0) {
                break;
            }
            C0606b c0606b = this.f2387c.get(size);
            int i6 = c0606b.f2391a;
            if (i6 == 8) {
                int i7 = c0606b.f2392b;
                int i8 = c0606b.f2394d;
                if (i7 < i8) {
                    i5 = i7;
                    i4 = i8;
                } else {
                    i4 = i7;
                    i5 = i8;
                }
                if (i3 < i5 || i3 > i4) {
                    i = i3;
                    if (i3 < i7) {
                        if (i2 == 1) {
                            c0606b.f2392b = i7 + 1;
                            c0606b.f2394d = i8 + 1;
                            i = i3;
                        } else {
                            i = i3;
                            if (i2 == 2) {
                                c0606b.f2392b = i7 - 1;
                                c0606b.f2394d = i8 - 1;
                                i = i3;
                            }
                        }
                    }
                } else if (i5 == i7) {
                    if (i2 == 1) {
                        c0606b.f2394d = i8 + 1;
                    } else if (i2 == 2) {
                        c0606b.f2394d = i8 - 1;
                    }
                    i = i3 + 1;
                } else {
                    if (i2 == 1) {
                        c0606b.f2392b = i7 + 1;
                    } else if (i2 == 2) {
                        c0606b.f2392b = i7 - 1;
                    }
                    i = i3 - 1;
                }
            } else {
                int i9 = c0606b.f2392b;
                if (i9 <= i3) {
                    if (i6 == 1) {
                        i = i3 - c0606b.f2394d;
                    } else {
                        i = i3;
                        if (i6 == 2) {
                            i = i3 + c0606b.f2394d;
                        }
                    }
                } else if (i2 == 1) {
                    c0606b.f2392b = i9 + 1;
                    i = i3;
                } else {
                    i = i3;
                    if (i2 == 2) {
                        c0606b.f2392b = i9 - 1;
                        i = i3;
                    }
                }
            }
            size--;
        }
        for (int size2 = this.f2387c.size() - 1; size2 >= 0; size2--) {
            C0606b c0606b2 = this.f2387c.get(size2);
            if (c0606b2.f2391a == 8) {
                int i10 = c0606b2.f2394d;
                if (i10 == c0606b2.f2392b || i10 < 0) {
                    this.f2387c.remove(size2);
                    c0606b2.f2393c = null;
                    this.f2385a.mo2302b(c0606b2);
                }
            } else if (c0606b2.f2394d <= 0) {
                this.f2387c.remove(size2);
                c0606b2.f2393c = null;
                this.f2385a.mo2302b(c0606b2);
            }
        }
        return i3;
    }
}
