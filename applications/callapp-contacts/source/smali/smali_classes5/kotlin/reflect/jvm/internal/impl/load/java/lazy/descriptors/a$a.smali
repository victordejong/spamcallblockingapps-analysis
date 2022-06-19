.class final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/d/g;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/load/java/d/q;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 48
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1049
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;

    .line 2044
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;->a:Lkotlin/jvm/functions/Function1;

    .line 1049
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/d/p;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3010
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/p;->j()Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;

    if-eqz v0, :cond_8

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;

    .line 3014
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;->h()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x69e9ad94

    if-eq v3, v4, :cond_5

    const v4, -0x4d378041

    if-eq v3, v4, :cond_1

    const v4, 0x8cdac1b

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "hashCode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_1
    const-string v3, "equals"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 3026
    :cond_2
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;->e()Ljava/util/List;

    move-result-object p1

    .line 3027
    invoke-static {p1}, Lkotlin/a/n;->j(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/d/z;

    const/4 v0, 0x0

    if-nez p1, :cond_3

    move-object p1, v0

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/z;->e()Lkotlin/reflect/jvm/internal/impl/load/java/d/w;

    move-result-object p1

    :goto_0
    instance-of v3, p1, Lkotlin/reflect/jvm/internal/impl/load/java/d/j;

    if-eqz v3, :cond_4

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/d/j;

    :cond_4
    if-eqz v0, :cond_7

    .line 3028
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/j;->d()Lkotlin/reflect/jvm/internal/impl/load/java/d/i;

    move-result-object p1

    .line 3029
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    if-eqz v0, :cond_7

    .line 3030
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->e()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 3031
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/b;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.Object"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const-string v3, "toString"

    .line 3014
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3016
    :cond_6
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    goto :goto_2

    :cond_7
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_3

    :cond_8
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    .line 48
    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
