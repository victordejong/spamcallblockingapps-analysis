package com.google.api.client.http;

import com.google.api.client.util.AbstractC8726u;
import com.google.api.client.util.C8689b;
import com.google.api.client.util.C8693c0;
import com.google.api.client.util.C8695d0;
import com.google.api.client.util.C8709h;
import com.google.api.client.util.C8710i;
import com.google.api.client.util.C8712j;
import com.google.api.client.util.C8717l;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.p290f0.C8701a;
import com.yanzhenjie.nohttp.Headers;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.api.client.http.e0 */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/e0.class */
public class C8625e0 implements AbstractC8726u {

    /* renamed from: a */
    public static final String f38319a = new C8654p(Headers.HEAD_VALUE_CONTENT_TYPE_URLENCODED).m3114l(C8709h.f38508a).m3125a();

    /* renamed from: b */
    public static void m3207b(Reader reader, Object obj, boolean z) {
        int read;
        Class<?> cls = obj.getClass();
        C8710i m2886e = C8710i.m2886e(cls);
        List asList = Arrays.asList(cls);
        GenericData genericData = GenericData.class.isAssignableFrom(cls) ? (GenericData) obj : null;
        Map map = Map.class.isAssignableFrom(cls) ? (Map) obj : null;
        C8689b c8689b = new C8689b(obj);
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
            String stringWriter3 = stringWriter.toString();
            String str = stringWriter3;
            if (z) {
                str = C8701a.m2910a(stringWriter3);
            }
            if (str.length() != 0) {
                String stringWriter4 = stringWriter2.toString();
                String str2 = stringWriter4;
                if (z) {
                    str2 = C8701a.m2910a(stringWriter4);
                }
                C8717l m2889b = m2886e.m2889b(str);
                if (m2889b != null) {
                    Type m2872l = C8712j.m2872l(asList, m2889b.m2863d());
                    if (C8695d0.m2918j(m2872l)) {
                        Class<?> m2922f = C8695d0.m2922f(asList, C8695d0.m2926b(m2872l));
                        c8689b.m2936a(m2889b.m2865b(), m2922f, m3204e(m2922f, asList, str2));
                    } else if (C8695d0.m2917k(C8695d0.m2922f(asList, m2872l), Iterable.class)) {
                        Collection<Object> collection = (Collection) m2889b.m2860g(obj);
                        Collection<Object> collection2 = collection;
                        if (collection == null) {
                            collection2 = C8712j.m2876h(m2872l);
                            m2889b.m2854m(obj, collection2);
                        }
                        collection2.add(m3204e(m2872l == Object.class ? null : C8695d0.m2924d(m2872l), asList, str2));
                    } else {
                        m2889b.m2854m(obj, m3204e(m2872l, asList, str2));
                    }
                } else if (map != null) {
                    ArrayList arrayList = (ArrayList) map.get(str);
                    ArrayList arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList();
                        if (genericData != null) {
                            genericData.set(str, arrayList2);
                        } else {
                            map.put(str, arrayList2);
                        }
                    }
                    arrayList2.add(str2);
                }
            }
            stringWriter = new StringWriter();
            stringWriter2 = new StringWriter();
        } while (read != -1);
        c8689b.m2935b();
    }

    /* renamed from: c */
    public static void m3206c(String str, Object obj) {
        m3205d(str, obj, true);
    }

    /* renamed from: d */
    public static void m3205d(String str, Object obj, boolean z) {
        if (str == null) {
            return;
        }
        try {
            m3207b(new StringReader(str), obj, z);
        } catch (IOException e) {
            throw C8693c0.m2929a(e);
        }
    }

    /* renamed from: e */
    private static Object m3204e(Type type, List<Type> list, String str) {
        return C8712j.m2873k(C8712j.m2872l(list, type), str);
    }
}
