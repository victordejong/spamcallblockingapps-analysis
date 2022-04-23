package kotlin.reflect.jvm.internal;

import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.b.a;
import kotlin.reflect.jvm.internal.b.b;
import kotlin.reflect.jvm.internal.b.e;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u001a\b\u0010\u0005\u001a\u00020\u0006H��\u001a&\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\t0\b\"\b\b��\u0010\t*\u00020\u00042\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\t0\u000bH��\"*\u0010��\u001a\u001e\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00040\u00040\u0001X\u0082\u000e¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"K_CLASS_CACHE", "Lkotlin/reflect/jvm/internal/pcollections/HashPMap;", "", "kotlin.jvm.PlatformType", "", "clearKClassCache", "", "getOrCreateKotlinClass", "Lkotlin/reflect/jvm/internal/KClassImpl;", "T", "jClass", "Ljava/lang/Class;", "kotlin-reflection"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private static b<String, Object> f36935a;

    static {
        b<String, Object> a2 = b.a();
        p.b(a2, "HashPMap.empty<String, Any>()");
        f36935a = a2;
    }

    public static final <T> h<T> a(Class<T> jClass) {
        Object obj;
        Class<T> cls;
        p.d(jClass, "jClass");
        String name = jClass.getName();
        a a2 = f36935a.a(name.hashCode());
        while (true) {
            cls = null;
            if (a2 == null || a2.f36890c <= 0) {
                break;
            }
            e eVar = (e) a2.f36888a;
            if (eVar.f36901a.equals(name)) {
                obj = eVar.f36902b;
                break;
            }
            a2 = a2.f36889b;
        }
        obj = null;
        if (obj instanceof WeakReference) {
            h<T> hVar = (h) ((WeakReference) obj).get();
            if (hVar != null) {
                cls = hVar.f36937b;
            }
            if (p.a(cls, jClass)) {
                return hVar;
            }
        } else if (obj != null) {
            for (WeakReference weakReference : (WeakReference[]) obj) {
                h<T> hVar2 = (h) weakReference.get();
                if (p.a(hVar2 != null ? hVar2.f36937b : null, jClass)) {
                    return hVar2;
                }
            }
            int length = ((Object[]) obj).length;
            WeakReference[] weakReferenceArr = new WeakReference[length + 1];
            System.arraycopy(obj, 0, weakReferenceArr, 0, length);
            h<T> hVar3 = new h<>(jClass);
            weakReferenceArr[length] = new WeakReference(hVar3);
            b<String, Object> a3 = f36935a.a((b<String, Object>) name, (String) weakReferenceArr);
            p.b(a3, "K_CLASS_CACHE.plus(name, newArray)");
            f36935a = a3;
            return hVar3;
        }
        h<T> hVar4 = new h<>(jClass);
        b<String, Object> a4 = f36935a.a((b<String, Object>) name, (String) new WeakReference(hVar4));
        p.b(a4, "K_CLASS_CACHE.plus(name, WeakReference(newKClass))");
        f36935a = a4;
        return hVar4;
    }
}
