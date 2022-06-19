package p233s6;

import java.io.IOException;
import java.io.StringWriter;
import p254u6.C4500f;
import p276w6.C4741b;
/* renamed from: s6.i */
/* loaded from: classes-dex2jar.jar:s6/i.class */
public abstract class AbstractC4314i {
    /* renamed from: a */
    public int mo1105a() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    /* renamed from: b */
    public C4313h m1111b() {
        if (this instanceof C4313h) {
            return (C4313h) this;
        }
        throw new IllegalStateException("Not a JSON Array: " + this);
    }

    /* renamed from: c */
    public C4316k m1110c() {
        if (this instanceof C4316k) {
            return (C4316k) this;
        }
        throw new IllegalStateException("Not a JSON Object: " + this);
    }

    /* renamed from: d */
    public String mo1104d() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            C4741b c4741b = new C4741b(stringWriter);
            c4741b.f14625f = true;
            ((C4500f.C4524u) C4500f.f13901B).m864N(c4741b, this);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
