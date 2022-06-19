package com.bytedance.sdk.openadsdk.preload.p193a.p195b;

import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5262l;
import com.bytedance.sdk.openadsdk.preload.p193a.C5263m;
import com.bytedance.sdk.openadsdk.preload.p193a.C5264n;
import com.bytedance.sdk.openadsdk.preload.p193a.C5266p;
import com.bytedance.sdk.openadsdk.preload.p193a.C5270t;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a.C5149n;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5248d;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.l */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/l.class */
public final class C5227l {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.l$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/l$a.class */
    public static final class C5228a extends Writer {

        /* renamed from: a */
        private final Appendable f18599a;

        /* renamed from: b */
        private final C5229a f18600b = new C5229a();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.l$a$a */
        /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/l$a$a.class */
        public static class C5229a implements CharSequence {

            /* renamed from: a */
            char[] f18601a;

            C5229a() {
            }

            @Override // java.lang.CharSequence
            public char charAt(int i) {
                return this.f18601a[i];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.f18601a.length;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i, int i2) {
                return new String(this.f18601a, i, i2 - i);
            }
        }

        C5228a(Appendable appendable) {
            this.f18599a = appendable;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public final void flush() {
        }

        @Override // java.io.Writer
        public final void write(int i) throws IOException {
            this.f18599a.append((char) i);
        }

        @Override // java.io.Writer
        public final void write(char[] cArr, int i, int i2) throws IOException {
            this.f18600b.f18601a = cArr;
            this.f18599a.append(this.f18600b, i, i2 + i);
        }
    }

    /* renamed from: a */
    public static AbstractC5262l m32814a(C5244a c5244a) throws C5266p {
        boolean z;
        EOFException e;
        try {
            try {
                c5244a.mo32787f();
                z = false;
                try {
                    return C5149n.f18474X.mo32517b(c5244a);
                } catch (EOFException e2) {
                    e = e2;
                    if (!z) {
                        throw new C5270t(e);
                    }
                    return C5264n.f18699a;
                }
            } catch (EOFException e3) {
                e = e3;
                z = true;
            }
        } catch (C5248d e4) {
            throw new C5270t(e4);
        } catch (IOException e5) {
            throw new C5263m(e5);
        } catch (NumberFormatException e6) {
            throw new C5270t(e6);
        }
    }

    /* renamed from: a */
    public static Writer m32812a(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new C5228a(appendable);
    }

    /* renamed from: a */
    public static void m32813a(AbstractC5262l abstractC5262l, C5247c c5247c) throws IOException {
        C5149n.f18474X.mo32518a(c5247c, abstractC5262l);
    }
}
