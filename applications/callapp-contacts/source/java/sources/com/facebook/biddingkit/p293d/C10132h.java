package com.facebook.biddingkit.p293d;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.facebook.biddingkit.d.h */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/h.class */
final class C10132h {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.biddingkit.d.h$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/h$a.class */
    public static final class C10134a implements AbstractC10136c {

        /* renamed from: a */
        final Collection<String> f33522a;

        private C10134a() {
            this.f33522a = new ArrayList();
        }

        @Override // com.facebook.biddingkit.p293d.C10132h.AbstractC10136c
        /* renamed from: a */
        public final void mo23349a(String str) {
            this.f33522a.add(str);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            for (String str : this.f33522a) {
                sb.append(str);
                sb.append('\n');
            }
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.biddingkit.d.h$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/h$b.class */
    public static final class C10135b implements AbstractC10136c {

        /* renamed from: a */
        final AbstractC10136c f33523a;

        /* renamed from: b */
        int f33524b;

        C10135b(AbstractC10136c abstractC10136c, int i) {
            this.f33523a = abstractC10136c;
            this.f33524b = i;
        }

        @Override // com.facebook.biddingkit.p293d.C10132h.AbstractC10136c
        /* renamed from: a */
        public final void mo23349a(String str) {
            if (this.f33524b > 0) {
                this.f33523a.mo23349a(str);
                this.f33524b--;
            }
        }
    }

    /* renamed from: com.facebook.biddingkit.d.h$c */
    /* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/h$c.class */
    public interface AbstractC10136c {
        /* renamed from: a */
        void mo23349a(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.biddingkit.d.h$d */
    /* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/h$d.class */
    public static final class C10137d extends Writer {

        /* renamed from: a */
        final AbstractC10136c f33525a;

        /* renamed from: b */
        char[] f33526b = new char[1024];

        /* renamed from: c */
        int f33527c;

        C10137d(AbstractC10136c abstractC10136c) {
            this.f33525a = abstractC10136c;
        }

        /* renamed from: a */
        private void m23348a() {
            this.f33525a.mo23349a(new String(this.f33526b, 0, this.f33527c));
            this.f33527c = 0;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            flush();
        }

        @Override // java.io.Writer, java.io.Flushable
        public final void flush() {
            if (this.f33527c > 0) {
                m23348a();
            }
        }

        @Override // java.io.Writer
        public final void write(char[] cArr, int i, int i2) throws IOException {
            for (int i3 = i; i3 < i + i2; i3++) {
                if (cArr[i3] != '\n') {
                    int i4 = this.f33527c;
                    char[] cArr2 = this.f33526b;
                    if (i4 != cArr2.length) {
                        cArr2[i4] = cArr[i3];
                        this.f33527c = i4 + 1;
                    }
                }
                m23348a();
            }
        }
    }

    C10132h() {
    }

    /* renamed from: a */
    public static String m23350a(Throwable th) {
        if (th == null) {
            return "";
        }
        try {
            C10134a c10134a = new C10134a();
            th.printStackTrace(new PrintWriter(new C10137d(new C10135b(c10134a, 100))));
            return c10134a.toString();
        } catch (Exception e) {
            return "";
        }
    }
}
