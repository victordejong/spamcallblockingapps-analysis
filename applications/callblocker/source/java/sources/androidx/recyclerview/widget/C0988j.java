package androidx.recyclerview.widget;

import androidx.recyclerview.widget.C0958a;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.recyclerview.widget.j */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/j.class */
public class C0988j {

    /* renamed from: a */
    final AbstractC0989a f3399a;

    /* renamed from: androidx.recyclerview.widget.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/j$a.class */
    public interface AbstractC0989a {
        /* renamed from: a */
        C0958a.C0960b mo18470a(int i, int i2, int i3, Object obj);

        /* renamed from: a */
        void mo18469a(C0958a.C0960b c0960b);
    }

    public C0988j(AbstractC0989a abstractC0989a) {
        this.f3399a = abstractC0989a;
    }

    /* renamed from: a */
    private void m18475a(List<C0958a.C0960b> list, int i, int i2) {
        C0958a.C0960b c0960b = list.get(i);
        C0958a.C0960b c0960b2 = list.get(i2);
        switch (c0960b2.f3265a) {
            case 1:
                m18471c(list, i, c0960b, i2, c0960b2);
                return;
            case 2:
                m18474a(list, i, c0960b, i2, c0960b2);
                return;
            case 3:
            default:
                return;
            case 4:
                m18472b(list, i, c0960b, i2, c0960b2);
                return;
        }
    }

    /* renamed from: b */
    private int m18473b(List<C0958a.C0960b> list) {
        boolean z = false;
        int size = list.size() - 1;
        while (true) {
            if (size < 0) {
                size = -1;
                break;
            }
            if (list.get(size).f3265a != 8) {
                z = true;
            } else if (z) {
                break;
            }
            size--;
        }
        return size;
    }

    /* renamed from: c */
    private void m18471c(List<C0958a.C0960b> list, int i, C0958a.C0960b c0960b, int i2, C0958a.C0960b c0960b2) {
        int i3 = 0;
        if (c0960b.f3268d < c0960b2.f3266b) {
            i3 = -1;
        }
        int i4 = i3;
        if (c0960b.f3266b < c0960b2.f3266b) {
            i4 = i3 + 1;
        }
        if (c0960b2.f3266b <= c0960b.f3266b) {
            c0960b.f3266b += c0960b2.f3268d;
        }
        if (c0960b2.f3266b <= c0960b.f3268d) {
            c0960b.f3268d += c0960b2.f3268d;
        }
        c0960b2.f3266b = i4 + c0960b2.f3266b;
        list.set(i, c0960b2);
        list.set(i2, c0960b);
    }

    /* renamed from: a */
    public void m18476a(List<C0958a.C0960b> list) {
        while (true) {
            int m18473b = m18473b(list);
            if (m18473b != -1) {
                m18475a(list, m18473b, m18473b + 1);
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    void m18474a(List<C0958a.C0960b> list, int i, C0958a.C0960b c0960b, int i2, C0958a.C0960b c0960b2) {
        boolean z;
        boolean z2;
        C0958a.C0960b c0960b3;
        if (c0960b.f3266b < c0960b.f3268d) {
            if (c0960b2.f3266b == c0960b.f3266b && c0960b2.f3268d == c0960b.f3268d - c0960b.f3266b) {
                z = false;
                z2 = true;
            } else {
                z = false;
                z2 = false;
            }
        } else if (c0960b2.f3266b == c0960b.f3268d + 1 && c0960b2.f3268d == c0960b.f3266b - c0960b.f3268d) {
            z = true;
            z2 = true;
        } else {
            z = true;
            z2 = false;
        }
        if (c0960b.f3268d < c0960b2.f3266b) {
            c0960b2.f3266b--;
        } else if (c0960b.f3268d < c0960b2.f3266b + c0960b2.f3268d) {
            c0960b2.f3268d--;
            c0960b.f3265a = 2;
            c0960b.f3268d = 1;
            if (c0960b2.f3268d != 0) {
                return;
            }
            list.remove(i2);
            this.f3399a.mo18469a(c0960b2);
            return;
        }
        if (c0960b.f3266b <= c0960b2.f3266b) {
            c0960b2.f3266b++;
            c0960b3 = null;
        } else if (c0960b.f3266b < c0960b2.f3266b + c0960b2.f3268d) {
            c0960b3 = this.f3399a.mo18470a(2, c0960b.f3266b + 1, (c0960b2.f3266b + c0960b2.f3268d) - c0960b.f3266b, null);
            c0960b2.f3268d = c0960b.f3266b - c0960b2.f3266b;
        } else {
            c0960b3 = null;
        }
        if (z2) {
            list.set(i, c0960b2);
            list.remove(i2);
            this.f3399a.mo18469a(c0960b);
            return;
        }
        if (z) {
            if (c0960b3 != null) {
                if (c0960b.f3266b > c0960b3.f3266b) {
                    c0960b.f3266b -= c0960b3.f3268d;
                }
                if (c0960b.f3268d > c0960b3.f3266b) {
                    c0960b.f3268d -= c0960b3.f3268d;
                }
            }
            if (c0960b.f3266b > c0960b2.f3266b) {
                c0960b.f3266b -= c0960b2.f3268d;
            }
            if (c0960b.f3268d > c0960b2.f3266b) {
                c0960b.f3268d -= c0960b2.f3268d;
            }
        } else {
            if (c0960b3 != null) {
                if (c0960b.f3266b >= c0960b3.f3266b) {
                    c0960b.f3266b -= c0960b3.f3268d;
                }
                if (c0960b.f3268d >= c0960b3.f3266b) {
                    c0960b.f3268d -= c0960b3.f3268d;
                }
            }
            if (c0960b.f3266b >= c0960b2.f3266b) {
                c0960b.f3266b -= c0960b2.f3268d;
            }
            if (c0960b.f3268d >= c0960b2.f3266b) {
                c0960b.f3268d -= c0960b2.f3268d;
            }
        }
        list.set(i, c0960b2);
        if (c0960b.f3266b != c0960b.f3268d) {
            list.set(i2, c0960b);
        } else {
            list.remove(i2);
        }
        if (c0960b3 == null) {
            return;
        }
        list.add(i, c0960b3);
    }

    /* renamed from: b */
    void m18472b(List<C0958a.C0960b> list, int i, C0958a.C0960b c0960b, int i2, C0958a.C0960b c0960b2) {
        C0958a.C0960b c0960b3;
        C0958a.C0960b c0960b4 = null;
        if (c0960b.f3268d < c0960b2.f3266b) {
            c0960b2.f3266b--;
            c0960b3 = null;
        } else if (c0960b.f3268d < c0960b2.f3266b + c0960b2.f3268d) {
            c0960b2.f3268d--;
            c0960b3 = this.f3399a.mo18470a(4, c0960b.f3266b, 1, c0960b2.f3267c);
        } else {
            c0960b3 = null;
        }
        if (c0960b.f3266b <= c0960b2.f3266b) {
            c0960b2.f3266b++;
        } else if (c0960b.f3266b < c0960b2.f3266b + c0960b2.f3268d) {
            int i3 = (c0960b2.f3266b + c0960b2.f3268d) - c0960b.f3266b;
            c0960b4 = this.f3399a.mo18470a(4, c0960b.f3266b + 1, i3, c0960b2.f3267c);
            c0960b2.f3268d -= i3;
        }
        list.set(i2, c0960b);
        if (c0960b2.f3268d > 0) {
            list.set(i, c0960b2);
        } else {
            list.remove(i);
            this.f3399a.mo18469a(c0960b2);
        }
        if (c0960b3 != null) {
            list.add(i, c0960b3);
        }
        if (c0960b4 != null) {
            list.add(i, c0960b4);
        }
    }
}
