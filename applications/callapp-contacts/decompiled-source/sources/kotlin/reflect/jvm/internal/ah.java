package kotlin.reflect.jvm.internal;

import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.d;
import kotlin.reflect.jvm.internal.e;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.b.c.a;
import kotlin.reflect.jvm.internal.impl.b.c.a.e;
import kotlin.reflect.jvm.internal.impl.builtins.a.a;
import kotlin.reflect.jvm.internal.impl.builtins.h;
import kotlin.reflect.jvm.internal.impl.c.a;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.ao;
import kotlin.reflect.jvm.internal.impl.descriptors.ap;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.j;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.m;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.s;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.load.java.b.f;
import kotlin.reflect.jvm.internal.impl.load.java.b.g;
import kotlin.reflect.jvm.internal.impl.load.java.d.l;
import kotlin.reflect.jvm.internal.impl.load.java.t;
import kotlin.reflect.jvm.internal.impl.load.java.x;
import kotlin.reflect.jvm.internal.impl.protobuf.h;
import kotlin.reflect.jvm.internal.impl.resolve.c;
import kotlin.reflect.jvm.internal.impl.resolve.c.d;
@Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0002J\u0012\u0010\u000e\u001a\u00020\u00042\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u0007J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\f\u001a\u00020\u0014H\u0002J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u0006\u0012\u0002\b\u00030\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u001c"}, d2 = {"Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;", "", "()V", "JAVA_LANG_VOID", "Lkotlin/reflect/jvm/internal/impl/name/ClassId;", "primitiveType", "Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;", "Ljava/lang/Class;", "getPrimitiveType", "(Ljava/lang/Class;)Lorg/jetbrains/kotlin/builtins/PrimitiveType;", "isKnownBuiltInFunction", "", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "mapJvmClassToKotlinClassId", "klass", "mapJvmFunctionSignature", "Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;", "mapName", "", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;", "mapPropertySignature", "Lkotlin/reflect/jvm/internal/JvmPropertySignature;", "possiblyOverriddenProperty", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "mapSignature", "Lkotlin/reflect/jvm/internal/JvmFunctionSignature;", "possiblySubstitutedFunction", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/ah.class */
public final class ah {

    /* renamed from: a  reason: collision with root package name */
    static final a f36879a;

    /* renamed from: b  reason: collision with root package name */
    public static final ah f36880b = new ah();

    static {
        a a2 = a.a(new b("java.lang.Void"));
        p.b(a2, "ClassId.topLevel(FqName(\"java.lang.Void\"))");
        f36879a = a2;
    }

    private ah() {
    }

    private static String a(kotlin.reflect.jvm.internal.impl.descriptors.b bVar) {
        String d2 = x.d(bVar);
        String str = d2;
        if (d2 == null) {
            if (bVar instanceof ao) {
                String a2 = kotlin.reflect.jvm.internal.impl.resolve.b.a.a(bVar).getName().a();
                p.b(a2, "descriptor.propertyIfAccessor.name.asString()");
                return t.c(a2);
            } else if (bVar instanceof ap) {
                String a3 = kotlin.reflect.jvm.internal.impl.resolve.b.a.a(bVar).getName().a();
                p.b(a3, "descriptor.propertyIfAccessor.name.asString()");
                return t.d(a3);
            } else {
                str = bVar.getName().a();
                p.b(str, "descriptor.name.asString()");
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h a(Class<?> cls) {
        if (!cls.isPrimitive()) {
            return null;
        }
        d dVar = d.get(cls.getSimpleName());
        p.b(dVar, "JvmPrimitiveType.get(simpleName)");
        return dVar.getPrimitiveType();
    }

    private static boolean b(w wVar) {
        if (c.b(wVar) || c.a(wVar)) {
            return true;
        }
        e name = wVar.getName();
        a.C0665a aVar = kotlin.reflect.jvm.internal.impl.builtins.a.a.f37234a;
        return p.a(name, kotlin.reflect.jvm.internal.impl.builtins.a.a.b()) && wVar.getValueParameters().isEmpty();
    }

    private static d.e c(w wVar) {
        return new d.e(new e.b(a((kotlin.reflect.jvm.internal.impl.descriptors.b) wVar), kotlin.reflect.jvm.internal.impl.load.kotlin.t.a(wVar, false, false, 1)));
    }

    public final d a(w possiblySubstitutedFunction) {
        Method method;
        p.d(possiblySubstitutedFunction, "possiblySubstitutedFunction");
        kotlin.reflect.jvm.internal.impl.descriptors.b a2 = kotlin.reflect.jvm.internal.impl.resolve.d.a(possiblySubstitutedFunction);
        p.b(a2, "DescriptorUtils.unwrapFa…siblySubstitutedFunction)");
        w original = ((w) a2).getOriginal();
        p.b(original, "DescriptorUtils.unwrapFa…titutedFunction).original");
        if (original instanceof kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.c) {
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.c cVar = (kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.c) original;
            kotlin.reflect.jvm.internal.impl.protobuf.p k = cVar.k();
            if (k instanceof a.h) {
                kotlin.reflect.jvm.internal.impl.b.c.a.h hVar = kotlin.reflect.jvm.internal.impl.b.c.a.h.f37228a;
                e.b a3 = kotlin.reflect.jvm.internal.impl.b.c.a.h.a((a.h) k, cVar.ao_(), cVar.ap_());
                if (a3 != null) {
                    return new d.e(a3);
                }
            }
            if (k instanceof a.c) {
                kotlin.reflect.jvm.internal.impl.b.c.a.h hVar2 = kotlin.reflect.jvm.internal.impl.b.c.a.h.f37228a;
                e.b a4 = kotlin.reflect.jvm.internal.impl.b.c.a.h.a((a.c) k, cVar.ao_(), cVar.ap_());
                if (a4 != null) {
                    k containingDeclaration = possiblySubstitutedFunction.getContainingDeclaration();
                    p.b(containingDeclaration, "possiblySubstitutedFunction.containingDeclaration");
                    return kotlin.reflect.jvm.internal.impl.resolve.e.a(containingDeclaration) ? new d.e(a4) : new d.C0622d(a4);
                }
            }
            return c(original);
        }
        l lVar = null;
        l b2 = null;
        if (original instanceof f) {
            at source = ((f) original).getSource();
            at atVar = source;
            if (!(source instanceof kotlin.reflect.jvm.internal.impl.load.java.c.a)) {
                atVar = null;
            }
            kotlin.reflect.jvm.internal.impl.load.java.c.a aVar = (kotlin.reflect.jvm.internal.impl.load.java.c.a) atVar;
            b2 = aVar != null ? aVar.b() : null;
            if (!(b2 instanceof s)) {
            }
            s sVar = (s) b2;
            if (sVar != null && (method = sVar.f37483a) != null) {
                return new d.c(method);
            }
            throw new ab("Incorrect resolution sequence for Java method ".concat(String.valueOf(original)));
        } else if (original instanceof kotlin.reflect.jvm.internal.impl.load.java.b.c) {
            at source2 = ((kotlin.reflect.jvm.internal.impl.load.java.b.c) original).getSource();
            at atVar2 = source2;
            if (!(source2 instanceof kotlin.reflect.jvm.internal.impl.load.java.c.a)) {
                atVar2 = null;
            }
            kotlin.reflect.jvm.internal.impl.load.java.c.a aVar2 = (kotlin.reflect.jvm.internal.impl.load.java.c.a) atVar2;
            if (aVar2 != null) {
                lVar = aVar2.b();
            }
            if (lVar instanceof m) {
                return new d.b(((m) lVar).f37479a);
            }
            if (lVar instanceof j) {
                j jVar = (j) lVar;
                if (jVar.f37467a.isAnnotation()) {
                    return new d.a(jVar.f37467a);
                }
            }
            throw new ab("Incorrect resolution sequence for Java constructor " + original + " (" + lVar + ')');
        } else if (b(original)) {
            return c(original);
        } else {
            throw new ab("Unknown origin of " + original + " (" + original.getClass() + ')');
        }
    }

    public final e a(an possiblyOverriddenProperty) {
        p.d(possiblyOverriddenProperty, "possiblyOverriddenProperty");
        kotlin.reflect.jvm.internal.impl.descriptors.b a2 = kotlin.reflect.jvm.internal.impl.resolve.d.a(possiblyOverriddenProperty);
        p.b(a2, "DescriptorUtils.unwrapFa…ssiblyOverriddenProperty)");
        an d2 = ((an) a2).d();
        p.b(d2, "DescriptorUtils.unwrapFa…rriddenProperty).original");
        d.e eVar = null;
        Method method = null;
        if (d2 instanceof kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.j) {
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.j jVar = (kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.j) d2;
            a.m mVar = jVar.g;
            a.m mVar2 = mVar;
            h.e<a.m, a.c> eVar2 = kotlin.reflect.jvm.internal.impl.b.c.a.f37168d;
            p.b(eVar2, "JvmProtoBuf.propertySignature");
            a.c cVar = (a.c) kotlin.reflect.jvm.internal.impl.b.b.e.a(mVar2, eVar2);
            if (cVar != null) {
                return new e.c(d2, mVar, cVar, jVar.h, jVar.i);
            }
        } else if (d2 instanceof g) {
            at source = ((g) d2).getSource();
            at atVar = source;
            if (!(source instanceof kotlin.reflect.jvm.internal.impl.load.java.c.a)) {
                atVar = null;
            }
            kotlin.reflect.jvm.internal.impl.load.java.c.a aVar = (kotlin.reflect.jvm.internal.impl.load.java.c.a) atVar;
            l b2 = aVar != null ? aVar.b() : null;
            if (b2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.d.b.p) {
                return new e.a(((kotlin.reflect.jvm.internal.impl.descriptors.d.b.p) b2).f37481a);
            }
            if (b2 instanceof s) {
                Method method2 = ((s) b2).f37483a;
                ap b3 = d2.b();
                at source2 = b3 != null ? b3.getSource() : null;
                at atVar2 = source2;
                if (!(source2 instanceof kotlin.reflect.jvm.internal.impl.load.java.c.a)) {
                    atVar2 = null;
                }
                kotlin.reflect.jvm.internal.impl.load.java.c.a aVar2 = (kotlin.reflect.jvm.internal.impl.load.java.c.a) atVar2;
                l b4 = aVar2 != null ? aVar2.b() : null;
                l lVar = b4;
                if (!(b4 instanceof s)) {
                    lVar = null;
                }
                s sVar = (s) lVar;
                if (sVar != null) {
                    method = sVar.f37483a;
                }
                return new e.b(method2, method);
            }
            throw new ab("Incorrect resolution sequence for Java field " + d2 + " (source = " + b2 + ')');
        }
        ao a3 = d2.a();
        p.a(a3);
        d.e c2 = c(a3);
        ap b5 = d2.b();
        if (b5 != null) {
            eVar = c(b5);
        }
        return new e.d(c2, eVar);
    }
}
