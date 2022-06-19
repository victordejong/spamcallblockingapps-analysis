.class public Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;
.source "SourceFile"


# static fields
.field static final synthetic a:Z = true


# instance fields
.field private final b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

.field private final c:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

.field private d:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;-><init>()V

    .line 36
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    .line 37
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->c:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    return-void
.end method

.method private a()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
    .locals 3

    .line 41
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->d:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    if-nez v0, :cond_1

    .line 42
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->c:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->c:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->d:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->e:Ljava/util/List;

    .line 48
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->c:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->getSubstitution()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    move-result-object v1

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->e:Ljava/util/List;

    invoke-static {v0, v1, p0, v2}, Lkotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor;->substituteTypeParameters(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->d:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    .line 52
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->e:Ljava/util/List;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p$1;

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p$1;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;)V

    invoke-static {v0, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->f:Ljava/util/List;

    .line 60
    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->d:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    return-object v0
.end method

.method private static synthetic a(I)V
    .locals 15

    const/16 v0, 0x16

    const/16 v1, 0xd

    const/16 v2, 0xa

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq p0, v7, :cond_0

    if-eq p0, v6, :cond_0

    if-eq p0, v5, :cond_0

    if-eq p0, v4, :cond_0

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v8, "@NotNull method %s.%s must not return null"

    goto :goto_0

    :cond_0
    const-string v8, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    :goto_0
    if-eq p0, v7, :cond_1

    if-eq p0, v6, :cond_1

    if-eq p0, v5, :cond_1

    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v9, 0x2

    goto :goto_1

    :cond_1
    const/4 v9, 0x3

    :goto_1
    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazySubstitutingClassDescriptor"

    const/4 v11, 0x0

    if-eq p0, v7, :cond_5

    if-eq p0, v6, :cond_4

    if-eq p0, v5, :cond_3

    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_2

    aput-object v10, v9, v11

    goto :goto_2

    :cond_2
    const-string v12, "substitutor"

    aput-object v12, v9, v11

    goto :goto_2

    :cond_3
    const-string v12, "typeSubstitution"

    aput-object v12, v9, v11

    goto :goto_2

    :cond_4
    const-string v12, "kotlinTypeRefiner"

    aput-object v12, v9, v11

    goto :goto_2

    :cond_5
    const-string v12, "typeArguments"

    aput-object v12, v9, v11

    :goto_2
    const-string v11, "substitute"

    const-string v12, "getUnsubstitutedMemberScope"

    const-string v13, "getMemberScope"

    const/4 v14, 0x1

    packed-switch p0, :pswitch_data_0

    const-string v10, "getTypeConstructor"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_0
    const-string v10, "getSealedSubclasses"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_1
    const-string v10, "getDeclaredTypeParameters"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_2
    const-string v10, "getSource"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_3
    const-string v10, "getUnsubstitutedInnerClassesScope"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_4
    const-string v10, "getVisibility"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_5
    const-string v10, "getModality"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_6
    const-string v10, "getKind"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_7
    aput-object v11, v9, v14

    goto :goto_3

    :pswitch_8
    const-string v10, "getContainingDeclaration"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_9
    const-string v10, "getOriginal"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_a
    const-string v10, "getName"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_b
    const-string v10, "getAnnotations"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_c
    const-string v10, "getConstructors"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_d
    const-string v10, "getDefaultType"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_e
    const-string v10, "getStaticScope"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_f
    aput-object v12, v9, v14

    goto :goto_3

    :pswitch_10
    aput-object v13, v9, v14

    goto :goto_3

    :pswitch_11
    aput-object v10, v9, v14

    :goto_3
    if-eq p0, v7, :cond_8

    if-eq p0, v6, :cond_8

    if-eq p0, v5, :cond_8

    if-eq p0, v4, :cond_8

    if-eq p0, v3, :cond_8

    if-eq p0, v2, :cond_8

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_6

    goto :goto_4

    :cond_6
    aput-object v11, v9, v7

    goto :goto_4

    :cond_7
    aput-object v12, v9, v7

    goto :goto_4

    :cond_8
    aput-object v13, v9, v7

    :goto_4
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eq p0, v7, :cond_9

    if-eq p0, v6, :cond_9

    if-eq p0, v5, :cond_9

    if-eq p0, v4, :cond_9

    if-eq p0, v3, :cond_9

    if-eq p0, v2, :cond_9

    if-eq p0, v1, :cond_9

    if-eq p0, v0, :cond_9

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_11
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_11
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public accept(Lkotlin/reflect/jvm/internal/impl/descriptors/m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/m<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 278
    invoke-interface {p1, p0, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/m;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;
    .locals 2

    .line 180
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x12

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a(I)V

    :cond_0
    return-object v0
.end method

.method public getCompanionObjectDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 1

    .line 210
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->getCompanionObjectDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    return-object v0
.end method

.method public getConstructors()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->getConstructors()Ljava/util/Collection;

    move-result-object v0

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    .line 165
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->newCopyBuilder()Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object v3

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setOriginal(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object v3

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setModality(Lkotlin/reflect/jvm/internal/impl/descriptors/y;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object v3

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/s;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object v3

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    move-result-object v2

    invoke-interface {v3, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setKind(Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setCopyOverrides(Z)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->build()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    .line 172
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;
    .locals 2

    .line 198
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x15

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a(I)V

    :cond_0
    return-object v0
.end method

.method public getDeclaredTypeParameters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation

    .line 307
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    .line 308
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/16 v1, 0x1d

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a(I)V

    :cond_0
    return-object v0
.end method

.method public getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 5

    .line 143
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->getDefaultTypeProjections(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->getUnsubstitutedMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->simpleTypeWithNonTrivialMemberScope(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/resolve/e/h;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x10

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a(I)V

    :cond_0
    return-object v0
.end method

.method public getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;
    .locals 2

    .line 216
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x18

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a(I)V

    :cond_0
    return-object v0
.end method

.method public getMemberScope(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0xa

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a(I)V

    .line 115
    :cond_0
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->f(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->getMemberScope(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object p1

    if-nez p1, :cond_1

    const/16 v0, 0xb

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a(I)V

    :cond_1
    return-object p1
.end method

.method public getMemberScope(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a(I)V

    .line 99
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->getMemberScope(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object p1

    .line 100
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->c:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_2

    const/4 p2, 0x7

    .line 101
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a(I)V

    :cond_2
    return-object p1

    .line 103
    :cond_3
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/e/h;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)V

    return-object p2
.end method

.method public getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;
    .locals 2

    .line 222
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x19

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a(I)V

    :cond_0
    return-object v0
.end method

.method public getName()Lkotlin/reflect/jvm/internal/impl/c/e;
    .locals 2

    .line 186
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x13

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a(I)V

    :cond_0
    return-object v0
.end method

.method public getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 2

    .line 192
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x14

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a(I)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/k;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    return-object v0
.end method

.method public getSealedSubclasses()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ">;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->getSealedSubclasses()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x1e

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a(I)V

    :cond_0
    return-object v0
.end method

.method public getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/at;
    .locals 2

    .line 301
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/at;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    if-nez v0, :cond_0

    const/16 v1, 0x1c

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a(I)V

    :cond_0
    return-object v0
.end method

.method public getStaticScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 2

    .line 137
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->getStaticScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0xf

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a(I)V

    :cond_0
    return-object v0
.end method

.method public getThisAsReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;
    .locals 1

    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .locals 5

    .line 66
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->c:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 68
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a(I)V

    :cond_0
    return-object v0

    .line 71
    :cond_1
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->g:Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    if-nez v1, :cond_3

    .line 72
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v1

    .line 74
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object v0

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 77
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitute(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/ClassTypeConstructorImpl;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->e:Ljava/util/List;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/f/f;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    invoke-direct {v0, p0, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/ClassTypeConstructorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/util/List;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/f/n;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->g:Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 83
    :cond_3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->g:Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    if-nez v0, :cond_4

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a(I)V

    :cond_4
    return-object v0
.end method

.method public getUnsubstitutedInnerClassesScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 2

    .line 289
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->getUnsubstitutedInnerClassesScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x1b

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a(I)V

    :cond_0
    return-object v0
.end method

.method public getUnsubstitutedMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 2

    .line 121
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->f(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->getUnsubstitutedMemberScope(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0xc

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a(I)V

    :cond_0
    return-object v0
.end method

.method public getUnsubstitutedMemberScope(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 2

    if-nez p1, :cond_0

    const/16 v0, 0xd

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a(I)V

    .line 127
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->getUnsubstitutedMemberScope(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object p1

    .line 128
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->c:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    const/16 v0, 0xe

    .line 129
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a(I)V

    :cond_1
    return-object p1

    .line 131
    :cond_2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/e/h;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)V

    return-object v0
.end method

.method public getUnsubstitutedPrimaryConstructor()Lkotlin/reflect/jvm/internal/impl/descriptors/c;
    .locals 1

    .line 295
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->getUnsubstitutedPrimaryConstructor()Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;
    .locals 2

    .line 228
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x1a

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a(I)V

    :cond_0
    return-object v0
.end method

.method public isActual()Z
    .locals 1

    .line 273
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->isActual()Z

    move-result v0

    return v0
.end method

.method public isCompanionObject()Z
    .locals 1

    .line 263
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->isCompanionObject()Z

    move-result v0

    return v0
.end method

.method public isData()Z
    .locals 1

    .line 238
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->isData()Z

    move-result v0

    return v0
.end method

.method public isExpect()Z
    .locals 1

    .line 268
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->isExpect()Z

    move-result v0

    return v0
.end method

.method public isExternal()Z
    .locals 1

    .line 258
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->isExternal()Z

    move-result v0

    return v0
.end method

.method public isFun()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->isFun()Z

    move-result v0

    return v0
.end method

.method public isInline()Z
    .locals 1

    .line 243
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->isInline()Z

    move-result v0

    return v0
.end method

.method public isInner()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->isInner()Z

    move-result v0

    return v0
.end method

.method public isValue()Z
    .locals 1

    .line 253
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->isValue()Z

    move-result v0

    return v0
.end method

.method public synthetic substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/l;
    .locals 2

    if-nez p1, :cond_0

    const/16 v0, 0x16

    .line 27
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a(I)V

    .line 1204
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 1205
    :cond_1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->getSubstitution()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    move-result-object p1

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;->a()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->getSubstitution()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->createChainedSubstitutor(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/p;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)V

    return-object v0
.end method
