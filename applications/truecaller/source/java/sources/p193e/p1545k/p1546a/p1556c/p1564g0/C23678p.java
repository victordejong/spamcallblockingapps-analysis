package p193e.p1545k.p1546a.p1556c.p1564g0;

import java.lang.annotation.Annotation;
import java.util.HashMap;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23896b;
/* renamed from: e.k.a.c.g0.p */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/p.class */
public final class C23678p implements AbstractC23896b {

    /* renamed from: a */
    public HashMap<Class<?>, Annotation> f65647a;

    public C23678p() {
    }

    public C23678p(HashMap<Class<?>, Annotation> hashMap) {
        this.f65647a = hashMap;
    }

    /* renamed from: c */
    public static C23678p m6360c(C23678p c23678p, C23678p c23678p2) {
        HashMap<Class<?>, Annotation> hashMap;
        if (c23678p == null || (hashMap = c23678p.f65647a) == null || hashMap.isEmpty()) {
            return c23678p2;
        }
        C23678p c23678p3 = c23678p;
        if (c23678p2 != null) {
            HashMap<Class<?>, Annotation> hashMap2 = c23678p2.f65647a;
            c23678p3 = c23678p;
            if (hashMap2 != null) {
                if (hashMap2.isEmpty()) {
                    c23678p3 = c23678p;
                } else {
                    HashMap hashMap3 = new HashMap();
                    for (Annotation annotation : c23678p2.f65647a.values()) {
                        hashMap3.put(annotation.annotationType(), annotation);
                    }
                    for (Annotation annotation2 : c23678p.f65647a.values()) {
                        hashMap3.put(annotation2.annotationType(), annotation2);
                    }
                    c23678p3 = new C23678p(hashMap3);
                }
            }
        }
        return c23678p3;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23896b
    /* renamed from: a */
    public <A extends Annotation> A mo5787a(Class<A> cls) {
        HashMap<Class<?>, Annotation> hashMap = this.f65647a;
        if (hashMap == null) {
            return null;
        }
        return (A) hashMap.get(cls);
    }

    /* renamed from: b */
    public boolean m6361b(Class<? extends Annotation>[] clsArr) {
        if (this.f65647a != null) {
            for (Class<? extends Annotation> cls : clsArr) {
                if (this.f65647a.containsKey(cls)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23896b
    public int size() {
        HashMap<Class<?>, Annotation> hashMap = this.f65647a;
        return hashMap == null ? 0 : hashMap.size();
    }

    public String toString() {
        HashMap<Class<?>, Annotation> hashMap = this.f65647a;
        return hashMap == null ? "[null]" : hashMap.toString();
    }
}
