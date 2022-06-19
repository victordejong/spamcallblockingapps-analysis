.class public abstract Lkotlin/reflect/jvm/internal/impl/builtins/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/builtins/g$a;
    }
.end annotation


# static fields
.field public static final d:Lkotlin/reflect/jvm/internal/impl/c/e;

.field static final synthetic e:Z = true


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/f/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/i<",
            "Lkotlin/reflect/jvm/internal/impl/builtins/g$a;",
            ">;"
        }
    .end annotation
.end field

.field b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

.field public final c:Lkotlin/reflect/jvm/internal/impl/f/n;

.field private final f:Lkotlin/reflect/jvm/internal/impl/f/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/i<",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/aj;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Lkotlin/reflect/jvm/internal/impl/f/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/g<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<built-ins module>"

    .line 50
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->c(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/g;->d:Lkotlin/reflect/jvm/internal/impl/c/e;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/f/n;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 52
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g;->c:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 55
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/g$1;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g$1;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/g;)V

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g;->f:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 67
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/g$2;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g$2;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/g;)V

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 87
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/g$3;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g$3;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/g;)V

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/g;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g;->g:Lkotlin/reflect/jvm/internal/impl/f/g;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/builtins/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;
    .locals 0

    .line 40
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    return-object p0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/builtins/g;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;
    .locals 0

    .line 40
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    return-object p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/builtins/g;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x2d

    .line 40
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 5473
    :cond_0
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    if-nez p0, :cond_1

    const/16 p1, 0x2e

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_1
    return-object p0
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x58

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 683
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->i:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/builtins/h;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/c/c;)Z
    .locals 2

    if-nez p0, :cond_0

    const/16 v0, 0x66

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x67

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 735
    :cond_1
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/g;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/c;->e()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/c/c;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/c/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z
    .locals 2

    if-nez p0, :cond_0

    const/16 v0, 0x8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 182
    :cond_0
    const-class v0, Lkotlin/reflect/jvm/internal/impl/builtins/a;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/Class;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/c/c;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x60

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x61

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 721
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result p0

    return p0
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Lkotlin/reflect/jvm/internal/impl/c/c;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x64

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x65

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 729
    :cond_1
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p0

    .line 730
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(I)V
    .locals 13

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :pswitch_1
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    :pswitch_2
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x2

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v5, "storageManager"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_4
    const-string v5, "declarationDescriptor"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_5
    const-string v5, "classDescriptor"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_6
    const-string v5, "typeConstructor"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_7
    const-string v5, "annotations"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_8
    const-string v5, "argument"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_9
    const-string v5, "projectionType"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_a
    const-string v5, "kotlinType"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_b
    const-string v5, "primitiveType"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_c
    const-string v5, "notNullArrayType"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_d
    const-string v5, "arrayType"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_e
    const-string v5, "classSimpleName"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_f
    const-string v5, "type"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_10
    const-string v5, "simpleName"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_11
    const-string v5, "fqName"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_12
    const-string v5, "descriptor"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_13
    aput-object v3, v2, v4

    goto :goto_2

    :pswitch_14
    const-string v5, "module"

    aput-object v5, v2, v4

    :goto_2
    const-string v4, "getEnumType"

    const-string v5, "getArrayType"

    const-string v6, "getPrimitiveArrayKotlinType"

    const-string v7, "getArrayElementType"

    const-string v8, "getPrimitiveKotlinType"

    const-string v9, "getBuiltInTypeByClassName"

    const-string v10, "getBuiltInClassByName"

    const-string v11, "getBuiltInClassByFqName"

    const/4 v12, 0x1

    packed-switch p0, :pswitch_data_3

    :pswitch_15
    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_16
    const-string v3, "getAnnotationType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_17
    aput-object v4, v2, v12

    goto/16 :goto_3

    :pswitch_18
    aput-object v5, v2, v12

    goto/16 :goto_3

    :pswitch_19
    aput-object v6, v2, v12

    goto/16 :goto_3

    :pswitch_1a
    aput-object v7, v2, v12

    goto/16 :goto_3

    :pswitch_1b
    const-string v3, "getIterableType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_1c
    const-string v3, "getStringType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_1d
    const-string v3, "getUnitType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_1e
    const-string v3, "getBooleanType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_1f
    const-string v3, "getCharType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_20
    const-string v3, "getDoubleType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_21
    const-string v3, "getFloatType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_22
    const-string v3, "getLongType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_23
    const-string v3, "getIntType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_24
    const-string v3, "getShortType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_25
    const-string v3, "getByteType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_26
    const-string v3, "getNumberType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_27
    aput-object v8, v2, v12

    goto/16 :goto_3

    :pswitch_28
    const-string v3, "getDefaultBound"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_29
    const-string v3, "getNullableAnyType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_2a
    const-string v3, "getAnyType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_2b
    const-string v3, "getNullableNothingType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_2c
    const-string v3, "getNothingType"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_2d
    aput-object v9, v2, v12

    goto/16 :goto_3

    :pswitch_2e
    const-string v3, "getMutableListIterator"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_2f
    const-string v3, "getListIterator"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_30
    const-string v3, "getMutableMapEntry"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_31
    const-string v3, "getMapEntry"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_32
    const-string v3, "getMutableMap"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_33
    const-string v3, "getMap"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_34
    const-string v3, "getMutableSet"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_35
    const-string v3, "getSet"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_36
    const-string v3, "getMutableList"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_37
    const-string v3, "getList"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_38
    const-string v3, "getMutableCollection"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_39
    const-string v3, "getCollection"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_3a
    const-string v3, "getMutableIterator"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_3b
    const-string v3, "getMutableIterable"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_3c
    const-string v3, "getIterable"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_3d
    const-string v3, "getIterator"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_3e
    const-string v3, "getKMutableProperty2"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_3f
    const-string v3, "getKMutableProperty1"

    aput-object v3, v2, v12

    goto/16 :goto_3

    :pswitch_40
    const-string v3, "getKMutableProperty0"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_41
    const-string v3, "getKProperty2"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_42
    const-string v3, "getKProperty1"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_43
    const-string v3, "getKProperty0"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_44
    const-string v3, "getKProperty"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_45
    const-string v3, "getKCallable"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_46
    const-string v3, "getKClass"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_47
    const-string v3, "getKSuspendFunction"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_48
    const-string v3, "getKFunction"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_49
    const-string v3, "getSuspendFunction"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_4a
    aput-object v10, v2, v12

    goto :goto_3

    :pswitch_4b
    aput-object v11, v2, v12

    goto :goto_3

    :pswitch_4c
    const-string v3, "getBuiltInsPackageScope"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_4d
    const-string v3, "getBuiltInPackagesImportedByDefault"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_4e
    const-string v3, "getBuiltInsModule"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_4f
    const-string v3, "getStorageManager"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_50
    const-string v3, "getClassDescriptorFactories"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_51
    const-string v3, "getPlatformDependentDeclarationFilter"

    aput-object v3, v2, v12

    goto :goto_3

    :pswitch_52
    const-string v3, "getAdditionalClassPartsProvider"

    aput-object v3, v2, v12

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_53
    const-string v3, "isNotNullOrNullableFunctionSupertype"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_54
    const-string v3, "isDeprecated"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_55
    const-string v3, "isCloneable"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_56
    const-string v3, "isNonPrimitiveArray"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_57
    const-string v3, "isKClass"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_58
    const-string v3, "isThrowableOrNullableThrowable"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_59
    const-string v3, "isIterableOrNullableIterable"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_5a
    const-string v3, "isMapOrNullableMap"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_5b
    const-string v3, "isSetOrNullableSet"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_5c
    const-string v3, "isListOrNullableList"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_5d
    const-string v3, "isCollectionOrNullableCollection"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_5e
    const-string v3, "isComparable"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_5f
    const-string v3, "isEnum"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_60
    const-string v3, "isMemberOfAny"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_61
    const-string v3, "isBooleanOrSubtype"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_62
    const-string v3, "isUnitOrNullableUnit"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_63
    const-string v3, "isUnit"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_64
    const-string v3, "isDefaultBound"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_65
    const-string v3, "isNullableAny"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_66
    const-string v3, "isAnyOrNullableAny"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_67
    const-string v3, "isNothingOrNullableNothing"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_68
    const-string v3, "isNullableNothing"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_69
    const-string v3, "isNothing"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_6a
    const-string v3, "isConstructedFromGivenClassAndNotNullable"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_6b
    const-string v3, "isDoubleOrNullableDouble"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_6c
    const-string v3, "isUnsignedArrayType"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_6d
    const-string v3, "isULongArray"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_6e
    const-string v3, "isUIntArray"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_6f
    const-string v3, "isUShortArray"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_70
    const-string v3, "isUByteArray"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_71
    const-string v3, "isULong"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_72
    const-string v3, "isUInt"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_73
    const-string v3, "isUShort"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_74
    const-string v3, "isUByte"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_75
    const-string v3, "isDouble"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_76
    const-string v3, "isFloatOrNullableFloat"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_77
    const-string v3, "isFloat"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_78
    const-string v3, "isShort"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_79
    const-string v3, "isLongOrNullableLong"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_7a
    const-string v3, "isLong"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_7b
    const-string v3, "isByte"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_7c
    const-string v3, "isInt"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_7d
    const-string v3, "isCharOrNullableChar"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_7e
    const-string v3, "isChar"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_7f
    const-string v3, "isNumber"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_80
    const-string v3, "isBooleanOrNullableBoolean"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_81
    const-string v3, "isBoolean"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_82
    const-string v3, "isAny"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_83
    const-string v3, "isSpecialClassWithNoSupertypes"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_84
    const-string v3, "isNotNullConstructedFromGivenClass"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_85
    const-string v3, "classFqNameEquals"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_86
    const-string v3, "isTypeConstructorForGivenClass"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_87
    const-string v3, "isConstructedFromGivenClass"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_88
    const-string v3, "isPrimitiveClass"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_89
    const-string v3, "isPrimitiveTypeOrNullablePrimitiveType"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_8a
    const-string v3, "isPrimitiveType"

    aput-object v3, v2, v1

    goto/16 :goto_4

    :pswitch_8b
    const-string v3, "getPrimitiveArrayElementType"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_8c
    const-string v3, "isPrimitiveArray"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_8d
    const-string v3, "isArrayOrPrimitiveArray"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_8e
    const-string v3, "isArray"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_8f
    aput-object v4, v2, v1

    goto :goto_4

    :pswitch_90
    aput-object v5, v2, v1

    goto :goto_4

    :pswitch_91
    const-string v3, "getPrimitiveArrayType"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_92
    const-string v3, "getPrimitiveType"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_93
    const-string v3, "getPrimitiveArrayKotlinTypeByPrimitiveKotlinType"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_94
    aput-object v6, v2, v1

    goto :goto_4

    :pswitch_95
    const-string v3, "getElementTypeForUnsignedArray"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_96
    aput-object v7, v2, v1

    goto :goto_4

    :pswitch_97
    aput-object v8, v2, v1

    goto :goto_4

    :pswitch_98
    aput-object v9, v2, v1

    goto :goto_4

    :pswitch_99
    const-string v3, "getPrimitiveArrayClassDescriptor"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_9a
    const-string v3, "getPrimitiveClassDescriptor"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_9b
    aput-object v10, v2, v1

    goto :goto_4

    :pswitch_9c
    aput-object v11, v2, v1

    goto :goto_4

    :pswitch_9d
    const-string v3, "isUnderKotlinPackage"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_9e
    const-string v3, "isBuiltIn"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_9f
    const-string v3, "setBuiltInsModule"

    aput-object v3, v2, v1

    :goto_4
    :pswitch_a0
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    :pswitch_a1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_a2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_11
        :pswitch_13
        :pswitch_10
        :pswitch_13
        :pswitch_f
        :pswitch_f
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_e
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_f
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_d
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_c
        :pswitch_14
        :pswitch_b
        :pswitch_13
        :pswitch_a
        :pswitch_12
        :pswitch_12
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_13
        :pswitch_9
        :pswitch_8
        :pswitch_13
        :pswitch_8
        :pswitch_13
        :pswitch_13
        :pswitch_f
        :pswitch_12
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_12
        :pswitch_f
        :pswitch_11
        :pswitch_f
        :pswitch_11
        :pswitch_6
        :pswitch_11
        :pswitch_12
        :pswitch_11
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_5
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_11
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_12
        :pswitch_12
        :pswitch_f
        :pswitch_12
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_4
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_15
        :pswitch_15
        :pswitch_4c
        :pswitch_15
        :pswitch_4b
        :pswitch_15
        :pswitch_4a
        :pswitch_15
        :pswitch_15
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_15
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_15
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_15
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_19
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_18
        :pswitch_15
        :pswitch_15
        :pswitch_18
        :pswitch_15
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_9e
        :pswitch_9d
        :pswitch_a0
        :pswitch_9c
        :pswitch_a0
        :pswitch_9b
        :pswitch_a0
        :pswitch_9a
        :pswitch_99
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_98
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_97
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_96
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_95
        :pswitch_95
        :pswitch_94
        :pswitch_a0
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_90
        :pswitch_90
        :pswitch_a0
        :pswitch_90
        :pswitch_90
        :pswitch_a0
        :pswitch_8f
        :pswitch_a0
        :pswitch_a0
        :pswitch_8e
        :pswitch_8d
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_92
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_86
        :pswitch_86
        :pswitch_85
        :pswitch_85
        :pswitch_84
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_81
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5f
        :pswitch_5e
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a1
        :pswitch_a1
        :pswitch_a2
        :pswitch_a1
        :pswitch_a2
        :pswitch_a1
        :pswitch_a2
        :pswitch_a1
        :pswitch_a1
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a1
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a1
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a1
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
        :pswitch_a2
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
        :pswitch_a2
        :pswitch_a1
        :pswitch_a1
        :pswitch_a2
        :pswitch_a1
        :pswitch_a2
        :pswitch_a2
    .end packed-switch
.end method

.method public static b(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x5f

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 717
    :cond_0
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/builtins/h;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x9

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    .line 191
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    if-eqz v0, :cond_1

    .line 192
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j;->l:Lkotlin/reflect/jvm/internal/impl/c/e;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/c/b;->b(Lkotlin/reflect/jvm/internal/impl/c/e;)Z

    move-result p0

    return p0

    .line 194
    :cond_1
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x57

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 679
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->i:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result p0

    return p0
.end method

.method private static b(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/c/c;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x68

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x69

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 740
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/builtins/h;
    .locals 2

    if-nez p0, :cond_0

    const/16 v0, 0x4b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 643
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->aB:Ljava/util/Set;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->aD:Ljava/util/Map;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/c/c;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/builtins/h;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x6a

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 744
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->b:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->c:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static c(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x5a

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 691
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 692
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/builtins/h;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/c/c;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x85

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x86

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 852
    :cond_1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/builtins/h;
    .locals 2

    if-nez p0, :cond_0

    const/16 v0, 0x4c

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 650
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->aC:Ljava/util/Set;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->aE:Ljava/util/Map;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/c/c;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/builtins/h;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x6b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 748
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->b:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result p0

    return p0
.end method

.method public static d(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 3

    if-nez p0, :cond_0

    const/16 v0, 0x5d

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 708
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-nez p0, :cond_1

    const/16 v0, 0x5e

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 3712
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p0

    .line 3713
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public static e(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x9b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 955
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->ad:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result p0

    return p0
.end method

.method public static e(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z
    .locals 4

    if-nez p0, :cond_0

    const/16 v0, 0x9e

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 969
    :cond_0
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->y:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->b(Lkotlin/reflect/jvm/internal/impl/c/b;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 971
    :cond_1
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 972
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->at_()Z

    move-result v0

    .line 973
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/ao;

    move-result-object v3

    .line 974
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/ap;

    move-result-object p0

    if-eqz v3, :cond_3

    .line 975
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    if-eqz p0, :cond_3

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method public static e(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x6d

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 756
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->j:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->c(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result p0

    return p0
.end method

.method public static f(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x71

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 772
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->k:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->c(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result p0

    return p0
.end method

.method public static g(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x73

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 780
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->n:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->c(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result p0

    return p0
.end method

.method public static h(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x74

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 784
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->l:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->c(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result p0

    return p0
.end method

.method public static i(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x75

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 788
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->o:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->c(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result p0

    return p0
.end method

.method public static j(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x77

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 796
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->m:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->c(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result p0

    return p0
.end method

.method public static k(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x78

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    if-nez p0, :cond_1

    const/16 v0, 0x79

    .line 800
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 3804
    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->p:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 800
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static l(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x7a

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    if-nez p0, :cond_1

    const/16 v0, 0x84

    .line 808
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 3848
    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->q:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 808
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static m(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x83

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    if-nez p0, :cond_1

    const/16 v0, 0x7f

    .line 844
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 4828
    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->ax:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/b;->b()Lkotlin/reflect/jvm/internal/impl/c/c;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->c(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p0, :cond_2

    const/16 v0, 0x80

    .line 844
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 4832
    :cond_2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->ay:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/b;->b()Lkotlin/reflect/jvm/internal/impl/c/c;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->c(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p0, :cond_3

    const/16 v0, 0x81

    .line 844
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 4836
    :cond_3
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->az:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/b;->b()Lkotlin/reflect/jvm/internal/impl/c/c;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->c(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p0, :cond_4

    const/16 v0, 0x82

    .line 844
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 4840
    :cond_4
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->aA:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/b;->b()Lkotlin/reflect/jvm/internal/impl/c/c;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->c(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static n(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x87

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    if-nez p0, :cond_1

    const/16 v0, 0x89

    .line 856
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 4866
    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->c:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 856
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static o(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x8a

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 870
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->b:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result p0

    return p0
.end method

.method public static p(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x8b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 874
    :cond_0
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->o(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static q(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x8c

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 878
    :cond_0
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->p(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p0

    return p0
.end method

.method public static r(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x8d

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 882
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->f:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result p0

    return p0
.end method

.method public static s(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 919
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->h:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(I)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 1

    .line 298
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j;->d:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/j;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/c/b;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    if-nez p1, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0xd

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 213
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g;->g:Lkotlin/reflect/jvm/internal/impl/f/g;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/f/g;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-nez p1, :cond_1

    const/16 v0, 0xe

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_1
    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 2

    if-nez p1, :cond_0

    const/16 v0, 0xb

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 206
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/a/a/d;->FROM_BUILTINS:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    invoke-static {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/q;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    .line 207
    sget-boolean v1, Lkotlin/reflect/jvm/internal/impl/builtins/g;->e:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Can\'t find built-in class "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    const/16 p1, 0xc

    .line 208
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_3
    return-object v0
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 4

    if-nez p1, :cond_0

    const/16 v0, 0x42

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 568
    :cond_0
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 569
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 572
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    if-nez p1, :cond_1

    const/16 v0, 0x43

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_1
    return-object p1

    .line 570
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 574
    :cond_3
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNotNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    .line 576
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a:Lkotlin/reflect/jvm/internal/impl/f/i;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/builtins/g$a;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/builtins/g$a;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz v1, :cond_5

    if-nez v1, :cond_4

    const/16 p1, 0x44

    .line 577
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_4
    return-object v1

    .line 579
    :cond_5
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    move-result-object v1

    if-eqz v1, :cond_e

    if-nez v0, :cond_6

    const/16 v2, 0x46

    .line 581
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_6
    if-nez v1, :cond_7

    const/16 v2, 0x47

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 2591
    :cond_7
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_8

    goto :goto_0

    .line 2593
    :cond_8
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/n;->a:Lkotlin/reflect/jvm/internal/impl/builtins/n;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/g;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v3

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/builtins/n;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_0

    .line 2595
    :cond_9
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/g;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_0

    .line 2598
    :cond_a
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/n;->a:Lkotlin/reflect/jvm/internal/impl/builtins/n;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/n;->a(Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_0

    .line 2601
    :cond_b
    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/v;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_0

    .line 2604
    :cond_c
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_e

    if-nez v2, :cond_d

    const/16 p1, 0x45

    .line 582
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_d
    return-object v2

    .line 586
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "not array: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/builtins/h;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x34

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0xf

    .line 503
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 2228
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/h;->getTypeName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    .line 503
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    if-nez p1, :cond_2

    const/16 v0, 0x35

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_2
    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x51

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, 0x52

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 663
    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    if-nez p1, :cond_2

    const/16 p2, 0x53

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_2
    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x4d

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, 0x4e

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_1
    if-nez p3, :cond_2

    const/16 v0, 0x4f

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 657
    :cond_2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    invoke-direct {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string p2, "Array"

    .line 3273
    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p2

    .line 658
    invoke-static {p3, p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->simpleNotNullType(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    if-nez p1, :cond_3

    const/16 p2, 0x50

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_3
    return-object p1
.end method

.method protected final a(Z)V
    .locals 9

    .line 103
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/g;->d:Lkotlin/reflect/jvm/internal/impl/c/e;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g;->c:Lkotlin/reflect/jvm/internal/impl/f/n;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/builtins/g;Lkotlin/reflect/jvm/internal/impl/d/b;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    .line 104
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/BuiltInsLoader;->a:Lkotlin/reflect/jvm/internal/impl/builtins/BuiltInsLoader$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/BuiltInsLoader$a;->a()Lkotlin/reflect/jvm/internal/impl/builtins/BuiltInsLoader;

    move-result-object v2

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g;->c:Lkotlin/reflect/jvm/internal/impl/f/n;

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->d()Ljava/lang/Iterable;

    move-result-object v5

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;

    move-result-object v6

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;

    move-result-object v7

    move v8, p1

    invoke-interface/range {v2 .. v8}, Lkotlin/reflect/jvm/internal/impl/builtins/BuiltInsLoader;->createPackageFragmentProvider(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Ljava/lang/Iterable;Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/af;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/af;)V

    .line 108
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->a([Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;)V

    return-void
.end method

.method protected b()Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;
    .locals 2

    .line 128
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b/a$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/b/a$a;

    if-nez v0, :cond_0

    const/4 v1, 0x2

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    return-object v0
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/builtins/h;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x48

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    .line 609
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a:Lkotlin/reflect/jvm/internal/impl/f/i;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/builtins/g$a;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/builtins/g$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-nez p1, :cond_1

    const/16 v0, 0x49

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_1
    return-object p1
.end method

.method protected c()Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;
    .locals 2

    .line 133
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b/c$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/b/c$b;

    if-nez v0, :cond_0

    const/4 v1, 0x3

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    return-object v0
.end method

.method public d()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b/b;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g;->c:Lkotlin/reflect/jvm/internal/impl/f/n;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/a;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x4

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    return-object v0
.end method

.method public final e()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;
    .locals 2

    .line 164
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    if-nez v0, :cond_0

    const/4 v1, 0x6

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    return-object v0
.end method

.method public final f()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 2

    const-string v0, "Nothing"

    .line 1223
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    .line 478
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x2f

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    return-object v0
.end method

.method public final g()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 2

    const-string v0, "Any"

    .line 2218
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    .line 488
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x31

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    return-object v0
.end method

.method public final h()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 2

    .line 493
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->g()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x32

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    return-object v0
.end method

.method public final i()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 2

    .line 498
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->h()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x33

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    return-object v0
.end method

.method public final j()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 2

    .line 513
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/h;->BYTE:Lkotlin/reflect/jvm/internal/impl/builtins/h;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/builtins/h;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x37

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    return-object v0
.end method

.method public final k()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 2

    .line 518
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/h;->SHORT:Lkotlin/reflect/jvm/internal/impl/builtins/h;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/builtins/h;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x38

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    return-object v0
.end method

.method public final l()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 2

    .line 523
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/h;->INT:Lkotlin/reflect/jvm/internal/impl/builtins/h;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/builtins/h;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x39

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    return-object v0
.end method

.method public final m()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 2

    .line 528
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/h;->LONG:Lkotlin/reflect/jvm/internal/impl/builtins/h;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/builtins/h;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x3a

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    return-object v0
.end method

.method public final n()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 2

    .line 548
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/h;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/builtins/h;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/builtins/h;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x3e

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    return-object v0
.end method

.method public final o()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 2

    const-string v0, "Unit"

    .line 2288
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    .line 553
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x3f

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    return-object v0
.end method

.method public final p()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 2

    const-string v0, "String"

    .line 2319
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    .line 558
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x40

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_0
    return-object v0
.end method
