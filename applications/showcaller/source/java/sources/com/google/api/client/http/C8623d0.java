package com.google.api.client.http;

import com.google.api.client.util.C8695d0;
import com.google.api.client.util.C8712j;
import com.google.api.client.util.C8717l;
import com.google.api.client.util.C8731w;
import com.google.api.client.util.p290f0.C8701a;
import java.io.BufferedWriter;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.api.client.http.d0 */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/d0.class */
public class C8623d0 extends AbstractC8614a {

    /* renamed from: c */
    private Object f38317c;

    public C8623d0(Object obj) {
        super(C8625e0.f38319a);
        m3208h(obj);
    }

    /* renamed from: g */
    private static boolean m3209g(boolean z, Writer writer, String str, Object obj) {
        boolean z2 = z;
        if (obj != null) {
            if (C8712j.m2880d(obj)) {
                z2 = z;
            } else {
                if (z) {
                    z = false;
                } else {
                    writer.write("&");
                }
                writer.write(str);
                String m2908c = C8701a.m2908c(obj instanceof Enum ? C8717l.m2857j((Enum) obj).m2862e() : obj.toString());
                z2 = z;
                if (m2908c.length() != 0) {
                    writer.write("=");
                    writer.write(m2908c);
                    z2 = z;
                }
            }
        }
        return z2;
    }

    /* renamed from: h */
    public C8623d0 m3208h(Object obj) {
        this.f38317c = C8731w.m2836d(obj);
        return this;
    }

    @Override // com.google.api.client.util.AbstractC8735z
    public void writeTo(OutputStream outputStream) {
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, m3230e()));
        boolean z = true;
        for (Map.Entry<String, Object> entry : C8712j.m2877g(this.f38317c).entrySet()) {
            Object value = entry.getValue();
            if (value != null) {
                String m2908c = C8701a.m2908c(entry.getKey());
                Class<?> cls = value.getClass();
                if ((value instanceof Iterable) || cls.isArray()) {
                    Iterator it = C8695d0.m2916l(value).iterator();
                    boolean z2 = z;
                    while (true) {
                        boolean z3 = z2;
                        z = z3;
                        if (it.hasNext()) {
                            z2 = m3209g(z3, bufferedWriter, m2908c, it.next());
                        }
                    }
                } else {
                    z = m3209g(z, bufferedWriter, m2908c, value);
                }
            }
        }
        bufferedWriter.flush();
    }
}
