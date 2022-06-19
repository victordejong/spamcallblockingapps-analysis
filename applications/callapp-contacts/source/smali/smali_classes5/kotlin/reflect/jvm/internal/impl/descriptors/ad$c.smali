.class final Lkotlin/reflect/jvm/internal/impl/descriptors/ad$c;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/ad;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/ad$a;",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/descriptors/ad;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ad;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ad$c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ad;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 32
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ad$a;

    const-string v0, "$dstr$classId$typeParametersCount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ad$a;->a:Lkotlin/reflect/jvm/internal/impl/c/a;

    .line 3000
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ad$a;->b:Ljava/util/List;

    .line 3070
    iget-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/c/a;->a:Z

    if-nez v1, :cond_3

    .line 1037
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/a;->d()Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ad$c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ad;

    .line 1038
    move-object v3, p1

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/a/n;->f(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ad;->a(Lkotlin/reflect/jvm/internal/impl/c/a;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    .line 1039
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ad$c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ad;

    .line 4022
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ad;->c:Lkotlin/reflect/jvm/internal/impl/f/g;

    .line 1039
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v2

    const-string v3, "classId.packageFqName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/f/g;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    goto :goto_1

    .line 1037
    :cond_1
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    .line 1042
    :goto_1
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/a;->e()Z

    move-result v6

    .line 1044
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/descriptors/ad$b;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ad$c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ad;

    .line 5022
    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ad;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 1044
    move-object v4, v1

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/a;->c()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v5

    const-string v0, "classId.shortClassName"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/a/n;->f(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    move v7, p1

    :goto_2
    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/ad$b;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/c/e;ZI)V

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    return-object v8

    .line 1034
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unresolved local class: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
