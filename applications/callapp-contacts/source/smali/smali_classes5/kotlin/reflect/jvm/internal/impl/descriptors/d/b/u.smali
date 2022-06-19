.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/u;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/n;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/d/t;


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/c/b;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/c/b;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/n;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/u;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/g;",
            ">;"
        }
    .end annotation

    const-string v0, "nameFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 28
    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public final a()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    .line 25
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/u;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object v0
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/load/java/d/a;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic b()Ljava/util/Collection;
    .locals 1

    .line 6071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    .line 25
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/t;",
            ">;"
        }
    .end annotation

    .line 2071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    .line 34
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 45
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/u;

    if-eqz v0, :cond_0

    .line 3025
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/u;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 45
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/u;

    .line 4025
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/u;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 45
    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 5025
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/u;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 47
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/b;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6025
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/u;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
