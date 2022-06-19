package kotlin.reflect;

import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.C18458a;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18525q;
import kotlin.jvm.internal.C18522n;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p531g.AbstractC18378h;
import kotlin.p531g.C18381k;
import kotlin.p532h.C18425p;
import kotlin.reflect.C20123y;
import okhttp3.HttpUrl;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\u001a\"\u0010\n\u001a\u00020\u00012\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u000eH\u0003\u001a\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0001H\u0002\u001a\u0016\u0010\u0012\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0013\u001a\u00020\u0014H\u0003\"\u001e\u0010��\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u001e\u0010��\u001a\u00020\u0001*\u00020\u00078BX\u0083\u0004¢\u0006\f\u0012\u0004\b\u0003\u0010\b\u001a\u0004\b\u0005\u0010\t¨\u0006\u0015"}, m4298d2 = {"javaType", "Ljava/lang/reflect/Type;", "Lkotlin/reflect/KType;", "getJavaType$annotations", "(Lkotlin/reflect/KType;)V", "getJavaType", "(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;", "Lkotlin/reflect/KTypeProjection;", "(Lkotlin/reflect/KTypeProjection;)V", "(Lkotlin/reflect/KTypeProjection;)Ljava/lang/reflect/Type;", "createPossiblyInnerType", "jClass", "Ljava/lang/Class;", "arguments", "", "typeToString", "", "type", "computeJavaType", "forceWrapper", "", "kotlin-stdlib"}, m4297k = 2, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.w */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/w.class */
public final class C20120w {

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u0012\u0012\u0002\b\u0003 \u0002*\b\u0012\u0002\b\u0003\u0018\u00010\u00010\u00012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0001¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "Ljava/lang/Class;", "kotlin.jvm.PlatformType", "p1", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.w$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/w$a.class */
    public static final /* synthetic */ class C20121a extends C18522n implements Function1<Class<? extends Object>, Class<?>> {

        /* renamed from: a */
        public static final C20121a f66518a = new C20121a();

        C20121a() {
            super(1, Class.class, "getComponentType", "getComponentType()Ljava/lang/Class;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Class<?> invoke(Class<? extends Object> cls) {
            Class<? extends Object> p1 = cls;
            C18524p.m3840d(p1, "p1");
            return p1.getComponentType();
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ String m1109a(Type type) {
        String str;
        if (type instanceof Class) {
            Class cls = (Class) type;
            if (cls.isArray()) {
                AbstractC18378h a = C18381k.m4031a(type, C20121a.f66518a);
                str = ((Class) C18381k.m4016d(a)).getName() + C18425p.m3965a((CharSequence) HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, C18381k.m4010h(a));
            } else {
                str = cls.getName();
            }
            C18524p.m3843b(str, "if (type.isArray) {\n    …\n        } else type.name");
            return str;
        }
        return type.toString();
    }

    /* renamed from: a */
    private static final Type m1110a(Class<?> cls, List<C20112q> list) {
        Class<?> declaringClass = cls.getDeclaringClass();
        if (declaringClass == null) {
            List<C20112q> list2 = list;
            ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
            for (C20112q c20112q : list2) {
                arrayList.add(m1106a(c20112q));
            }
            return new C20116t(cls, null, arrayList);
        } else if (Modifier.isStatic(cls.getModifiers())) {
            Class<?> cls2 = declaringClass;
            List<C20112q> list3 = list;
            ArrayList arrayList2 = new ArrayList(C18282n.m4163a((Iterable) list3, 10));
            for (C20112q c20112q2 : list3) {
                arrayList2.add(m1106a(c20112q2));
            }
            return new C20116t(cls, cls2, arrayList2);
        } else {
            int length = cls.getTypeParameters().length;
            Type m1110a = m1110a(declaringClass, list.subList(length, list.size()));
            List<C20112q> subList = list.subList(0, length);
            ArrayList arrayList3 = new ArrayList(C18282n.m4163a((Iterable) subList, 10));
            for (C20112q c20112q3 : subList) {
                arrayList3.add(m1106a(c20112q3));
            }
            return new C20116t(cls, m1110a, arrayList3);
        }
    }

    /* renamed from: a */
    public static final Type m1108a(KType javaType) {
        Type am_;
        C18524p.m3840d(javaType, "$this$javaType");
        return (!(javaType instanceof AbstractC18525q) || (am_ = ((AbstractC18525q) javaType).am_()) == null) ? m1107a(javaType, false) : am_;
    }

    /* renamed from: a */
    public static final Type m1107a(KType kType, boolean z) {
        int i;
        AbstractC18552d mo1126a = kType.mo1126a();
        if (mo1126a instanceof AbstractC20111p) {
            return new C20119v((AbstractC20111p) mo1126a);
        }
        if (!(mo1126a instanceof AbstractC18551c)) {
            throw new UnsupportedOperationException("Unsupported type classifier: ".concat(String.valueOf(kType)));
        }
        AbstractC18551c abstractC18551c = (AbstractC18551c) mo1126a;
        Class m3891c = z ? C18458a.m3891c(abstractC18551c) : C18458a.m3893a(abstractC18551c);
        List<C20112q> mo1123b = kType.mo1123b();
        if (mo1123b.isEmpty()) {
            return m3891c;
        }
        if (!m3891c.isArray()) {
            return m1110a(m3891c, mo1123b);
        }
        Class<?> componentType = m3891c.getComponentType();
        C18524p.m3843b(componentType, "jClass.componentType");
        if (componentType.isPrimitive()) {
            return m3891c;
        }
        C20112q c20112q = (C20112q) C18282n.m4113j((List<? extends Object>) mo1123b);
        if (c20112q == null) {
            throw new IllegalArgumentException("kotlin.Array must have exactly one type argument: ".concat(String.valueOf(kType)));
        }
        EnumC20115s enumC20115s = c20112q.f66509a;
        KType kType2 = c20112q.f66510b;
        if (enumC20115s == null || (i = C20122x.f66519a[enumC20115s.ordinal()]) == 1) {
            return m3891c;
        }
        if (i != 2 && i != 3) {
            throw new NoWhenBranchMatchedException();
        }
        C18524p.m3851a(kType2);
        Type m1107a = m1107a(kType2, false);
        return m1107a instanceof Class ? m3891c : new C18549a(m1107a);
    }

    /* renamed from: a */
    private static final Type m1106a(C20112q c20112q) {
        C20123y c20123y;
        EnumC20115s enumC20115s = c20112q.f66509a;
        if (enumC20115s == null) {
            C20123y.C20124a c20124a = C20123y.f66521a;
            c20123y = C20123y.f66522d;
            return c20123y;
        }
        KType kType = c20112q.f66510b;
        C18524p.m3851a(kType);
        int i = C20122x.f66520b[enumC20115s.ordinal()];
        if (i == 1) {
            return m1107a(kType, true);
        }
        if (i == 2) {
            return new C20123y(null, m1107a(kType, true));
        }
        if (i != 3) {
            throw new NoWhenBranchMatchedException();
        }
        return new C20123y(m1107a(kType, true), null);
    }
}
