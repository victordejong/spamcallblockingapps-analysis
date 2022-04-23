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
import kotlin.a.n;
import kotlin.a.z;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KProperty;
import kotlin.reflect.KType;
import kotlin.reflect.jvm.internal.ad;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.d.a.f;
import kotlin.reflect.jvm.internal.impl.descriptors.v;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.load.kotlin.a.a;
import kotlin.reflect.jvm.internal.impl.protobuf.h;
import kotlin.reflect.jvm.internal.impl.resolve.e.k;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.t;
import kotlin.reflect.jvm.internal.k;
@Metadata(bv = {1, 0, 3}, d1 = {"��º\u0001\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0001\n\u0002\b\u0003\b��\u0018��*\b\b��\u0010\u0001*\u00020\u00022\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00010\u00042\u00020\u00052\u00020\u0006:\u0001bB\u0013\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\b¢\u0006\u0002\u0010\tJ\u0013\u0010Q\u001a\u00020&2\b\u0010R\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\u0016\u0010S\u001a\b\u0012\u0004\u0012\u00020T0\u00142\u0006\u0010U\u001a\u00020VH\u0016J\u0012\u0010W\u001a\u0004\u0018\u00010X2\u0006\u0010Y\u001a\u00020ZH\u0016J\u0016\u0010[\u001a\b\u0012\u0004\u0012\u00020X0\u00142\u0006\u0010U\u001a\u00020VH\u0016J\b\u0010\\\u001a\u00020ZH\u0016J\u0012\u0010]\u001a\u00020&2\b\u0010^\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010_\u001a\u00020`H\u0002J\b\u0010a\u001a\u00020>H\u0016R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R \u0010\u0018\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00190\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0017R3\u0010\u001b\u001a$\u0012 \u0012\u001e \u001e*\u000e\u0018\u00010\u001dR\b\u0012\u0004\u0012\u00028��0��0\u001dR\b\u0012\u0004\u0012\u00028��0��0\u001c¢\u0006\b\n��\u001a\u0004\b\u001f\u0010 R\u0014\u0010!\u001a\u00020\"8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0014\u0010%\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b%\u0010'R\u0014\u0010(\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010'R\u0014\u0010)\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b)\u0010'R\u0014\u0010*\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b*\u0010'R\u0014\u0010+\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b+\u0010'R\u0014\u0010,\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b,\u0010'R\u0014\u0010-\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b-\u0010'R\u0014\u0010.\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b.\u0010'R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\bX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b/\u00100R\u0014\u00101\u001a\u0002028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b3\u00104R\u001e\u00105\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u0003060\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b7\u0010\u0017R\u001e\u00108\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b9\u0010\u0017R\u0016\u0010:\u001a\u0004\u0018\u00018��8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b;\u0010<R\u0016\u0010=\u001a\u0004\u0018\u00010>8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b?\u0010@R\"\u0010A\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028��0\u00040\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bB\u0010\u000eR\u0016\u0010C\u001a\u0004\u0018\u00010>8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bD\u0010@R\u0014\u0010E\u001a\u0002028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bF\u00104R\u001a\u0010G\u001a\b\u0012\u0004\u0012\u00020H0\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bI\u0010\u000eR\u001a\u0010J\u001a\b\u0012\u0004\u0012\u00020K0\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bL\u0010\u000eR\u0016\u0010M\u001a\u0004\u0018\u00010N8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bO\u0010P¨\u0006c"}, d2 = {"Lkotlin/reflect/jvm/internal/KClassImpl;", "T", "", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "Lkotlin/reflect/KClass;", "Lkotlin/reflect/jvm/internal/KClassifierImpl;", "Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;", "jClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "annotations", "", "", "getAnnotations", "()Ljava/util/List;", "classId", "Lkotlin/reflect/jvm/internal/impl/name/ClassId;", "getClassId", "()Lorg/jetbrains/kotlin/name/ClassId;", "constructorDescriptors", "", "Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;", "getConstructorDescriptors", "()Ljava/util/Collection;", "constructors", "Lkotlin/reflect/KFunction;", "getConstructors", "data", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "Lkotlin/reflect/jvm/internal/KClassImpl$Data;", "kotlin.jvm.PlatformType", "getData", "()Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;", "isAbstract", "", "()Z", "isCompanion", "isData", "isFinal", "isFun", "isInner", "isOpen", "isSealed", "getJClass", "()Ljava/lang/Class;", "memberScope", "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;", "getMemberScope$kotlin_reflection", "()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;", "members", "Lkotlin/reflect/KCallable;", "getMembers", "nestedClasses", "getNestedClasses", "objectInstance", "getObjectInstance", "()Ljava/lang/Object;", "qualifiedName", "", "getQualifiedName", "()Ljava/lang/String;", "sealedSubclasses", "getSealedSubclasses", "simpleName", "getSimpleName", "staticScope", "getStaticScope$kotlin_reflection", "supertypes", "Lkotlin/reflect/KType;", "getSupertypes", "typeParameters", "Lkotlin/reflect/KTypeParameter;", "getTypeParameters", "visibility", "Lkotlin/reflect/KVisibility;", "getVisibility", "()Lkotlin/reflect/KVisibility;", "equals", "other", "getFunctions", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "name", "Lkotlin/reflect/jvm/internal/impl/name/Name;", "getLocalProperty", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "index", "", "getProperties", "hashCode", "isInstance", "value", "reportUnresolvedClass", "", "toString", "Data", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h.class */
public final class h<T> extends k implements kotlin.reflect.c<T>, aa, j {

    /* renamed from: a  reason: collision with root package name */
    public final ad.b<h<T>.a> f36936a;

    /* renamed from: b  reason: collision with root package name */
    final Class<T> f36937b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\b\u0086\u0004\u0018��2\u00060\u0001R\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0014\u0010N\u001a\u00020<2\n\u0010O\u001a\u0006\u0012\u0002\b\u00030PH\u0002R%\u0010\u0004\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR%\u0010\u000b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\n\u001a\u0004\b\f\u0010\bR%\u0010\u000e\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\n\u001a\u0004\b\u000f\u0010\bR!\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\n\u001a\u0004\b\u0014\u0010\u0015R-\u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00180\u00058FX\u0086\u0084\u0002¢\u0006\u0012\n\u0004\b\u001c\u0010\n\u0012\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\bR%\u0010\u001d\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010\n\u001a\u0004\b\u001e\u0010\bR%\u0010 \u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\n\u001a\u0004\b!\u0010\bR%\u0010#\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010\n\u001a\u0004\b$\u0010\bR\u001b\u0010&\u001a\u00020'8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b*\u0010\n\u001a\u0004\b(\u0010)R%\u0010+\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010\n\u001a\u0004\b,\u0010\bR%\u0010.\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u0010\n\u001a\u0004\b/\u0010\bR%\u00101\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u0003020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b4\u0010\n\u001a\u0004\b3\u0010\bR#\u00105\u001a\u0004\u0018\u00018��8FX\u0086\u0084\u0002¢\u0006\u0012\n\u0004\b9\u0010:\u0012\u0004\b6\u0010\u001a\u001a\u0004\b7\u00108R\u001d\u0010;\u001a\u0004\u0018\u00010<8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b?\u0010\n\u001a\u0004\b=\u0010>R)\u0010@\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028��020\u00128FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bB\u0010\n\u001a\u0004\bA\u0010\u0015R\u001d\u0010C\u001a\u0004\u0018\u00010<8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bE\u0010\n\u001a\u0004\bD\u0010>R!\u0010F\u001a\b\u0012\u0004\u0012\u00020G0\u00128FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bI\u0010\n\u001a\u0004\bH\u0010\u0015R!\u0010J\u001a\b\u0012\u0004\u0012\u00020K0\u00128FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bM\u0010\n\u001a\u0004\bL\u0010\u0015¨\u0006Q"}, d2 = {"Lkotlin/reflect/jvm/internal/KClassImpl$Data;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "(Lkotlin/reflect/jvm/internal/KClassImpl;)V", "allMembers", "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "getAllMembers", "()Ljava/util/Collection;", "allMembers$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "allNonStaticMembers", "getAllNonStaticMembers", "allNonStaticMembers$delegate", "allStaticMembers", "getAllStaticMembers", "allStaticMembers$delegate", "annotations", "", "", "getAnnotations", "()Ljava/util/List;", "annotations$delegate", "constructors", "Lkotlin/reflect/KFunction;", "getConstructors$annotations", "()V", "getConstructors", "constructors$delegate", "declaredMembers", "getDeclaredMembers", "declaredMembers$delegate", "declaredNonStaticMembers", "getDeclaredNonStaticMembers", "declaredNonStaticMembers$delegate", "declaredStaticMembers", "getDeclaredStaticMembers", "declaredStaticMembers$delegate", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;", "descriptor$delegate", "inheritedNonStaticMembers", "getInheritedNonStaticMembers", "inheritedNonStaticMembers$delegate", "inheritedStaticMembers", "getInheritedStaticMembers", "inheritedStaticMembers$delegate", "nestedClasses", "Lkotlin/reflect/KClass;", "getNestedClasses", "nestedClasses$delegate", "objectInstance", "getObjectInstance$annotations", "getObjectInstance", "()Ljava/lang/Object;", "objectInstance$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "qualifiedName", "", "getQualifiedName", "()Ljava/lang/String;", "qualifiedName$delegate", "sealedSubclasses", "getSealedSubclasses", "sealedSubclasses$delegate", "simpleName", "getSimpleName", "simpleName$delegate", "supertypes", "Lkotlin/reflect/KType;", "getSupertypes", "supertypes$delegate", "typeParameters", "Lkotlin/reflect/KTypeParameter;", "getTypeParameters", "typeParameters$delegate", "calculateLocalClassName", "jClass", "Ljava/lang/Class;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a.class */
    public final class a extends k.b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ KProperty[] f36938a = {ac.a(new aa(ac.b(a.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), ac.a(new aa(ac.b(a.class), "annotations", "getAnnotations()Ljava/util/List;")), ac.a(new aa(ac.b(a.class), "simpleName", "getSimpleName()Ljava/lang/String;")), ac.a(new aa(ac.b(a.class), "qualifiedName", "getQualifiedName()Ljava/lang/String;")), ac.a(new aa(ac.b(a.class), "constructors", "getConstructors()Ljava/util/Collection;")), ac.a(new aa(ac.b(a.class), "nestedClasses", "getNestedClasses()Ljava/util/Collection;")), ac.a(new aa(ac.b(a.class), "objectInstance", "getObjectInstance()Ljava/lang/Object;")), ac.a(new aa(ac.b(a.class), "typeParameters", "getTypeParameters()Ljava/util/List;")), ac.a(new aa(ac.b(a.class), "supertypes", "getSupertypes()Ljava/util/List;")), ac.a(new aa(ac.b(a.class), "sealedSubclasses", "getSealedSubclasses()Ljava/util/List;")), ac.a(new aa(ac.b(a.class), "declaredNonStaticMembers", "getDeclaredNonStaticMembers()Ljava/util/Collection;")), ac.a(new aa(ac.b(a.class), "declaredStaticMembers", "getDeclaredStaticMembers()Ljava/util/Collection;")), ac.a(new aa(ac.b(a.class), "inheritedNonStaticMembers", "getInheritedNonStaticMembers()Ljava/util/Collection;")), ac.a(new aa(ac.b(a.class), "inheritedStaticMembers", "getInheritedStaticMembers()Ljava/util/Collection;")), ac.a(new aa(ac.b(a.class), "allNonStaticMembers", "getAllNonStaticMembers()Ljava/util/Collection;")), ac.a(new aa(ac.b(a.class), "allStaticMembers", "getAllStaticMembers()Ljava/util/Collection;")), ac.a(new aa(ac.b(a.class), "declaredMembers", "getDeclaredMembers()Ljava/util/Collection;")), ac.a(new aa(ac.b(a.class), "allMembers", "getAllMembers()Ljava/util/Collection;"))};
        private final ad.a k = ad.b(new i());

        /* renamed from: b  reason: collision with root package name */
        final ad.a f36939b = ad.b(new d());

        /* renamed from: c  reason: collision with root package name */
        final ad.a f36940c = ad.b(new p());

        /* renamed from: d  reason: collision with root package name */
        final ad.a f36941d = ad.b(new n());
        public final ad.a e = ad.b(new e());
        private final ad.a l = ad.b(new l());
        private final ad.b m = ad.a(new m());
        private final ad.a n = ad.b(new q());
        final ad.a f = ad.b(new KClassImpl$Data$supertypes$2(this));
        private final ad.a o = ad.b(new o());
        private final ad.a p = ad.b(new g());
        private final ad.a q = ad.b(new C0624h());
        private final ad.a r = ad.b(new j());
        private final ad.a s = ad.b(new k());
        private final ad.a t = ad.b(new b());
        final ad.a g = ad.b(new c());
        private final ad.a u = ad.b(new f());
        private final ad.a v = ad.b(new C0623a());

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u001e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002 \u0003*\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "kotlin.jvm.PlatformType", "T", "", "invoke"}, k = 3, mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$a.class */
        static final class C0623a extends r implements Function0<List<? extends kotlin.reflect.jvm.internal.f<?>>> {
            C0623a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends kotlin.reflect.jvm.internal.f<?>> invoke() {
                return kotlin.a.n.b((Collection) a.this.c(), (Iterable) ((Collection) a.this.g.invoke()));
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u001e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002 \u0003*\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "kotlin.jvm.PlatformType", "T", "", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$b.class */
        static final class b extends r implements Function0<List<? extends kotlin.reflect.jvm.internal.f<?>>> {
            b() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends kotlin.reflect.jvm.internal.f<?>> invoke() {
                return kotlin.a.n.b((Collection) a.this.b(), (Iterable) a.a(a.this));
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u001e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002 \u0003*\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "kotlin.jvm.PlatformType", "T", "", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$c.class */
        static final class c extends r implements Function0<List<? extends kotlin.reflect.jvm.internal.f<?>>> {
            c() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends kotlin.reflect.jvm.internal.f<?>> invoke() {
                return kotlin.a.n.b(a.b(a.this), (Iterable) a.c(a.this));
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "", "kotlin.jvm.PlatformType", "T", "", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$d.class */
        static final class d extends r implements Function0<List<? extends Annotation>> {
            d() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends Annotation> invoke() {
                return aj.a((kotlin.reflect.jvm.internal.impl.descriptors.a.a) a.this.a());
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\"\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0002 \u0004*\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0003*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "Lkotlin/reflect/KFunction;", "T", "kotlin.jvm.PlatformType", "", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$e.class */
        static final class e extends r implements Function0<List<? extends KFunction<? extends T>>> {
            e() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Object invoke() {
                Collection<kotlin.reflect.jvm.internal.impl.descriptors.j> b2 = h.this.b();
                ArrayList arrayList = new ArrayList(kotlin.a.n.a(b2, 10));
                for (kotlin.reflect.jvm.internal.impl.descriptors.j jVar : b2) {
                    arrayList.add(new kotlin.reflect.jvm.internal.l(h.this, jVar));
                }
                return arrayList;
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u001e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002 \u0003*\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "kotlin.jvm.PlatformType", "T", "", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$f.class */
        static final class f extends r implements Function0<List<? extends kotlin.reflect.jvm.internal.f<?>>> {
            f() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends kotlin.reflect.jvm.internal.f<?>> invoke() {
                return kotlin.a.n.b((Collection) a.this.b(), (Iterable) a.b(a.this));
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u001e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002 \u0003*\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "kotlin.jvm.PlatformType", "T", "", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$g.class */
        static final class g extends r implements Function0<Collection<? extends kotlin.reflect.jvm.internal.f<?>>> {
            g() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Collection<? extends kotlin.reflect.jvm.internal.f<?>> invoke() {
                return h.this.a(h.this.g(), k.c.DECLARED);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u001e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002 \u0003*\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "kotlin.jvm.PlatformType", "T", "", "invoke"}, k = 3, mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.h$a$h  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$h.class */
        static final class C0624h extends r implements Function0<Collection<? extends kotlin.reflect.jvm.internal.f<?>>> {
            C0624h() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Collection<? extends kotlin.reflect.jvm.internal.f<?>> invoke() {
                return h.this.a(h.this.h(), k.c.DECLARED);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0003*\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;", "kotlin.jvm.PlatformType", "T", "", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$i.class */
        static final class i extends r implements Function0<kotlin.reflect.jvm.internal.impl.descriptors.d> {
            i() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d invoke() {
                kotlin.reflect.jvm.internal.impl.c.a l = h.this.l();
                kotlin.reflect.jvm.internal.impl.descriptors.d.a.j d2 = h.this.f36936a.invoke().d();
                kotlin.reflect.jvm.internal.impl.descriptors.d a2 = l.f37331a ? d2.f37444b.a(l) : v.b(d2.f37444b.f38442b, l);
                if (a2 != null) {
                    return a2;
                }
                h.b(h.this);
                throw null;
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u001e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002 \u0003*\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "kotlin.jvm.PlatformType", "T", "", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$j.class */
        static final class j extends r implements Function0<Collection<? extends kotlin.reflect.jvm.internal.f<?>>> {
            j() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Collection<? extends kotlin.reflect.jvm.internal.f<?>> invoke() {
                return h.this.a(h.this.g(), k.c.INHERITED);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u001e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002 \u0003*\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "kotlin.jvm.PlatformType", "T", "", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$k.class */
        static final class k extends r implements Function0<Collection<? extends kotlin.reflect.jvm.internal.f<?>>> {
            k() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Collection<? extends kotlin.reflect.jvm.internal.f<?>> invoke() {
                return h.this.a(h.this.h(), k.c.INHERITED);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0010��\u001a6\u0012\u0014\u0012\u0012\u0012\u000e\b\u0001\u0012\n \u0004*\u0004\u0018\u00010\u00030\u00030\u0002 \u0004*\u001a\u0012\u0014\u0012\u0012\u0012\u000e\b\u0001\u0012\n \u0004*\u0004\u0018\u00010\u00030\u00030\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0005*\u00020\u0003H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KClassImpl;", "", "kotlin.jvm.PlatformType", "T", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$l.class */
        static final class l extends r implements Function0<List<? extends h<? extends Object>>> {
            l() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends h<? extends Object>> invoke() {
                Collection a2 = k.a.a(a.this.a().getUnsubstitutedInnerClassesScope(), null, null, 3);
                ArrayList arrayList = new ArrayList();
                for (T t : a2) {
                    if (!kotlin.reflect.jvm.internal.impl.resolve.d.i((kotlin.reflect.jvm.internal.impl.descriptors.k) t)) {
                        arrayList.add(t);
                    }
                }
                ArrayList<kotlin.reflect.jvm.internal.impl.descriptors.k> arrayList2 = arrayList;
                ArrayList arrayList3 = new ArrayList();
                for (kotlin.reflect.jvm.internal.impl.descriptors.k kVar : arrayList2) {
                    Objects.requireNonNull(kVar, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                    Class<?> a3 = aj.a((kotlin.reflect.jvm.internal.impl.descriptors.d) kVar);
                    h hVar = a3 != null ? new h(a3) : null;
                    if (hVar != null) {
                        arrayList3.add(hVar);
                    }
                }
                return arrayList3;
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0002\u0010��\u001a\u0004\u0018\u0001H\u0001\"\b\b��\u0010\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "T", "", "invoke", "()Ljava/lang/Object;"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$m.class */
        static final class m extends r implements Function0<T> {
            m() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final T invoke() {
                kotlin.reflect.jvm.internal.impl.descriptors.d a2 = a.this.a();
                if (a2.getKind() != kotlin.reflect.jvm.internal.impl.descriptors.e.OBJECT) {
                    return null;
                }
                T t = (T) ((!a2.isCompanionObject() || kotlin.reflect.jvm.internal.impl.builtins.c.a(kotlin.reflect.jvm.internal.impl.builtins.b.f37282a, a2)) ? h.this.f36937b.getDeclaredField("INSTANCE") : h.this.f36937b.getEnclosingClass().getDeclaredField(a2.getName().a())).get(null);
                Objects.requireNonNull(t, "null cannot be cast to non-null type T");
                return t;
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010��\n��\u0010��\u001a\u0004\u0018\u00010\u0001\"\b\b��\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "T", "", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$n.class */
        static final class n extends r implements Function0<String> {
            n() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ String invoke() {
                if (h.this.f36937b.isAnonymousClass()) {
                    return null;
                }
                kotlin.reflect.jvm.internal.impl.c.a l = h.this.l();
                if (l.f37331a) {
                    return null;
                }
                return l.f().a();
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a&\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u0002H\u00030\u0002 \u0004*\u0012\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u0002H\u00030\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0003*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KClassImpl;", "T", "kotlin.jvm.PlatformType", "", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$o.class */
        static final class o extends r implements Function0<List<? extends h<? extends T>>> {
            o() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Object invoke() {
                Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> sealedSubclasses = a.this.a().getSealedSubclasses();
                kotlin.jvm.internal.p.b(sealedSubclasses, "descriptor.sealedSubclasses");
                Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> collection = sealedSubclasses;
                ArrayList arrayList = new ArrayList();
                for (kotlin.reflect.jvm.internal.impl.descriptors.d dVar : collection) {
                    Objects.requireNonNull(dVar, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                    Class<?> a2 = aj.a(dVar);
                    h hVar = a2 != null ? new h(a2) : null;
                    if (hVar != null) {
                        arrayList.add(hVar);
                    }
                }
                return arrayList;
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010��\n��\u0010��\u001a\u0004\u0018\u00010\u0001\"\b\b��\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "T", "", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$p.class */
        static final class p extends r implements Function0<String> {
            p() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ String invoke() {
                if (h.this.f36937b.isAnonymousClass()) {
                    return null;
                }
                kotlin.reflect.jvm.internal.impl.c.a l = h.this.l();
                if (l.f37331a) {
                    return a.a(h.this.f36937b);
                }
                String a2 = l.c().a();
                kotlin.jvm.internal.p.b(a2, "classId.shortClassName.asString()");
                return a2;
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KTypeParameterImpl;", "kotlin.jvm.PlatformType", "T", "", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$a$q.class */
        static final class q extends r implements Function0<List<? extends y>> {
            q() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends y> invoke() {
                List<TypeParameterDescriptor> declaredTypeParameters = a.this.a().getDeclaredTypeParameters();
                kotlin.jvm.internal.p.b(declaredTypeParameters, "descriptor.declaredTypeParameters");
                List<TypeParameterDescriptor> list = declaredTypeParameters;
                ArrayList arrayList = new ArrayList(kotlin.a.n.a((Iterable) list, 10));
                for (TypeParameterDescriptor descriptor : list) {
                    kotlin.jvm.internal.p.b(descriptor, "descriptor");
                    arrayList.add(new y(h.this, descriptor));
                }
                return arrayList;
            }
        }

        public a() {
            super();
        }

        public static final /* synthetic */ String a(Class cls) {
            String b2;
            String c2;
            String c3;
            String name = cls.getSimpleName();
            Method enclosingMethod = cls.getEnclosingMethod();
            if (enclosingMethod != null) {
                kotlin.jvm.internal.p.b(name, "name");
                c3 = kotlin.h.p.c(name, enclosingMethod.getName() + org.apache.commons.lang3.d.f39169b, name);
                return c3;
            }
            Constructor<?> enclosingConstructor = cls.getEnclosingConstructor();
            if (enclosingConstructor != null) {
                kotlin.jvm.internal.p.b(name, "name");
                c2 = kotlin.h.p.c(name, enclosingConstructor.getName() + org.apache.commons.lang3.d.f39169b, name);
                return c2;
            }
            kotlin.jvm.internal.p.b(name, "name");
            b2 = kotlin.h.p.b(name, '$', name);
            return b2;
        }

        public static final /* synthetic */ Collection a(a aVar) {
            return (Collection) aVar.r.invoke();
        }

        public static final /* synthetic */ Collection b(a aVar) {
            return (Collection) aVar.q.invoke();
        }

        public static final /* synthetic */ Collection c(a aVar) {
            return (Collection) aVar.s.invoke();
        }

        public final kotlin.reflect.jvm.internal.impl.descriptors.d a() {
            return (kotlin.reflect.jvm.internal.impl.descriptors.d) this.k.invoke();
        }

        public final Collection<kotlin.reflect.jvm.internal.f<?>> b() {
            return (Collection) this.p.invoke();
        }

        public final Collection<kotlin.reflect.jvm.internal.f<?>> c() {
            return (Collection) this.t.invoke();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u001e \u0004*\u000e\u0018\u00010\u0001R\b\u0012\u0004\u0012\u0002H\u00030\u00020\u0001R\b\u0012\u0004\u0012\u0002H\u00030\u0002\"\b\b��\u0010\u0003*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/KClassImpl$Data;", "Lkotlin/reflect/jvm/internal/KClassImpl;", "T", "kotlin.jvm.PlatformType", "", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$b.class */
    static final class b extends r implements Function0<h<T>.a> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Object invoke() {
            return new a();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\b\b"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "T", "", "p1", "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;", "p2", "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/h$c.class */
    static final /* synthetic */ class c extends m implements Function2<t, a.m, an> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f36960a = new c();

        c() {
            super(2);
        }

        @Override // kotlin.jvm.internal.e, kotlin.reflect.KCallable
        public final String getName() {
            return "loadProperty";
        }

        @Override // kotlin.jvm.internal.e
        public final KDeclarationContainer getOwner() {
            return ac.b(t.class);
        }

        @Override // kotlin.jvm.internal.e
        public final String getSignature() {
            return "loadProperty(Lorg/jetbrains/kotlin/metadata/ProtoBuf$Property;)Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;";
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* synthetic */ an invoke(t tVar, a.m mVar) {
            t p1 = tVar;
            a.m p2 = mVar;
            p.d(p1, "p1");
            p.d(p2, "p2");
            return p1.a(p2);
        }
    }

    public h(Class<T> jClass) {
        p.d(jClass, "jClass");
        this.f36937b = jClass;
        ad.b<h<T>.a> a2 = ad.a(new b());
        p.b(a2, "ReflectProperties.lazy { Data() }");
        this.f36936a = a2;
    }

    public static final /* synthetic */ Void b(h hVar) {
        kotlin.reflect.jvm.internal.impl.load.kotlin.a.a aVar;
        f.a aVar2 = f.f37436a;
        f a2 = f.a.a(hVar.f36937b);
        a.EnumC0694a aVar3 = (a2 == null || (aVar = a2.f37438c) == null) ? null : aVar.f38020a;
        if (aVar3 != null) {
            switch (i.f36961a[aVar3.ordinal()]) {
                case 1:
                case 2:
                case 3:
                    throw new UnsupportedOperationException("Packages and file facades are not yet supported in Kotlin reflection. Meanwhile please use Java reflection to inspect this class: " + hVar.f36937b);
                case 4:
                    throw new UnsupportedOperationException("This class is an internal synthetic class generated by the Kotlin compiler, such as an anonymous class for a lambda, a SAM wrapper, a callable reference, etc. It's not a Kotlin class or interface, so the reflection library has no idea what declarations does it have. Please use Java reflection to inspect this class: " + hVar.f36937b);
                case 5:
                    throw new ab("Unknown class: " + hVar.f36937b + " (kind = " + aVar3 + ')');
                case 6:
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
        throw new ab("Unresolved class: " + hVar.f36937b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public d f() {
        return this.f36936a.invoke().a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlin.reflect.jvm.internal.impl.c.a l() {
        ah ahVar = ah.f36880b;
        Class<T> klass = this.f36937b;
        p.d(klass, "klass");
        if (klass.isArray()) {
            Class<?> componentType = klass.getComponentType();
            p.b(componentType, "klass.componentType");
            kotlin.reflect.jvm.internal.impl.builtins.h a2 = ah.a(componentType);
            if (a2 != null) {
                return new kotlin.reflect.jvm.internal.impl.c.a(j.m, a2.getArrayTypeName());
            }
            kotlin.reflect.jvm.internal.impl.c.a a3 = kotlin.reflect.jvm.internal.impl.c.a.a(j.a.i.c());
            p.b(a3, "ClassId.topLevel(Standar…s.FqNames.array.toSafe())");
            return a3;
        } else if (p.a(klass, Void.TYPE)) {
            return ah.f36879a;
        } else {
            kotlin.reflect.jvm.internal.impl.builtins.h a4 = ah.a((Class<?>) klass);
            if (a4 != null) {
                return new kotlin.reflect.jvm.internal.impl.c.a(j.m, a4.getTypeName());
            }
            kotlin.reflect.jvm.internal.impl.c.a e = kotlin.reflect.jvm.internal.impl.descriptors.d.b.b.e(klass);
            if (!e.f37331a) {
                kotlin.reflect.jvm.internal.impl.builtins.a.c cVar = kotlin.reflect.jvm.internal.impl.builtins.a.c.f37237a;
                kotlin.reflect.jvm.internal.impl.c.b f = e.f();
                p.b(f, "classId.asSingleFqName()");
                kotlin.reflect.jvm.internal.impl.c.a a5 = kotlin.reflect.jvm.internal.impl.builtins.a.c.a(f);
                if (a5 != null) {
                    return a5;
                }
            }
            return e;
        }
    }

    @Override // kotlin.jvm.internal.g
    public final Class<T> a() {
        return this.f36937b;
    }

    @Override // kotlin.reflect.jvm.internal.k
    public final Collection<an> a(e name) {
        p.d(name, "name");
        return n.b((Collection) g().getContributedVariables(name, kotlin.reflect.jvm.internal.impl.a.a.d.FROM_REFLECTION), (Iterable) h().getContributedVariables(name, kotlin.reflect.jvm.internal.impl.a.a.d.FROM_REFLECTION));
    }

    @Override // kotlin.reflect.jvm.internal.k
    public final an a(int i) {
        Class<?> declaringClass;
        h<T> hVar = this;
        while (p.a((Object) hVar.f36937b.getSimpleName(), (Object) "DefaultImpls") && (declaringClass = hVar.f36937b.getDeclaringClass()) != null && declaringClass.isInterface()) {
            kotlin.reflect.c a2 = kotlin.jvm.a.a(declaringClass);
            Objects.requireNonNull(a2, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<*>");
            hVar = (h) a2;
        }
        d k = hVar.f();
        d dVar = k;
        if (!(k instanceof DeserializedClassDescriptor)) {
            dVar = null;
        }
        DeserializedClassDescriptor deserializedClassDescriptor = (DeserializedClassDescriptor) dVar;
        if (deserializedClassDescriptor == null) {
            return null;
        }
        a.b bVar = deserializedClassDescriptor.f38348a;
        h.e<a.b, List<a.m>> eVar = kotlin.reflect.jvm.internal.impl.b.c.a.j;
        p.b(eVar, "JvmProtoBuf.classLocalVariable");
        a.m mVar = (a.m) kotlin.reflect.jvm.internal.impl.b.b.e.a(bVar, eVar, i);
        if (mVar != null) {
            return (an) aj.a(hVar.f36937b, mVar, deserializedClassDescriptor.f38350c.f38446b, deserializedClassDescriptor.f38350c.f38448d, deserializedClassDescriptor.f38349b, c.f36960a);
        }
        return null;
    }

    @Override // kotlin.reflect.c
    public final String an_() {
        return (String) this.f36936a.invoke().f36940c.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.k
    public final Collection<kotlin.reflect.jvm.internal.impl.descriptors.j> b() {
        d k = f();
        if (k.getKind() == kotlin.reflect.jvm.internal.impl.descriptors.e.INTERFACE || k.getKind() == kotlin.reflect.jvm.internal.impl.descriptors.e.OBJECT) {
            return z.f36608a;
        }
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> constructors = k.getConstructors();
        p.b(constructors, "descriptor.constructors");
        return constructors;
    }

    @Override // kotlin.reflect.jvm.internal.k
    public final Collection<w> b(e name) {
        p.d(name, "name");
        return n.b((Collection) g().getContributedFunctions(name, kotlin.reflect.jvm.internal.impl.a.a.d.FROM_REFLECTION), (Iterable) h().getContributedFunctions(name, kotlin.reflect.jvm.internal.impl.a.a.d.FROM_REFLECTION));
    }

    @Override // kotlin.reflect.c
    public final String c() {
        return (String) this.f36936a.invoke().f36941d.invoke();
    }

    @Override // kotlin.reflect.c
    public final List<KType> d() {
        return (List) this.f36936a.invoke().f.invoke();
    }

    @Override // kotlin.reflect.c
    public final boolean e() {
        return f().isData();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof h) && p.a(kotlin.jvm.a.c(this), kotlin.jvm.a.c((kotlin.reflect.c) obj));
    }

    public final kotlin.reflect.jvm.internal.impl.resolve.e.h g() {
        return f().getDefaultType().getMemberScope();
    }

    @Override // kotlin.reflect.b
    public final List<Annotation> getAnnotations() {
        return (List) this.f36936a.invoke().f36939b.invoke();
    }

    public final kotlin.reflect.jvm.internal.impl.resolve.e.h h() {
        kotlin.reflect.jvm.internal.impl.resolve.e.h staticScope = f().getStaticScope();
        p.b(staticScope, "descriptor.staticScope");
        return staticScope;
    }

    public final int hashCode() {
        return kotlin.jvm.a.c(this).hashCode();
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("class ");
        kotlin.reflect.jvm.internal.impl.c.a l = l();
        kotlin.reflect.jvm.internal.impl.c.b a2 = l.a();
        p.b(a2, "classId.packageFqName");
        if (a2.f37335b.f37340a.isEmpty()) {
            str = "";
        } else {
            str = a2.a() + ".";
        }
        String a3 = l.b().a();
        p.b(a3, "classId.relativeClassName.asString()");
        sb.append(str + kotlin.h.p.a(a3, '.', '$', false));
        return sb.toString();
    }
}
