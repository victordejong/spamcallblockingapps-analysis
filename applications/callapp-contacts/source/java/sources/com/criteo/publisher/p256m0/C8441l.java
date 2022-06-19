package com.criteo.publisher.p256m0;

import com.google.gson.C15965f;
import com.google.gson.JsonIOException;
import com.google.gson.JsonParseException;
import com.google.gson.internal.C16079j;
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
/* renamed from: com.criteo.publisher.m0.l */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/l.class */
public class C8441l {

    /* renamed from: a */
    private final C15965f f30204a;

    public C8441l(C15965f c15965f) {
        this.f30204a = c15965f;
    }

    /* renamed from: a */
    public final <T> T m25681a(Class<T> cls, InputStream inputStream) throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, Charset.forName("UTF-8"));
        try {
            C15965f c15965f = this.f30204a;
            JsonReader m7974a = c15965f.m7974a((Reader) inputStreamReader);
            Object m7975a = c15965f.m7975a(m7974a, (Type) cls);
            C15965f.m7969a(m7975a, m7974a);
            T t = (T) C16079j.m7870a(cls).cast(m7975a);
            if (t == null) {
                throw new EOFException();
            }
            return t;
        } catch (JsonParseException e) {
            throw new IOException(e);
        }
    }

    /* renamed from: a */
    public final void m25680a(Object obj, OutputStream outputStream) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, Charset.forName("UTF-8"));
        try {
            this.f30204a.m7968a(obj, outputStreamWriter);
            outputStreamWriter.flush();
        } catch (JsonIOException e) {
            throw new IOException(e);
        }
    }
}
