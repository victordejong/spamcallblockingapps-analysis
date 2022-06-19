package kotlin.reflect.jvm.internal;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.C18458a;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18521m;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.p532h.C18425p;
import kotlin.reflect.AbstractC18551c;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KProperty;
import kotlin.reflect.KType;
import kotlin.reflect.jvm.internal.AbstractC20033k;
import kotlin.reflect.jvm.internal.C18622ad;
import kotlin.reflect.jvm.internal.impl.builtins.C18924b;
import kotlin.reflect.jvm.internal.impl.builtins.C18925c;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.builtins.EnumC18946h;
import kotlin.reflect.jvm.internal.impl.builtins.p544a.C18894c;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19065c;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19192j;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.C19216v;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19127e;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a.C19076f;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a.C19081j;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.C19088b;
import kotlin.reflect.jvm.internal.impl.load.kotlin.p562a.C19608a;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.EnumC18698d;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18816e;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19963t;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import org.apache.commons.lang3.C20753d;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��º\u0001\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0001\n\u0002\b\u0003\b��\u0018��*\b\b��\u0010\u0001*\u00020\u00022\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00010\u00042\u00020\u00052\u00020\u0006:\u0001bB\u0013\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\b¢\u0006\u0002\u0010\tJ\u0013\u0010Q\u001a\u00020&2\b\u0010R\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\u0016\u0010S\u001a\b\u0012\u0004\u0012\u00020T0\u00142\u0006\u0010U\u001a\u00020VH\u0016J\u0012\u0010W\u001a\u0004\u0018\u00010X2\u0006\u0010Y\u001a\u00020ZH\u0016J\u0016\u0010[\u001a\b\u0012\u0004\u0012\u00020X0\u00142\u0006\u0010U\u001a\u00020VH\u0016J\b\u0010\\\u001a\u00020ZH\u0016J\u0012\u0010]\u001a\u00020&2\b\u0010^\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010_\u001a\u00020`H\u0002J\b\u0010a\u001a\u00020>H\u0016R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R \u0010\u0018\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00190\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0017R3\u0010\u001b\u001a$\u0012 \u0012\u001e \u001e*\u000e\u0018\u00010\u001dR\b\u0012\u0004\u0012\u00028��0��0\u001dR\b\u0012\u0004\u0012\u00028��0��0\u001c¢\u0006\b\n��\u001a\u0004\b\u001f\u0010 R\u0014\u0010!\u001a\u00020\"8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0014\u0010%\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b%\u0010'R\u0014\u0010(\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010'R\u0014\u0010)\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b)\u0010'R\u0014\u0010*\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b*\u0010'R\u0014\u0010+\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b+\u0010'R\u0014\u0010,\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b,\u0010'R\u0014\u0010-\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b-\u0010'R\u0014\u0010.\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b.\u0010'R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\bX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b/\u00100R\u0014\u00101\u001a\u0002028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b3\u00104R\u001e\u00105\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u0003060\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b7\u0010\u0017R\u001e\u00108\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b9\u0010\u0017R\u0016\u0010:\u001a\u0004\u0018\u00018��8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b;\u0010<R\u0016\u0010=\u001a\u0004\u0018\u00010>8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b?\u0010@R\"\u0010A\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028��0\u00040\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bB\u0010\u000eR\u0016\u0010C\u001a\u0004\u0018\u00010>8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bD\u0010@R\u0014\u0010E\u001a\u0002028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bF\u00104R\u001a\u0010G\u001a\b\u0012\u0004\u0012\u00020H0\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bI\u0010\u000eR\u001a\u0010J\u001a\b\u0012\u0004\u0012\u00020K0\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bL\u0010\u000eR\u0016\u0010M\u001a\u0004\u0018\u00010N8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bO\u0010P¨\u0006c"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/KClassImpl;", "T", "", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "Lkotlin/reflect/KClass;", "Lkotlin/reflect/jvm/internal/KClassifierImpl;", "Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;", "jClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "annotations", "", "", "getAnnotations", "()Ljava/util/List;", "classId", "Lkotlin/reflect/jvm/internal/impl/name/ClassId;", "getClassId", "()Lorg/jetbrains/kotlin/name/ClassId;", "constructorDescriptors", "", "Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;", "getConstructorDescriptors", "()Ljava/util/Collection;", "constructors", "Lkotlin/reflect/KFunction;", "getConstructors", "data", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "Lkotlin/reflect/jvm/internal/KClassImpl$Data;", "kotlin.jvm.PlatformType", "getData", "()Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;", "isAbstract", "", "()Z", "isCompanion", "isData", "isFinal", "isFun", "isInner", "isOpen", "isSealed", "getJClass", "()Ljava/lang/Class;", "memberScope", "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;", "getMemberScope$kotlin_reflection", "()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;", "members", "Lkotlin/reflect/KCallable;", "getMembers", "nestedClasses", "getNestedClasses", "objectInstance", "getObjectInstance", "()Ljava/lang/Object;", "qualifiedName", "", "getQualifiedName", "()Ljava/lang/String;", "sealedSubclasses", "getSealedSubclasses", "simpleName", "getSimpleName", "staticScope", "getStaticScope$kotlin_reflection", "supertypes", "Lkotlin/reflect/KType;", "getSupertypes", "typeParameters", "Lkotlin/reflect/KTypeParameter;", "getTypeParameters", "visibility", "Lkotlin/reflect/KVisibility;", "getVisibility", "()Lkotlin/reflect/KVisibility;", "equals", "other", "getFunctions", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "name", "Lkotlin/reflect/jvm/internal/impl/name/Name;", "getLocalProperty", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "index", "", "getProperties", "hashCode", "isInstance", "value", "reportUnresolvedClass", "", "toString", "Data", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.h */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h.class */
public final class C18670h<T> extends AbstractC20033k implements AbstractC18551c<T>, AbstractC18619aa, AbstractC20032j {

    /* renamed from: a */
    public final C18622ad.C18624b<C18670h<T>.C18671a> f63762a;

    /* renamed from: b */
    final Class<T> f63763b;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\b\u0086\u0004\u0018��2\u00060\u0001R\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0014\u0010N\u001a\u00020<2\n\u0010O\u001a\u0006\u0012\u0002\b\u00030PH\u0002R%\u0010\u0004\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR%\u0010\u000b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\n\u001a\u0004\b\f\u0010\bR%\u0010\u000e\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\n\u001a\u0004\b\u000f\u0010\bR!\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\n\u001a\u0004\b\u0014\u0010\u0015R-\u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00180\u00058FX\u0086\u0084\u0002¢\u0006\u0012\n\u0004\b\u001c\u0010\n\u0012\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\bR%\u0010\u001d\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010\n\u001a\u0004\b\u001e\u0010\bR%\u0010 \u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\n\u001a\u0004\b!\u0010\bR%\u0010#\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010\n\u001a\u0004\b$\u0010\bR\u001b\u0010&\u001a\u00020'8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b*\u0010\n\u001a\u0004\b(\u0010)R%\u0010+\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010\n\u001a\u0004\b,\u0010\bR%\u0010.\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u0010\n\u001a\u0004\b/\u0010\bR%\u00101\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u0003020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b4\u0010\n\u001a\u0004\b3\u0010\bR#\u00105\u001a\u0004\u0018\u00018��8FX\u0086\u0084\u0002¢\u0006\u0012\n\u0004\b9\u0010:\u0012\u0004\b6\u0010\u001a\u001a\u0004\b7\u00108R\u001d\u0010;\u001a\u0004\u0018\u00010<8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b?\u0010\n\u001a\u0004\b=\u0010>R)\u0010@\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028��020\u00128FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bB\u0010\n\u001a\u0004\bA\u0010\u0015R\u001d\u0010C\u001a\u0004\u0018\u00010<8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bE\u0010\n\u001a\u0004\bD\u0010>R!\u0010F\u001a\b\u0012\u0004\u0012\u00020G0\u00128FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bI\u0010\n\u001a\u0004\bH\u0010\u0015R!\u0010J\u001a\b\u0012\u0004\u0012\u00020K0\u00128FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bM\u0010\n\u001a\u0004\bL\u0010\u0015¨\u0006Q"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/KClassImpl$Data;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "(Lkotlin/reflect/jvm/internal/KClassImpl;)V", "allMembers", "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "getAllMembers", "()Ljava/util/Collection;", "allMembers$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "allNonStaticMembers", "getAllNonStaticMembers", "allNonStaticMembers$delegate", "allStaticMembers", "getAllStaticMembers", "allStaticMembers$delegate", "annotations", "", "", "getAnnotations", "()Ljava/util/List;", "annotations$delegate", "constructors", "Lkotlin/reflect/KFunction;", "getConstructors$annotations", "()V", "getConstructors", "constructors$delegate", "declaredMembers", "getDeclaredMembers", "declaredMembers$delegate", "declaredNonStaticMembers", "getDeclaredNonStaticMembers", "declaredNonStaticMembers$delegate", "declaredStaticMembers", "getDeclaredStaticMembers", "declaredStaticMembers$delegate", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;", "descriptor$delegate", "inheritedNonStaticMembers", "getInheritedNonStaticMembers", "inheritedNonStaticMembers$delegate", "inheritedStaticMembers", "getInheritedStaticMembers", "inheritedStaticMembers$delegate", "nestedClasses", "Lkotlin/reflect/KClass;", "getNestedClasses", "nestedClasses$delegate", "objectInstance", "getObjectInstance$annotations", "getObjectInstance", "()Ljava/lang/Object;", "objectInstance$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "qualifiedName", "", "getQualifiedName", "()Ljava/lang/String;", "qualifiedName$delegate", "sealedSubclasses", "getSealedSubclasses", "sealedSubclasses$delegate", "simpleName", "getSimpleName", "simpleName$delegate", "supertypes", "Lkotlin/reflect/KType;", "getSupertypes", "supertypes$delegate", "typeParameters", "Lkotlin/reflect/KTypeParameter;", "getTypeParameters", "typeParameters$delegate", "calculateLocalClassName", "jClass", "Ljava/lang/Class;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.h$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a.class */
    public final class C18671a extends AbstractC20033k.AbstractC20035b {

        /* renamed from: a */
        static final /* synthetic */ KProperty[] f63764a = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18671a.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18671a.class), "annotations", "getAnnotations()Ljava/util/List;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18671a.class), "simpleName", "getSimpleName()Ljava/lang/String;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18671a.class), "qualifiedName", "getQualifiedName()Ljava/lang/String;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18671a.class), "constructors", "getConstructors()Ljava/util/Collection;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18671a.class), "nestedClasses", "getNestedClasses()Ljava/util/Collection;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18671a.class), "objectInstance", "getObjectInstance()Ljava/lang/Object;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18671a.class), "typeParameters", "getTypeParameters()Ljava/util/List;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18671a.class), "supertypes", "getSupertypes()Ljava/util/List;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18671a.class), "sealedSubclasses", "getSealedSubclasses()Ljava/util/List;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18671a.class), "declaredNonStaticMembers", "getDeclaredNonStaticMembers()Ljava/util/Collection;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18671a.class), "declaredStaticMembers", "getDeclaredStaticMembers()Ljava/util/Collection;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18671a.class), "inheritedNonStaticMembers", "getInheritedNonStaticMembers()Ljava/util/Collection;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18671a.class), "inheritedStaticMembers", "getInheritedStaticMembers()Ljava/util/Collection;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18671a.class), "allNonStaticMembers", "getAllNonStaticMembers()Ljava/util/Collection;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18671a.class), "allStaticMembers", "getAllStaticMembers()Ljava/util/Collection;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18671a.class), "declaredMembers", "getDeclaredMembers()Ljava/util/Collection;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18671a.class), "allMembers", "getAllMembers()Ljava/util/Collection;"))};

        /* renamed from: k */
        private final C18622ad.C18623a f63772k = C18622ad.m3795b(new C18680i());

        /* renamed from: b */
        final C18622ad.C18623a f63765b = C18622ad.m3795b(new C18675d());

        /* renamed from: c */
        final C18622ad.C18623a f63766c = C18622ad.m3795b(new C18687p());

        /* renamed from: d */
        final C18622ad.C18623a f63767d = C18622ad.m3795b(new C18685n());

        /* renamed from: e */
        public final C18622ad.C18623a f63768e = C18622ad.m3795b(new C18676e());

        /* renamed from: l */
        private final C18622ad.C18623a f63773l = C18622ad.m3795b(new C18683l());

        /* renamed from: m */
        private final C18622ad.C18624b f63774m = C18622ad.m3796a(new C18684m());

        /* renamed from: n */
        private final C18622ad.C18623a f63775n = C18622ad.m3795b(new C18688q());

        /* renamed from: f */
        final C18622ad.C18623a f63769f = C18622ad.m3795b(new KClassImpl$Data$supertypes$2(this));

        /* renamed from: o */
        private final C18622ad.C18623a f63776o = C18622ad.m3795b(new C18686o());

        /* renamed from: p */
        private final C18622ad.C18623a f63777p = C18622ad.m3795b(new C18678g());

        /* renamed from: q */
        private final C18622ad.C18623a f63778q = C18622ad.m3795b(new C18679h());

        /* renamed from: r */
        private final C18622ad.C18623a f63779r = C18622ad.m3795b(new C18681j());

        /* renamed from: s */
        private final C18622ad.C18623a f63780s = C18622ad.m3795b(new C18682k());

        /* renamed from: t */
        private final C18622ad.C18623a f63781t = C18622ad.m3795b(new C18673b());

        /* renamed from: g */
        final C18622ad.C18623a f63770g = C18622ad.m3795b(new C18674c());

        /* renamed from: u */
        private final C18622ad.C18623a f63782u = C18622ad.m3795b(new C18677f());

        /* renamed from: v */
        private final C18622ad.C18623a f63783v = C18622ad.m3795b(new C18672a());

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u001e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002 \u0003*\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, m4298d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "kotlin.jvm.PlatformType", "T", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.h$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$a.class */
        public static final class C18672a extends AbstractC18526r implements Function0<List<? extends AbstractC18659f<?>>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C18672a() {
                super(0);
                C18671a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends AbstractC18659f<?>> invoke() {
                return C18282n.m4135b((Collection) C18671a.this.m3710c(), (Iterable) ((Collection) C18671a.this.f63770g.invoke()));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u001e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002 \u0003*\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, m4298d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "kotlin.jvm.PlatformType", "T", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.h$a$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$b.class */
        public static final class C18673b extends AbstractC18526r implements Function0<List<? extends AbstractC18659f<?>>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C18673b() {
                super(0);
                C18671a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends AbstractC18659f<?>> invoke() {
                return C18282n.m4135b((Collection) C18671a.this.m3712b(), (Iterable) C18671a.m3713a(C18671a.this));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u001e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002 \u0003*\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, m4298d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "kotlin.jvm.PlatformType", "T", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.h$a$c */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$c.class */
        public static final class C18674c extends AbstractC18526r implements Function0<List<? extends AbstractC18659f<?>>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C18674c() {
                super(0);
                C18671a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends AbstractC18659f<?>> invoke() {
                return C18282n.m4135b(C18671a.m3711b(C18671a.this), (Iterable) C18671a.m3709c(C18671a.this));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n��\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, m4298d2 = {"<anonymous>", "", "", "kotlin.jvm.PlatformType", "T", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.h$a$d */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$d.class */
        public static final class C18675d extends AbstractC18526r implements Function0<List<? extends Annotation>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C18675d() {
                super(0);
                C18671a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends Annotation> invoke() {
                return C18635aj.m3761a((AbstractC18975a) C18671a.this.m3715a());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\"\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0002 \u0004*\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0003*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, m4298d2 = {"<anonymous>", "", "Lkotlin/reflect/KFunction;", "T", "kotlin.jvm.PlatformType", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.h$a$e */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$e.class */
        public static final class C18676e extends AbstractC18526r implements Function0<List<? extends KFunction<? extends T>>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C18676e() {
                super(0);
                C18671a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Object invoke() {
                Collection<AbstractC19192j> mo1160b = C18670h.this.mo1160b();
                ArrayList arrayList = new ArrayList(C18282n.m4163a(mo1160b, 10));
                for (AbstractC19192j abstractC19192j : mo1160b) {
                    arrayList.add(new C20042l(C18670h.this, abstractC19192j));
                }
                return arrayList;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u001e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002 \u0003*\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, m4298d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "kotlin.jvm.PlatformType", "T", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.h$a$f */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$f.class */
        public static final class C18677f extends AbstractC18526r implements Function0<List<? extends AbstractC18659f<?>>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C18677f() {
                super(0);
                C18671a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends AbstractC18659f<?>> invoke() {
                return C18282n.m4135b((Collection) C18671a.this.m3712b(), (Iterable) C18671a.m3711b(C18671a.this));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n��\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u001e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002 \u0003*\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, m4298d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "kotlin.jvm.PlatformType", "T", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.h$a$g */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$g.class */
        public static final class C18678g extends AbstractC18526r implements Function0<Collection<? extends AbstractC18659f<?>>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C18678g() {
                super(0);
                C18671a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Collection<? extends AbstractC18659f<?>> invoke() {
                return C18670h.this.m1178a(C18670h.this.m3719g(), AbstractC20033k.EnumC20037c.DECLARED);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n��\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u001e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002 \u0003*\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, m4298d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "kotlin.jvm.PlatformType", "T", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.h$a$h */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$h.class */
        public static final class C18679h extends AbstractC18526r implements Function0<Collection<? extends AbstractC18659f<?>>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C18679h() {
                super(0);
                C18671a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Collection<? extends AbstractC18659f<?>> invoke() {
                return C18670h.this.m1178a(C18670h.this.m3718h(), AbstractC20033k.EnumC20037c.DECLARED);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0003*\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;", "kotlin.jvm.PlatformType", "T", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.h$a$i */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$i.class */
        public static final class C18680i extends AbstractC18526r implements Function0<AbstractC19070d> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C18680i() {
                super(0);
                C18671a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ AbstractC19070d invoke() {
                C18960a m3716l = C18670h.this.m3716l();
                C19081j d = C18670h.this.f63762a.invoke().m1174d();
                AbstractC19070d m1261a = m3716l.f64682a ? d.f64802b.m1261a(m3716l) : C19216v.m2497b(d.f64802b.f66250b, m3716l);
                if (m1261a != null) {
                    return m1261a;
                }
                C18670h.m3723b(C18670h.this);
                throw null;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n��\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u001e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002 \u0003*\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, m4298d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "kotlin.jvm.PlatformType", "T", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.h$a$j */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$j.class */
        public static final class C18681j extends AbstractC18526r implements Function0<Collection<? extends AbstractC18659f<?>>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C18681j() {
                super(0);
                C18671a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Collection<? extends AbstractC18659f<?>> invoke() {
                return C18670h.this.m1178a(C18670h.this.m3719g(), AbstractC20033k.EnumC20037c.INHERITED);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n��\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u001e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002 \u0003*\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, m4298d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "kotlin.jvm.PlatformType", "T", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.h$a$k */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$k.class */
        public static final class C18682k extends AbstractC18526r implements Function0<Collection<? extends AbstractC18659f<?>>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C18682k() {
                super(0);
                C18671a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Collection<? extends AbstractC18659f<?>> invoke() {
                return C18670h.this.m1178a(C18670h.this.m3718h(), AbstractC20033k.EnumC20037c.INHERITED);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0010��\u001a6\u0012\u0014\u0012\u0012\u0012\u000e\b\u0001\u0012\n \u0004*\u0004\u0018\u00010\u00030\u00030\u0002 \u0004*\u001a\u0012\u0014\u0012\u0012\u0012\u000e\b\u0001\u0012\n \u0004*\u0004\u0018\u00010\u00030\u00030\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0005*\u00020\u0003H\n¢\u0006\u0002\b\u0006"}, m4298d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KClassImpl;", "", "kotlin.jvm.PlatformType", "T", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.h$a$l */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$l.class */
        public static final class C18683l extends AbstractC18526r implements Function0<List<? extends C18670h<? extends Object>>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C18683l() {
                super(0);
                C18671a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends C18670h<? extends Object>> invoke() {
                Collection m1411a = AbstractC19841k.C19842a.m1411a(C18671a.this.m3715a().getUnsubstitutedInnerClassesScope(), null, null, 3);
                ArrayList arrayList = new ArrayList();
                for (T t : m1411a) {
                    if (!C19807d.m1457i((AbstractC19193k) t)) {
                        arrayList.add(t);
                    }
                }
                ArrayList<AbstractC19193k> arrayList2 = arrayList;
                ArrayList arrayList3 = new ArrayList();
                for (AbstractC19193k abstractC19193k : arrayList2) {
                    Objects.requireNonNull(abstractC19193k, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                    Class<?> m3758a = C18635aj.m3758a((AbstractC19070d) abstractC19193k);
                    C18670h c18670h = m3758a != null ? new C18670h(m3758a) : null;
                    if (c18670h != null) {
                        arrayList3.add(c18670h);
                    }
                }
                return arrayList3;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0002\u0010��\u001a\u0004\u0018\u0001H\u0001\"\b\b��\u0010\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, m4298d2 = {"<anonymous>", "T", "", "invoke", "()Ljava/lang/Object;"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.h$a$m */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$m.class */
        public static final class C18684m extends AbstractC18526r implements Function0<T> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C18684m() {
                super(0);
                C18671a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final T invoke() {
                AbstractC19070d m3715a = C18671a.this.m3715a();
                if (m3715a.getKind() != EnumC19127e.OBJECT) {
                    return null;
                }
                T t = (T) ((!m3715a.isCompanionObject() || C18925c.m2863a(C18924b.f64519a, m3715a)) ? C18670h.this.f63763b.getDeclaredField("INSTANCE") : C18670h.this.f63763b.getEnclosingClass().getDeclaredField(m3715a.getName().m2721a())).get(null);
                Objects.requireNonNull(t, "null cannot be cast to non-null type T");
                return t;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010��\n��\u0010��\u001a\u0004\u0018\u00010\u0001\"\b\b��\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "T", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.h$a$n */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$n.class */
        public static final class C18685n extends AbstractC18526r implements Function0<String> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C18685n() {
                super(0);
                C18671a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ String invoke() {
                if (C18670h.this.f63763b.isAnonymousClass()) {
                    return null;
                }
                C18960a m3716l = C18670h.this.m3716l();
                if (!m3716l.f64682a) {
                    return m3716l.m2748f().m2746a();
                }
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a&\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u0002H\u00030\u0002 \u0004*\u0012\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u0002H\u00030\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0003*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, m4298d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KClassImpl;", "T", "kotlin.jvm.PlatformType", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.h$a$o */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$o.class */
        public static final class C18686o extends AbstractC18526r implements Function0<List<? extends C18670h<? extends T>>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C18686o() {
                super(0);
                C18671a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Object invoke() {
                Collection<AbstractC19070d> sealedSubclasses = C18671a.this.m3715a().getSealedSubclasses();
                C18524p.m3843b(sealedSubclasses, "descriptor.sealedSubclasses");
                Collection<AbstractC19070d> collection = sealedSubclasses;
                ArrayList arrayList = new ArrayList();
                for (AbstractC19070d abstractC19070d : collection) {
                    Objects.requireNonNull(abstractC19070d, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                    Class<?> m3758a = C18635aj.m3758a(abstractC19070d);
                    C18670h c18670h = m3758a != null ? new C18670h(m3758a) : null;
                    if (c18670h != null) {
                        arrayList.add(c18670h);
                    }
                }
                return arrayList;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010��\n��\u0010��\u001a\u0004\u0018\u00010\u0001\"\b\b��\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "T", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.h$a$p */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$p.class */
        public static final class C18687p extends AbstractC18526r implements Function0<String> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C18687p() {
                super(0);
                C18671a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ String invoke() {
                if (C18670h.this.f63763b.isAnonymousClass()) {
                    return null;
                }
                C18960a m3716l = C18670h.this.m3716l();
                if (m3716l.f64682a) {
                    return C18671a.m3714a(C18670h.this.f63763b);
                }
                String m2721a = m3716l.m2751c().m2721a();
                C18524p.m3843b(m2721a, "classId.shortClassName.asString()");
                return m2721a;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, m4298d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KTypeParameterImpl;", "kotlin.jvm.PlatformType", "T", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.h$a$q */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$q.class */
        public static final class C18688q extends AbstractC18526r implements Function0<List<? extends C20100y>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C18688q() {
                super(0);
                C18671a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends C20100y> invoke() {
                List<TypeParameterDescriptor> declaredTypeParameters = C18671a.this.m3715a().getDeclaredTypeParameters();
                C18524p.m3843b(declaredTypeParameters, "descriptor.declaredTypeParameters");
                List<TypeParameterDescriptor> list = declaredTypeParameters;
                ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list, 10));
                for (TypeParameterDescriptor descriptor : list) {
                    C18524p.m3843b(descriptor, "descriptor");
                    arrayList.add(new C20100y(C18670h.this, descriptor));
                }
                return arrayList;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18671a() {
            super();
            C18670h.this = r6;
        }

        /* renamed from: a */
        public static final /* synthetic */ String m3714a(Class cls) {
            String b;
            String c;
            String c2;
            String name = cls.getSimpleName();
            Method enclosingMethod = cls.getEnclosingMethod();
            if (enclosingMethod != null) {
                C18524p.m3843b(name, "name");
                c2 = C18425p.m3916c(name, enclosingMethod.getName() + C20753d.f67243b, name);
                return c2;
            }
            Constructor<?> enclosingConstructor = cls.getEnclosingConstructor();
            if (enclosingConstructor == null) {
                C18524p.m3843b(name, "name");
                b = C18425p.m3923b(name, '$', name);
                return b;
            }
            C18524p.m3843b(name, "name");
            c = C18425p.m3916c(name, enclosingConstructor.getName() + C20753d.f67243b, name);
            return c;
        }

        /* renamed from: a */
        public static final /* synthetic */ Collection m3713a(C18671a c18671a) {
            return (Collection) c18671a.f63779r.invoke();
        }

        /* renamed from: b */
        public static final /* synthetic */ Collection m3711b(C18671a c18671a) {
            return (Collection) c18671a.f63778q.invoke();
        }

        /* renamed from: c */
        public static final /* synthetic */ Collection m3709c(C18671a c18671a) {
            return (Collection) c18671a.f63780s.invoke();
        }

        /* renamed from: a */
        public final AbstractC19070d m3715a() {
            return (AbstractC19070d) this.f63772k.invoke();
        }

        /* renamed from: b */
        public final Collection<AbstractC18659f<?>> m3712b() {
            return (Collection) this.f63777p.invoke();
        }

        /* renamed from: c */
        public final Collection<AbstractC18659f<?>> m3710c() {
            return (Collection) this.f63781t.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u001e \u0004*\u000e\u0018\u00010\u0001R\b\u0012\u0004\u0012\u0002H\u00030\u00020\u0001R\b\u0012\u0004\u0012\u0002H\u00030\u0002\"\b\b��\u0010\u0003*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/KClassImpl$Data;", "Lkotlin/reflect/jvm/internal/KClassImpl;", "T", "kotlin.jvm.PlatformType", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.h$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$b.class */
    public static final class C18689b extends AbstractC18526r implements Function0<C18670h<T>.C18671a> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18689b() {
            super(0);
            C18670h.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Object invoke() {
            return new C18671a();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\b\b"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "T", "", "p1", "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;", "p2", "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.h$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$c.class */
    static final /* synthetic */ class C18690c extends C18521m implements Function2<C19963t, C18702a.C18754m, AbstractC19017an> {

        /* renamed from: a */
        public static final C18690c f63802a = new C18690c();

        C18690c() {
            super(2);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e, kotlin.reflect.KCallable
        public final String getName() {
            return "loadProperty";
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final KDeclarationContainer getOwner() {
            return C18496ac.m3882b(C19963t.class);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final String getSignature() {
            return "loadProperty(Lorg/jetbrains/kotlin/metadata/ProtoBuf$Property;)Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;";
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* synthetic */ AbstractC19017an invoke(C19963t c19963t, C18702a.C18754m c18754m) {
            C19963t p1 = c19963t;
            C18702a.C18754m p2 = c18754m;
            C18524p.m3840d(p1, "p1");
            C18524p.m3840d(p2, "p2");
            return p1.m1243a(p2);
        }
    }

    public C18670h(Class<T> jClass) {
        C18524p.m3840d(jClass, "jClass");
        this.f63763b = jClass;
        C18622ad.C18624b<C18670h<T>.C18671a> m3796a = C18622ad.m3796a(new C18689b());
        C18524p.m3843b(m3796a, "ReflectProperties.lazy { Data() }");
        this.f63762a = m3796a;
    }

    /* renamed from: b */
    public static final /* synthetic */ Void m3723b(C18670h c18670h) {
        C19608a c19608a;
        C19076f.C19077a c19077a = C19076f.f64794a;
        C19076f m2667a = C19076f.C19077a.m2667a(c18670h.f63763b);
        C19608a.EnumC19609a enumC19609a = (m2667a == null || (c19608a = m2667a.f64796c) == null) ? null : c19608a.f65675a;
        if (enumC19609a != null) {
            switch (C18691i.f63803a[enumC19609a.ordinal()]) {
                case 1:
                case 2:
                case 3:
                    throw new UnsupportedOperationException("Packages and file facades are not yet supported in Kotlin reflection. Meanwhile please use Java reflection to inspect this class: " + c18670h.f63763b);
                case 4:
                    throw new UnsupportedOperationException("This class is an internal synthetic class generated by the Kotlin compiler, such as an anonymous class for a lambda, a SAM wrapper, a callable reference, etc. It's not a Kotlin class or interface, so the reflection library has no idea what declarations does it have. Please use Java reflection to inspect this class: " + c18670h.f63763b);
                case 5:
                    throw new C18620ab("Unknown class: " + c18670h.f63763b + " (kind = " + enumC19609a + ')');
                case 6:
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
        throw new C18620ab("Unresolved class: " + c18670h.f63763b);
    }

    /* renamed from: k */
    public AbstractC19070d mo1121f() {
        return this.f63762a.invoke().m3715a();
    }

    /* renamed from: l */
    public final C18960a m3716l() {
        C18632ah c18632ah = C18632ah.f63702b;
        Class<T> klass = this.f63763b;
        C18524p.m3840d(klass, "klass");
        if (klass.isArray()) {
            Class<?> componentType = klass.getComponentType();
            C18524p.m3843b(componentType, "klass.componentType");
            EnumC18946h m3775a = C18632ah.m3775a(componentType);
            if (m3775a != null) {
                return new C18960a(C18954j.f64583m, m3775a.getArrayTypeName());
            }
            C18960a m2754a = C18960a.m2754a(C18954j.C18955a.f64654i.m2730c());
            C18524p.m3843b(m2754a, "ClassId.topLevel(Standar…s.FqNames.array.toSafe())");
            return m2754a;
        } else if (C18524p.m3850a(klass, Void.TYPE)) {
            return C18632ah.f63701a;
        } else {
            EnumC18946h m3775a2 = C18632ah.m3775a((Class<?>) klass);
            if (m3775a2 != null) {
                return new C18960a(C18954j.f64583m, m3775a2.getTypeName());
            }
            C18960a m2654e = C19088b.m2654e(klass);
            if (!m2654e.f64682a) {
                C18894c c18894c = C18894c.f64450a;
                C18961b m2748f = m2654e.m2748f();
                C18524p.m3843b(m2748f, "classId.asSingleFqName()");
                C18960a m2905a = C18894c.m2905a(m2748f);
                if (m2905a != null) {
                    return m2905a;
                }
            }
            return m2654e;
        }
    }

    @Override // kotlin.jvm.internal.AbstractC18514g
    /* renamed from: a */
    public final Class<T> mo1163a() {
        return this.f63763b;
    }

    @Override // kotlin.reflect.jvm.internal.AbstractC20033k
    /* renamed from: a */
    public final Collection<AbstractC19017an> mo1161a(C18966e name) {
        C18524p.m3840d(name, "name");
        return C18282n.m4135b((Collection) m3719g().getContributedVariables(name, EnumC18698d.FROM_REFLECTION), (Iterable) m3718h().getContributedVariables(name, EnumC18698d.FROM_REFLECTION));
    }

    @Override // kotlin.reflect.jvm.internal.AbstractC20033k
    /* renamed from: a */
    public final AbstractC19017an mo1162a(int i) {
        C18670h<T> c18670h;
        Class<?> declaringClass;
        C18670h<T> c18670h2 = this;
        while (true) {
            c18670h = c18670h2;
            if (!C18524p.m3850a((Object) c18670h.f63763b.getSimpleName(), (Object) "DefaultImpls") || (declaringClass = c18670h.f63763b.getDeclaringClass()) == null || !declaringClass.isInterface()) {
                break;
            }
            AbstractC18551c m3895a = C18458a.m3895a(declaringClass);
            Objects.requireNonNull(m3895a, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<*>");
            c18670h2 = (C18670h) m3895a;
        }
        AbstractC19070d mo1121f = c18670h.mo1121f();
        AbstractC19070d abstractC19070d = mo1121f;
        if (!(mo1121f instanceof DeserializedClassDescriptor)) {
            abstractC19070d = null;
        }
        DeserializedClassDescriptor deserializedClassDescriptor = (DeserializedClassDescriptor) abstractC19070d;
        if (deserializedClassDescriptor != null) {
            C18702a.C18715b c18715b = deserializedClassDescriptor.f66101a;
            AbstractC19683h.C19690e<C18702a.C18715b, List<C18702a.C18754m>> c19690e = C18827a.f64337j;
            C18524p.m3843b(c19690e, "JvmProtoBuf.classLocalVariable");
            C18702a.C18754m c18754m = (C18702a.C18754m) C18816e.m3056a(c18715b, c19690e, i);
            if (c18754m == null) {
                return null;
            }
            return (AbstractC19017an) C18635aj.m3767a(c18670h.f63763b, c18754m, deserializedClassDescriptor.f66103c.f66270b, deserializedClassDescriptor.f66103c.f66272d, deserializedClassDescriptor.f66102b, C18690c.f63802a);
        }
        return null;
    }

    @Override // kotlin.reflect.AbstractC18551c
    public final String an_() {
        return (String) this.f63762a.invoke().f63766c.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.AbstractC20033k
    /* renamed from: b */
    public final Collection<AbstractC19192j> mo1160b() {
        AbstractC19070d mo1121f = mo1121f();
        if (mo1121f.getKind() == EnumC19127e.INTERFACE || mo1121f.getKind() == EnumC19127e.OBJECT) {
            return C18297z.f63400a;
        }
        Collection<AbstractC19065c> constructors = mo1121f.getConstructors();
        C18524p.m3843b(constructors, "descriptor.constructors");
        return constructors;
    }

    @Override // kotlin.reflect.jvm.internal.AbstractC20033k
    /* renamed from: b */
    public final Collection<AbstractC19219w> mo1159b(C18966e name) {
        C18524p.m3840d(name, "name");
        return C18282n.m4135b((Collection) m3719g().getContributedFunctions(name, EnumC18698d.FROM_REFLECTION), (Iterable) m3718h().getContributedFunctions(name, EnumC18698d.FROM_REFLECTION));
    }

    @Override // kotlin.reflect.AbstractC18551c
    /* renamed from: c */
    public final String mo3722c() {
        return (String) this.f63762a.invoke().f63767d.invoke();
    }

    @Override // kotlin.reflect.AbstractC18551c
    /* renamed from: d */
    public final List<KType> mo3721d() {
        return (List) this.f63762a.invoke().f63769f.invoke();
    }

    @Override // kotlin.reflect.AbstractC18551c
    /* renamed from: e */
    public final boolean mo3720e() {
        return mo1121f().isData();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C18670h) && C18524p.m3850a(C18458a.m3891c(this), C18458a.m3891c((AbstractC18551c) obj));
    }

    /* renamed from: g */
    public final AbstractC19834h m3719g() {
        return mo1121f().getDefaultType().getMemberScope();
    }

    @Override // kotlin.reflect.AbstractC18550b
    public final List<Annotation> getAnnotations() {
        return (List) this.f63762a.invoke().f63765b.invoke();
    }

    /* renamed from: h */
    public final AbstractC19834h m3718h() {
        AbstractC19834h staticScope = mo1121f().getStaticScope();
        C18524p.m3843b(staticScope, "descriptor.staticScope");
        return staticScope;
    }

    public final int hashCode() {
        return C18458a.m3891c(this).hashCode();
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("class ");
        C18960a m3716l = m3716l();
        C18961b m2758a = m3716l.m2758a();
        C18524p.m3843b(m2758a, "classId.packageFqName");
        if (m2758a.f64686b.f64691a.isEmpty()) {
            str = "";
        } else {
            str = m2758a.m2746a() + ".";
        }
        String m2746a = m3716l.m2752b().m2746a();
        C18524p.m3843b(m2746a, "classId.relativeClassName.asString()");
        sb.append(str + C18425p.m3964a(m2746a, '.', '$', false));
        return sb.toString();
    }
}
