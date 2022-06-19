package com.google.api.client.http;

import com.google.api.client.p379a.C15214ag;
import com.google.api.client.p379a.C15232j;
import com.google.api.client.p379a.C15240m;
import com.google.api.client.p379a.p380a.C15201a;
import com.google.common.base.C15391m;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.api.client.http.ae */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/ae.class */
public final class C15320ae extends AbstractC15303a {

    /* renamed from: a */
    private Object f55321a;

    /* renamed from: b */
    private boolean f55322b;

    public C15320ae(Object obj) {
        super(C15321af.f55323a);
        m9122a(obj);
        this.f55322b = false;
    }

    public C15320ae(Object obj, boolean z) {
        super(C15321af.f55323a);
        m9122a(obj);
        this.f55322b = z;
    }

    /* renamed from: a */
    private C15320ae m9122a(Object obj) {
        this.f55321a = C15391m.m8946a(obj);
        return this;
    }

    /* renamed from: a */
    private static boolean m9121a(boolean z, Writer writer, String str, Object obj, boolean z2) throws IOException {
        boolean z3 = z;
        if (obj != null) {
            if (C15232j.m9241a(obj)) {
                z3 = z;
            } else {
                if (z) {
                    z = false;
                } else {
                    writer.write("&");
                }
                writer.write(str);
                String obj2 = obj instanceof Enum ? C15240m.m9222a((Enum<?>) obj).f55116c : obj.toString();
                String m9294e = z2 ? C15201a.m9294e(obj2) : C15201a.m9298a(obj2);
                z3 = z;
                if (m9294e.length() != 0) {
                    writer.write("=");
                    writer.write(m9294e);
                    z3 = z;
                }
            }
        }
        return z3;
    }

    @Override // com.google.api.client.http.AbstractC15303a
    public final /* bridge */ /* synthetic */ AbstractC15303a setMediaType(C15339p c15339p) {
        super.setMediaType(c15339p);
        return this;
    }

    @Override // com.google.api.client.http.AbstractC15331j, com.google.api.client.p379a.AbstractC15211ad
    public final void writeTo(OutputStream outputStream) throws IOException {
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, getCharset()));
        boolean z = true;
        for (Map.Entry<String, Object> entry : C15232j.m9235b(this.f55321a).entrySet()) {
            Object value = entry.getValue();
            if (value != null) {
                String m9298a = C15201a.m9298a(entry.getKey());
                Class<?> cls = value.getClass();
                if ((value instanceof Iterable) || cls.isArray()) {
                    Iterator it2 = C15214ag.m9267a(value).iterator();
                    boolean z2 = z;
                    while (true) {
                        boolean z3 = z2;
                        z = z3;
                        if (it2.hasNext()) {
                            z2 = m9121a(z3, bufferedWriter, m9298a, it2.next(), this.f55322b);
                        }
                    }
                } else {
                    z = m9121a(z, bufferedWriter, m9298a, value, this.f55322b);
                }
            }
        }
        bufferedWriter.flush();
    }
}
