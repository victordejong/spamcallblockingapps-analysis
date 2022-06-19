package com.liulishuo.filedownloader.download;

import com.zhy.http.okhttp.OkHttpUtils;
import p078c.p122d.p123a.p124e0.AbstractC1995b;
import p078c.p122d.p123a.p128i0.C2037e;
import p078c.p122d.p123a.p128i0.C2040f;
/* renamed from: com.liulishuo.filedownloader.download.b */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/b.class */
public class C9348b {

    /* renamed from: a */
    final long f39982a;

    /* renamed from: b */
    final long f39983b;

    /* renamed from: c */
    final long f39984c;

    /* renamed from: d */
    final long f39985d;

    /* renamed from: e */
    private final boolean f39986e;

    /* renamed from: f */
    private final boolean f39987f;

    /* renamed from: com.liulishuo.filedownloader.download.b$b */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/b$b.class */
    public static class C9350b {
        /* renamed from: a */
        public static C9348b m993a(long j) {
            return new C9348b(0L, 0L, -1L, j);
        }

        /* renamed from: b */
        public static C9348b m992b(long j, long j2, long j3, long j4) {
            return new C9348b(j, j2, j3, j4);
        }

        /* renamed from: c */
        public static C9348b m991c(long j, long j2, long j3) {
            return new C9348b(j, j2, -1L, j3);
        }

        /* renamed from: d */
        public static C9348b m990d() {
            return new C9348b();
        }

        /* renamed from: e */
        public static C9348b m989e() {
            return new C9348b(0L, 0L, 0L, 0L, true);
        }
    }

    private C9348b() {
        this.f39982a = 0L;
        this.f39983b = 0L;
        this.f39984c = 0L;
        this.f39985d = 0L;
        this.f39986e = false;
        this.f39987f = true;
    }

    private C9348b(long j, long j2, long j3, long j4) {
        this(j, j2, j3, j4, false);
    }

    private C9348b(long j, long j2, long j3, long j4, boolean z) {
        if (!(j == 0 && j3 == 0) && z) {
            throw new IllegalArgumentException();
        }
        this.f39982a = j;
        this.f39983b = j2;
        this.f39984c = j3;
        this.f39985d = j4;
        this.f39986e = z;
        this.f39987f = false;
    }

    /* renamed from: a */
    public void m994a(AbstractC1995b abstractC1995b) {
        if (this.f39986e) {
            return;
        }
        if (this.f39987f && C2037e.m28244a().f7159h) {
            abstractC1995b.mo28344f(OkHttpUtils.METHOD.HEAD);
        }
        abstractC1995b.addHeader("Range", this.f39984c == -1 ? C2040f.m28206o("bytes=%d-", Long.valueOf(this.f39983b)) : C2040f.m28206o("bytes=%d-%d", Long.valueOf(this.f39983b), Long.valueOf(this.f39984c)));
    }

    public String toString() {
        return C2040f.m28206o("range[%d, %d) current offset[%d]", Long.valueOf(this.f39982a), Long.valueOf(this.f39984c), Long.valueOf(this.f39983b));
    }
}
