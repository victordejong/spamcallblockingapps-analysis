.class public final Lkotlin/reflect/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u001a\"\u0010\n\u001a\u00020\u00012\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000eH\u0003\u001a\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0001H\u0002\u001a\u0016\u0010\u0012\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014H\u0003\"\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00078BX\u0083\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0003\u0010\u0008\u001a\u0004\u0008\u0005\u0010\t\u00a8\u0006\u0015"
    }
    d2 = {
        "javaType",
        "Ljava/lang/reflect/Type;",
        "Lkotlin/reflect/KType;",
        "getJavaType$annotations",
        "(Lkotlin/reflect/KType;)V",
        "getJavaType",
        "(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;",
        "Lkotlin/reflect/KTypeProjection;",
        "(Lkotlin/reflect/KTypeProjection;)V",
        "(Lkotlin/reflect/KTypeProjection;)Ljava/lang/reflect/Type;",
        "createPossiblyInnerType",
        "jClass",
        "Ljava/lang/Class;",
        "arguments",
        "",
        "typeToString",
        "",
        "type",
        "computeJavaType",
        "forceWrapper",
        "",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static final synthetic a(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 2

    .line 5221
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 5222
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5223
    sget-object v0, Lkotlin/reflect/w$a;->a:Lkotlin/reflect/w$a;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Lkotlin/g/k;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/g/h;

    move-result-object p0

    .line 5224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlin/g/k;->d(Lkotlin/g/h;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[]"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/g/k;->h(Lkotlin/g/h;)I

    move-result p0

    invoke-static {v1, p0}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5225
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "if (type.isArray) {\n    \u2026\n        } else type.name"

    .line 5222
    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 5226
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lkotlin/reflect/q;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_1

    .line 69
    check-cast p1, Ljava/lang/Iterable;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 230
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 231
    check-cast v1, Lkotlin/reflect/q;

    .line 69
    invoke-static {v1}, Lkotlin/reflect/w;->a(Lkotlin/reflect/q;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 69
    new-instance p1, Lkotlin/reflect/t;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1, v0}, Lkotlin/reflect/t;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/List;)V

    check-cast p1, Ljava/lang/reflect/Type;

    return-object p1

    .line 70
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    check-cast v0, Ljava/lang/reflect/Type;

    check-cast p1, Ljava/lang/Iterable;

    .line 233
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 234
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 235
    check-cast v1, Lkotlin/reflect/q;

    .line 71
    invoke-static {v1}, Lkotlin/reflect/w;->a(Lkotlin/reflect/q;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 71
    new-instance p1, Lkotlin/reflect/t;

    invoke-direct {p1, p0, v0, v2}, Lkotlin/reflect/t;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/List;)V

    check-cast p1, Ljava/lang/reflect/Type;

    return-object p1

    .line 73
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    array-length v2, v2

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/reflect/w;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v3, 0x0

    .line 77
    invoke-interface {p1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 237
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 238
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 239
    check-cast v1, Lkotlin/reflect/q;

    .line 77
    invoke-static {v1}, Lkotlin/reflect/w;->a(Lkotlin/reflect/q;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 240
    :cond_4
    check-cast v2, Ljava/util/List;

    .line 74
    new-instance p1, Lkotlin/reflect/t;

    invoke-direct {p1, p0, v0, v2}, Lkotlin/reflect/t;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/List;)V

    check-cast p1, Ljava/lang/reflect/Type;

    return-object p1
.end method

.method public static final a(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;
    .locals 1

    const-string v0, "$this$javaType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    instance-of v0, p0, Lkotlin/jvm/internal/q;

    if-eqz v0, :cond_0

    .line 30
    move-object v0, p0

    check-cast v0, Lkotlin/jvm/internal/q;

    invoke-interface {v0}, Lkotlin/jvm/internal/q;->am_()Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 1037
    invoke-static {p0, v0}, Lkotlin/reflect/w;->a(Lkotlin/reflect/KType;Z)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method private static final a(Lkotlin/reflect/KType;Z)Ljava/lang/reflect/Type;
    .locals 3

    .line 38
    invoke-interface {p0}, Lkotlin/reflect/KType;->a()Lkotlin/reflect/d;

    move-result-object v0

    .line 39
    instance-of v1, v0, Lkotlin/reflect/p;

    if-eqz v1, :cond_0

    new-instance p0, Lkotlin/reflect/v;

    check-cast v0, Lkotlin/reflect/p;

    invoke-direct {p0, v0}, Lkotlin/reflect/v;-><init>(Lkotlin/reflect/p;)V

    check-cast p0, Ljava/lang/reflect/Type;

    return-object p0

    .line 40
    :cond_0
    instance-of v1, v0, Lkotlin/reflect/c;

    if-eqz v1, :cond_b

    .line 41
    check-cast v0, Lkotlin/reflect/c;

    if-eqz p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/a;->c(Lkotlin/reflect/c;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/a;->a(Lkotlin/reflect/c;)Ljava/lang/Class;

    move-result-object p1

    .line 42
    :goto_0
    invoke-interface {p0}, Lkotlin/reflect/KType;->b()Ljava/util/List;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/reflect/Type;

    return-object p1

    .line 45
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 46
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "jClass.componentType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast p1, Ljava/lang/reflect/Type;

    return-object p1

    .line 48
    :cond_3
    invoke-static {v0}, Lkotlin/a/n;->j(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/q;

    if-eqz v0, :cond_9

    .line 2000
    iget-object p0, v0, Lkotlin/reflect/q;->a:Lkotlin/reflect/s;

    .line 3000
    iget-object v0, v0, Lkotlin/reflect/q;->b:Lkotlin/reflect/KType;

    if-nez p0, :cond_4

    goto :goto_2

    .line 50
    :cond_4
    sget-object v1, Lkotlin/reflect/x;->a:[I

    invoke-virtual {p0}, Lkotlin/reflect/s;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_8

    const/4 v1, 0x2

    if-eq p0, v1, :cond_6

    const/4 v1, 0x3

    if-ne p0, v1, :cond_5

    goto :goto_1

    .line 55
    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 54
    :cond_6
    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 3037
    invoke-static {v0, p0}, Lkotlin/reflect/w;->a(Lkotlin/reflect/KType;Z)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 55
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/reflect/Type;

    return-object p1

    :cond_7
    new-instance p1, Lkotlin/reflect/a;

    invoke-direct {p1, p0}, Lkotlin/reflect/a;-><init>(Ljava/lang/reflect/Type;)V

    check-cast p1, Ljava/lang/reflect/Type;

    return-object p1

    .line 52
    :cond_8
    :goto_2
    check-cast p1, Ljava/lang/reflect/Type;

    return-object p1

    .line 49
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "kotlin.Array must have exactly one type argument: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 60
    :cond_a
    invoke-static {p1, v0}, Lkotlin/reflect/w;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 62
    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unsupported type classifier: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private static final a(Lkotlin/reflect/q;)Ljava/lang/reflect/Type;
    .locals 4

    .line 4027
    iget-object v0, p0, Lkotlin/reflect/q;->a:Lkotlin/reflect/s;

    if-nez v0, :cond_0

    .line 84
    sget-object p0, Lkotlin/reflect/y;->a:Lkotlin/reflect/y$a;

    .line 4177
    invoke-static {}, Lkotlin/reflect/y;->a()Lkotlin/reflect/y;

    move-result-object p0

    .line 84
    check-cast p0, Ljava/lang/reflect/Type;

    return-object p0

    .line 5031
    :cond_0
    iget-object p0, p0, Lkotlin/reflect/q;->b:Lkotlin/reflect/KType;

    .line 85
    invoke-static {p0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 87
    sget-object v1, Lkotlin/reflect/x;->b:[I

    invoke-virtual {v0}, Lkotlin/reflect/s;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 93
    new-instance v0, Lkotlin/reflect/y;

    invoke-static {p0, v1}, Lkotlin/reflect/w;->a(Lkotlin/reflect/KType;Z)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, p0, v3}, Lkotlin/reflect/y;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 92
    :cond_2
    new-instance v0, Lkotlin/reflect/y;

    invoke-static {p0, v1}, Lkotlin/reflect/w;->a(Lkotlin/reflect/KType;Z)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, v3, p0}, Lkotlin/reflect/y;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0

    .line 90
    :cond_3
    invoke-static {p0, v1}, Lkotlin/reflect/w;->a(Lkotlin/reflect/KType;Z)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lkotlin/reflect/w;->a(Lkotlin/reflect/KType;Z)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method
