package com.criteo.publisher.p020a0;

import androidx.annotation.NonNull;
import com.google.gson.Gson;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import p081h.p203i.p384e.C10105k;
import p081h.p203i.p384e.C10108n;
/* renamed from: com.criteo.publisher.a0.n */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/a0/n.class */
public class C1926n {
    @NonNull

    /* renamed from: a */
    public final Gson f2049a;

    public C1926n(@NonNull Gson gson) {
        this.f2049a = gson;
    }

    @NonNull
    /* renamed from: a */
    public <T> T m36007a(@NonNull Class<T> cls, @NonNull InputStream inputStream) throws IOException {
        try {
            T t = (T) this.f2049a.m30992a((Reader) new InputStreamReader(inputStream), (Class<Object>) cls);
            if (t != null) {
                return t;
            }
            throw new EOFException();
        } catch (C10108n e) {
            throw new IOException(e);
        }
    }

    /* renamed from: a */
    public void m36006a(@NonNull Object obj, @NonNull OutputStream outputStream) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream);
        try {
            this.f2049a.m30986a(obj, outputStreamWriter);
            outputStreamWriter.flush();
        } catch (C10105k e) {
            throw new IOException(e);
        }
    }
}
