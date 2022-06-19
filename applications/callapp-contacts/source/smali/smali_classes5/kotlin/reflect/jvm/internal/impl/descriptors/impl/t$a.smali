.class final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/builtins/g;Lkotlin/reflect/jvm/internal/impl/d/b;Ljava/util/Map;Lkotlin/reflect/jvm/internal/impl/c/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 6

    .line 1094
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    .line 2031
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/r;

    .line 1094
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    if-eqz v0, :cond_6

    .line 1095
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/r;->a()Ljava/util/List;

    move-result-object v0

    .line 1096
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    sget-boolean v3, Lkotlin/x;->a:Z

    if-eqz v3, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Module "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4031
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->b()Ljava/lang/String;

    move-result-object v1

    .line 1096
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not contained in his own dependencies, this is probably a misconfiguration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1097
    :cond_1
    :goto_0
    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    .line 1173
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    .line 5031
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->a()Z

    move-result v4

    .line 1098
    sget-boolean v5, Lkotlin/x;->a:Z

    if-eqz v5, :cond_2

    if-eqz v4, :cond_3

    goto :goto_1

    .line 1099
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Dependency module "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6031
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->b()Ljava/lang/String;

    move-result-object v2

    .line 1099
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was not initialized by the time contents of dependent module "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7031
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->b()Ljava/lang/String;

    move-result-object v1

    .line 1099
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " were queried"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1098
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1175
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 1176
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1177
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    .line 8031
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/af;

    .line 1103
    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1178
    :cond_5
    check-cast v1, Ljava/util/List;

    .line 1102
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/g;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/g;-><init>(Ljava/util/List;)V

    return-object v0

    .line 1094
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Dependencies of module "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3031
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->b()Ljava/lang/String;

    move-result-object v1

    .line 1094
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " were not set before querying module content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
