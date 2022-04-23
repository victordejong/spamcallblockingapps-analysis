package kotlin.reflect;

import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.g.h;
import kotlin.g.k;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.n;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.q;
import kotlin.reflect.y;
import okhttp3.HttpUrl;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\u001a\"\u0010\n\u001a\u00020\u00012\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u000eH\u0003\u001a\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0001H\u0002\u001a\u0016\u0010\u0012\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0013\u001a\u00020\u0014H\u0003\"\u001e\u0010��\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u001e\u0010��\u001a\u00020\u0001*\u00020\u00078BX\u0083\u0004¢\u0006\f\u0012\u0004\b\u0003\u0010\b\u001a\u0004\b\u0005\u0010\t¨\u0006\u0015"}, d2 = {"javaType", "Ljava/lang/reflect/Type;", "Lkotlin/reflect/KType;", "getJavaType$annotations", "(Lkotlin/reflect/KType;)V", "getJavaType", "(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;", "Lkotlin/reflect/KTypeProjection;", "(Lkotlin/reflect/KTypeProjection;)V", "(Lkotlin/reflect/KTypeProjection;)Ljava/lang/reflect/Type;", "createPossiblyInnerType", "jClass", "Ljava/lang/Class;", "arguments", "", "typeToString", "", "type", "computeJavaType", "forceWrapper", "", "kotlin-stdlib"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/w.class */
public final class w {

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u0012\u0012\u0002\b\u0003 \u0002*\b\u0012\u0002\b\u0003\u0018\u00010\u00010\u00012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0001¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Ljava/lang/Class;", "kotlin.jvm.PlatformType", "p1", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/w$a.class */
    public static final /* synthetic */ class a extends n implements Function1<Class<? extends Object>, Class<?>> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f38643a = new a();

        a() {
            super(1, Class.class, "getComponentType", "getComponentType()Ljava/lang/Class;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Class<?> invoke(Class<? extends Object> cls) {
            Class<? extends Object> p1 = cls;
            p.d(p1, "p1");
            return p1.getComponentType();
        }
    }

    public static final /* synthetic */ String a(Type type) {
        String str;
        if (!(type instanceof Class)) {
            return type.toString();
        }
        Class cls = (Class) type;
        if (cls.isArray()) {
            h a2 = k.a(type, a.f38643a);
            str = ((Class) k.d(a2)).getName() + kotlin.h.p.a((CharSequence) HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, k.h(a2));
        } else {
            str = cls.getName();
        }
        p.b(str, "if (type.isArray) {\n    …\n        } else type.name");
        return str;
    }

    private static final Type a(Class<?> cls, List<q> list) {
        Class<?> declaringClass = cls.getDeclaringClass();
        if (declaringClass == null) {
            List<q> list2 = list;
            ArrayList arrayList = new ArrayList(kotlin.a.n.a((Iterable) list2, 10));
            for (q qVar : list2) {
                arrayList.add(a(qVar));
            }
            return new t(cls, null, arrayList);
        } else if (Modifier.isStatic(cls.getModifiers())) {
            Class<?> cls2 = declaringClass;
            List<q> list3 = list;
            ArrayList arrayList2 = new ArrayList(kotlin.a.n.a((Iterable) list3, 10));
            for (q qVar2 : list3) {
                arrayList2.add(a(qVar2));
            }
            return new t(cls, cls2, arrayList2);
        } else {
            int length = cls.getTypeParameters().length;
            Type a2 = a(declaringClass, list.subList(length, list.size()));
            List<q> subList = list.subList(0, length);
            ArrayList arrayList3 = new ArrayList(kotlin.a.n.a((Iterable) subList, 10));
            for (q qVar3 : subList) {
                arrayList3.add(a(qVar3));
            }
            return new t(cls, a2, arrayList3);
        }
    }

    public static final Type a(KType javaType) {
        Type am_;
        p.d(javaType, "$this$javaType");
        return (!(javaType instanceof q) || (am_ = ((q) javaType).am_()) == null) ? a(javaType, false) : am_;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Type a(KType kType, boolean z) {
        int i;
        d a2 = kType.a();
        if (a2 instanceof p) {
            return new v((p) a2);
        }
        if (a2 instanceof c) {
            c cVar = (c) a2;
            Class c2 = z ? kotlin.jvm.a.c(cVar) : kotlin.jvm.a.a(cVar);
            List<q> b2 = kType.b();
            if (b2.isEmpty()) {
                return c2;
            }
            if (!c2.isArray()) {
                return a(c2, b2);
            }
            Class<?> componentType = c2.getComponentType();
            p.b(componentType, "jClass.componentType");
            if (componentType.isPrimitive()) {
                return c2;
            }
            q qVar = (q) kotlin.a.n.j((List<? extends Object>) b2);
            if (qVar != null) {
                s sVar = qVar.f38635a;
                KType kType2 = qVar.f38636b;
                if (sVar == null || (i = x.f38644a[sVar.ordinal()]) == 1) {
                    return c2;
                }
                if (i == 2 || i == 3) {
                    p.a(kType2);
                    Type a3 = a(kType2, false);
                    return a3 instanceof Class ? c2 : new kotlin.reflect.a(a3);
                }
                throw new NoWhenBranchMatchedException();
            }
            throw new IllegalArgumentException("kotlin.Array must have exactly one type argument: ".concat(String.valueOf(kType)));
        }
        throw new UnsupportedOperationException("Unsupported type classifier: ".concat(String.valueOf(kType)));
    }

    private static final Type a(q qVar) {
        y yVar;
        s sVar = qVar.f38635a;
        if (sVar == null) {
            y.a aVar = y.f38646a;
            yVar = y.f38647d;
            return yVar;
        }
        KType kType = qVar.f38636b;
        p.a(kType);
        int i = x.f38645b[sVar.ordinal()];
        if (i == 1) {
            return a(kType, true);
        }
        if (i == 2) {
            return new y(null, a(kType, true));
        }
        if (i == 3) {
            return new y(a(kType, true), null);
        }
        throw new NoWhenBranchMatchedException();
    }
}
