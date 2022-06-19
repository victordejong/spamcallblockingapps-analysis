.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;


# instance fields
.field private final b:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

.field private final c:Z

.field private final d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqNameFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/l;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;ZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqNameFilter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/l;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    .line 55
    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/l;->c:Z

    .line 56
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/l;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Z
    .locals 1

    .line 78
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;->b()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/l;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/l;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/l;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()Z
    .locals 4

    .line 72
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/l;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    check-cast v0, Ljava/lang/Iterable;

    .line 127
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 128
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    .line 72
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/l;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 74
    :goto_0
    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/l;->c:Z

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    return v2

    :cond_3
    return v3

    :cond_4
    return v0
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/c/b;)Z
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/l;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/l;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->b(Lkotlin/reflect/jvm/internal/impl/c/b;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/l;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    check-cast v0, Ljava/lang/Iterable;

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 125
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    .line 69
    invoke-direct {p0, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/l;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 69
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
