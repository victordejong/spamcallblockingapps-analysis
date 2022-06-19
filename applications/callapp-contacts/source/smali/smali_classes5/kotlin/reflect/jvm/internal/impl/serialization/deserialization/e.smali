.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e$a;
    }
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

.field private final b:Lkotlin/reflect/jvm/internal/impl/descriptors/ad;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;)V
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/ad;

    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a;Ljava/util/Map;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Lkotlin/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/b/a$a$a;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ba;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/b/b/c;",
            ")",
            "Lkotlin/n<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;>;"
        }
    .end annotation

    .line 5804
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->b:I

    .line 61
    invoke-static {p3, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->b(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 62
    :cond_0
    new-instance v0, Lkotlin/n;

    .line 6804
    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->b:I

    .line 62
    invoke-static {p3, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->b(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p2

    const-string v2, "parameter.type"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6819
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    const-string v2, "proto.value"

    .line 62
    invoke-static {p1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1, p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->b(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final a()Lkotlin/reflect/jvm/internal/impl/builtins/g;
    .locals 1

    .line 39
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v0

    return-object v0
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 2

    .line 125
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/ad;

    invoke-static {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/v;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    return-object p1
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;",
            ")Z"
        }
    .end annotation

    .line 16593
    iget-object v0, p3, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->b:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 100
    :cond_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e$a;->a:[I

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_6

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    .line 117
    iget-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    invoke-virtual {p1, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 109
    :cond_1
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 16715
    iget-object v1, p3, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->j:Ljava/util/List;

    .line 109
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 112
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->a()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v0

    invoke-virtual {v0, p2}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p2

    const-string v0, "builtIns.getArrayElementType(expectedType)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/a/n;->a(Ljava/util/Collection;)Lkotlin/f/c;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 157
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lkotlin/a/ag;

    invoke-virtual {v1}, Lkotlin/a/ag;->a()I

    move-result v1

    .line 114
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    invoke-virtual {p3, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    move-result-object v1

    const-string v5, "value.getArrayElement(i)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4, p2, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->a(Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_4
    return v2

    :cond_5
    const-string p2, "Deserialized ArrayValue should have the same number of elements as the original array value: "

    .line 110
    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 109
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 102
    :cond_6
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p1

    instance-of p2, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz p2, :cond_7

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_9

    .line 106
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    return v3

    :cond_9
    :goto_3
    return v2
.end method

.method private final b(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;",
            "Lkotlin/reflect/jvm/internal/impl/b/b/c;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;"
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object p3

    .line 67
    invoke-direct {p0, p3, p1, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->a(Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_1

    .line 68
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/resolve/constants/k;->a:Lkotlin/reflect/jvm/internal/impl/resolve/constants/k$a;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected argument value: actual type "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7593
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->b:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;

    .line 68
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " != expected type "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/k$a;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/k;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object p1

    :cond_1
    return-object p3
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$a;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;
    .locals 5

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5171
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$a;->b:I

    .line 42
    invoke-static {p2, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->a(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->a(Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    .line 44
    invoke-static {}, Lkotlin/a/ai;->a()Ljava/util/Map;

    move-result-object v1

    .line 45
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->d()I

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->isError(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->k(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 46
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getConstructors()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "annotationClass.constructors"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/a/n;->e(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    if-eqz v2, :cond_3

    .line 48
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->getValueParameters()Ljava/util/List;

    move-result-object v1

    const-string v2, "constructor.valueParameters"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    const/16 v2, 0xa

    .line 129
    invoke-static {v1, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/a/ai;->a(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/f/d;->c(II)I

    move-result v2

    .line 130
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    .line 131
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 132
    move-object v4, v2

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    .line 48
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5180
    :cond_0
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/b/a$a;->c:Ljava/util/List;

    const-string v1, "proto.argumentList"

    .line 49
    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 144
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 143
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;

    const-string v4, "it"

    .line 49
    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a;Ljava/util/Map;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Lkotlin/n;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 143
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 147
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 135
    check-cast v1, Ljava/lang/Iterable;

    .line 49
    invoke-static {v1}, Lkotlin/a/ai;->a(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    .line 53
    :cond_3
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/d;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/at;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    invoke-direct {p1, p2, v1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/d;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/Map;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;",
            "Lkotlin/reflect/jvm/internal/impl/b/b/c;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;"
        }
    .end annotation

    const-string v0, "expectedType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->N:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    .line 7803
    iget v1, p2, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->l:I

    .line 72
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_UNSIGNED.get(value.flags)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 8593
    iget-object v1, p2, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->b:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 74
    :cond_0
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e$a;->a:[I

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;->ordinal()I

    move-result v1

    aget v1, v2, v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 91
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported annotation argument type: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15593
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->b:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;

    .line 91
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " (expected "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 87
    :pswitch_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;->a:Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;

    .line 14715
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->j:Ljava/util/List;

    const-string v0, "value.arrayElementList"

    .line 88
    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 153
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 154
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    .line 88
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->a()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->g()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    const-string v3, "builtIns.anyType"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    const-string v3, "it"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1, p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 155
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 87
    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/h;->a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object p1

    .line 86
    :pswitch_1
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/a;

    .line 14706
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->i:Lkotlin/reflect/jvm/internal/impl/b/a$a;

    const-string v0, "value.annotation"

    .line 86
    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/e;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/a;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object p1

    .line 85
    :pswitch_2
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;

    .line 14676
    iget v0, p2, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->g:I

    .line 85
    invoke-static {p3, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->a(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v0

    .line 14691
    iget p2, p2, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->h:I

    .line 85
    invoke-static {p3, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->b(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object p1

    .line 84
    :pswitch_3
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;

    .line 13676
    iget v0, p2, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->g:I

    .line 84
    invoke-static {p3, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->a(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p3

    .line 13780
    iget p2, p2, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->k:I

    .line 84
    invoke-direct {p1, p3, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;I)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object p1

    .line 83
    :pswitch_4
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/s;

    .line 13653
    iget p2, p2, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->f:I

    .line 83
    invoke-interface {p3, p2}, Lkotlin/reflect/jvm/internal/impl/b/b/c;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/s;-><init>(Ljava/lang/String;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object p1

    .line 82
    :pswitch_5
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/c;

    .line 13608
    iget-wide p2, p2, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->c:J

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    .line 82
    :goto_2
    invoke-direct {p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/c;-><init>(Z)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object p1

    .line 81
    :pswitch_6
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/i;

    .line 12638
    iget-wide p2, p2, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->e:D

    .line 81
    invoke-direct {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/i;-><init>(D)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object p1

    .line 80
    :pswitch_7
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/l;

    .line 12623
    iget p2, p2, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->d:F

    .line 80
    invoke-direct {p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/l;-><init>(F)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object p1

    .line 12608
    :pswitch_8
    iget-wide p1, p2, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->c:J

    if-eqz v0, :cond_3

    .line 79
    new-instance p3, Lkotlin/reflect/jvm/internal/impl/resolve/constants/v;

    invoke-direct {p3, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/v;-><init>(J)V

    goto :goto_3

    :cond_3
    new-instance p3, Lkotlin/reflect/jvm/internal/impl/resolve/constants/p;

    invoke-direct {p3, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/p;-><init>(J)V

    :goto_3
    check-cast p3, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object p3

    .line 11608
    :pswitch_9
    iget-wide p1, p2, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->c:J

    long-to-int p2, p1

    if-eqz v0, :cond_4

    .line 78
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/u;

    invoke-direct {p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/u;-><init>(I)V

    goto :goto_4

    :cond_4
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/m;

    invoke-direct {p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/m;-><init>(I)V

    :goto_4
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object p1

    .line 10608
    :pswitch_a
    iget-wide p1, p2, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->c:J

    long-to-int p2, p1

    int-to-short p1, p2

    if-eqz v0, :cond_5

    .line 77
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/resolve/constants/w;

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/w;-><init>(S)V

    goto :goto_5

    :cond_5
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/resolve/constants/r;

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/r;-><init>(S)V

    :goto_5
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object p2

    .line 76
    :pswitch_b
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/e;

    .line 9608
    iget-wide p2, p2, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->c:J

    long-to-int p3, p2

    int-to-char p2, p3

    .line 76
    invoke-direct {p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/e;-><init>(C)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object p1

    .line 8608
    :pswitch_c
    iget-wide p1, p2, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->c:J

    long-to-int p2, p1

    int-to-byte p1, p2

    if-eqz v0, :cond_6

    .line 75
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/resolve/constants/t;

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/t;-><init>(B)V

    goto :goto_6

    :cond_6
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/resolve/constants/d;

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/d;-><init>(B)V

    :goto_6
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
