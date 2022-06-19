package com.liulishuo.filedownloader.download;

import com.liulishuo.filedownloader.services.C2778c;
import com.liulishuo.filedownloader.services.C2786i;
import java.io.File;
import p092e.p096e.p097a.p098d0.AbstractC3020b;
import p092e.p096e.p097a.p099e0.AbstractC3026a;
import p092e.p096e.p097a.p101g0.AbstractC3047a;
import p092e.p096e.p097a.p102h0.C3056c;
/* renamed from: com.liulishuo.filedownloader.download.c */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/c.class */
public class C2746c {

    /* renamed from: a */
    private C2778c f11392a;

    /* renamed from: b */
    private C3056c.AbstractC3057a f11393b;

    /* renamed from: c */
    private C3056c.AbstractC3058b f11394c;

    /* renamed from: d */
    private C3056c.AbstractC3061e f11395d;

    /* renamed from: e */
    private AbstractC3026a f11396e;

    /* renamed from: f */
    private C3056c.AbstractC3060d f11397f;

    /* renamed from: g */
    private C2786i f11398g;

    /* renamed from: com.liulishuo.filedownloader.download.c$a */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/c$a.class */
    public static final class C2747a {

        /* renamed from: a */
        private static final C2746c f11399a = new C2746c();
    }

    /* renamed from: d */
    private C3056c.AbstractC3057a m1939d() {
        C3056c.AbstractC3057a abstractC3057a = this.f11393b;
        if (abstractC3057a != null) {
            return abstractC3057a;
        }
        synchronized (this) {
            if (this.f11393b == null) {
                this.f11393b = m1936g().m1770a();
            }
        }
        return this.f11393b;
    }

    /* renamed from: e */
    private C3056c.AbstractC3058b m1938e() {
        C3056c.AbstractC3058b abstractC3058b = this.f11394c;
        if (abstractC3058b != null) {
            return abstractC3058b;
        }
        synchronized (this) {
            if (this.f11394c == null) {
                this.f11394c = m1936g().m1769b();
            }
        }
        return this.f11394c;
    }

    /* renamed from: g */
    private C2778c m1936g() {
        C2778c c2778c = this.f11392a;
        if (c2778c != null) {
            return c2778c;
        }
        synchronized (this) {
            if (this.f11392a == null) {
                this.f11392a = new C2778c();
            }
        }
        return this.f11392a;
    }

    /* renamed from: j */
    public static C2746c m1933j() {
        return C2747a.f11399a;
    }

    /* renamed from: l */
    private C3056c.AbstractC3061e m1931l() {
        C3056c.AbstractC3061e abstractC3061e = this.f11395d;
        if (abstractC3061e != null) {
            return abstractC3061e;
        }
        synchronized (this) {
            if (this.f11395d == null) {
                this.f11395d = m1936g().m1759l();
            }
        }
        return this.f11395d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0062, code lost:
        if (r0.m1811g() <= 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0123, code lost:
        if (r0.m1811g() <= 0) goto L45;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x017e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x015b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007e A[Catch: all -> 0x021a, TRY_ENTER, TryCatch #2 {all -> 0x021a, blocks: (B:8:0x0040, B:10:0x0049, B:12:0x0052, B:14:0x005b, B:17:0x0067, B:19:0x006e, B:22:0x007e, B:24:0x0094), top: B:101:0x0040 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0272  */
    /* JADX WARN: Type inference failed for: r0v105 */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39 */
    /* JADX WARN: Type inference failed for: r0v40 */
    /* JADX WARN: Type inference failed for: r0v42 */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47 */
    /* JADX WARN: Type inference failed for: r0v50 */
    /* JADX WARN: Type inference failed for: r0v53 */
    /* JADX WARN: Type inference failed for: r0v55 */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59 */
    /* JADX WARN: Type inference failed for: r0v60 */
    /* JADX WARN: Type inference failed for: r0v62 */
    /* JADX WARN: Type inference failed for: r0v64 */
    /* JADX WARN: Type inference failed for: r0v66 */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68 */
    /* JADX WARN: Type inference failed for: r0v74 */
    /* JADX WARN: Type inference failed for: r0v77 */
    /* JADX WARN: Type inference failed for: r0v81 */
    /* JADX WARN: Type inference failed for: r0v86 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r20v4 */
    /* JADX WARN: Type inference failed for: r20v5 */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Type inference failed for: r23v4 */
    /* JADX WARN: Type inference failed for: r23v6 */
    /* JADX WARN: Type inference failed for: r32v0 */
    /* JADX WARN: Type inference failed for: r32v1 */
    /* JADX WARN: Type inference failed for: r32v2 */
    /* JADX WARN: Type inference failed for: r5v0, types: [long] */
    /* JADX WARN: Type inference failed for: r5v11, types: [long] */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v2, types: [long] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v9, types: [long] */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m1929n(p092e.p096e.p097a.p099e0.AbstractC3026a.AbstractC3027a r10) {
        /*
            Method dump skipped, instructions count: 680
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.download.C2746c.m1929n(e.e.a.e0.a$a):void");
    }

    /* renamed from: a */
    public AbstractC3020b m1942a(String str) {
        return m1938e().mo420a(str);
    }

    /* renamed from: b */
    public AbstractC3047a m1941b(File file) {
        return m1931l().mo416a(file);
    }

    /* renamed from: c */
    public int m1940c(int i, String str, String str2, long j) {
        return m1939d().mo421a(i, str, str2, j);
    }

    /* renamed from: f */
    public AbstractC3026a m1937f() {
        AbstractC3026a abstractC3026a = this.f11396e;
        if (abstractC3026a != null) {
            return abstractC3026a;
        }
        synchronized (this) {
            if (this.f11396e == null) {
                AbstractC3026a m1768c = m1936g().m1768c();
                this.f11396e = m1768c;
                m1929n(m1768c.mo497d());
            }
        }
        return this.f11396e;
    }

    /* renamed from: h */
    public C2786i m1935h() {
        C2786i c2786i = this.f11398g;
        if (c2786i != null) {
            return c2786i;
        }
        synchronized (this) {
            if (this.f11398g == null) {
                this.f11398g = m1936g().m1761j();
            }
        }
        return this.f11398g;
    }

    /* renamed from: i */
    public C3056c.AbstractC3060d m1934i() {
        C3056c.AbstractC3060d abstractC3060d = this.f11397f;
        if (abstractC3060d != null) {
            return abstractC3060d;
        }
        synchronized (this) {
            if (this.f11397f == null) {
                this.f11397f = m1936g().m1760k();
            }
        }
        return this.f11397f;
    }

    /* renamed from: k */
    public int m1932k() {
        return m1936g().m1757n();
    }

    /* renamed from: m */
    public boolean m1930m() {
        return m1931l().mo415b();
    }
}
