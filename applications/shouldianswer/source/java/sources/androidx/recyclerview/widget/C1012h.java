package androidx.recyclerview.widget;

import androidx.recyclerview.widget.C0984a;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.recyclerview.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/h.class */
public class C1012h {

    /* renamed from: a */
    final AbstractC1013a f3202a;

    /* renamed from: androidx.recyclerview.widget.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/h$a.class */
    public interface AbstractC1013a {
        /* renamed from: a */
        C0984a.C0986b mo4580a(int i, int i2, int i3, Object obj);

        /* renamed from: a */
        void mo4579a(C0984a.C0986b c0986b);
    }

    public C1012h(AbstractC1013a abstractC1013a) {
        this.f3202a = abstractC1013a;
    }

    /* renamed from: a */
    private void m4585a(List<C0984a.C0986b> list, int i, int i2) {
        C0984a.C0986b c0986b = list.get(i);
        C0984a.C0986b c0986b2 = list.get(i2);
        int i3 = c0986b2.f3076a;
        if (i3 == 1) {
            m4581c(list, i, c0986b, i2, c0986b2);
        } else if (i3 == 2) {
            m4584a(list, i, c0986b, i2, c0986b2);
        } else if (i3 != 4) {
        } else {
            m4582b(list, i, c0986b, i2, c0986b2);
        }
    }

    /* renamed from: b */
    private int m4583b(List<C0984a.C0986b> list) {
        boolean z;
        int size = list.size() - 1;
        boolean z2 = false;
        while (true) {
            boolean z3 = z2;
            if (size >= 0) {
                if (list.get(size).f3076a == 8) {
                    z = z3;
                    if (z3) {
                        return size;
                    }
                } else {
                    z = true;
                }
                size--;
                z2 = z;
            } else {
                return -1;
            }
        }
    }

    /* renamed from: c */
    private void m4581c(List<C0984a.C0986b> list, int i, C0984a.C0986b c0986b, int i2, C0984a.C0986b c0986b2) {
        int i3 = c0986b.f3079d < c0986b2.f3077b ? -1 : 0;
        int i4 = i3;
        if (c0986b.f3077b < c0986b2.f3077b) {
            i4 = i3 + 1;
        }
        if (c0986b2.f3077b <= c0986b.f3077b) {
            c0986b.f3077b += c0986b2.f3079d;
        }
        if (c0986b2.f3077b <= c0986b.f3079d) {
            c0986b.f3079d += c0986b2.f3079d;
        }
        c0986b2.f3077b += i4;
        list.set(i, c0986b2);
        list.set(i2, c0986b);
    }

    /* renamed from: a */
    public void m4586a(List<C0984a.C0986b> list) {
        while (true) {
            int m4583b = m4583b(list);
            if (m4583b != -1) {
                m4585a(list, m4583b, m4583b + 1);
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    void m4584a(List<C0984a.C0986b> list, int i, C0984a.C0986b c0986b, int i2, C0984a.C0986b c0986b2) {
        boolean z;
        boolean z2 = false;
        if (c0986b.f3077b < c0986b.f3079d) {
            if (c0986b2.f3077b == c0986b.f3077b && c0986b2.f3079d == c0986b.f3079d - c0986b.f3077b) {
                z = false;
                z2 = true;
            } else {
                z = false;
            }
        } else if (c0986b2.f3077b == c0986b.f3079d + 1 && c0986b2.f3079d == c0986b.f3077b - c0986b.f3079d) {
            z = true;
            z2 = true;
        } else {
            z = true;
        }
        if (c0986b.f3079d < c0986b2.f3077b) {
            c0986b2.f3077b--;
        } else if (c0986b.f3079d < c0986b2.f3077b + c0986b2.f3079d) {
            c0986b2.f3079d--;
            c0986b.f3076a = 2;
            c0986b.f3079d = 1;
            if (c0986b2.f3079d != 0) {
                return;
            }
            list.remove(i2);
            this.f3202a.mo4579a(c0986b2);
            return;
        }
        C0984a.C0986b c0986b3 = null;
        if (c0986b.f3077b <= c0986b2.f3077b) {
            c0986b2.f3077b++;
        } else if (c0986b.f3077b < c0986b2.f3077b + c0986b2.f3079d) {
            c0986b3 = this.f3202a.mo4580a(2, c0986b.f3077b + 1, (c0986b2.f3077b + c0986b2.f3079d) - c0986b.f3077b, null);
            c0986b2.f3079d = c0986b.f3077b - c0986b2.f3077b;
        }
        if (z2) {
            list.set(i, c0986b2);
            list.remove(i2);
            this.f3202a.mo4579a(c0986b);
            return;
        }
        if (z) {
            if (c0986b3 != null) {
                if (c0986b.f3077b > c0986b3.f3077b) {
                    c0986b.f3077b -= c0986b3.f3079d;
                }
                if (c0986b.f3079d > c0986b3.f3077b) {
                    c0986b.f3079d -= c0986b3.f3079d;
                }
            }
            if (c0986b.f3077b > c0986b2.f3077b) {
                c0986b.f3077b -= c0986b2.f3079d;
            }
            if (c0986b.f3079d > c0986b2.f3077b) {
                c0986b.f3079d -= c0986b2.f3079d;
            }
        } else {
            if (c0986b3 != null) {
                if (c0986b.f3077b >= c0986b3.f3077b) {
                    c0986b.f3077b -= c0986b3.f3079d;
                }
                if (c0986b.f3079d >= c0986b3.f3077b) {
                    c0986b.f3079d -= c0986b3.f3079d;
                }
            }
            if (c0986b.f3077b >= c0986b2.f3077b) {
                c0986b.f3077b -= c0986b2.f3079d;
            }
            if (c0986b.f3079d >= c0986b2.f3077b) {
                c0986b.f3079d -= c0986b2.f3079d;
            }
        }
        list.set(i, c0986b2);
        if (c0986b.f3077b != c0986b.f3079d) {
            list.set(i2, c0986b);
        } else {
            list.remove(i2);
        }
        if (c0986b3 == null) {
            return;
        }
        list.add(i, c0986b3);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m4582b(java.util.List<androidx.recyclerview.widget.C0984a.C0986b> r7, int r8, androidx.recyclerview.widget.C0984a.C0986b r9, int r10, androidx.recyclerview.widget.C0984a.C0986b r11) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C1012h.m4582b(java.util.List, int, androidx.recyclerview.widget.a$b, int, androidx.recyclerview.widget.a$b):void");
    }
}
