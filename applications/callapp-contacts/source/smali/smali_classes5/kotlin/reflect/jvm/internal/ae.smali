.class public Lkotlin/reflect/jvm/internal/ae;
.super Lkotlin/jvm/internal/ad;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lkotlin/jvm/internal/ad;-><init>()V

    return-void
.end method

.method private static a(Lkotlin/jvm/internal/e;)Lkotlin/reflect/jvm/internal/k;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lkotlin/jvm/internal/e;->getOwner()Lkotlin/reflect/KDeclarationContainer;

    move-result-object p0

    .line 116
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/k;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/reflect/jvm/internal/k;

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/reflect/jvm/internal/b;->a:Lkotlin/reflect/jvm/internal/b;

    return-object p0
.end method


# virtual methods
.method public final a(Lkotlin/jvm/internal/l;)Ljava/lang/String;
    .locals 1

    .line 65
    invoke-static {p1}, Lkotlin/reflect/jvm/c;->a(Lkotlin/d;)Lkotlin/reflect/KFunction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/aj;->a(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    sget-object p1, Lkotlin/reflect/jvm/internal/af;->a:Lkotlin/reflect/jvm/internal/af;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/l;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/af;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 72
    :cond_0
    invoke-super {p0, p1}, Lkotlin/jvm/internal/ad;->a(Lkotlin/jvm/internal/l;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/jvm/internal/r;)Ljava/lang/String;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/ae;->a(Lkotlin/jvm/internal/l;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    .line 45
    new-instance v0, Lkotlin/reflect/jvm/internal/p;

    invoke-direct {v0, p1, p2}, Lkotlin/reflect/jvm/internal/p;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lkotlin/jvm/internal/m;)Lkotlin/reflect/KFunction;
    .locals 4

    .line 79
    new-instance v0, Lkotlin/reflect/jvm/internal/l;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/ae;->a(Lkotlin/jvm/internal/e;)Lkotlin/reflect/jvm/internal/k;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/m;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/jvm/internal/m;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lkotlin/jvm/internal/m;->getBoundReceiver()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lkotlin/reflect/jvm/internal/l;-><init>(Lkotlin/reflect/jvm/internal/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(Lkotlin/reflect/d;Ljava/util/List;)Lkotlin/reflect/KType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/d;",
            "Ljava/util/List<",
            "Lkotlin/reflect/q;",
            ">;)",
            "Lkotlin/reflect/KType;"
        }
    .end annotation

    .line 123
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string v1, "$this$createType"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "arguments"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "annotations"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1047
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/j;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    check-cast v1, Lkotlin/reflect/jvm/internal/j;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/j;->f()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1050
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/g;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p1

    const-string v1, "descriptor.typeConstructor"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1051
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v1

    const-string v3, "typeConstructor.parameters"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1052
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1059
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v0

    goto :goto_1

    .line 1060
    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v0

    .line 1062
    :goto_1
    new-instance v1, Lkotlin/reflect/jvm/internal/w;

    const/4 v3, 0x1

    invoke-static {v0, p1, p2, v3}, Lkotlin/reflect/full/e;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    const/4 p2, 0x2

    invoke-direct {v1, p1, v2, p2, v2}, Lkotlin/reflect/jvm/internal/w;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lkotlin/reflect/KType;

    return-object v1

    .line 1053
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Class declares "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type parameters, but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " were provided."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1048
    :cond_3
    new-instance p2, Lkotlin/reflect/jvm/internal/ab;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot create type for an unsupported classifier: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public final a(Ljava/lang/Class;)Lkotlin/reflect/c;
    .locals 0

    .line 50
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/g;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/h;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/jvm/internal/t;)Lkotlin/reflect/f;
    .locals 4

    .line 91
    new-instance v0, Lkotlin/reflect/jvm/internal/m;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/ae;->a(Lkotlin/jvm/internal/e;)Lkotlin/reflect/jvm/internal/k;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/t;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/jvm/internal/t;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lkotlin/jvm/internal/t;->getBoundReceiver()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lkotlin/reflect/jvm/internal/m;-><init>(Lkotlin/reflect/jvm/internal/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(Lkotlin/jvm/internal/v;)Lkotlin/reflect/g;
    .locals 4

    .line 101
    new-instance v0, Lkotlin/reflect/jvm/internal/n;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/ae;->a(Lkotlin/jvm/internal/e;)Lkotlin/reflect/jvm/internal/k;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/v;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/jvm/internal/v;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lkotlin/jvm/internal/v;->getBoundReceiver()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lkotlin/reflect/jvm/internal/n;-><init>(Lkotlin/reflect/jvm/internal/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;
    .locals 4

    .line 96
    new-instance v0, Lkotlin/reflect/jvm/internal/s;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/ae;->a(Lkotlin/jvm/internal/e;)Lkotlin/reflect/jvm/internal/k;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/z;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/jvm/internal/z;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lkotlin/jvm/internal/z;->getBoundReceiver()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lkotlin/reflect/jvm/internal/s;-><init>(Lkotlin/reflect/jvm/internal/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
