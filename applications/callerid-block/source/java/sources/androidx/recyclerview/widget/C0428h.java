package androidx.recyclerview.widget;

import java.util.List;
/* renamed from: androidx.recyclerview.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/h.class */
class C0428h {

    /* renamed from: a */
    final AbstractC0429a f2401a;

    /* renamed from: androidx.recyclerview.widget.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/h$a.class */
    public interface AbstractC0429a {
        /* renamed from: a */
        void m12382a(a$b a_b);

        /* renamed from: b */
        a$b m12381b(int i, int i2, int i3, Object obj);
    }

    C0428h(AbstractC0429a abstractC0429a) {
        this.f2401a = abstractC0429a;
    }

    /* renamed from: a */
    private int m12388a(List<a$b> list) {
        boolean z;
        int size = list.size() - 1;
        boolean z2 = false;
        while (true) {
            boolean z3 = z2;
            if (size >= 0) {
                if (list.get(size).f2329a == 8) {
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
    private void m12386c(List<a$b> list, int i, a$b a_b, int i2, a$b a_b2) {
        int i3 = a_b.f2332d;
        int i4 = a_b2.f2330b;
        int i5 = i3 < i4 ? -1 : 0;
        int i6 = a_b.f2330b;
        int i7 = i5;
        if (i6 < i4) {
            i7 = i5 + 1;
        }
        if (i4 <= i6) {
            a_b.f2330b = i6 + a_b2.f2332d;
        }
        int i8 = a_b2.f2330b;
        if (i8 <= i3) {
            a_b.f2332d = i3 + a_b2.f2332d;
        }
        a_b2.f2330b = i8 + i7;
        list.set(i, a_b2);
        list.set(i2, a_b);
    }

    /* renamed from: d */
    private void m12385d(List<a$b> list, int i, int i2) {
        a$b a_b = list.get(i);
        a$b a_b2 = list.get(i2);
        int i3 = a_b2.f2329a;
        if (i3 == 1) {
            m12386c(list, i, a_b, i2, a_b2);
        } else if (i3 == 2) {
            m12384e(list, i, a_b, i2, a_b2);
        } else if (i3 != 4) {
        } else {
            m12383f(list, i, a_b, i2, a_b2);
        }
    }

    /* renamed from: b */
    void m12387b(List<a$b> list) {
        while (true) {
            int m12388a = m12388a(list);
            if (m12388a != -1) {
                m12385d(list, m12388a, m12388a + 1);
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x01a4, code lost:
        if (r12 > r11.f2330b) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0210, code lost:
        if (r12 >= r11.f2330b) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0213, code lost:
        r9.f2332d = r12 - r11.f2332d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x021f, code lost:
        r7.set(r8, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0231, code lost:
        if (r9.f2330b == r9.f2332d) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0234, code lost:
        r7.set(r10, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0241, code lost:
        r7.remove(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x024c, code lost:
        if (r17 == null) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x024f, code lost:
        r7.add(r8, r17);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0258, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:?, code lost:
        return;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m12384e(java.util.List<androidx.recyclerview.widget.a$b> r7, int r8, androidx.recyclerview.widget.a$b r9, int r10, androidx.recyclerview.widget.a$b r11) {
        /*
            Method dump skipped, instructions count: 601
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0428h.m12384e(java.util.List, int, androidx.recyclerview.widget.a$b, int, androidx.recyclerview.widget.a$b):void");
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
    void m12383f(java.util.List<androidx.recyclerview.widget.a$b> r7, int r8, androidx.recyclerview.widget.a$b r9, int r10, androidx.recyclerview.widget.a$b r11) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0428h.m12383f(java.util.List, int, androidx.recyclerview.widget.a$b, int, androidx.recyclerview.widget.a$b):void");
    }
}
