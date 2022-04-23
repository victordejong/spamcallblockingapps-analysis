package com.google.api.client.http;

import com.google.api.client.a.a.a;
import com.google.api.client.a.ag;
import com.google.api.client.a.j;
import com.google.common.base.m;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/ae.class */
public final class ae extends a {

    /* renamed from: a  reason: collision with root package name */
    private Object f31795a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f31796b;

    public ae(Object obj) {
        super(af.f31797a);
        a(obj);
        this.f31796b = false;
    }

    public ae(Object obj, boolean z) {
        super(af.f31797a);
        a(obj);
        this.f31796b = z;
    }

    private ae a(Object obj) {
        this.f31795a = m.a(obj);
        return this;
    }

    private static boolean a(boolean z, Writer writer, String str, Object obj, boolean z2) throws IOException {
        boolean z3 = z;
        if (obj != null) {
            if (j.a(obj)) {
                z3 = z;
            } else {
                if (z) {
                    z = false;
                } else {
                    writer.write("&");
                }
                writer.write(str);
                String obj2 = obj instanceof Enum ? com.google.api.client.a.m.a((Enum<?>) obj).f31651c : obj.toString();
                String e = z2 ? a.e(obj2) : a.a(obj2);
                z3 = z;
                if (e.length() != 0) {
                    writer.write("=");
                    writer.write(e);
                    z3 = z;
                }
            }
        }
        return z3;
    }

    @Override // com.google.api.client.http.a
    public final /* bridge */ /* synthetic */ a setMediaType(p pVar) {
        super.setMediaType(pVar);
        return this;
    }

    @Override // com.google.api.client.http.j, com.google.api.client.a.ad
    public final void writeTo(OutputStream outputStream) throws IOException {
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, getCharset()));
        boolean z = true;
        for (Map.Entry<String, Object> entry : j.b(this.f31795a).entrySet()) {
            Object value = entry.getValue();
            if (value != null) {
                String a2 = a.a(entry.getKey());
                Class<?> cls = value.getClass();
                if ((value instanceof Iterable) || cls.isArray()) {
                    Iterator it2 = ag.a(value).iterator();
                    boolean z2 = z;
                    while (true) {
                        z = z2;
                        if (it2.hasNext()) {
                            z2 = a(z2, bufferedWriter, a2, it2.next(), this.f31796b);
                        }
                    }
                } else {
                    z = a(z, bufferedWriter, a2, value, this.f31796b);
                }
            }
        }
        bufferedWriter.flush();
    }
}
