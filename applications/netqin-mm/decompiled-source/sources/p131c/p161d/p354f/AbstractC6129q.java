package p131c.p161d.p354f;

import com.google.gson.JsonIOException;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import p131c.p161d.p354f.p356t.p357k.C6175e;
import p131c.p161d.p354f.p356t.p357k.C6177f;
import p131c.p161d.p354f.p361v.C6240a;
import p131c.p161d.p354f.p361v.C6242b;
/* renamed from: c.d.f.q */
/* loaded from: classes2-dex2jar.jar:c/d/f/q.class */
public abstract class AbstractC6129q<T> {

    /* renamed from: c.d.f.q$a */
    /* loaded from: classes2-dex2jar.jar:c/d/f/q$a.class */
    public class C6130a extends AbstractC6129q<T> {
        public C6130a() {
        }

        @Override // p131c.p161d.p354f.AbstractC6129q
        public T read(C6240a aVar) throws IOException {
            if (aVar.mo21802u() != JsonToken.NULL) {
                return (T) AbstractC6129q.this.read(aVar);
            }
            aVar.mo21805r();
            return null;
        }

        @Override // p131c.p161d.p354f.AbstractC6129q
        public void write(C6242b bVar, T t) throws IOException {
            if (t == null) {
                bVar.mo21770k();
            } else {
                AbstractC6129q.this.write(bVar, t);
            }
        }
    }

    public final T fromJson(Reader reader) throws IOException {
        return read(new C6240a(reader));
    }

    public final T fromJson(String str) throws IOException {
        return fromJson(new StringReader(str));
    }

    public final T fromJsonTree(AbstractC6123k kVar) {
        try {
            return read(new C6175e(kVar));
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    public final AbstractC6129q<T> nullSafe() {
        return new C6130a();
    }

    public abstract T read(C6240a aVar) throws IOException;

    public final String toJson(T t) {
        StringWriter stringWriter = new StringWriter();
        try {
            toJson(stringWriter, t);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public final void toJson(Writer writer, T t) throws IOException {
        write(new C6242b(writer), t);
    }

    public final AbstractC6123k toJsonTree(T t) {
        try {
            C6177f fVar = new C6177f();
            write(fVar, t);
            return fVar.m21894n();
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    public abstract void write(C6242b bVar, T t) throws IOException;
}
