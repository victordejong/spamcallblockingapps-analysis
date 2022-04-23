package com.liulishuo.filedownloader.services;

import com.liulishuo.filedownloader.download.C2746c;
import com.liulishuo.filedownloader.model.C2774a;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.util.List;
import p092e.p096e.p097a.AbstractC3095x;
import p092e.p096e.p097a.p099e0.AbstractC3026a;
import p092e.p096e.p097a.p102h0.C3062d;
import p092e.p096e.p097a.p102h0.C3066f;
/* renamed from: com.liulishuo.filedownloader.services.g */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/g.class */
class C2784g implements AbstractC3095x {

    /* renamed from: a */
    private final AbstractC3026a f11546a;

    /* renamed from: b */
    private final C2785h f11547b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2784g() {
        C2746c j = C2746c.m1933j();
        this.f11546a = j.m1937f();
        this.f11547b = new C2785h(j.m1932k());
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001f, code lost:
        if (r0 != false) goto L_0x0029;
     */
    @Override // p092e.p096e.p097a.AbstractC3095x
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo252a(com.liulishuo.filedownloader.model.FileDownloadModel r8) {
        /*
            r7 = this;
            r0 = 0
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0008
            r0 = 0
            return r0
        L_0x0008:
            r0 = r7
            com.liulishuo.filedownloader.services.h r0 = r0.f11547b
            r1 = r8
            int r1 = r1.m1813e()
            boolean r0 = r0.m1736g(r1)
            r10 = r0
            r0 = r8
            byte r0 = r0.m1810h()
            boolean r0 = com.liulishuo.filedownloader.model.C2775b.m1775e(r0)
            if (r0 == 0) goto L_0x0025
            r0 = r10
            if (r0 == 0) goto L_0x004c
            goto L_0x0029
        L_0x0025:
            r0 = r10
            if (r0 == 0) goto L_0x002e
        L_0x0029:
            r0 = 1
            r9 = r0
            goto L_0x004c
        L_0x002e:
            r0 = r7
            java.lang.String r1 = "%d status is[%s](not finish) & but not in the pool"
            r2 = 2
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3 = r2
            r4 = 0
            r5 = r8
            int r5 = r5.m1813e()
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            r3[r4] = r5
            r3 = r2
            r4 = 1
            r5 = r8
            byte r5 = r5.m1810h()
            java.lang.Byte r5 = java.lang.Byte.valueOf(r5)
            r3[r4] = r5
            p092e.p096e.p097a.p102h0.C3062d.m413b(r0, r1, r2)
        L_0x004c:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.services.C2784g.mo252a(com.liulishuo.filedownloader.model.FileDownloadModel):boolean");
    }

    @Override // p092e.p096e.p097a.AbstractC3095x
    /* renamed from: b */
    public int mo251b(String str, int i) {
        return this.f11547b.m1738e(str, i);
    }

    /* renamed from: c */
    public void m1754c() {
        this.f11546a.clear();
    }

    /* renamed from: d */
    public boolean m1753d(int i) {
        if (i == 0) {
            C3062d.m406i(this, "The task[%d] id is invalid, can't clear it.", Integer.valueOf(i));
            return false;
        } else if (m1749h(i)) {
            C3062d.m406i(this, "The task[%d] is downloading, can't clear it.", Integer.valueOf(i));
            return false;
        } else {
            this.f11546a.remove(i);
            this.f11546a.mo498c(i);
            return true;
        }
    }

    /* renamed from: e */
    public long m1752e(int i) {
        FileDownloadModel o = this.f11546a.mo486o(i);
        if (o == null) {
            return 0L;
        }
        int a = o.m1817a();
        if (a <= 1) {
            return o.m1811g();
        }
        List<C2774a> n = this.f11546a.mo487n(i);
        if (n == null || n.size() != a) {
            return 0L;
        }
        return C2774a.m1786f(n);
    }

    /* renamed from: f */
    public byte m1751f(int i) {
        FileDownloadModel o = this.f11546a.mo486o(i);
        if (o == null) {
            return (byte) 0;
        }
        return o.m1810h();
    }

    /* renamed from: g */
    public long m1750g(int i) {
        FileDownloadModel o = this.f11546a.mo486o(i);
        if (o == null) {
            return 0L;
        }
        return o.m1807m();
    }

    /* renamed from: h */
    public boolean m1749h(int i) {
        return mo252a(this.f11546a.mo486o(i));
    }

    /* renamed from: i */
    public boolean m1748i(String str, String str2) {
        return m1749h(C3066f.m364r(str, str2));
    }

    /* renamed from: j */
    public boolean m1747j() {
        return this.f11547b.m1741b() <= 0;
    }

    /* renamed from: k */
    public boolean m1746k(int i) {
        if (C3062d.f12682a) {
            C3062d.m414a(this, "request pause the task %d", Integer.valueOf(i));
        }
        FileDownloadModel o = this.f11546a.mo486o(i);
        if (o == null) {
            return false;
        }
        o.m1821D((byte) -2);
        this.f11547b.m1742a(i);
        return true;
    }

    /* renamed from: l */
    public void m1745l() {
        List<Integer> f = this.f11547b.m1737f();
        if (C3062d.f12682a) {
            C3062d.m414a(this, "pause all tasks %d", Integer.valueOf(f.size()));
        }
        for (Integer num : f) {
            m1746k(num.intValue());
        }
    }

    /* renamed from: m */
    public boolean m1744m(int i) {
        boolean h;
        synchronized (this) {
            h = this.f11547b.m1735h(i);
        }
        return h;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0290 A[Catch: all -> 0x02f9, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x000f, B:8:0x0028, B:8:0x0028, B:9:0x002b, B:13:0x0049, B:15:0x0066, B:17:0x0072, B:19:0x0078, B:21:0x0093, B:25:0x00af, B:27:0x00bb, B:29:0x00c1, B:35:0x00db, B:36:0x00e5, B:38:0x00ef, B:40:0x00fa, B:42:0x0100, B:48:0x011a, B:52:0x012c, B:53:0x0136, B:55:0x013f, B:57:0x014c, B:59:0x0152, B:62:0x016e, B:68:0x018d, B:70:0x0197, B:72:0x01a0, B:74:0x01a9, B:76:0x01b3, B:79:0x01be, B:81:0x01c6, B:84:0x01fa, B:87:0x0206, B:89:0x020f, B:91:0x0230, B:93:0x023c, B:97:0x0252, B:99:0x025e, B:104:0x0290, B:105:0x029b, B:105:0x029b, B:106:0x029e), top: B:113:0x0002 }] */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1743n(java.lang.String r8, java.lang.String r9, boolean r10, int r11, int r12, int r13, boolean r14, com.liulishuo.filedownloader.model.FileDownloadHeader r15, boolean r16) {
        /*
            Method dump skipped, instructions count: 772
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.services.C2784g.m1743n(java.lang.String, java.lang.String, boolean, int, int, int, boolean, com.liulishuo.filedownloader.model.FileDownloadHeader, boolean):void");
    }
}
