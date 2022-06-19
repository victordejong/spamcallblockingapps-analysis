package androidx.recyclerview.widget;

import android.view.View;
/* renamed from: androidx.recyclerview.widget.q */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/q.class */
class C1002q {

    /* renamed from: a */
    final AbstractC1004b f3417a;

    /* renamed from: b */
    C1003a f3418b = new C1003a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.q$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/q$a.class */
    public static class C1003a {

        /* renamed from: a */
        int f3419a = 0;

        /* renamed from: b */
        int f3420b;

        /* renamed from: c */
        int f3421c;

        /* renamed from: d */
        int f3422d;

        /* renamed from: e */
        int f3423e;

        C1003a() {
        }

        /* renamed from: a */
        int m18387a(int i, int i2) {
            return i > i2 ? 1 : i == i2 ? 2 : 4;
        }

        /* renamed from: a */
        void m18389a() {
            this.f3419a = 0;
        }

        /* renamed from: a */
        void m18388a(int i) {
            this.f3419a |= i;
        }

        /* renamed from: a */
        void m18386a(int i, int i2, int i3, int i4) {
            this.f3420b = i;
            this.f3421c = i2;
            this.f3422d = i3;
            this.f3423e = i4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0045, code lost:
            if ((r5.f3419a & (m18387a(r5.f3422d, r5.f3421c) << 4)) != 0) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0069, code lost:
            if ((r5.f3419a & (m18387a(r5.f3423e, r5.f3420b) << 8)) != 0) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x008d, code lost:
            if ((r5.f3419a & (m18387a(r5.f3423e, r5.f3421c) << 12)) != 0) goto L21;
         */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        boolean m18385b() {
            /*
                r5 = this;
                r0 = 0
                r6 = r0
                r0 = r5
                int r0 = r0.f3419a
                r1 = 7
                r0 = r0 & r1
                if (r0 == 0) goto L26
                r0 = r5
                int r0 = r0.f3419a
                r1 = r5
                r2 = r5
                int r2 = r2.f3422d
                r3 = r5
                int r3 = r3.f3420b
                int r1 = r1.m18387a(r2, r3)
                r2 = 0
                int r1 = r1 << r2
                r0 = r0 & r1
                if (r0 != 0) goto L26
                r0 = r6
                r7 = r0
            L24:
                r0 = r7
                return r0
            L26:
                r0 = r5
                int r0 = r0.f3419a
                r1 = 112(0x70, float:1.57E-43)
                r0 = r0 & r1
                if (r0 == 0) goto L48
                r0 = r6
                r7 = r0
                r0 = r5
                int r0 = r0.f3419a
                r1 = r5
                r2 = r5
                int r2 = r2.f3422d
                r3 = r5
                int r3 = r3.f3421c
                int r1 = r1.m18387a(r2, r3)
                r2 = 4
                int r1 = r1 << r2
                r0 = r0 & r1
                if (r0 == 0) goto L24
            L48:
                r0 = r5
                int r0 = r0.f3419a
                r1 = 1792(0x700, float:2.511E-42)
                r0 = r0 & r1
                if (r0 == 0) goto L6c
                r0 = r6
                r7 = r0
                r0 = r5
                int r0 = r0.f3419a
                r1 = r5
                r2 = r5
                int r2 = r2.f3423e
                r3 = r5
                int r3 = r3.f3420b
                int r1 = r1.m18387a(r2, r3)
                r2 = 8
                int r1 = r1 << r2
                r0 = r0 & r1
                if (r0 == 0) goto L24
            L6c:
                r0 = r5
                int r0 = r0.f3419a
                r1 = 28672(0x7000, float:4.0178E-41)
                r0 = r0 & r1
                if (r0 == 0) goto L90
                r0 = r6
                r7 = r0
                r0 = r5
                int r0 = r0.f3419a
                r1 = r5
                r2 = r5
                int r2 = r2.f3423e
                r3 = r5
                int r3 = r3.f3421c
                int r1 = r1.m18387a(r2, r3)
                r2 = 12
                int r1 = r1 << r2
                r0 = r0 & r1
                if (r0 == 0) goto L24
            L90:
                r0 = 1
                r7 = r0
                goto L24
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C1002q.C1003a.m18385b():boolean");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.q$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/q$b.class */
    public interface AbstractC1004b {
        /* renamed from: a */
        int mo18384a();

        /* renamed from: a */
        int mo18382a(View view);

        /* renamed from: a */
        View mo18383a(int i);

        /* renamed from: b */
        int mo18381b();

        /* renamed from: b */
        int mo18380b(View view);
    }

    public C1002q(AbstractC1004b abstractC1004b) {
        this.f3417a = abstractC1004b;
    }

    /* renamed from: a */
    public View m18391a(int i, int i2, int i3, int i4) {
        int mo18384a = this.f3417a.mo18384a();
        int mo18381b = this.f3417a.mo18381b();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (true) {
            if (i == i2) {
                break;
            }
            View mo18383a = this.f3417a.mo18383a(i);
            this.f3418b.m18386a(mo18384a, mo18381b, this.f3417a.mo18382a(mo18383a), this.f3417a.mo18380b(mo18383a));
            if (i3 != 0) {
                this.f3418b.m18389a();
                this.f3418b.m18388a(i3);
                if (this.f3418b.m18385b()) {
                    view = mo18383a;
                    break;
                }
            }
            if (i4 != 0) {
                this.f3418b.m18389a();
                this.f3418b.m18388a(i4);
                if (this.f3418b.m18385b()) {
                    view = mo18383a;
                }
            }
            i += i5;
        }
        return view;
    }

    /* renamed from: a */
    public boolean m18390a(View view, int i) {
        boolean z;
        this.f3418b.m18386a(this.f3417a.mo18384a(), this.f3417a.mo18381b(), this.f3417a.mo18382a(view), this.f3417a.mo18380b(view));
        if (i != 0) {
            this.f3418b.m18389a();
            this.f3418b.m18388a(i);
            z = this.f3418b.m18385b();
        } else {
            z = false;
        }
        return z;
    }
}
