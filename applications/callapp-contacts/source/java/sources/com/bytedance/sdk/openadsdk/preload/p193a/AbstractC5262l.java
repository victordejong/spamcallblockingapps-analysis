package com.bytedance.sdk.openadsdk.preload.p193a;

import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5227l;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c;
import java.io.IOException;
import java.io.StringWriter;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.l */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/l.class */
public abstract class AbstractC5262l {
    /* renamed from: a */
    public Number mo32688a() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    /* renamed from: b */
    public String mo32686b() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    /* renamed from: c */
    public double mo32685c() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    /* renamed from: d */
    public long mo32684d() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    /* renamed from: e */
    public int mo32683e() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    /* renamed from: f */
    public boolean mo32682f() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    /* renamed from: g */
    public boolean m32697g() {
        return this instanceof C5259i;
    }

    /* renamed from: h */
    public boolean m32696h() {
        return this instanceof C5265o;
    }

    /* renamed from: i */
    public boolean m32695i() {
        return this instanceof C5267q;
    }

    /* renamed from: j */
    public boolean m32694j() {
        return this instanceof C5264n;
    }

    /* renamed from: k */
    public C5265o m32693k() {
        if (m32696h()) {
            return (C5265o) this;
        }
        throw new IllegalStateException("Not a JSON Object: ".concat(String.valueOf(this)));
    }

    /* renamed from: l */
    public C5259i m32692l() {
        if (m32697g()) {
            return (C5259i) this;
        }
        throw new IllegalStateException("Not a JSON Array: ".concat(String.valueOf(this)));
    }

    /* renamed from: m */
    public C5267q m32691m() {
        if (m32695i()) {
            return (C5267q) this;
        }
        throw new IllegalStateException("Not a JSON Primitive: ".concat(String.valueOf(this)));
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            C5247c c5247c = new C5247c(stringWriter);
            c5247c.m32753b(true);
            C5227l.m32813a(this, c5247c);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
