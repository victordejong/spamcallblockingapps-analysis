package p1727n3.p1744b0.p1745a;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import p1727n3.p1744b0.p1745a.C25618r;
import p1727n3.p1807k.p1820h.AbstractC26555e;
import p1727n3.p1807k.p1820h.C26556f;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.b0.a.a */
/* loaded from: classes-dex2jar.jar:n3/b0/a/a.class */
public final class C25564a implements C25618r.AbstractC25619a {

    /* renamed from: d */
    public final AbstractC25565a f71557d;

    /* renamed from: a */
    public AbstractC26555e<C25566b> f71554a = new C26556f(30);

    /* renamed from: b */
    public final ArrayList<C25566b> f71555b = new ArrayList<>();

    /* renamed from: c */
    public final ArrayList<C25566b> f71556c = new ArrayList<>();

    /* renamed from: f */
    public int f71559f = 0;

    /* renamed from: e */
    public final C25618r f71558e = new C25618r(this);

    /* renamed from: n3.b0.a.a$a */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/a$a.class */
    public interface AbstractC25565a {
    }

    /* renamed from: n3.b0.a.a$b */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/a$b.class */
    public static final class C25566b {

        /* renamed from: a */
        public int f71560a;

        /* renamed from: b */
        public int f71561b;

        /* renamed from: c */
        public Object f71562c;

        /* renamed from: d */
        public int f71563d;

        public C25566b(int i, int i2, int i3, Object obj) {
            this.f71560a = i;
            this.f71561b = i2;
            this.f71563d = i3;
            this.f71562c = obj;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C25566b)) {
                return false;
            }
            C25566b c25566b = (C25566b) obj;
            int i = this.f71560a;
            if (i != c25566b.f71560a) {
                return false;
            }
            if (i == 8 && Math.abs(this.f71563d - this.f71561b) == 1 && this.f71563d == c25566b.f71561b && this.f71561b == c25566b.f71563d) {
                return true;
            }
            if (this.f71563d != c25566b.f71563d || this.f71561b != c25566b.f71561b) {
                return false;
            }
            Object obj2 = this.f71562c;
            return obj2 != null ? obj2.equals(c25566b.f71562c) : c25566b.f71562c == null;
        }

        public int hashCode() {
            return (((this.f71560a * 31) + this.f71561b) * 31) + this.f71563d;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append("[");
            int i = this.f71560a;
            sb.append(i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add");
            sb.append(",s:");
            sb.append(this.f71561b);
            sb.append("c:");
            sb.append(this.f71563d);
            sb.append(",p:");
            return C22128a.m8634d(sb, this.f71562c, "]");
        }
    }

    public C25564a(AbstractC25565a abstractC25565a) {
        this.f71557d = abstractC25565a;
    }

    /* renamed from: a */
    public final boolean m3237a(int i) {
        int size = this.f71556c.size();
        for (int i2 = 0; i2 < size; i2++) {
            C25566b c25566b = this.f71556c.get(i2);
            int i3 = c25566b.f71560a;
            if (i3 == 8) {
                if (m3232f(c25566b.f71563d, i2 + 1) == i) {
                    return true;
                }
            } else if (i3 == 1) {
                int i4 = c25566b.f71561b;
                int i5 = c25566b.f71563d;
                for (int i6 = i4; i6 < i5 + i4; i6++) {
                    if (m3232f(i6, i2 + 1) == i) {
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
    public void m3236b() {
        int size = this.f71556c.size();
        for (int i = 0; i < size; i++) {
            ((RecyclerView.C0316f) this.f71557d).m42749a(this.f71556c.get(i));
        }
        m3226l(this.f71556c);
        this.f71559f = 0;
    }

    /* renamed from: c */
    public void m3235c() {
        m3236b();
        int size = this.f71555b.size();
        for (int i = 0; i < size; i++) {
            C25566b c25566b = this.f71555b.get(i);
            int i2 = c25566b.f71560a;
            if (i2 == 1) {
                ((RecyclerView.C0316f) this.f71557d).m42749a(c25566b);
                AbstractC25565a abstractC25565a = this.f71557d;
                int i3 = c25566b.f71561b;
                int i4 = c25566b.f71563d;
                RecyclerView.C0316f c0316f = (RecyclerView.C0316f) abstractC25565a;
                RecyclerView.this.offsetPositionRecordsForInsert(i3, i4);
                RecyclerView.this.mItemsAddedOrRemoved = true;
            } else if (i2 == 2) {
                ((RecyclerView.C0316f) this.f71557d).m42749a(c25566b);
                AbstractC25565a abstractC25565a2 = this.f71557d;
                int i5 = c25566b.f71561b;
                int i6 = c25566b.f71563d;
                RecyclerView.C0316f c0316f2 = (RecyclerView.C0316f) abstractC25565a2;
                RecyclerView.this.offsetPositionRecordsForRemove(i5, i6, true);
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.mItemsAddedOrRemoved = true;
                recyclerView.mState.f1350c += i6;
            } else if (i2 == 4) {
                ((RecyclerView.C0316f) this.f71557d).m42749a(c25566b);
                ((RecyclerView.C0316f) this.f71557d).m42747c(c25566b.f71561b, c25566b.f71563d, c25566b.f71562c);
            } else if (i2 == 8) {
                ((RecyclerView.C0316f) this.f71557d).m42749a(c25566b);
                AbstractC25565a abstractC25565a3 = this.f71557d;
                int i7 = c25566b.f71561b;
                int i8 = c25566b.f71563d;
                RecyclerView.C0316f c0316f3 = (RecyclerView.C0316f) abstractC25565a3;
                RecyclerView.this.offsetPositionRecordsForMove(i7, i8);
                RecyclerView.this.mItemsAddedOrRemoved = true;
            }
        }
        m3226l(this.f71555b);
        this.f71559f = 0;
    }

    /* renamed from: d */
    public final void m3234d(C25566b c25566b) {
        int i;
        int i2 = c25566b.f71560a;
        if (i2 == 1 || i2 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int m3225m = m3225m(c25566b.f71561b, i2);
        int i3 = c25566b.f71561b;
        int i4 = c25566b.f71560a;
        if (i4 == 2) {
            i = 0;
        } else if (i4 != 4) {
            throw new IllegalArgumentException("op should be remove or update." + c25566b);
        } else {
            i = 1;
        }
        int i5 = 1;
        for (int i6 = 1; i6 < c25566b.f71563d; i6++) {
            int m3225m2 = m3225m((i * i6) + c25566b.f71561b, c25566b.f71560a);
            int i7 = c25566b.f71560a;
            if (i7 == 2 ? m3225m2 == m3225m : i7 == 4 && m3225m2 == m3225m + 1) {
                i5++;
            } else {
                C25566b m3230h = m3230h(i7, m3225m, i5, c25566b.f71562c);
                m3233e(m3230h, i3);
                m3227k(m3230h);
                int i8 = i3;
                if (c25566b.f71560a == 4) {
                    i8 = i3 + i5;
                }
                i5 = 1;
                i3 = i8;
                m3225m = m3225m2;
            }
        }
        Object obj = c25566b.f71562c;
        m3227k(c25566b);
        if (i5 <= 0) {
            return;
        }
        C25566b m3230h2 = m3230h(c25566b.f71560a, m3225m, i5, obj);
        m3233e(m3230h2, i3);
        m3227k(m3230h2);
    }

    /* renamed from: e */
    public void m3233e(C25566b c25566b, int i) {
        ((RecyclerView.C0316f) this.f71557d).m42749a(c25566b);
        int i2 = c25566b.f71560a;
        if (i2 != 2) {
            if (i2 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            RecyclerView.C0316f c0316f = (RecyclerView.C0316f) this.f71557d;
            RecyclerView.this.viewRangeUpdate(i, c25566b.f71563d, c25566b.f71562c);
            RecyclerView.this.mItemsChanged = true;
            return;
        }
        AbstractC25565a abstractC25565a = this.f71557d;
        int i3 = c25566b.f71563d;
        RecyclerView.C0316f c0316f2 = (RecyclerView.C0316f) abstractC25565a;
        RecyclerView.this.offsetPositionRecordsForRemove(i, i3, true);
        RecyclerView recyclerView = RecyclerView.this;
        recyclerView.mItemsAddedOrRemoved = true;
        recyclerView.mState.f1350c += i3;
    }

    /* renamed from: f */
    public int m3232f(int i, int i2) {
        int size = this.f71556c.size();
        int i3 = i2;
        while (true) {
            int i4 = i;
            if (i3 < size) {
                C25566b c25566b = this.f71556c.get(i3);
                int i5 = c25566b.f71560a;
                if (i5 == 8) {
                    int i6 = c25566b.f71561b;
                    if (i6 == i4) {
                        i = c25566b.f71563d;
                    } else {
                        int i7 = i4;
                        if (i6 < i4) {
                            i7 = i4 - 1;
                        }
                        i = i7;
                        if (c25566b.f71563d <= i7) {
                            i = i7 + 1;
                        }
                    }
                } else {
                    int i8 = c25566b.f71561b;
                    i = i4;
                    if (i8 > i4) {
                        continue;
                    } else if (i5 == 2) {
                        int i9 = c25566b.f71563d;
                        if (i4 < i8 + i9) {
                            return -1;
                        }
                        i = i4 - i9;
                    } else {
                        i = i4;
                        if (i5 == 1) {
                            i = i4 + c25566b.f71563d;
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
    public boolean m3231g() {
        return this.f71555b.size() > 0;
    }

    /* renamed from: h */
    public C25566b m3230h(int i, int i2, int i3, Object obj) {
        C25566b c25566b;
        C25566b mo1689a = this.f71554a.mo1689a();
        if (mo1689a == null) {
            c25566b = new C25566b(i, i2, i3, obj);
        } else {
            mo1689a.f71560a = i;
            mo1689a.f71561b = i2;
            mo1689a.f71563d = i3;
            mo1689a.f71562c = obj;
            c25566b = mo1689a;
        }
        return c25566b;
    }

    /* renamed from: i */
    public final void m3229i(C25566b c25566b) {
        this.f71556c.add(c25566b);
        int i = c25566b.f71560a;
        if (i == 1) {
            AbstractC25565a abstractC25565a = this.f71557d;
            RecyclerView.C0316f c0316f = (RecyclerView.C0316f) abstractC25565a;
            RecyclerView.this.offsetPositionRecordsForInsert(c25566b.f71561b, c25566b.f71563d);
            RecyclerView.this.mItemsAddedOrRemoved = true;
        } else if (i == 2) {
            AbstractC25565a abstractC25565a2 = this.f71557d;
            RecyclerView.C0316f c0316f2 = (RecyclerView.C0316f) abstractC25565a2;
            RecyclerView.this.offsetPositionRecordsForRemove(c25566b.f71561b, c25566b.f71563d, false);
            RecyclerView.this.mItemsAddedOrRemoved = true;
        } else if (i == 4) {
            ((RecyclerView.C0316f) this.f71557d).m42747c(c25566b.f71561b, c25566b.f71563d, c25566b.f71562c);
        } else if (i != 8) {
            throw new IllegalArgumentException("Unknown update op type for " + c25566b);
        } else {
            AbstractC25565a abstractC25565a3 = this.f71557d;
            RecyclerView.C0316f c0316f3 = (RecyclerView.C0316f) abstractC25565a3;
            RecyclerView.this.offsetPositionRecordsForMove(c25566b.f71561b, c25566b.f71563d);
            RecyclerView.this.mItemsAddedOrRemoved = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:200:0x019f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0214 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x02e6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:208:0x02c3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:212:0x000f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0287  */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m3228j() {
        /*
            Method dump skipped, instructions count: 1725
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1744b0.p1745a.C25564a.m3228j():void");
    }

    /* renamed from: k */
    public void m3227k(C25566b c25566b) {
        c25566b.f71562c = null;
        this.f71554a.mo1688b(c25566b);
    }

    /* renamed from: l */
    public void m3226l(List<C25566b> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            m3227k(list.get(i));
        }
        list.clear();
    }

    /* renamed from: m */
    public final int m3225m(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int size = this.f71556c.size() - 1;
        while (true) {
            i3 = i;
            if (size < 0) {
                break;
            }
            C25566b c25566b = this.f71556c.get(size);
            int i6 = c25566b.f71560a;
            if (i6 == 8) {
                int i7 = c25566b.f71561b;
                int i8 = c25566b.f71563d;
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
                            c25566b.f71561b = i7 + 1;
                            c25566b.f71563d = i8 + 1;
                            i = i3;
                        } else {
                            i = i3;
                            if (i2 == 2) {
                                c25566b.f71561b = i7 - 1;
                                c25566b.f71563d = i8 - 1;
                                i = i3;
                            }
                        }
                    }
                } else if (i5 == i7) {
                    if (i2 == 1) {
                        c25566b.f71563d = i8 + 1;
                    } else if (i2 == 2) {
                        c25566b.f71563d = i8 - 1;
                    }
                    i = i3 + 1;
                } else {
                    if (i2 == 1) {
                        c25566b.f71561b = i7 + 1;
                    } else if (i2 == 2) {
                        c25566b.f71561b = i7 - 1;
                    }
                    i = i3 - 1;
                }
            } else {
                int i9 = c25566b.f71561b;
                if (i9 <= i3) {
                    if (i6 == 1) {
                        i = i3 - c25566b.f71563d;
                    } else {
                        i = i3;
                        if (i6 == 2) {
                            i = i3 + c25566b.f71563d;
                        }
                    }
                } else if (i2 == 1) {
                    c25566b.f71561b = i9 + 1;
                    i = i3;
                } else {
                    i = i3;
                    if (i2 == 2) {
                        c25566b.f71561b = i9 - 1;
                        i = i3;
                    }
                }
            }
            size--;
        }
        for (int size2 = this.f71556c.size() - 1; size2 >= 0; size2--) {
            C25566b c25566b2 = this.f71556c.get(size2);
            if (c25566b2.f71560a == 8) {
                int i10 = c25566b2.f71563d;
                if (i10 == c25566b2.f71561b || i10 < 0) {
                    this.f71556c.remove(size2);
                    m3227k(c25566b2);
                }
            } else if (c25566b2.f71563d <= 0) {
                this.f71556c.remove(size2);
                m3227k(c25566b2);
            }
        }
        return i3;
    }
}
