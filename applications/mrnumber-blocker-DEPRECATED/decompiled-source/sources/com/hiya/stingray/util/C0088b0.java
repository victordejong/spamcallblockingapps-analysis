package com.hiya.stingray.util;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.w.b.l;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.util.b0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/b0.class */
public class C0088b0 {

    /* renamed from: a */
    private Map<Object, Object> f191a = new LinkedHashMap();

    /* renamed from: b */
    public static /* synthetic */ Object m1058b(C0088b0 b0Var, Class cls, boolean z, l lVar, int i, Object obj) {
        if (obj == null) {
            if ((i & 2) != 0) {
                z = false;
            }
            if ((i & 4) != 0) {
                lVar = null;
            }
            return b0Var.m1059a(cls, z, lVar);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: get");
    }

    /* renamed from: a */
    public <T> T m1059a(Class<T> cls, boolean z, l<? super T, Boolean> lVar) {
        k.g(cls, "sticky");
        Object obj = this.f191a.get(cls);
        T t = null;
        if (!(obj instanceof Object)) {
            obj = null;
        }
        boolean z2 = true;
        if (lVar != null) {
            z2 = obj != null && ((Boolean) lVar.invoke(obj)).booleanValue();
        }
        if (z2 && z) {
            this.f191a.remove(cls);
        }
        if (z2) {
            t = (T) obj;
        }
        return t;
    }

    /* renamed from: c */
    public <T> void m1057c(T t) {
        k.g(t, "sticky");
        this.f191a.put(t.getClass(), t);
    }
}
