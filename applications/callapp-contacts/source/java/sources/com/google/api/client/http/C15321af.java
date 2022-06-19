package com.google.api.client.http;

import com.google.api.client.p379a.AbstractC15254x;
import com.google.api.client.p379a.C15214ag;
import com.google.api.client.p379a.C15218b;
import com.google.api.client.p379a.C15228h;
import com.google.api.client.p379a.C15232j;
import com.google.api.client.p379a.C15240m;
import com.google.api.client.p379a.C15241n;
import com.google.api.client.p379a.p380a.C15201a;
import com.google.common.base.C15391m;
import com.google.common.base.C15400r;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.api.client.http.af */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/af.class */
public final class C15321af implements AbstractC15254x {

    /* renamed from: a */
    public static final String f55323a;

    static {
        C15339p c15339p = new C15339p("application/x-www-form-urlencoded");
        Charset charset = StandardCharsets.UTF_8;
        c15339p.m9066a("charset", charset == null ? null : charset.name());
        f55323a = c15339p.m9069a();
    }

    /* renamed from: a */
    private static Object m9116a(Type type, List<Type> list, String str) {
        return C15232j.m9238a(C15232j.m9237a(list, type), str);
    }

    /* renamed from: a */
    private static void m9120a(Reader reader, Object obj) throws IOException {
        m9119a(reader, obj, true);
    }

    /* renamed from: a */
    private static void m9119a(Reader reader, Object obj, boolean z) throws IOException {
        int read;
        Class<?> cls = obj.getClass();
        C15228h m9246a = C15228h.m9246a(cls);
        List asList = Arrays.asList(cls);
        C15241n c15241n = C15241n.class.isAssignableFrom(cls) ? (C15241n) obj : null;
        Map map = Map.class.isAssignableFrom(cls) ? (Map) obj : null;
        C15218b c15218b = new C15218b(obj);
        StringWriter stringWriter = new StringWriter();
        StringWriter stringWriter2 = new StringWriter();
        do {
            boolean z2 = true;
            while (true) {
                read = reader.read();
                if (read == -1 || read == 38) {
                    break;
                } else if (read != 61) {
                    if (z2) {
                        stringWriter.write(read);
                    } else {
                        stringWriter2.write(read);
                    }
                } else if (z2) {
                    z2 = false;
                } else {
                    stringWriter2.write(read);
                }
            }
            String m9296c = z ? C15201a.m9296c(stringWriter.toString()) : stringWriter.toString();
            if (m9296c.length() != 0) {
                String m9296c2 = z ? C15201a.m9296c(stringWriter2.toString()) : stringWriter2.toString();
                C15240m m9244a = m9246a.m9244a(m9296c);
                if (m9244a != null) {
                    Type m9237a = C15232j.m9237a((List<Type>) asList, m9244a.f55115b.getGenericType());
                    if (C15214ag.m9265a(m9237a)) {
                        Class<?> m9260a = C15214ag.m9260a(asList, C15214ag.m9258b(m9237a));
                        c15218b.m9255a(m9244a.f55115b, m9260a, m9116a(m9260a, asList, m9296c2));
                    } else if (C15214ag.m9269a(C15214ag.m9260a(asList, m9237a), (Class<?>) Iterable.class)) {
                        Collection<Object> collection = (Collection) m9244a.m9221a(obj);
                        Collection<Object> collection2 = collection;
                        if (collection == null) {
                            collection2 = C15232j.m9234b(m9237a);
                            m9244a.m9220a(obj, collection2);
                        }
                        collection2.add(m9116a(m9237a == Object.class ? null : C15214ag.m9263a(m9237a, Iterable.class, 0), asList, m9296c2));
                    } else {
                        m9244a.m9220a(obj, m9116a(m9237a, asList, m9296c2));
                    }
                } else if (map != null) {
                    ArrayList arrayList = (ArrayList) map.get(m9296c);
                    ArrayList arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList();
                        if (c15241n != null) {
                            c15241n.set(m9296c, arrayList2);
                        } else {
                            map.put(m9296c, arrayList2);
                        }
                    }
                    arrayList2.add(m9296c2);
                }
            }
            stringWriter = new StringWriter();
            stringWriter2 = new StringWriter();
        } while (read != -1);
        c15218b.m9256a();
    }

    /* renamed from: a */
    public static void m9118a(String str, Object obj) {
        m9117a(str, obj, true);
    }

    /* renamed from: a */
    public static void m9117a(String str, Object obj, boolean z) {
        if (str == null) {
            return;
        }
        try {
            m9119a(new StringReader(str), obj, z);
        } catch (IOException e) {
            throw C15400r.m8918a(e);
        }
    }

    @Override // com.google.api.client.p379a.AbstractC15254x
    public final <T> T parseAndClose(InputStream inputStream, Charset charset, Class<T> cls) throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, charset);
        C15391m.m8942a(cls instanceof Class, "dataType has to be of type Class<?>");
        T t = (T) C15214ag.m9270a((Class<Object>) cls);
        m9120a(new BufferedReader(inputStreamReader), t);
        return t;
    }
}
