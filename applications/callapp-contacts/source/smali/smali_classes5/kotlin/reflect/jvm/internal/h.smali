.class public final Lkotlin/reflect/jvm/internal/h;
.super Lkotlin/reflect/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/c;
.implements Lkotlin/reflect/jvm/internal/aa;
.implements Lkotlin/reflect/jvm/internal/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/k;",
        "Lkotlin/reflect/c<",
        "TT;>;",
        "Lkotlin/reflect/jvm/internal/aa;",
        "Lkotlin/reflect/jvm/internal/j;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00ba\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0001\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u00042\u00020\u00052\u00020\u0006:\u0001bB\u0013\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0002\u0010\tJ\u0013\u0010Q\u001a\u00020&2\u0008\u0010R\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\u0016\u0010S\u001a\u0008\u0012\u0004\u0012\u00020T0\u00142\u0006\u0010U\u001a\u00020VH\u0016J\u0012\u0010W\u001a\u0004\u0018\u00010X2\u0006\u0010Y\u001a\u00020ZH\u0016J\u0016\u0010[\u001a\u0008\u0012\u0004\u0012\u00020X0\u00142\u0006\u0010U\u001a\u00020VH\u0016J\u0008\u0010\\\u001a\u00020ZH\u0016J\u0012\u0010]\u001a\u00020&2\u0008\u0010^\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010_\u001a\u00020`H\u0002J\u0008\u0010a\u001a\u00020>H\u0016R\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R \u0010\u0018\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00190\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0017R3\u0010\u001b\u001a$\u0012 \u0012\u001e \u001e*\u000e\u0018\u00010\u001dR\u0008\u0012\u0004\u0012\u00028\u00000\u00000\u001dR\u0008\u0012\u0004\u0012\u00028\u00000\u00000\u001c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0014\u0010!\u001a\u00020\"8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\u0014\u0010%\u001a\u00020&8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\'R\u0014\u0010(\u001a\u00020&8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010\'R\u0014\u0010)\u001a\u00020&8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\'R\u0014\u0010*\u001a\u00020&8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\'R\u0014\u0010+\u001a\u00020&8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010\'R\u0014\u0010,\u001a\u00020&8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010\'R\u0014\u0010-\u001a\u00020&8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010\'R\u0014\u0010.\u001a\u00020&8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010\'R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u0014\u00101\u001a\u0002028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u00083\u00104R\u001e\u00105\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u0003060\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00087\u0010\u0017R\u001e\u00108\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00040\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00089\u0010\u0017R\u0016\u0010:\u001a\u0004\u0018\u00018\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010<R\u0016\u0010=\u001a\u0004\u0018\u00010>8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008?\u0010@R\"\u0010A\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u00040\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010\u000eR\u0016\u0010C\u001a\u0004\u0018\u00010>8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010@R\u0014\u0010E\u001a\u0002028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008F\u00104R\u001a\u0010G\u001a\u0008\u0012\u0004\u0012\u00020H0\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010\u000eR\u001a\u0010J\u001a\u0008\u0012\u0004\u0012\u00020K0\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010\u000eR\u0016\u0010M\u001a\u0004\u0018\u00010N8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008O\u0010P\u00a8\u0006c"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/KClassImpl;",
        "T",
        "",
        "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;",
        "Lkotlin/reflect/KClass;",
        "Lkotlin/reflect/jvm/internal/KClassifierImpl;",
        "Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;",
        "jClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)V",
        "annotations",
        "",
        "",
        "getAnnotations",
        "()Ljava/util/List;",
        "classId",
        "Lkotlin/reflect/jvm/internal/impl/name/ClassId;",
        "getClassId",
        "()Lorg/jetbrains/kotlin/name/ClassId;",
        "constructorDescriptors",
        "",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;",
        "getConstructorDescriptors",
        "()Ljava/util/Collection;",
        "constructors",
        "Lkotlin/reflect/KFunction;",
        "getConstructors",
        "data",
        "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;",
        "Lkotlin/reflect/jvm/internal/KClassImpl$Data;",
        "kotlin.jvm.PlatformType",
        "getData",
        "()Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;",
        "descriptor",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;",
        "getDescriptor",
        "()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;",
        "isAbstract",
        "",
        "()Z",
        "isCompanion",
        "isData",
        "isFinal",
        "isFun",
        "isInner",
        "isOpen",
        "isSealed",
        "getJClass",
        "()Ljava/lang/Class;",
        "memberScope",
        "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;",
        "getMemberScope$kotlin_reflection",
        "()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;",
        "members",
        "Lkotlin/reflect/KCallable;",
        "getMembers",
        "nestedClasses",
        "getNestedClasses",
        "objectInstance",
        "getObjectInstance",
        "()Ljava/lang/Object;",
        "qualifiedName",
        "",
        "getQualifiedName",
        "()Ljava/lang/String;",
        "sealedSubclasses",
        "getSealedSubclasses",
        "simpleName",
        "getSimpleName",
        "staticScope",
        "getStaticScope$kotlin_reflection",
        "supertypes",
        "Lkotlin/reflect/KType;",
        "getSupertypes",
        "typeParameters",
        "Lkotlin/reflect/KTypeParameter;",
        "getTypeParameters",
        "visibility",
        "Lkotlin/reflect/KVisibility;",
        "getVisibility",
        "()Lkotlin/reflect/KVisibility;",
        "equals",
        "other",
        "getFunctions",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;",
        "name",
        "Lkotlin/reflect/jvm/internal/impl/name/Name;",
        "getLocalProperty",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;",
        "index",
        "",
        "getProperties",
        "hashCode",
        "isInstance",
        "value",
        "reportUnresolvedClass",
        "",
        "toString",
        "Data",
        "kotlin-reflection"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Lkotlin/reflect/jvm/internal/ad$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/ad$b<",
            "Lkotlin/reflect/jvm/internal/h<",
            "TT;>.a;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "jClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/k;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/h;->b:Ljava/lang/Class;

    .line 180
    new-instance p1, Lkotlin/reflect/jvm/internal/h$b;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/h$b;-><init>(Lkotlin/reflect/jvm/internal/h;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/ad;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ad$b;

    move-result-object p1

    const-string v0, "ReflectProperties.lazy { Data() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/h;->a:Lkotlin/reflect/jvm/internal/ad$b;

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/h;)Lkotlin/reflect/jvm/internal/impl/c/a;
    .locals 0

    .line 44
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/h;->l()Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lkotlin/reflect/jvm/internal/h;)Ljava/lang/Void;
    .locals 4

    .line 11304
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f$a;

    .line 12045
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/h;->b:Ljava/lang/Class;

    .line 11304
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f$a;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12049
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    if-eqz v0, :cond_0

    .line 13015
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 11305
    sget-object v1, Lkotlin/reflect/jvm/internal/i;->a:[I

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 11325
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 11321
    :pswitch_0
    new-instance v1, Lkotlin/reflect/jvm/internal/ab;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15045
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/h;->b:Ljava/lang/Class;

    .line 11321
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (kind = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 11313
    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 11314
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This class is an internal synthetic class generated by the Kotlin compiler, such as an anonymous class for a lambda, a SAM wrapper, a callable reference, etc. It\'s not a Kotlin class or interface, so the reflection library has no idea what declarations does it have. Please use Java reflection to inspect this class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14045
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/h;->b:Ljava/lang/Class;

    .line 11316
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11313
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 11307
    :pswitch_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 11308
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Packages and file facades are not yet supported in Kotlin reflection. Meanwhile please use Java reflection to inspect this class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13045
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/h;->b:Ljava/lang/Class;

    .line 11309
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11307
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 11325
    :cond_1
    :pswitch_3
    new-instance v0, Lkotlin/reflect/jvm/internal/ab;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unresolved class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16045
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/h;->b:Ljava/lang/Class;

    .line 11325
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private k()Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 1

    .line 182
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/h;->a:Lkotlin/reflect/jvm/internal/ad$b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ad$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/h$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/h$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    return-object v0
.end method

.method private final l()Lkotlin/reflect/jvm/internal/impl/c/a;
    .locals 3

    .line 186
    sget-object v0, Lkotlin/reflect/jvm/internal/ah;->b:Lkotlin/reflect/jvm/internal/ah;

    .line 1045
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/h;->b:Ljava/lang/Class;

    const-string v1, "klass"

    .line 186
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1260
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1261
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "klass.componentType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ah;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/builtins/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1262
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/c/a;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/j;->m:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/h;->getArrayTypeName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lkotlin/reflect/jvm/internal/impl/c/a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    return-object v1

    .line 1264
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->i:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/c;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v0

    const-string v1, "ClassId.topLevel(Standar\u2026s.FqNames.array.toSafe())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 1267
    :cond_1
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lkotlin/reflect/jvm/internal/ah;->a:Lkotlin/reflect/jvm/internal/impl/c/a;

    return-object v0

    .line 1269
    :cond_2
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ah;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/builtins/h;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1270
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/a;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/j;->m:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/h;->getTypeName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lkotlin/reflect/jvm/internal/impl/c/a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    return-object v0

    .line 1273
    :cond_3
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/b;->e(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v0

    .line 2070
    iget-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/c/a;->a:Z

    if-nez v1, :cond_4

    .line 1275
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/a;->f()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    const-string v2, "classId.asSingleFqName()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/h;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ")",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/h;->g()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/a/a/d;->FROM_REFLECTION:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/a/a/b;

    invoke-interface {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedVariables(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object v0

    .line 208
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/h;->h()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/a/a/d;->FROM_REFLECTION:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/a/a/b;

    invoke-interface {v1, p1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedVariables(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 207
    invoke-static {v0, p1}, Lkotlin/a/n;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public final a(I)Lkotlin/reflect/jvm/internal/impl/descriptors/an;
    .locals 10

    move-object v0, p0

    .line 3045
    :goto_0
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/h;->b:Ljava/lang/Class;

    .line 216
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultImpls"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4045
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/h;->b:Ljava/lang/Class;

    .line 217
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    invoke-static {v1}, Lkotlin/jvm/a;->a(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<*>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/h;

    goto :goto_0

    .line 224
    :cond_0
    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/h;->k()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v1

    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v1, v3

    :cond_1
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    if-eqz v1, :cond_2

    .line 5038
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->a:Lkotlin/reflect/jvm/internal/impl/b/a$b;

    .line 225
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/b/c/a;->j:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    const-string v5, "JvmProtoBuf.classLocalVariable"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4, p1}, Lkotlin/reflect/jvm/internal/impl/b/b/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$m;

    if-eqz p1, :cond_2

    .line 5045
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/h;->b:Ljava/lang/Class;

    .line 227
    move-object v5, p1

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 5052
    iget-object p1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 5079
    iget-object v6, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 6052
    iget-object p1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 6081
    iget-object v7, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 7040
    iget-object v8, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->b:Lkotlin/reflect/jvm/internal/impl/b/b/a;

    .line 228
    sget-object p1, Lkotlin/reflect/jvm/internal/h$c;->a:Lkotlin/reflect/jvm/internal/h$c;

    move-object v9, p1

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 226
    invoke-static/range {v4 .. v9}, Lkotlin/reflect/jvm/internal/aj;->a(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/a;Lkotlin/jvm/functions/Function2;)Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    return-object p1

    :cond_2
    return-object v3
.end method

.method public final an_()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/h;->a:Lkotlin/reflect/jvm/internal/ad$b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ad$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/h$a;

    .line 8000
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/h$a;->c:Lkotlin/reflect/jvm/internal/ad$a;

    .line 8031
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ad$c;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 8000
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/j;",
            ">;"
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/h;->k()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    .line 200
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->OBJECT:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getConstructors()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "descriptor.constructors"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 2071
    :cond_1
    :goto_0
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    .line 201
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ")",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/w;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/h;->g()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/a/a/d;->FROM_REFLECTION:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/a/a/b;

    invoke-interface {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/h;->h()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/a/a/d;->FROM_REFLECTION:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/a/a/b;

    invoke-interface {v1, p1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 211
    invoke-static {v0, p1}, Lkotlin/a/n;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/h;->a:Lkotlin/reflect/jvm/internal/ad$b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ad$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/h$a;

    .line 9000
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/h$a;->d:Lkotlin/reflect/jvm/internal/ad$a;

    .line 9031
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ad$c;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 9000
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KType;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/h;->a:Lkotlin/reflect/jvm/internal/ad$b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ad$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/h$a;

    .line 10000
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/h$a;->f:Lkotlin/reflect/jvm/internal/ad$a;

    .line 10031
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ad$c;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 10000
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 277
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/h;->k()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->isData()Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 289
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/h;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/a;->c(Lkotlin/reflect/c;)Ljava/lang/Class;

    move-result-object v0

    check-cast p1, Lkotlin/reflect/c;

    invoke-static {p1}, Lkotlin/jvm/a;->c(Lkotlin/reflect/c;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic f()Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 1

    .line 44
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/h;->k()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    return-object v0
.end method

.method public final g()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 1

    .line 191
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/h;->k()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v0

    return-object v0
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/h;->a:Lkotlin/reflect/jvm/internal/ad$b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ad$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/h$a;

    .line 1000
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/h$a;->b:Lkotlin/reflect/jvm/internal/ad$a;

    .line 1031
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ad$c;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 1000
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final h()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 2

    .line 193
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/h;->k()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getStaticScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v0

    const-string v1, "descriptor.staticScope"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 292
    invoke-static {p0}, Lkotlin/jvm/a;->c(Lkotlin/reflect/c;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/h;->l()Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    .line 296
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v2

    const-string v3, "classId.packageFqName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10063
    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/c/b;->b:Lkotlin/reflect/jvm/internal/impl/c/c;

    .line 10101
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/c/c;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 297
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/c/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    :goto_0
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->b()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "classId.relativeClassName.asString()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x2e

    const/16 v4, 0x24

    const/4 v5, 0x0

    .line 11063
    invoke-static {v1, v3, v4, v5}, Lkotlin/h/p;->a(Ljava/lang/String;CCZ)Ljava/lang/String;

    move-result-object v1

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
