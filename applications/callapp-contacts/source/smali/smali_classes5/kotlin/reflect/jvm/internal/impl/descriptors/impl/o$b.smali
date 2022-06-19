.class final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o$b;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/f/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/resolve/e/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 4

    .line 1042
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1043
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h$c;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h$c;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-object v0

    .line 1046
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->d()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1069
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 1070
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1071
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    .line 1046
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;->a()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1072
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 1069
    check-cast v1, Ljava/util/Collection;

    .line 1046
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ab;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;

    .line 2032
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    .line 1046
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;

    .line 2033
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->c:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 1046
    invoke-direct {v0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ab;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/c/b;)V

    invoke-static {v1, v0}, Lkotlin/a/n;->a(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1047
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/e/b;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package view scope for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;

    .line 3033
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->c:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 1047
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;

    .line 4032
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    .line 1047
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/b$a;->a(Ljava/lang/String;Ljava/lang/Iterable;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v0

    return-object v0
.end method
