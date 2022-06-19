package androidx.recyclerview.widget;

import androidx.recyclerview.widget.C0945a;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.recyclerview.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/h.class */
public class C0973h {

    /* renamed from: a */
    final AbstractC0974a f4368a;

    /* renamed from: androidx.recyclerview.widget.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/h$a.class */
    public interface AbstractC0974a {
        /* renamed from: a */
        void mo31403a(C0945a.C0947b c0947b);

        /* renamed from: b */
        C0945a.C0947b mo31402b(int i, int i2, int i3, Object obj);
    }

    public C0973h(AbstractC0974a abstractC0974a) {
        this.f4368a = abstractC0974a;
    }

    /* renamed from: a */
    private int m31409a(List<C0945a.C0947b> list) {
        boolean z;
        int size = list.size() - 1;
        boolean z2 = false;
        while (true) {
            boolean z3 = z2;
            if (size >= 0) {
                if (list.get(size).f4240a == 8) {
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
    private void m31407c(List<C0945a.C0947b> list, int i, C0945a.C0947b c0947b, int i2, C0945a.C0947b c0947b2) {
        int i3 = c0947b.f4243d;
        int i4 = c0947b2.f4241b;
        int i5 = i3 < i4 ? -1 : 0;
        int i6 = c0947b.f4241b;
        int i7 = i5;
        if (i6 < i4) {
            i7 = i5 + 1;
        }
        if (i4 <= i6) {
            c0947b.f4241b = i6 + c0947b2.f4243d;
        }
        int i8 = c0947b2.f4241b;
        if (i8 <= i3) {
            c0947b.f4243d = i3 + c0947b2.f4243d;
        }
        c0947b2.f4241b = i8 + i7;
        list.set(i, c0947b2);
        list.set(i2, c0947b);
    }

    /* renamed from: d */
    private void m31406d(List<C0945a.C0947b> list, int i, int i2) {
        C0945a.C0947b c0947b = list.get(i);
        C0945a.C0947b c0947b2 = list.get(i2);
        int i3 = c0947b2.f4240a;
        if (i3 == 1) {
            m31407c(list, i, c0947b, i2, c0947b2);
        } else if (i3 == 2) {
            m31405e(list, i, c0947b, i2, c0947b2);
        } else if (i3 != 4) {
        } else {
            m31404f(list, i, c0947b, i2, c0947b2);
        }
    }

    /* renamed from: b */
    public void m31408b(List<C0945a.C0947b> list) {
        while (true) {
            int m31409a = m31409a(list);
            if (m31409a != -1) {
                m31406d(list, m31409a, m31409a + 1);
            } else {
                return;
            }
        }
    }

    /* renamed from: e */
    void m31405e(List<C0945a.C0947b> list, int i, C0945a.C0947b c0947b, int i2, C0945a.C0947b c0947b2) {
        boolean z;
        int i3 = c0947b.f4241b;
        int i4 = c0947b.f4243d;
        boolean z2 = false;
        if (i3 < i4) {
            if (c0947b2.f4241b == i3 && c0947b2.f4243d == i4 - i3) {
                z = false;
                z2 = true;
            } else {
                z = false;
            }
        } else if (c0947b2.f4241b == i4 + 1 && c0947b2.f4243d == i3 - i4) {
            z = true;
            z2 = true;
        } else {
            z = true;
        }
        int i5 = c0947b2.f4241b;
        if (i4 < i5) {
            c0947b2.f4241b = i5 - 1;
        } else {
            int i6 = c0947b2.f4243d;
            if (i4 < i5 + i6) {
                c0947b2.f4243d = i6 - 1;
                c0947b.f4240a = 2;
                c0947b.f4243d = 1;
                if (c0947b2.f4243d != 0) {
                    return;
                }
                list.remove(i2);
                this.f4368a.mo31403a(c0947b2);
                return;
            }
        }
        int i7 = c0947b.f4241b;
        int i8 = c0947b2.f4241b;
        C0945a.C0947b c0947b3 = null;
        if (i7 <= i8) {
            c0947b2.f4241b = i8 + 1;
        } else {
            int i9 = c0947b2.f4243d;
            if (i7 < i8 + i9) {
                c0947b3 = this.f4368a.mo31402b(2, i7 + 1, (i8 + i9) - i7, null);
                c0947b2.f4243d = c0947b.f4241b - c0947b2.f4241b;
            }
        }
        if (z2) {
            list.set(i, c0947b2);
            list.remove(i2);
            this.f4368a.mo31403a(c0947b);
            return;
        }
        if (z) {
            if (c0947b3 != null) {
                int i10 = c0947b.f4241b;
                if (i10 > c0947b3.f4241b) {
                    c0947b.f4241b = i10 - c0947b3.f4243d;
                }
                int i11 = c0947b.f4243d;
                if (i11 > c0947b3.f4241b) {
                    c0947b.f4243d = i11 - c0947b3.f4243d;
                }
            }
            int i12 = c0947b.f4241b;
            if (i12 > c0947b2.f4241b) {
                c0947b.f4241b = i12 - c0947b2.f4243d;
            }
            int i13 = c0947b.f4243d;
            if (i13 > c0947b2.f4241b) {
                c0947b.f4243d = i13 - c0947b2.f4243d;
            }
        } else {
            if (c0947b3 != null) {
                int i14 = c0947b.f4241b;
                if (i14 >= c0947b3.f4241b) {
                    c0947b.f4241b = i14 - c0947b3.f4243d;
                }
                int i15 = c0947b.f4243d;
                if (i15 >= c0947b3.f4241b) {
                    c0947b.f4243d = i15 - c0947b3.f4243d;
                }
            }
            int i16 = c0947b.f4241b;
            if (i16 >= c0947b2.f4241b) {
                c0947b.f4241b = i16 - c0947b2.f4243d;
            }
            int i17 = c0947b.f4243d;
            if (i17 >= c0947b2.f4241b) {
                c0947b.f4243d = i17 - c0947b2.f4243d;
            }
        }
        list.set(i, c0947b2);
        if (c0947b.f4241b != c0947b.f4243d) {
            list.set(i2, c0947b);
        } else {
            list.remove(i2);
        }
        if (c0947b3 == null) {
            return;
        }
        list.add(i, c0947b3);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m31404f(java.util.List<androidx.recyclerview.widget.C0945a.C0947b> r7, int r8, androidx.recyclerview.widget.C0945a.C0947b r9, int r10, androidx.recyclerview.widget.C0945a.C0947b r11) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0973h.m31404f(java.util.List, int, androidx.recyclerview.widget.a$b, int, androidx.recyclerview.widget.a$b):void");
    }
}
