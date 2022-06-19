package com.liulishuo.filedownloader.services;

import com.liulishuo.filedownloader.download.C9351c;
import com.liulishuo.filedownloader.model.C9379a;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.util.List;
import p078c.p122d.p123a.AbstractC2069y;
import p078c.p122d.p123a.p125f0.AbstractC2003a;
import p078c.p122d.p123a.p128i0.C2036d;
import p078c.p122d.p123a.p128i0.C2040f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.liulishuo.filedownloader.services.g */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/g.class */
public class C9389g implements AbstractC2069y {

    /* renamed from: a */
    private final AbstractC2003a f40137a;

    /* renamed from: b */
    private final C9390h f40138b;

    public C9389g() {
        C9351c m979j = C9351c.m979j();
        this.f40137a = m979j.m983f();
        this.f40138b = new C9390h(m979j.m978k());
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001f, code lost:
        if (r0 != false) goto L11;
     */
    @Override // p078c.p122d.p123a.AbstractC2069y
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo773a(com.liulishuo.filedownloader.model.FileDownloadModel r8) {
        /*
            r7 = this;
            r0 = 0
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L8
            r0 = 0
            return r0
        L8:
            r0 = r7
            com.liulishuo.filedownloader.services.h r0 = r0.f40138b
            r1 = r8
            int r1 = r1.m859e()
            boolean r0 = r0.m753g(r1)
            r10 = r0
            r0 = r8
            byte r0 = r0.m856h()
            boolean r0 = com.liulishuo.filedownloader.model.C9380b.m820e(r0)
            if (r0 == 0) goto L25
            r0 = r10
            if (r0 == 0) goto L4c
            goto L29
        L25:
            r0 = r10
            if (r0 == 0) goto L2e
        L29:
            r0 = 1
            r9 = r0
            goto L4c
        L2e:
            r0 = r7
            java.lang.String r1 = "%d status is[%s](not finish) & but not in the pool"
            r2 = 2
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3 = r2
            r4 = 0
            r5 = r8
            int r5 = r5.m859e()
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            r3[r4] = r5
            r3 = r2
            r4 = 1
            r5 = r8
            byte r5 = r5.m856h()
            java.lang.Byte r5 = java.lang.Byte.valueOf(r5)
            r3[r4] = r5
            p078c.p122d.p123a.p128i0.C2036d.m28252b(r0, r1, r2)
        L4c:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.services.C9389g.mo773a(com.liulishuo.filedownloader.model.FileDownloadModel):boolean");
    }

    @Override // p078c.p122d.p123a.AbstractC2069y
    /* renamed from: b */
    public int mo772b(String str, int i) {
        return this.f40138b.m755e(str, i);
    }

    /* renamed from: c */
    public void m771c() {
        this.f40137a.clear();
    }

    /* renamed from: d */
    public boolean m770d(int i) {
        if (i == 0) {
            C2036d.m28245i(this, "The task[%d] id is invalid, can't clear it.", Integer.valueOf(i));
            return false;
        } else if (m766h(i)) {
            C2036d.m28245i(this, "The task[%d] is downloading, can't clear it.", Integer.valueOf(i));
            return false;
        } else {
            this.f40137a.remove(i);
            this.f40137a.mo28317h(i);
            return true;
        }
    }

    /* renamed from: e */
    public long m769e(int i) {
        FileDownloadModel mo28310o = this.f40137a.mo28310o(i);
        if (mo28310o == null) {
            return 0L;
        }
        int m863a = mo28310o.m863a();
        if (m863a <= 1) {
            return mo28310o.m857g();
        }
        List<C9379a> mo28311n = this.f40137a.mo28311n(i);
        if (mo28311n != null && mo28311n.size() == m863a) {
            return C9379a.m831f(mo28311n);
        }
        return 0L;
    }

    /* renamed from: f */
    public byte m768f(int i) {
        FileDownloadModel mo28310o = this.f40137a.mo28310o(i);
        if (mo28310o == null) {
            return (byte) 0;
        }
        return mo28310o.m856h();
    }

    /* renamed from: g */
    public long m767g(int i) {
        FileDownloadModel mo28310o = this.f40137a.mo28310o(i);
        if (mo28310o == null) {
            return 0L;
        }
        return mo28310o.m853k();
    }

    /* renamed from: h */
    public boolean m766h(int i) {
        return mo773a(this.f40137a.mo28310o(i));
    }

    /* renamed from: i */
    public boolean m765i(String str, String str2) {
        return m766h(C2040f.m28203r(str, str2));
    }

    /* renamed from: j */
    public boolean m764j() {
        return this.f40138b.m758b() <= 0;
    }

    /* renamed from: k */
    public boolean m763k(int i) {
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "request pause the task %d", Integer.valueOf(i));
        }
        FileDownloadModel mo28310o = this.f40137a.mo28310o(i);
        if (mo28310o == null) {
            return false;
        }
        mo28310o.m867B((byte) -2);
        this.f40138b.m759a(i);
        return true;
    }

    /* renamed from: l */
    public void m762l() {
        List<Integer> m754f = this.f40138b.m754f();
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "pause all tasks %d", Integer.valueOf(m754f.size()));
        }
        for (Integer num : m754f) {
            m763k(num.intValue());
        }
    }

    /* renamed from: m */
    public boolean m761m(int i) {
        boolean m752h;
        synchronized (this) {
            m752h = this.f40138b.m752h(i);
        }
        return m752h;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x028d A[Catch: all -> 0x02e4, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x000f, B:8:0x0028, B:8:0x0028, B:9:0x002b, B:13:0x0049, B:15:0x0066, B:17:0x0072, B:19:0x0078, B:21:0x0093, B:24:0x00ab, B:26:0x00b7, B:28:0x00bd, B:34:0x00d7, B:35:0x00e1, B:37:0x00eb, B:39:0x00f6, B:41:0x00fc, B:47:0x0116, B:51:0x0128, B:52:0x0132, B:54:0x013b, B:56:0x0148, B:58:0x014e, B:61:0x016a, B:67:0x0189, B:69:0x0193, B:71:0x019c, B:73:0x01a5, B:75:0x01af, B:78:0x01ba, B:80:0x01c2, B:83:0x01f5, B:86:0x0200, B:88:0x0209, B:90:0x0229, B:92:0x0235, B:96:0x024a, B:98:0x0256, B:103:0x028d, B:104:0x0297, B:104:0x0297, B:105:0x029a), top: B:112:0x0002 }] */
    /* JADX WARN: Type inference failed for: r0v106, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r24v0 */
    /* JADX WARN: Type inference failed for: r24v1 */
    /* JADX WARN: Type inference failed for: r24v2 */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m760n(java.lang.String r8, java.lang.String r9, boolean r10, int r11, int r12, int r13, boolean r14, com.liulishuo.filedownloader.model.FileDownloadHeader r15, boolean r16) {
        /*
            Method dump skipped, instructions count: 745
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.services.C9389g.m760n(java.lang.String, java.lang.String, boolean, int, int, int, boolean, com.liulishuo.filedownloader.model.FileDownloadHeader, boolean):void");
    }
}
