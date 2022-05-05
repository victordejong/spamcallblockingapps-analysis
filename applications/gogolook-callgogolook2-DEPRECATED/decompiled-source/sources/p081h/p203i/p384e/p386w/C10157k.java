package p081h.p203i.p384e.p386w;

import com.google.gson.internal.bind.TypeAdapters;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;
import p081h.p203i.p384e.AbstractC10104j;
import p081h.p203i.p384e.C10105k;
import p081h.p203i.p384e.C10106l;
import p081h.p203i.p384e.C10108n;
import p081h.p203i.p384e.C10113s;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.C10178d;
/* renamed from: h.i.e.w.k */
/* loaded from: classes2-dex2jar.jar:h/i/e/w/k.class */
public final class C10157k {

    /* renamed from: h.i.e.w.k$a */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/k$a.class */
    public static final class C10158a extends Writer {

        /* renamed from: a */
        public final Appendable f22881a;

        /* renamed from: b */
        public final C10159a f22882b = new C10159a();

        /* renamed from: h.i.e.w.k$a$a */
        /* loaded from: classes2-dex2jar.jar:h/i/e/w/k$a$a.class */
        public static class C10159a implements CharSequence {

            /* renamed from: a */
            public char[] f22883a;

            @Override // java.lang.CharSequence
            public char charAt(int i) {
                return this.f22883a[i];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.f22883a.length;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i, int i2) {
                return new String(this.f22883a, i, i2 - i);
            }
        }

        public C10158a(Appendable appendable) {
            this.f22881a = appendable;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(int i) throws IOException {
            this.f22881a.append((char) i);
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) throws IOException {
            C10159a aVar = this.f22882b;
            aVar.f22883a = cArr;
            this.f22881a.append(aVar, i, i2 + i);
        }
    }

    /* renamed from: a */
    public static AbstractC10104j m13302a(C10174a aVar) throws C10108n {
        boolean z;
        EOFException e;
        try {
            try {
                aVar.mo13272F();
                z = false;
                try {
                    return TypeAdapters.f7914X.read(aVar);
                } catch (EOFException e2) {
                    e = e2;
                    if (z) {
                        return C10106l.f22832a;
                    }
                    throw new C10113s(e);
                }
            } catch (EOFException e3) {
                e = e3;
                z = true;
            }
        } catch (C10178d e4) {
            throw new C10113s(e4);
        } catch (IOException e5) {
            throw new C10105k(e5);
        } catch (NumberFormatException e6) {
            throw new C10113s(e6);
        }
    }

    /* renamed from: a */
    public static Writer m13301a(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new C10158a(appendable);
    }

    /* renamed from: a */
    public static void m13303a(AbstractC10104j jVar, C10177c cVar) throws IOException {
        TypeAdapters.f7914X.write(cVar, jVar);
    }
}
