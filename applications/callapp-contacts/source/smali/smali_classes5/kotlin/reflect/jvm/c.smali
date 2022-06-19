.class public final Lkotlin/reflect/jvm/c;
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
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "reflect",
        "Lkotlin/reflect/KFunction;",
        "R",
        "Lkotlin/Function;",
        "kotlin-reflection"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static final a(Lkotlin/d;)Lkotlin/reflect/KFunction;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/d<",
            "+TR;>;)",
            "Lkotlin/reflect/KFunction<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "$this$reflect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lkotlin/Metadata;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lkotlin/Metadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 36
    :cond_0
    invoke-interface {v0}, Lkotlin/Metadata;->d1()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_3

    return-object v1

    .line 37
    :cond_3
    invoke-interface {v0}, Lkotlin/Metadata;->d2()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->c([Ljava/lang/String;[Ljava/lang/String;)Lkotlin/n;

    move-result-object v2

    .line 15000
    iget-object v3, v2, Lkotlin/n;->a:Ljava/lang/Object;

    .line 37
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/c/a/g;

    .line 16000
    iget-object v2, v2, Lkotlin/n;->b:Ljava/lang/Object;

    .line 37
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/b/a$h;

    .line 38
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    .line 39
    invoke-interface {v0}, Lkotlin/Metadata;->mv()[I

    move-result-object v7

    .line 40
    invoke-interface {v0}, Lkotlin/Metadata;->xi()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 38
    :goto_2
    invoke-direct {v6, v7, v4}, Lkotlin/reflect/jvm/internal/impl/b/c/a/f;-><init>([IZ)V

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    move-object v9, v2

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-object v10, v3

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/b/b/c;

    new-instance v11, Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 16753
    iget-object p0, v2, Lkotlin/reflect/jvm/internal/impl/b/a$h;->k:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    const-string v0, "proto.typeTable"

    .line 44
    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, p0}, Lkotlin/reflect/jvm/internal/impl/b/b/g;-><init>(Lkotlin/reflect/jvm/internal/impl/b/a$s;)V

    move-object v12, v6

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/b/b/a;

    sget-object p0, Lkotlin/reflect/jvm/c$a;->a:Lkotlin/reflect/jvm/c$a;

    move-object v13, p0

    check-cast v13, Lkotlin/jvm/functions/Function2;

    .line 43
    invoke-static/range {v8 .. v13}, Lkotlin/reflect/jvm/internal/aj;->a(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/a;Lkotlin/jvm/functions/Function2;)Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    if-nez p0, :cond_5

    return-object v1

    .line 48
    :cond_5
    new-instance v0, Lkotlin/reflect/jvm/internal/l;

    sget-object v1, Lkotlin/reflect/jvm/internal/b;->a:Lkotlin/reflect/jvm/internal/b;

    check-cast v1, Lkotlin/reflect/jvm/internal/k;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/l;-><init>(Lkotlin/reflect/jvm/internal/k;Lkotlin/reflect/jvm/internal/impl/descriptors/w;)V

    check-cast v0, Lkotlin/reflect/KFunction;

    return-object v0
.end method
