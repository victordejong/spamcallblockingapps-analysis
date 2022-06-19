package kotlin.reflect.jvm.internal;

import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.AbstractC18645d;
import kotlin.reflect.jvm.internal.AbstractC18654e;
import kotlin.reflect.jvm.internal.impl.builtins.EnumC18946h;
import kotlin.reflect.jvm.internal.impl.builtins.p544a.C18890a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19018ao;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19019ap;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.C19100j;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.C19111m;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.C19114p;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.C19117s;
import kotlin.reflect.jvm.internal.impl.load.java.C19521t;
import kotlin.reflect.jvm.internal.impl.load.java.C19588x;
import kotlin.reflect.jvm.internal.impl.load.java.p559b.C19369c;
import kotlin.reflect.jvm.internal.impl.load.java.p559b.C19372f;
import kotlin.reflect.jvm.internal.impl.load.java.p559b.C19375g;
import kotlin.reflect.jvm.internal.impl.load.java.p560c.AbstractC19385a;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19657t;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18816e;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.AbstractC18851e;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.C18859h;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p;
import kotlin.reflect.jvm.internal.impl.resolve.C19762c;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
import kotlin.reflect.jvm.internal.impl.resolve.C19810e;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.resolve.p565c.EnumC19767d;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19903c;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.C19933j;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0002J\u0012\u0010\u000e\u001a\u00020\u00042\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u0007J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\f\u001a\u00020\u0014H\u0002J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u0006\u0012\u0002\b\u00030\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u001c"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;", "", "()V", "JAVA_LANG_VOID", "Lkotlin/reflect/jvm/internal/impl/name/ClassId;", "primitiveType", "Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;", "Ljava/lang/Class;", "getPrimitiveType", "(Ljava/lang/Class;)Lorg/jetbrains/kotlin/builtins/PrimitiveType;", "isKnownBuiltInFunction", "", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "mapJvmClassToKotlinClassId", "klass", "mapJvmFunctionSignature", "Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;", "mapName", "", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;", "mapPropertySignature", "Lkotlin/reflect/jvm/internal/JvmPropertySignature;", "possiblyOverriddenProperty", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "mapSignature", "Lkotlin/reflect/jvm/internal/JvmFunctionSignature;", "possiblySubstitutedFunction", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.ah */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/ah.class */
public final class C18632ah {

    /* renamed from: a */
    static final C18960a f63701a;

    /* renamed from: b */
    public static final C18632ah f63702b = new C18632ah();

    static {
        C18960a m2754a = C18960a.m2754a(new C18961b("java.lang.Void"));
        C18524p.m3843b(m2754a, "ClassId.topLevel(FqName(\"java.lang.Void\"))");
        f63701a = m2754a;
    }

    private C18632ah() {
    }

    /* renamed from: a */
    private static String m3773a(AbstractC19039b abstractC19039b) {
        String m1967d = C19588x.m1967d(abstractC19039b);
        String str = m1967d;
        if (m1967d == null) {
            if (abstractC19039b instanceof AbstractC19018ao) {
                String m2721a = C19756a.m1536a(abstractC19039b).getName().m2721a();
                C18524p.m3843b(m2721a, "descriptor.propertyIfAccessor.name.asString()");
                return C19521t.m2046c(m2721a);
            } else if (abstractC19039b instanceof AbstractC19019ap) {
                String m2721a2 = C19756a.m1536a(abstractC19039b).getName().m2721a();
                C18524p.m3843b(m2721a2, "descriptor.propertyIfAccessor.name.asString()");
                return C19521t.m2045d(m2721a2);
            } else {
                str = abstractC19039b.getName().m2721a();
                C18524p.m3843b(str, "descriptor.name.asString()");
            }
        }
        return str;
    }

    /* renamed from: a */
    public static EnumC18946h m3775a(Class<?> cls) {
        if (cls.isPrimitive()) {
            EnumC19767d enumC19767d = EnumC19767d.get(cls.getSimpleName());
            C18524p.m3843b(enumC19767d, "JvmPrimitiveType.get(simpleName)");
            return enumC19767d.getPrimitiveType();
        }
        return null;
    }

    /* renamed from: b */
    private static boolean m3771b(AbstractC19219w abstractC19219w) {
        C18966e c18966e;
        if (C19762c.m1512b(abstractC19219w) || C19762c.m1515a(abstractC19219w)) {
            return true;
        }
        C18966e name = abstractC19219w.getName();
        C18890a.C18891a c18891a = C18890a.f64446a;
        c18966e = C18890a.f64447d;
        return C18524p.m3850a(name, c18966e) && abstractC19219w.getValueParameters().isEmpty();
    }

    /* renamed from: c */
    private static AbstractC18645d.C18653e m3770c(AbstractC19219w abstractC19219w) {
        return new AbstractC18645d.C18653e(new AbstractC18851e.C18853b(m3773a((AbstractC19039b) abstractC19219w), C19657t.m1848a(abstractC19219w, false, false, 1)));
    }

    /* renamed from: a */
    public final AbstractC18645d m3772a(AbstractC19219w possiblySubstitutedFunction) {
        Method method;
        C18524p.m3840d(possiblySubstitutedFunction, "possiblySubstitutedFunction");
        AbstractC19039b m1481a = C19807d.m1481a(possiblySubstitutedFunction);
        C18524p.m3843b(m1481a, "DescriptorUtils.unwrapFa…siblySubstitutedFunction)");
        AbstractC19219w original = ((AbstractC19219w) m1481a).getOriginal();
        C18524p.m3843b(original, "DescriptorUtils.unwrapFa…titutedFunction).original");
        if (original instanceof AbstractC19903c) {
            AbstractC19903c abstractC19903c = (AbstractC19903c) original;
            AbstractC19705p k = abstractC19903c.mo1276k();
            if (k instanceof C18702a.C18741h) {
                C18859h c18859h = C18859h.f64440a;
                AbstractC18851e.C18853b m2921a = C18859h.m2921a((C18702a.C18741h) k, abstractC19903c.ao_(), abstractC19903c.ap_());
                if (m2921a != null) {
                    return new AbstractC18645d.C18653e(m2921a);
                }
            }
            if (k instanceof C18702a.C18720c) {
                C18859h c18859h2 = C18859h.f64440a;
                AbstractC18851e.C18853b m2922a = C18859h.m2922a((C18702a.C18720c) k, abstractC19903c.ao_(), abstractC19903c.ap_());
                if (m2922a != null) {
                    AbstractC19193k containingDeclaration = possiblySubstitutedFunction.getContainingDeclaration();
                    C18524p.m3843b(containingDeclaration, "possiblySubstitutedFunction.containingDeclaration");
                    return C19810e.m1444a(containingDeclaration) ? new AbstractC18645d.C18653e(m2922a) : new AbstractC18645d.C18652d(m2922a);
                }
            }
            return m3770c(original);
        } else if (original instanceof C19372f) {
            AbstractC19026at source = ((C19372f) original).getSource();
            AbstractC19026at abstractC19026at = source;
            if (!(source instanceof AbstractC19385a)) {
                abstractC19026at = null;
            }
            AbstractC19385a abstractC19385a = (AbstractC19385a) abstractC19026at;
            C19117s mo2237b = abstractC19385a != null ? abstractC19385a.mo2237b() : null;
            if (!(mo2237b instanceof C19117s)) {
                mo2237b = null;
            }
            C19117s c19117s = mo2237b;
            if (c19117s != null && (method = c19117s.f64842a) != null) {
                return new AbstractC18645d.C18651c(method);
            }
            throw new C18620ab("Incorrect resolution sequence for Java method ".concat(String.valueOf(original)));
        } else if (!(original instanceof C19369c)) {
            if (m3771b(original)) {
                return m3770c(original);
            }
            throw new C18620ab("Unknown origin of " + original + " (" + original.getClass() + ')');
        } else {
            AbstractC19026at source2 = ((C19369c) original).getSource();
            AbstractC19026at abstractC19026at2 = source2;
            if (!(source2 instanceof AbstractC19385a)) {
                abstractC19026at2 = null;
            }
            AbstractC19385a abstractC19385a2 = (AbstractC19385a) abstractC19026at2;
            C19100j c19100j = null;
            if (abstractC19385a2 != null) {
                c19100j = abstractC19385a2.mo2237b();
            }
            if (c19100j instanceof C19111m) {
                return new AbstractC18645d.C18649b(c19100j.f64838a);
            }
            if (c19100j instanceof C19100j) {
                C19100j c19100j2 = c19100j;
                if (c19100j2.f64826a.isAnnotation()) {
                    return new AbstractC18645d.C18646a(c19100j2.f64826a);
                }
            }
            throw new C18620ab("Incorrect resolution sequence for Java constructor " + original + " (" + c19100j + ')');
        }
    }

    /* renamed from: a */
    public final AbstractC18654e m3774a(AbstractC19017an possiblyOverriddenProperty) {
        C18524p.m3840d(possiblyOverriddenProperty, "possiblyOverriddenProperty");
        AbstractC19039b m1481a = C19807d.m1481a(possiblyOverriddenProperty);
        C18524p.m3843b(m1481a, "DescriptorUtils.unwrapFa…ssiblyOverriddenProperty)");
        AbstractC19017an mo2621d = ((AbstractC19017an) m1481a).mo2621d();
        C18524p.m3843b(mo2621d, "DescriptorUtils.unwrapFa…rriddenProperty).original");
        AbstractC18645d.C18653e c18653e = null;
        if (mo2621d instanceof C19933j) {
            C19933j c19933j = (C19933j) mo2621d;
            C18702a.C18754m c18754m = c19933j.f66208g;
            C18702a.C18754m c18754m2 = c18754m;
            AbstractC19683h.C19690e<C18702a.C18754m, C18827a.C18835c> c19690e = C18827a.f64331d;
            C18524p.m3843b(c19690e, "JvmProtoBuf.propertySignature");
            C18827a.C18835c c18835c = (C18827a.C18835c) C18816e.m3057a(c18754m2, c19690e);
            if (c18835c != null) {
                return new AbstractC18654e.C18657c(mo2621d, c18754m, c18835c, c19933j.f66209h, c19933j.f66210i);
            }
        } else if (mo2621d instanceof C19375g) {
            AbstractC19026at source = ((C19375g) mo2621d).getSource();
            AbstractC19026at abstractC19026at = source;
            if (!(source instanceof AbstractC19385a)) {
                abstractC19026at = null;
            }
            AbstractC19385a abstractC19385a = (AbstractC19385a) abstractC19026at;
            C19117s mo2237b = abstractC19385a != null ? abstractC19385a.mo2237b() : null;
            if (mo2237b instanceof C19114p) {
                return new AbstractC18654e.C18655a(mo2237b.f64840a);
            }
            if (!(mo2237b instanceof C19117s)) {
                throw new C18620ab("Incorrect resolution sequence for Java field " + mo2621d + " (source = " + mo2237b + ')');
            }
            Method method = mo2237b.f64842a;
            AbstractC19019ap mo2623b = mo2621d.mo2623b();
            AbstractC19385a source2 = mo2623b != null ? mo2623b.getSource() : null;
            AbstractC19385a abstractC19385a2 = source2;
            if (!(source2 instanceof AbstractC19385a)) {
                abstractC19385a2 = null;
            }
            AbstractC19385a abstractC19385a3 = abstractC19385a2;
            C19117s mo2237b2 = abstractC19385a3 != null ? abstractC19385a3.mo2237b() : null;
            C19117s c19117s = mo2237b2;
            if (!(mo2237b2 instanceof C19117s)) {
                c19117s = null;
            }
            C19117s c19117s2 = c19117s;
            Method method2 = null;
            if (c19117s2 != null) {
                method2 = c19117s2.f64842a;
            }
            return new AbstractC18654e.C18656b(method, method2);
        }
        AbstractC19018ao mo2635a = mo2621d.mo2635a();
        C18524p.m3851a(mo2635a);
        AbstractC18645d.C18653e m3770c = m3770c(mo2635a);
        AbstractC19019ap mo2623b2 = mo2621d.mo2623b();
        if (mo2623b2 != null) {
            c18653e = m3770c(mo2623b2);
        }
        return new AbstractC18654e.C18658d(m3770c, c18653e);
    }
}
