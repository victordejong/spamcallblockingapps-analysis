package org.mp4parser.aspectj.p593a.p595b;

import okhttp3.HttpUrl;
/* renamed from: org.mp4parser.aspectj.a.b.h */
/* loaded from: classes5-dex2jar.jar:org/mp4parser/aspectj/a/b/h.class */
final class C20996h {

    /* renamed from: j */
    static C20996h f67579j;

    /* renamed from: k */
    static C20996h f67580k;

    /* renamed from: l */
    static C20996h f67581l;

    /* renamed from: a */
    boolean f67582a = true;

    /* renamed from: b */
    boolean f67583b = true;

    /* renamed from: c */
    boolean f67584c = false;

    /* renamed from: d */
    boolean f67585d = false;

    /* renamed from: e */
    boolean f67586e = false;

    /* renamed from: f */
    boolean f67587f = true;

    /* renamed from: g */
    boolean f67588g = true;

    /* renamed from: h */
    boolean f67589h = true;

    /* renamed from: i */
    int f67590i;

    static {
        C20996h c20996h = new C20996h();
        f67579j = c20996h;
        c20996h.f67582a = true;
        c20996h.f67583b = false;
        c20996h.f67584c = false;
        c20996h.f67585d = false;
        c20996h.f67586e = true;
        c20996h.f67587f = false;
        c20996h.f67588g = false;
        c20996h.f67590i = 0;
        C20996h c20996h2 = new C20996h();
        f67580k = c20996h2;
        c20996h2.f67582a = true;
        c20996h2.f67583b = true;
        c20996h2.f67584c = false;
        c20996h2.f67585d = false;
        c20996h2.f67586e = false;
        f67579j.f67590i = 1;
        C20996h c20996h3 = new C20996h();
        f67581l = c20996h3;
        c20996h3.f67582a = false;
        c20996h3.f67583b = true;
        c20996h3.f67584c = false;
        c20996h3.f67585d = true;
        c20996h3.f67586e = false;
        c20996h3.f67589h = false;
        c20996h3.f67590i = 2;
    }

    C20996h() {
    }

    /* renamed from: a */
    public static String m148a(String str) {
        int lastIndexOf = str.lastIndexOf(45);
        return lastIndexOf == -1 ? str : str.substring(lastIndexOf + 1);
    }

    /* renamed from: b */
    private static String m146b(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(lastIndexOf + 1);
    }

    /* renamed from: a */
    public final String m150a(Class cls) {
        return m149a(cls, cls.getName(), this.f67582a);
    }

    /* renamed from: a */
    public final String m149a(Class cls, String str, boolean z) {
        if (cls == null) {
            return "ANONYMOUS";
        }
        if (!cls.isArray()) {
            return z ? m146b(str).replace('$', '.') : str.replace('$', '.');
        }
        Class<?> componentType = cls.getComponentType();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(m149a(componentType, componentType.getName(), z));
        stringBuffer.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
        return stringBuffer.toString();
    }

    /* renamed from: a */
    public final void m147a(StringBuffer stringBuffer, Class[] clsArr) {
        for (int i = 0; i < clsArr.length; i++) {
            if (i > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(m150a(clsArr[i]));
        }
    }
}
