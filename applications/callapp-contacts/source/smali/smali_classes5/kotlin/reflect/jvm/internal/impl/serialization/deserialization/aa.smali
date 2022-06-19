.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

.field b:Z

.field private final c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/g;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/g;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$r;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterProtos"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerPresentableName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 25
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    .line 27
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->d:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->e:Ljava/lang/String;

    .line 29
    iput-boolean p6, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->b:Z

    .line 8096
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 9038
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 32
    new-instance p4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$a;

    invoke-direct {p4, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$a;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;)V

    check-cast p4, Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p4}, Lkotlin/reflect/jvm/internal/impl/f/n;->b(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/h;

    move-result-object p2

    check-cast p2, Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->f:Lkotlin/jvm/functions/Function1;

    .line 9096
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 10038
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 37
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$c;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$c;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/f/n;->b(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/h;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->g:Lkotlin/jvm/functions/Function1;

    .line 42
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    invoke-static {}, Lkotlin/a/ai;->a()Ljava/util/Map;

    move-result-object p1

    goto :goto_1

    .line 45
    :cond_0
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 46
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    add-int/lit8 p4, p3, 0x1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lkotlin/reflect/jvm/internal/impl/b/a$r;

    .line 47
    move-object p6, p1

    check-cast p6, Ljava/util/Map;

    .line 10471
    iget v0, p5, Lkotlin/reflect/jvm/internal/impl/b/a$r;->b:I

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeParameterDescriptor;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    invoke-direct {v1, v2, p5, p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeParameterDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;Lkotlin/reflect/jvm/internal/impl/b/a$r;I)V

    invoke-interface {p6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p3, p4

    goto :goto_0

    .line 49
    :cond_1
    check-cast p1, Ljava/util/Map;

    .line 42
    :goto_1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->h:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    move v6, p6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 23
    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static final a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/b/a$p;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$p$a;",
            ">;"
        }
    .end annotation

    .line 35673
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->b:Ljava/util/List;

    const-string v1, "argumentList"

    .line 86
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 36081
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 86
    invoke-static {p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/f;->b(Lkotlin/reflect/jvm/internal/impl/b/a$p;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;)Ljava/util/List;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    .line 37071
    sget-object p0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p0, Ljava/util/List;

    .line 86
    :cond_1
    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Lkotlin/a/n;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;Lkotlin/reflect/jvm/internal/impl/b/a$p;I)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 2

    .line 122
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 37079
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 122
    invoke-static {v0, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->a(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p2

    .line 123
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$e;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$e;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lkotlin/g/k;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/g/h;

    move-result-object p1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$f;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$f;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lkotlin/g/k;->d(Lkotlin/g/h;Lkotlin/jvm/functions/Function1;)Lkotlin/g/h;

    move-result-object p1

    invoke-static {p1}, Lkotlin/g/k;->g(Lkotlin/g/h;)Ljava/util/List;

    move-result-object p1

    .line 124
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$d;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$d;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p2, v0}, Lkotlin/g/k;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/g/h;

    move-result-object v0

    invoke-static {v0}, Lkotlin/g/k;->h(Lkotlin/g/h;)I

    move-result v0

    .line 125
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    const/4 v1, 0x0

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 38078
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 39049
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/ad;

    .line 128
    invoke-virtual {p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ad;->a(Lkotlin/reflect/jvm/internal/impl/c/a;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;",
            ">;Z)",
            "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;"
        }
    .end annotation

    .line 155
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ltz v0, :cond_2

    .line 161
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;

    .line 163
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(I)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v2

    const-string v0, "functionTypeConstructor.builtIns.getSuspendFunction(arity).typeConstructor"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    .line 161
    invoke-static/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->simpleType$default(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    goto :goto_0

    .line 156
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    const-string p1, "Bad suspend function in metadata with constructor: "

    .line 174
    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-static {p1, p3}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorTypeWithArguments(Ljava/lang/String;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    const-string p2, "createErrorTypeWithArguments(\n            \"Bad suspend function in metadata with constructor: $functionTypeConstructor\",\n            arguments\n        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_3
    return-object v1
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 8

    .line 191
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 28078
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 29040
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;

    .line 191
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;->getReleaseCoroutines()Z

    move-result v0

    .line 193
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->f(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/a/n;->h(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    return-object v2

    .line 194
    :cond_1
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v3, v2

    goto :goto_1

    :cond_2
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v3

    .line 195
    :goto_1
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    invoke-static {v3, v5}, Lkotlin/reflect/jvm/internal/impl/builtins/k;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Z)Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_3

    .line 196
    invoke-static {v3, v6}, Lkotlin/reflect/jvm/internal/impl/builtins/k;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Z)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_4

    .line 201
    :cond_3
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/a/n;->i(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    const-string v4, "continuationArgumentType.arguments.single().type"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 29080
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 283
    instance-of v7, v4, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    if-nez v7, :cond_4

    move-object v4, v2

    :cond_4
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    if-nez v4, :cond_5

    goto :goto_2

    .line 204
    :cond_5
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->f(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v2

    :goto_2
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/z;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 205
    invoke-static {p1, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    return-object p1

    .line 209
    :cond_6
    iget-boolean v2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->b:Z

    if-nez v2, :cond_8

    if-eqz v0, :cond_7

    xor-int/2addr v0, v5

    .line 210
    invoke-static {v3, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/k;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    .line 209
    :cond_8
    :goto_3
    iput-boolean v5, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->b:Z

    .line 212
    invoke-static {p1, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    return-object p1

    .line 198
    :cond_9
    :goto_4
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    return-object p1
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 7

    .line 220
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v0

    .line 221
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v1

    .line 222
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->d(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    .line 223
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->f(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/a/n;->k(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 284
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 285
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 286
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    .line 223
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    :cond_0
    move-object v3, v4

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p1

    .line 219
    invoke-static/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->a(Lkotlin/reflect/jvm/internal/impl/builtins/g;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    .line 228
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result p0

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0
.end method

.method private final a(I)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .locals 3

    move-object v0, p0

    .line 232
    :cond_0
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    if-nez v0, :cond_0

    return-object v2

    :cond_2
    return-object v1
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/b/a$p$a;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .locals 2

    .line 32225
    iget-object v0, p2, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->b:Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;

    .line 261
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;->STAR:Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    .line 263
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionForAbsentTypeParameter;

    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 33078
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 34039
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    .line 263
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionForAbsentTypeParameter;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/g;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    return-object p1

    .line 265
    :cond_0
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    return-object p2

    .line 268
    :cond_1
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;

    .line 34225
    iget-object p1, p2, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->b:Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;

    const-string v0, "typeArgumentProto.projection"

    .line 268
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;)Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    .line 269
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 35081
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 269
    invoke-static {p2, v0}, Lkotlin/reflect/jvm/internal/impl/b/b/f;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p$a;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p2

    if-nez p2, :cond_2

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    const-string p2, "No type recorded"

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorType(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-direct {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    return-object p1

    .line 271
    :cond_2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    return-object v0
.end method

.method private final b(I)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 1

    .line 244
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 30079
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 244
    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->a(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p1

    .line 31070
    iget-boolean p1, p1, Lkotlin/reflect/jvm/internal/impl/c/a;->a:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :cond_0
    return-object v0
.end method

.method private final b(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;",
            ">;Z)",
            "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;"
        }
    .end annotation

    .line 185
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->simpleType$default(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    .line 186
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 187
    :cond_0
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    return-object p1
.end method

.method private final b(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .locals 5

    .line 132
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->f:Lkotlin/jvm/functions/Function1;

    .line 22784
    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->g:I

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    if-nez v0, :cond_0

    .line 23784
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->g:I

    .line 132
    invoke-static {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;Lkotlin/reflect/jvm/internal/impl/b/a$p;I)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    :cond_0
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/g;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p1

    const-string v0, "classifierDescriptors(proto.className) ?: notFoundClass(proto.className)).typeConstructor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 133
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23807
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->h:I

    .line 134
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(I)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    if-nez v0, :cond_2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown type parameter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24807
    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->h:I

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Please try recompiling module containing \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorTypeConstructor(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p1

    const-string v0, "createErrorTypeConstructor(\n                        \"Unknown type parameter ${proto.typeParameter}. Please try recompiling module containing \\\"$containerPresentableName\\\"\"\n                    )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_2
    return-object v0

    .line 138
    :cond_3
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->o()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 139
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 25080
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 140
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 26079
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 26830
    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->i:I

    .line 140
    invoke-interface {v1, p1}, Lkotlin/reflect/jvm/internal/impl/b/b/c;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_5
    move-object v2, v3

    :goto_0
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-nez v2, :cond_6

    goto :goto_1

    .line 142
    :cond_6
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Deserialized type parameter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorTypeConstructor(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v3

    :cond_7
    const-string p1, "{\n                val container = c.containingDeclaration\n                val name = c.nameResolver.getString(proto.typeParameterName)\n                val parameter = ownTypeParameters.find { it.name.asString() == name }\n                parameter?.typeConstructor ?: ErrorUtils.createErrorTypeConstructor(\"Deserialized type parameter $name in $container\")\n            }"

    .line 138
    invoke-static {v3, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    .line 144
    :cond_8
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->p()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->g:Lkotlin/jvm/functions/Function1;

    .line 26855
    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->j:I

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    if-nez v0, :cond_9

    .line 27855
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->j:I

    .line 144
    invoke-static {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;Lkotlin/reflect/jvm/internal/impl/b/a$p;I)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    :cond_9
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/g;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p1

    const-string v0, "typeAliasDescriptors(proto.typeAliasName) ?: notFoundClass(proto.typeAliasName)).typeConstructor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_a
    const-string p1, "Unknown type"

    .line 145
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorTypeConstructor(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p1

    const-string v0, "createErrorTypeConstructor(\"Unknown type\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/a/n;->h(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 4

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 11079
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 11739
    iget v2, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->d:I

    .line 58
    invoke-interface {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/b/c;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 12067
    invoke-virtual {p0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    .line 60
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 12081
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 60
    invoke-static {p1, v3}, Lkotlin/reflect/jvm/internal/impl/b/b/f;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 13067
    invoke-virtual {p0, v3, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    .line 61
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 13078
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 14047
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->j:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p;

    .line 61
    invoke-interface {v3, p1, v0, v2, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    return-object p1

    .line 64
    :cond_0
    invoke-virtual {p0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 10

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14784
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->g:I

    .line 69
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->b(I)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14855
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->j:I

    .line 70
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->b(I)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 76
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->b(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v2

    .line 77
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->isError(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorTypeWithCustomConstructor(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    const-string p2, "createErrorTypeWithCustomConstructor(constructor.toString(), constructor)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 81
    :cond_2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/b;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 15096
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 16038
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 81
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$b;

    invoke-direct {v3, p0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$b;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;Lkotlin/reflect/jvm/internal/impl/b/a$p;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/b;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/jvm/functions/Function0;)V

    .line 88
    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 277
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 279
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_3

    .line 280
    invoke-static {}, Lkotlin/a/n;->a()V

    :cond_3
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;

    .line 89
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v7

    const-string v9, "constructor.parameters"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v4}, Lkotlin/a/n;->b(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-direct {p0, v4, v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/b/a$p$a;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_1

    .line 281
    :cond_4
    check-cast v3, Ljava/util/List;

    .line 277
    check-cast v3, Ljava/lang/Iterable;

    .line 90
    invoke-static {v3}, Lkotlin/a/n;->h(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 92
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v1

    if-eqz p2, :cond_7

    .line 95
    instance-of p2, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    if-eqz p2, :cond_7

    .line 96
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    invoke-static {v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->computeExpandedType(Lkotlin/reflect/jvm/internal/impl/descriptors/ax;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p2

    .line 98
    move-object v1, p2

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 16714
    iget-boolean v1, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->c:Z

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v1, 0x1

    .line 98
    :goto_3
    invoke-virtual {p2, v1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    .line 99
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {v0, p2}, Lkotlin/a/n;->c(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object p2

    invoke-virtual {v1, p2}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->replaceAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p2

    goto :goto_4

    .line 101
    :cond_7
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/b/b/b;->a:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    .line 16946
    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->o:I

    .line 101
    invoke-virtual {p2, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "SUSPEND_TYPE.get(proto.flags)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 102
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    .line 17714
    iget-boolean p2, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->c:Z

    .line 102
    invoke-direct {p0, v0, v2, v3, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p2

    goto :goto_4

    .line 104
    :cond_8
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;

    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    .line 18714
    iget-boolean v4, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->c:Z

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    .line 104
    invoke-static/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->simpleType$default(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p2

    .line 107
    :goto_4
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 19081
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 107
    invoke-static {p1, v0}, Lkotlin/reflect/jvm/internal/impl/b/b/f;->c(Lkotlin/reflect/jvm/internal/impl/b/a$p;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_5

    .line 109
    :cond_9
    invoke-virtual {p0, v0, v8}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->withAbbreviation(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    move-object p2, v0

    .line 112
    :goto_5
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->m()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 113
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 20079
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 20784
    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->g:I

    .line 113
    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->a(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 21078
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 22056
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->r:Lkotlin/reflect/jvm/internal/impl/descriptors/b/e;

    .line 114
    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/b/e;->a(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    return-object p1

    :cond_b
    return-object p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 274
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->d:Ljava/lang/String;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->d:Ljava/lang/String;

    const-string v2, ". Child of "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
