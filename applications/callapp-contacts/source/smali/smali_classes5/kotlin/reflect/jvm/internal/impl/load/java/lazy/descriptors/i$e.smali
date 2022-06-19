.class final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$e;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/c/e;",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 111
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/c/e;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1112
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    .line 2061
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->e:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    .line 3061
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->e:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    .line 1112
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->b(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/f/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/f/h;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    return-object p1

    .line 1114
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    .line 3076
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->f:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 1114
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;->b(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/load/java/d/n;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1115
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/n;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1116
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;Lkotlin/reflect/jvm/internal/impl/load/java/d/n;)Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
