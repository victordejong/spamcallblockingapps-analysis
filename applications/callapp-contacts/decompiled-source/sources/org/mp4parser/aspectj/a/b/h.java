package org.mp4parser.aspectj.a.b;

import okhttp3.HttpUrl;
/* loaded from: classes5-dex2jar.jar:org/mp4parser/aspectj/a/b/h.class */
final class h {
    static h j;
    static h k;
    static h l;

    /* renamed from: a  reason: collision with root package name */
    boolean f39361a = true;

    /* renamed from: b  reason: collision with root package name */
    boolean f39362b = true;

    /* renamed from: c  reason: collision with root package name */
    boolean f39363c = false;

    /* renamed from: d  reason: collision with root package name */
    boolean f39364d = false;
    boolean e = false;
    boolean f = true;
    boolean g = true;
    boolean h = true;
    int i;

    static {
        h hVar = new h();
        j = hVar;
        hVar.f39361a = true;
        hVar.f39362b = false;
        hVar.f39363c = false;
        hVar.f39364d = false;
        hVar.e = true;
        hVar.f = false;
        hVar.g = false;
        hVar.i = 0;
        h hVar2 = new h();
        k = hVar2;
        hVar2.f39361a = true;
        hVar2.f39362b = true;
        hVar2.f39363c = false;
        hVar2.f39364d = false;
        hVar2.e = false;
        j.i = 1;
        h hVar3 = new h();
        l = hVar3;
        hVar3.f39361a = false;
        hVar3.f39362b = true;
        hVar3.f39363c = false;
        hVar3.f39364d = true;
        hVar3.e = false;
        hVar3.h = false;
        hVar3.i = 2;
    }

    h() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str) {
        int lastIndexOf = str.lastIndexOf(45);
        return lastIndexOf == -1 ? str : str.substring(lastIndexOf + 1);
    }

    private static String b(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(lastIndexOf + 1);
    }

    public final String a(Class cls) {
        return a(cls, cls.getName(), this.f39361a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a(Class cls, String str, boolean z) {
        if (cls == null) {
            return "ANONYMOUS";
        }
        if (!cls.isArray()) {
            return z ? b(str).replace('$', '.') : str.replace('$', '.');
        }
        Class<?> componentType = cls.getComponentType();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(a(componentType, componentType.getName(), z));
        stringBuffer.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
        return stringBuffer.toString();
    }

    public final void a(StringBuffer stringBuffer, Class[] clsArr) {
        for (int i = 0; i < clsArr.length; i++) {
            if (i > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(a(clsArr[i]));
        }
    }
}
