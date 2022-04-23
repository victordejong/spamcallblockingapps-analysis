package com.bytedance.sdk.openadsdk.preload.a;

import com.bytedance.sdk.openadsdk.preload.a.d.c;
import java.io.IOException;
import java.io.StringWriter;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/l.class */
public abstract class l {
    public Number a() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String b() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public double c() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public long d() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public int e() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public boolean f() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public boolean g() {
        return this instanceof i;
    }

    public boolean h() {
        return this instanceof o;
    }

    public boolean i() {
        return this instanceof q;
    }

    public boolean j() {
        return this instanceof n;
    }

    public o k() {
        if (h()) {
            return (o) this;
        }
        throw new IllegalStateException("Not a JSON Object: ".concat(String.valueOf(this)));
    }

    public i l() {
        if (g()) {
            return (i) this;
        }
        throw new IllegalStateException("Not a JSON Array: ".concat(String.valueOf(this)));
    }

    public q m() {
        if (i()) {
            return (q) this;
        }
        throw new IllegalStateException("Not a JSON Primitive: ".concat(String.valueOf(this)));
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            c cVar = new c(stringWriter);
            cVar.b(true);
            com.bytedance.sdk.openadsdk.preload.a.b.l.a(this, cVar);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
