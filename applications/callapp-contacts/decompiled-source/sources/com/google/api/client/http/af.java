package com.google.api.client.http;

import com.google.api.client.a.a.a;
import com.google.api.client.a.ag;
import com.google.api.client.a.b;
import com.google.api.client.a.h;
import com.google.api.client.a.j;
import com.google.api.client.a.m;
import com.google.api.client.a.n;
import com.google.api.client.a.x;
import com.google.common.base.r;
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
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/af.class */
public final class af implements x {

    /* renamed from: a  reason: collision with root package name */
    public static final String f31797a;

    static {
        p pVar = new p("application/x-www-form-urlencoded");
        Charset charset = StandardCharsets.UTF_8;
        pVar.a("charset", charset == null ? null : charset.name());
        f31797a = pVar.a();
    }

    private static Object a(Type type, List<Type> list, String str) {
        return j.a(j.a(list, type), str);
    }

    private static void a(Reader reader, Object obj) throws IOException {
        a(reader, obj, true);
    }

    private static void a(Reader reader, Object obj, boolean z) throws IOException {
        int read;
        Class<?> cls = obj.getClass();
        h a2 = h.a(cls);
        List asList = Arrays.asList(cls);
        n nVar = n.class.isAssignableFrom(cls) ? (n) obj : null;
        Map map = Map.class.isAssignableFrom(cls) ? (Map) obj : null;
        b bVar = new b(obj);
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
            String c2 = z ? a.c(stringWriter.toString()) : stringWriter.toString();
            if (c2.length() != 0) {
                String c3 = z ? a.c(stringWriter2.toString()) : stringWriter2.toString();
                m a3 = a2.a(c2);
                if (a3 != null) {
                    Type a4 = j.a((List<Type>) asList, a3.f31650b.getGenericType());
                    if (ag.a(a4)) {
                        Class<?> a5 = ag.a(asList, ag.b(a4));
                        bVar.a(a3.f31650b, a5, a(a5, asList, c3));
                    } else if (ag.a(ag.a(asList, a4), (Class<?>) Iterable.class)) {
                        Collection<Object> collection = (Collection) a3.a(obj);
                        Collection<Object> collection2 = collection;
                        if (collection == null) {
                            collection2 = j.b(a4);
                            a3.a(obj, collection2);
                        }
                        collection2.add(a(a4 == Object.class ? null : ag.a(a4, Iterable.class, 0), asList, c3));
                    } else {
                        a3.a(obj, a(a4, asList, c3));
                    }
                } else if (map != null) {
                    ArrayList arrayList = (ArrayList) map.get(c2);
                    ArrayList arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList();
                        if (nVar != null) {
                            nVar.set(c2, arrayList2);
                        } else {
                            map.put(c2, arrayList2);
                        }
                    }
                    arrayList2.add(c3);
                }
            }
            stringWriter = new StringWriter();
            stringWriter2 = new StringWriter();
        } while (read != -1);
        bVar.a();
    }

    public static void a(String str, Object obj) {
        a(str, obj, true);
    }

    public static void a(String str, Object obj, boolean z) {
        if (str != null) {
            try {
                a(new StringReader(str), obj, z);
            } catch (IOException e) {
                throw r.a(e);
            }
        }
    }

    @Override // com.google.api.client.a.x
    public final <T> T parseAndClose(InputStream inputStream, Charset charset, Class<T> cls) throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, charset);
        com.google.common.base.m.a(cls instanceof Class, "dataType has to be of type Class<?>");
        T t = (T) ag.a((Class<Object>) cls);
        a(new BufferedReader(inputStreamReader), t);
        return t;
    }
}
