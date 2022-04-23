package com.facebook.biddingkit.d;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/h.class */
final class h {

    /* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/h$a.class */
    static final class a implements c {

        /* renamed from: a  reason: collision with root package name */
        final Collection<String> f19718a;

        private a() {
            this.f19718a = new ArrayList();
        }

        @Override // com.facebook.biddingkit.d.h.c
        public final void a(String str) {
            this.f19718a.add(str);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            for (String str : this.f19718a) {
                sb.append(str);
                sb.append('\n');
            }
            return sb.toString();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/h$b.class */
    static final class b implements c {

        /* renamed from: a  reason: collision with root package name */
        final c f19719a;

        /* renamed from: b  reason: collision with root package name */
        int f19720b;

        b(c cVar, int i) {
            this.f19719a = cVar;
            this.f19720b = i;
        }

        @Override // com.facebook.biddingkit.d.h.c
        public final void a(String str) {
            if (this.f19720b > 0) {
                this.f19719a.a(str);
                this.f19720b--;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/h$c.class */
    public interface c {
        void a(String str);
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/h$d.class */
    static final class d extends Writer {

        /* renamed from: a  reason: collision with root package name */
        final c f19721a;

        /* renamed from: b  reason: collision with root package name */
        char[] f19722b = new char[1024];

        /* renamed from: c  reason: collision with root package name */
        int f19723c;

        d(c cVar) {
            this.f19721a = cVar;
        }

        private void a() {
            this.f19721a.a(new String(this.f19722b, 0, this.f19723c));
            this.f19723c = 0;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            flush();
        }

        @Override // java.io.Writer, java.io.Flushable
        public final void flush() {
            if (this.f19723c > 0) {
                a();
            }
        }

        @Override // java.io.Writer
        public final void write(char[] cArr, int i, int i2) throws IOException {
            for (int i3 = i; i3 < i + i2; i3++) {
                if (cArr[i3] != '\n') {
                    int i4 = this.f19723c;
                    char[] cArr2 = this.f19722b;
                    if (i4 != cArr2.length) {
                        cArr2[i4] = cArr[i3];
                        this.f19723c = i4 + 1;
                    }
                }
                a();
            }
        }
    }

    h() {
    }

    public static String a(Throwable th) {
        if (th == null) {
            return "";
        }
        try {
            a aVar = new a();
            th.printStackTrace(new PrintWriter(new d(new b(aVar, 100))));
            return aVar.toString();
        } catch (Exception e) {
            return "";
        }
    }
}
