package p131c.p161d.p354f;

import java.io.IOException;
import java.io.StringWriter;
import p131c.p161d.p354f.p356t.C6160i;
import p131c.p161d.p354f.p361v.C6242b;
/* renamed from: c.d.f.k */
/* loaded from: classes2-dex2jar.jar:c/d/f/k.class */
public abstract class AbstractC6123k {
    /* renamed from: a */
    public C6120h m21960a() {
        if (m21957d()) {
            return (C6120h) this;
        }
        throw new IllegalStateException("Not a JSON Array: " + this);
    }

    /* renamed from: b */
    public C6125m m21959b() {
        if (m21955i()) {
            return (C6125m) this;
        }
        throw new IllegalStateException("Not a JSON Object: " + this);
    }

    /* renamed from: c */
    public C6126n m21958c() {
        if (m21954j()) {
            return (C6126n) this;
        }
        throw new IllegalStateException("Not a JSON Primitive: " + this);
    }

    /* renamed from: d */
    public boolean m21957d() {
        return this instanceof C6120h;
    }

    /* renamed from: f */
    public boolean m21956f() {
        return this instanceof C6124l;
    }

    /* renamed from: i */
    public boolean m21955i() {
        return this instanceof C6125m;
    }

    /* renamed from: j */
    public boolean m21954j() {
        return this instanceof C6126n;
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            C6242b bVar = new C6242b(stringWriter);
            bVar.m21784b(true);
            C6160i.m21911a(this, bVar);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
