package com.criteo.publisher.m0;

import com.google.gson.JsonIOException;
import com.google.gson.JsonParseException;
import com.google.gson.f;
import com.google.gson.internal.j;
import com.google.gson.stream.JsonReader;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/l.class */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private final f f17519a;

    public l(f fVar) {
        this.f17519a = fVar;
    }

    public final <T> T a(Class<T> cls, InputStream inputStream) throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, Charset.forName("UTF-8"));
        try {
            f fVar = this.f17519a;
            JsonReader a2 = fVar.a((Reader) inputStreamReader);
            Object a3 = fVar.a(a2, (Type) cls);
            f.a(a3, a2);
            T t = (T) j.a(cls).cast(a3);
            if (t != null) {
                return t;
            }
            throw new EOFException();
        } catch (JsonParseException e) {
            throw new IOException(e);
        }
    }

    public final void a(Object obj, OutputStream outputStream) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, Charset.forName("UTF-8"));
        try {
            this.f17519a.a(obj, outputStreamWriter);
            outputStreamWriter.flush();
        } catch (JsonIOException e) {
            throw new IOException(e);
        }
    }
}
