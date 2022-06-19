.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;",
            ">;)V"
        }
    .end annotation

    const-string v0, "delegates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/k;->b:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>([Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)V
    .locals 1

    const-string v0, "delegates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-static {p1}, Lkotlin/a/i;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/k;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;
    .locals 2

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/k;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/a/n;->p(Ljava/lang/Iterable;)Lkotlin/g/h;

    move-result-object v0

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/k$a;

    invoke-direct {v1, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/k$a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/g/k;->e(Lkotlin/g/h;Lkotlin/jvm/functions/Function1;)Lkotlin/g/h;

    move-result-object p1

    const-string v0, "$this$firstOrNull"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1132
    invoke-interface {p1}, Lkotlin/g/h;->a()Ljava/util/Iterator;

    move-result-object p1

    .line 1133
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1135
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 109
    :goto_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    return-object p1
.end method

.method public final a()Z
    .locals 2

    .line 105
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/k;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 124
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 125
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    .line 105
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/c/b;)Z
    .locals 2

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/k;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/a/n;->p(Ljava/lang/Iterable;)Lkotlin/g/h;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Lkotlin/g/h;->a()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    .line 107
    invoke-interface {v1, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->b(Lkotlin/reflect/jvm/internal/impl/c/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/k;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/a/n;->p(Ljava/lang/Iterable;)Lkotlin/g/h;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/k$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/k$b;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/g/k;->c(Lkotlin/g/h;Lkotlin/jvm/functions/Function1;)Lkotlin/g/h;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/g/h;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
