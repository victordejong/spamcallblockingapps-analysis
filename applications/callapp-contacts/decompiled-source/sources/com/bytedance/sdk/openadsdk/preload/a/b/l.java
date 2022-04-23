package com.bytedance.sdk.openadsdk.preload.a.b;

import com.bytedance.sdk.openadsdk.preload.a.b.a.n;
import com.bytedance.sdk.openadsdk.preload.a.d.c;
import com.bytedance.sdk.openadsdk.preload.a.d.d;
import com.bytedance.sdk.openadsdk.preload.a.m;
import com.bytedance.sdk.openadsdk.preload.a.p;
import com.bytedance.sdk.openadsdk.preload.a.t;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/l.class */
public final class l {

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/l$a.class */
    static final class a extends Writer {

        /* renamed from: a  reason: collision with root package name */
        private final Appendable f10047a;

        /* renamed from: b  reason: collision with root package name */
        private final C0184a f10048b = new C0184a();

        /* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.l$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/l$a$a.class */
        static class C0184a implements CharSequence {

            /* renamed from: a  reason: collision with root package name */
            char[] f10049a;

            C0184a() {
            }

            @Override // java.lang.CharSequence
            public char charAt(int i) {
                return this.f10049a[i];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.f10049a.length;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i, int i2) {
                return new String(this.f10049a, i, i2 - i);
            }
        }

        a(Appendable appendable) {
            this.f10047a = appendable;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public final void flush() {
        }

        @Override // java.io.Writer
        public final void write(int i) throws IOException {
            this.f10047a.append((char) i);
        }

        @Override // java.io.Writer
        public final void write(char[] cArr, int i, int i2) throws IOException {
            this.f10048b.f10049a = cArr;
            this.f10047a.append(this.f10048b, i, i2 + i);
        }
    }

    public static com.bytedance.sdk.openadsdk.preload.a.l a(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws p {
        boolean z;
        EOFException e;
        try {
            try {
                aVar.f();
                z = false;
                try {
                    return n.X.b(aVar);
                } catch (EOFException e2) {
                    e = e2;
                    if (z) {
                        return com.bytedance.sdk.openadsdk.preload.a.n.f10089a;
                    }
                    throw new t(e);
                }
            } catch (EOFException e3) {
                e = e3;
                z = true;
            }
        } catch (d e4) {
            throw new t(e4);
        } catch (IOException e5) {
            throw new m(e5);
        } catch (NumberFormatException e6) {
            throw new t(e6);
        }
    }

    public static Writer a(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new a(appendable);
    }

    public static void a(com.bytedance.sdk.openadsdk.preload.a.l lVar, c cVar) throws IOException {
        n.X.a(cVar, lVar);
    }
}
