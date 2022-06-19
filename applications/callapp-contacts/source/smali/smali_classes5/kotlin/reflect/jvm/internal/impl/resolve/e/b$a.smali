.class public final Lkotlin/reflect/jvm/internal/impl/resolve/e/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/b$a;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Iterable;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/h;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/h;"
        }
    .end annotation

    const-string v0, "debugName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/h;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/utils/h;-><init>()V

    .line 73
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    .line 75
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/e/h$c;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h$c;

    if-eq v1, v2, :cond_0

    .line 76
    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/resolve/e/b;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/resolve/e/b;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/b;->a(Lkotlin/reflect/jvm/internal/impl/resolve/e/b;)[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/a/n;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/utils/h;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_2
    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/b$a;->a(Ljava/lang/String;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/h;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/h;"
        }
    .end annotation

    const-string v0, "debugName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 87
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/b;

    check-cast p1, Ljava/util/Collection;

    new-array v1, v2, [Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    .line 93
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    const/4 v1, 0x0

    .line 87
    invoke-direct {v0, p0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/b;-><init>(Ljava/lang/String;[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-object v0

    .line 86
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-object p0

    .line 85
    :cond_1
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h$c;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h$c;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-object p0
.end method
