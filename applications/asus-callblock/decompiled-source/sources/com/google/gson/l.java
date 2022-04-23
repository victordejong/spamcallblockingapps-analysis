package com.google.gson;

import com.google.gson.a.j;
import com.google.gson.c.c;
import java.io.IOException;
import java.io.StringWriter;
/* loaded from: classes-dex2jar.jar:com/google/gson/l.class */
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

    public final o g() {
        if (this instanceof o) {
            return (o) this;
        }
        throw new IllegalStateException("Not a JSON Object: " + this);
    }

    public final i h() {
        if (this instanceof i) {
            return (i) this;
        }
        throw new IllegalStateException("This is not a JSON Array.");
    }

    public final r i() {
        if (this instanceof r) {
            return (r) this;
        }
        throw new IllegalStateException("This is not a JSON Primitive.");
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            c cVar = new c(stringWriter);
            cVar.c = true;
            j.a(this, cVar);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
