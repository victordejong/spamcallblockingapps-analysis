package p131c.p161d.p354f.p356t;

import com.google.gson.JsonIOException;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;
import p131c.p161d.p354f.AbstractC6123k;
import p131c.p161d.p354f.C6124l;
import p131c.p161d.p354f.p356t.p357k.C6196n;
import p131c.p161d.p354f.p361v.C6240a;
import p131c.p161d.p354f.p361v.C6242b;
/* renamed from: c.d.f.t.i */
/* loaded from: classes2-dex2jar.jar:c/d/f/t/i.class */
public final class C6160i {

    /* renamed from: c.d.f.t.i$a */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/i$a.class */
    public static final class C6161a extends Writer {

        /* renamed from: a */
        public final Appendable f19674a;

        /* renamed from: b */
        public final C6162a f19675b = new C6162a();

        /* renamed from: c.d.f.t.i$a$a */
        /* loaded from: classes2-dex2jar.jar:c/d/f/t/i$a$a.class */
        public static class C6162a implements CharSequence {

            /* renamed from: a */
            public char[] f19676a;

            @Override // java.lang.CharSequence
            public char charAt(int i) {
                return this.f19676a[i];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.f19676a.length;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i, int i2) {
                return new String(this.f19676a, i, i2 - i);
            }
        }

        public C6161a(Appendable appendable) {
            this.f19674a = appendable;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(int i) throws IOException {
            this.f19674a.append((char) i);
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) throws IOException {
            C6162a aVar = this.f19675b;
            aVar.f19676a = cArr;
            this.f19674a.append(aVar, i, i2 + i);
        }
    }

    /* renamed from: a */
    public static AbstractC6123k m21910a(C6240a aVar) throws JsonParseException {
        boolean z;
        EOFException e;
        try {
            try {
                aVar.mo21802u();
                z = false;
                try {
                    return C6196n.f19764X.read(aVar);
                } catch (EOFException e2) {
                    e = e2;
                    if (z) {
                        return C6124l.f19644a;
                    }
                    throw new JsonSyntaxException(e);
                }
            } catch (EOFException e3) {
                e = e3;
                z = true;
            }
        } catch (MalformedJsonException e4) {
            throw new JsonSyntaxException(e4);
        } catch (IOException e5) {
            throw new JsonIOException(e5);
        } catch (NumberFormatException e6) {
            throw new JsonSyntaxException(e6);
        }
    }

    /* renamed from: a */
    public static Writer m21909a(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new C6161a(appendable);
    }

    /* renamed from: a */
    public static void m21911a(AbstractC6123k kVar, C6242b bVar) throws IOException {
        C6196n.f19764X.write(bVar, kVar);
    }
}
