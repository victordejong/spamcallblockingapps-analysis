package androidx.recyclerview.widget;

import androidx.core.p036e.C0829c;
import androidx.recyclerview.widget.C2692i;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.recyclerview.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/a.class */
public final class C2663a implements C2692i.AbstractC2693a {

    /* renamed from: a */
    final ArrayList<C2665b> f10158a;

    /* renamed from: b */
    final ArrayList<C2665b> f10159b;

    /* renamed from: c */
    final AbstractC2664a f10160c;

    /* renamed from: d */
    Runnable f10161d;

    /* renamed from: e */
    final boolean f10162e;

    /* renamed from: f */
    final C2692i f10163f;

    /* renamed from: g */
    int f10164g;

    /* renamed from: h */
    private C0829c.AbstractC0830a<C2665b> f10165h;

    /* renamed from: androidx.recyclerview.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/a$a.class */
    public interface AbstractC2664a {
        /* renamed from: a */
        RecyclerView.AbstractC2657v mo40155a(int i);

        /* renamed from: a */
        void mo40154a(int i, int i2);

        /* renamed from: a */
        void mo40153a(int i, int i2, Object obj);

        /* renamed from: a */
        void mo40152a(C2665b c2665b);

        /* renamed from: b */
        void mo40151b(int i, int i2);

        /* renamed from: b */
        void mo40150b(C2665b c2665b);

        /* renamed from: c */
        void mo40149c(int i, int i2);

        /* renamed from: d */
        void mo40148d(int i, int i2);
    }

    /* renamed from: androidx.recyclerview.widget.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/a$b.class */
    public static final class C2665b {

        /* renamed from: a */
        int f10166a;

        /* renamed from: b */
        int f10167b;

        /* renamed from: c */
        Object f10168c;

        /* renamed from: d */
        int f10169d;

        C2665b(int i, int i2, int i3, Object obj) {
            this.f10166a = i;
            this.f10167b = i2;
            this.f10169d = i3;
            this.f10168c = obj;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C2665b)) {
                return false;
            }
            C2665b c2665b = (C2665b) obj;
            int i = this.f10166a;
            if (i != c2665b.f10166a) {
                return false;
            }
            if (i == 8 && Math.abs(this.f10169d - this.f10167b) == 1 && this.f10169d == c2665b.f10167b && this.f10167b == c2665b.f10169d) {
                return true;
            }
            if (this.f10169d != c2665b.f10169d || this.f10167b != c2665b.f10167b) {
                return false;
            }
            Object obj2 = this.f10168c;
            return obj2 != null ? obj2.equals(c2665b.f10168c) : c2665b.f10168c == null;
        }

        public final int hashCode() {
            return (((this.f10166a * 31) + this.f10167b) * 31) + this.f10169d;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append("[");
            int i = this.f10166a;
            sb.append(i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add");
            sb.append(",s:");
            sb.append(this.f10167b);
            sb.append("c:");
            sb.append(this.f10169d);
            sb.append(",p:");
            sb.append(this.f10168c);
            sb.append("]");
            return sb.toString();
        }
    }

    public C2663a(AbstractC2664a abstractC2664a) {
        this(abstractC2664a, false);
    }

    C2663a(AbstractC2664a abstractC2664a, boolean z) {
        this.f10165h = new C0829c.C0831b(30);
        this.f10158a = new ArrayList<>();
        this.f10159b = new ArrayList<>();
        this.f10164g = 0;
        this.f10160c = abstractC2664a;
        this.f10162e = z;
        this.f10163f = new C2692i(this);
    }

    /* renamed from: a */
    private void m40168a(C2665b c2665b, int i) {
        this.f10160c.mo40152a(c2665b);
        int i2 = c2665b.f10166a;
        if (i2 == 2) {
            this.f10160c.mo40154a(i, c2665b.f10169d);
        } else if (i2 != 4) {
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        } else {
            this.f10160c.mo40153a(i, c2665b.f10169d, c2665b.f10168c);
        }
    }

    /* renamed from: a */
    private void m40167a(List<C2665b> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            mo40077a(list.get(i));
        }
        list.clear();
    }

    /* renamed from: b */
    private int m40164b(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int size = this.f10159b.size() - 1;
        while (true) {
            i3 = i;
            if (size < 0) {
                break;
            }
            C2665b c2665b = this.f10159b.get(size);
            if (c2665b.f10166a == 8) {
                if (c2665b.f10167b < c2665b.f10169d) {
                    i5 = c2665b.f10167b;
                    i4 = c2665b.f10169d;
                } else {
                    i5 = c2665b.f10169d;
                    i4 = c2665b.f10167b;
                }
                if (i3 < i5 || i3 > i4) {
                    i = i3;
                    if (i3 < c2665b.f10167b) {
                        if (i2 == 1) {
                            c2665b.f10167b++;
                            c2665b.f10169d++;
                            i = i3;
                        } else {
                            i = i3;
                            if (i2 == 2) {
                                c2665b.f10167b--;
                                c2665b.f10169d--;
                                i = i3;
                            }
                        }
                    }
                } else if (i5 == c2665b.f10167b) {
                    if (i2 == 1) {
                        c2665b.f10169d++;
                    } else if (i2 == 2) {
                        c2665b.f10169d--;
                    }
                    i = i3 + 1;
                } else {
                    if (i2 == 1) {
                        c2665b.f10167b++;
                    } else if (i2 == 2) {
                        c2665b.f10167b--;
                    }
                    i = i3 - 1;
                }
            } else if (c2665b.f10167b <= i3) {
                if (c2665b.f10166a == 1) {
                    i = i3 - c2665b.f10169d;
                } else {
                    i = i3;
                    if (c2665b.f10166a == 2) {
                        i = i3 + c2665b.f10169d;
                    }
                }
            } else if (i2 == 1) {
                c2665b.f10167b++;
                i = i3;
            } else {
                i = i3;
                if (i2 == 2) {
                    c2665b.f10167b--;
                    i = i3;
                }
            }
            size--;
        }
        for (int size2 = this.f10159b.size() - 1; size2 >= 0; size2--) {
            C2665b c2665b2 = this.f10159b.get(size2);
            if (c2665b2.f10166a == 8) {
                if (c2665b2.f10169d == c2665b2.f10167b || c2665b2.f10169d < 0) {
                    this.f10159b.remove(size2);
                    mo40077a(c2665b2);
                }
            } else if (c2665b2.f10169d <= 0) {
                this.f10159b.remove(size2);
                mo40077a(c2665b2);
            }
        }
        return i3;
    }

    /* renamed from: b */
    private void m40163b(C2665b c2665b) {
        int i;
        if (c2665b.f10166a == 1 || c2665b.f10166a == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int m40164b = m40164b(c2665b.f10167b, c2665b.f10166a);
        int i2 = c2665b.f10167b;
        int i3 = c2665b.f10166a;
        if (i3 == 2) {
            i = 0;
        } else if (i3 != 4) {
            throw new IllegalArgumentException("op should be remove or update.".concat(String.valueOf(c2665b)));
        } else {
            i = 1;
        }
        int i4 = 1;
        for (int i5 = 1; i5 < c2665b.f10169d; i5++) {
            int m40164b2 = m40164b(c2665b.f10167b + (i * i5), c2665b.f10166a);
            int i6 = c2665b.f10166a;
            if (i6 == 2 ? m40164b2 == m40164b : i6 == 4 && m40164b2 == m40164b + 1) {
                i4++;
            } else {
                C2665b mo40078a = mo40078a(c2665b.f10166a, m40164b, i4, c2665b.f10168c);
                m40168a(mo40078a, i2);
                mo40077a(mo40078a);
                int i7 = i2;
                if (c2665b.f10166a == 4) {
                    i7 = i2 + i4;
                }
                i4 = 1;
                i2 = i7;
                m40164b = m40164b2;
            }
        }
        Object obj = c2665b.f10168c;
        mo40077a(c2665b);
        if (i4 <= 0) {
            return;
        }
        C2665b mo40078a2 = mo40078a(c2665b.f10166a, m40164b, i4, obj);
        m40168a(mo40078a2, i2);
        mo40077a(mo40078a2);
    }

    /* renamed from: c */
    private void m40160c(C2665b c2665b) {
        this.f10159b.add(c2665b);
        int i = c2665b.f10166a;
        if (i == 1) {
            this.f10160c.mo40149c(c2665b.f10167b, c2665b.f10169d);
        } else if (i == 2) {
            this.f10160c.mo40151b(c2665b.f10167b, c2665b.f10169d);
        } else if (i == 4) {
            this.f10160c.mo40153a(c2665b.f10167b, c2665b.f10169d, c2665b.f10168c);
        } else if (i != 8) {
            throw new IllegalArgumentException("Unknown update op type for ".concat(String.valueOf(c2665b)));
        } else {
            this.f10160c.mo40148d(c2665b.f10167b, c2665b.f10169d);
        }
    }

    /* renamed from: d */
    private boolean m40158d(int i) {
        int size = this.f10159b.size();
        for (int i2 = 0; i2 < size; i2++) {
            C2665b c2665b = this.f10159b.get(i2);
            if (c2665b.f10166a == 8) {
                if (m40169a(c2665b.f10169d, i2 + 1) == i) {
                    return true;
                }
            } else if (c2665b.f10166a == 1) {
                int i3 = c2665b.f10167b;
                int i4 = c2665b.f10169d;
                for (int i5 = c2665b.f10167b; i5 < i3 + i4; i5++) {
                    if (m40169a(i5, i2 + 1) == i) {
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

    /* renamed from: a */
    public final int m40169a(int i, int i2) {
        int size = this.f10159b.size();
        int i3 = i2;
        while (true) {
            int i4 = i;
            if (i3 < size) {
                C2665b c2665b = this.f10159b.get(i3);
                if (c2665b.f10166a != 8) {
                    i = i4;
                    if (c2665b.f10167b > i4) {
                        continue;
                    } else if (c2665b.f10166a != 2) {
                        i = i4;
                        if (c2665b.f10166a == 1) {
                            i = i4 + c2665b.f10169d;
                        }
                    } else if (i4 < c2665b.f10167b + c2665b.f10169d) {
                        return -1;
                    } else {
                        i = i4 - c2665b.f10169d;
                    }
                } else if (c2665b.f10167b == i4) {
                    i = c2665b.f10169d;
                } else {
                    int i5 = i4;
                    if (c2665b.f10167b < i4) {
                        i5 = i4 - 1;
                    }
                    i = i5;
                    if (c2665b.f10169d <= i5) {
                        i = i5 + 1;
                    }
                }
                i3++;
            } else {
                return i4;
            }
        }
    }

    @Override // androidx.recyclerview.widget.C2692i.AbstractC2693a
    /* renamed from: a */
    public final C2665b mo40078a(int i, int i2, int i3, Object obj) {
        C2665b c2665b;
        C2665b mo37607a = this.f10165h.mo37607a();
        if (mo37607a == null) {
            c2665b = new C2665b(i, i2, i3, obj);
        } else {
            mo37607a.f10166a = i;
            mo37607a.f10167b = i2;
            mo37607a.f10169d = i3;
            mo37607a.f10168c = obj;
            c2665b = mo37607a;
        }
        return c2665b;
    }

    /* renamed from: a */
    public final void m40171a() {
        m40167a(this.f10158a);
        m40167a(this.f10159b);
        this.f10164g = 0;
    }

    @Override // androidx.recyclerview.widget.C2692i.AbstractC2693a
    /* renamed from: a */
    public final void mo40077a(C2665b c2665b) {
        if (!this.f10162e) {
            c2665b.f10168c = null;
            this.f10165h.mo37606a(c2665b);
        }
    }

    /* renamed from: a */
    public final boolean m40170a(int i) {
        return (i & this.f10164g) != 0;
    }

    /* renamed from: b */
    public final int m40165b(int i) {
        return m40169a(i, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:204:0x0196 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:216:0x000a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0187  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m40166b() {
        /*
            Method dump skipped, instructions count: 1810
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C2663a.m40166b():void");
    }

    /* renamed from: c */
    public final int m40161c(int i) {
        int size = this.f10158a.size();
        int i2 = 0;
        while (true) {
            int i3 = i;
            if (i2 < size) {
                C2665b c2665b = this.f10158a.get(i2);
                int i4 = c2665b.f10166a;
                if (i4 == 1) {
                    i = i3;
                    if (c2665b.f10167b <= i3) {
                        i = i3 + c2665b.f10169d;
                    }
                } else if (i4 == 2) {
                    i = i3;
                    if (c2665b.f10167b > i3) {
                        continue;
                    } else if (c2665b.f10167b + c2665b.f10169d > i3) {
                        return -1;
                    } else {
                        i = i3 - c2665b.f10169d;
                    }
                } else if (i4 != 8) {
                    i = i3;
                } else if (c2665b.f10167b == i3) {
                    i = c2665b.f10169d;
                } else {
                    int i5 = i3;
                    if (c2665b.f10167b < i3) {
                        i5 = i3 - 1;
                    }
                    i = i5;
                    if (c2665b.f10169d <= i5) {
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
    public final void m40162c() {
        int size = this.f10159b.size();
        for (int i = 0; i < size; i++) {
            this.f10160c.mo40150b(this.f10159b.get(i));
        }
        m40167a(this.f10159b);
        this.f10164g = 0;
    }

    /* renamed from: d */
    public final boolean m40159d() {
        return this.f10158a.size() > 0;
    }

    /* renamed from: e */
    public final void m40157e() {
        m40162c();
        int size = this.f10158a.size();
        for (int i = 0; i < size; i++) {
            C2665b c2665b = this.f10158a.get(i);
            int i2 = c2665b.f10166a;
            if (i2 == 1) {
                this.f10160c.mo40150b(c2665b);
                this.f10160c.mo40149c(c2665b.f10167b, c2665b.f10169d);
            } else if (i2 == 2) {
                this.f10160c.mo40150b(c2665b);
                this.f10160c.mo40154a(c2665b.f10167b, c2665b.f10169d);
            } else if (i2 == 4) {
                this.f10160c.mo40150b(c2665b);
                this.f10160c.mo40153a(c2665b.f10167b, c2665b.f10169d, c2665b.f10168c);
            } else if (i2 == 8) {
                this.f10160c.mo40150b(c2665b);
                this.f10160c.mo40148d(c2665b.f10167b, c2665b.f10169d);
            }
            Runnable runnable = this.f10161d;
            if (runnable != null) {
                runnable.run();
            }
        }
        m40167a(this.f10158a);
        this.f10164g = 0;
    }

    /* renamed from: f */
    public final boolean m40156f() {
        return !this.f10159b.isEmpty() && !this.f10158a.isEmpty();
    }
}
