package p081h.p203i.p384e;

import java.io.IOException;
import java.io.StringWriter;
import p081h.p203i.p384e.p386w.C10157k;
import p081h.p203i.p384e.p391y.C10177c;
/* renamed from: h.i.e.j */
/* loaded from: classes2-dex2jar.jar:h/i/e/j.class */
public abstract class AbstractC10104j {
    /* renamed from: b */
    public C10101g m13380b() {
        if (m13377s()) {
            return (C10101g) this;
        }
        throw new IllegalStateException("Not a JSON Array: " + this);
    }

    /* renamed from: c */
    public C10107m m13379c() {
        if (m13375u()) {
            return (C10107m) this;
        }
        throw new IllegalStateException("Not a JSON Object: " + this);
    }

    /* renamed from: q */
    public C10110p m13378q() {
        if (m13374v()) {
            return (C10110p) this;
        }
        throw new IllegalStateException("Not a JSON Primitive: " + this);
    }

    /* renamed from: r */
    public String mo13361r() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    /* renamed from: s */
    public boolean m13377s() {
        return this instanceof C10101g;
    }

    /* renamed from: t */
    public boolean m13376t() {
        return this instanceof C10106l;
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            C10177c cVar = new C10177c(stringWriter);
            cVar.m13228b(true);
            C10157k.m13303a(this, cVar);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: u */
    public boolean m13375u() {
        return this instanceof C10107m;
    }

    /* renamed from: v */
    public boolean m13374v() {
        return this instanceof C10110p;
    }
}
