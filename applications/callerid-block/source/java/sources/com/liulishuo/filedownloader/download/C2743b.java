package com.liulishuo.filedownloader.download;

import com.zhy.http.okhttp.OkHttpUtils;
import p092e.p096e.p097a.p098d0.AbstractC3020b;
import p092e.p096e.p097a.p102h0.C3063e;
import p092e.p096e.p097a.p102h0.C3066f;
/* renamed from: com.liulishuo.filedownloader.download.b */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/b.class */
public class C2743b {

    /* renamed from: a */
    final long f11386a;

    /* renamed from: b */
    final long f11387b;

    /* renamed from: c */
    final long f11388c;

    /* renamed from: d */
    final long f11389d;

    /* renamed from: e */
    private final boolean f11390e;

    /* renamed from: f */
    private final boolean f11391f;

    /* renamed from: com.liulishuo.filedownloader.download.b$b */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/b$b.class */
    public static class C2745b {
        /* renamed from: a */
        public static C2743b m1947a(long j) {
            return new C2743b(0L, 0L, -1L, j);
        }

        /* renamed from: b */
        public static C2743b m1946b(long j, long j2, long j3, long j4) {
            return new C2743b(j, j2, j3, j4);
        }

        /* renamed from: c */
        public static C2743b m1945c(long j, long j2, long j3) {
            return new C2743b(j, j2, -1L, j3);
        }

        /* renamed from: d */
        public static C2743b m1944d() {
            return new C2743b();
        }

        /* renamed from: e */
        public static C2743b m1943e() {
            return new C2743b(0L, 0L, 0L, 0L, true);
        }
    }

    private C2743b() {
        this.f11386a = 0L;
        this.f11387b = 0L;
        this.f11388c = 0L;
        this.f11389d = 0L;
        this.f11390e = false;
        this.f11391f = true;
    }

    private C2743b(long j, long j2, long j3, long j4) {
        this(j, j2, j3, j4, false);
    }

    private C2743b(long j, long j2, long j3, long j4, boolean z) {
        if (!(j == 0 && j3 == 0) && z) {
            throw new IllegalArgumentException();
        }
        this.f11386a = j;
        this.f11387b = j2;
        this.f11388c = j3;
        this.f11389d = j4;
        this.f11390e = z;
        this.f11391f = false;
    }

    /* renamed from: a */
    public void m1948a(AbstractC3020b abstractC3020b) {
        if (this.f11390e) {
            return;
        }
        if (this.f11391f && C3063e.m405a().f12690h) {
            abstractC3020b.mo520g(OkHttpUtils.METHOD.HEAD);
        }
        abstractC3020b.addHeader("Range", this.f11388c == -1 ? C3066f.m367o("bytes=%d-", Long.valueOf(this.f11387b)) : C3066f.m367o("bytes=%d-%d", Long.valueOf(this.f11387b), Long.valueOf(this.f11388c)));
    }

    public String toString() {
        return C3066f.m367o("range[%d, %d) current offset[%d]", Long.valueOf(this.f11386a), Long.valueOf(this.f11388c), Long.valueOf(this.f11387b));
    }
}
