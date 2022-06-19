package kotlin.reflect.jvm.internal;

import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.p536b.C18638a;
import kotlin.reflect.jvm.internal.p536b.C18640b;
import kotlin.reflect.jvm.internal.p536b.C18643e;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��&\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u001a\b\u0010\u0005\u001a\u00020\u0006H��\u001a&\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\t0\b\"\b\b��\u0010\t*\u00020\u00042\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\t0\u000bH��\"*\u0010��\u001a\u001e\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00040\u00040\u0001X\u0082\u000e¢\u0006\u0002\n��¨\u0006\f"}, m4298d2 = {"K_CLASS_CACHE", "Lkotlin/reflect/jvm/internal/pcollections/HashPMap;", "", "kotlin.jvm.PlatformType", "", "clearKClassCache", "", "getOrCreateKotlinClass", "Lkotlin/reflect/jvm/internal/KClassImpl;", "T", "jClass", "Ljava/lang/Class;", "kotlin-reflection"}, m4297k = 2, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.g */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/g.class */
public final class C18669g {

    /* renamed from: a */
    private static C18640b<String, Object> f63761a;

    static {
        C18640b<String, Object> m3745a = C18640b.m3745a();
        C18524p.m3843b(m3745a, "HashPMap.empty<String, Any>()");
        f63761a = m3745a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static final <T> C18670h<T> m3725a(Class<T> jClass) {
        Object obj;
        C18524p.m3840d(jClass, "jClass");
        String name = jClass.getName();
        C18638a m3744a = f63761a.m3744a(name.hashCode());
        while (true) {
            C18638a c18638a = m3744a;
            if (c18638a == null || c18638a.f63712c <= 0) {
                break;
            }
            C18643e c18643e = (C18643e) c18638a.f63710a;
            if (c18643e.f63725a.equals(name)) {
                obj = c18643e.f63726b;
                break;
            }
            m3744a = c18638a.f63711b;
        }
        obj = null;
        if (obj instanceof WeakReference) {
            C18670h<T> c18670h = (C18670h) ((WeakReference) obj).get();
            Class<T> cls = null;
            if (c18670h != null) {
                cls = c18670h.f63763b;
            }
            if (C18524p.m3850a(cls, jClass)) {
                return c18670h;
            }
        } else if (obj != null) {
            for (WeakReference weakReference : (WeakReference[]) obj) {
                C18670h<T> c18670h2 = (C18670h) weakReference.get();
                if (C18524p.m3850a(c18670h2 != null ? c18670h2.f63763b : null, jClass)) {
                    return c18670h2;
                }
            }
            int length = ((Object[]) obj).length;
            WeakReference[] weakReferenceArr = new WeakReference[length + 1];
            System.arraycopy(obj, 0, weakReferenceArr, 0, length);
            C18670h<T> c18670h3 = new C18670h<>(jClass);
            weakReferenceArr[length] = new WeakReference(c18670h3);
            C18640b<String, Object> m3743a = f63761a.m3743a((C18640b<String, Object>) name, (String) weakReferenceArr);
            C18524p.m3843b(m3743a, "K_CLASS_CACHE.plus(name, newArray)");
            f63761a = m3743a;
            return c18670h3;
        }
        C18670h<T> c18670h4 = new C18670h<>(jClass);
        C18640b<String, Object> m3743a2 = f63761a.m3743a((C18640b<String, Object>) name, (String) new WeakReference(c18670h4));
        C18524p.m3843b(m3743a2, "K_CLASS_CACHE.plus(name, WeakReference(newKClass))");
        f63761a = m3743a2;
        return c18670h4;
    }
}
