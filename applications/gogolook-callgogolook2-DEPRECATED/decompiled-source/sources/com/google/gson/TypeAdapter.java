package com.google.gson;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import p081h.p203i.p384e.AbstractC10104j;
import p081h.p203i.p384e.C10105k;
import p081h.p203i.p384e.p386w.p387m.C10165a;
import p081h.p203i.p384e.p386w.p387m.C10167b;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* loaded from: classes2-dex2jar.jar:com/google/gson/TypeAdapter.class */
public abstract class TypeAdapter<T> {
    public final T fromJson(Reader reader) throws IOException {
        return read(new C10174a(reader));
    }

    public final T fromJson(String str) throws IOException {
        return fromJson(new StringReader(str));
    }

    public final T fromJsonTree(AbstractC10104j jVar) {
        try {
            return read(new C10165a(jVar));
        } catch (IOException e) {
            throw new C10105k(e);
        }
    }

    public final TypeAdapter<T> nullSafe() {
        return new TypeAdapter<T>() { // from class: com.google.gson.TypeAdapter.1
            @Override // com.google.gson.TypeAdapter
            public T read(C10174a aVar) throws IOException {
                if (aVar.mo13272F() != EnumC10176b.NULL) {
                    return (T) TypeAdapter.this.read(aVar);
                }
                aVar.mo13241p();
                return null;
            }

            @Override // com.google.gson.TypeAdapter
            public void write(C10177c cVar, T t) throws IOException {
                if (t == null) {
                    cVar.mo13214k();
                } else {
                    TypeAdapter.this.write(cVar, t);
                }
            }
        };
    }

    public abstract T read(C10174a aVar) throws IOException;

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
        write(new C10177c(writer), t);
    }

    public final AbstractC10104j toJsonTree(T t) {
        try {
            C10167b bVar = new C10167b();
            write(bVar, t);
            return bVar.m13290n();
        } catch (IOException e) {
            throw new C10105k(e);
        }
    }

    public abstract void write(C10177c cVar, T t) throws IOException;
}
