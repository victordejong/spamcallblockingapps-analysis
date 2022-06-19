.class final Lkotlin/h/z$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/h/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Integer;",
        "Lkotlin/n<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\r\n\u0002\u0008\u0002\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Pair;",
        "",
        "",
        "currentIndex",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lkotlin/h/z$a;->a:Ljava/util/List;

    iput-boolean p2, p0, Lkotlin/h/z$a;->b:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2260
    iget-object v0, p0, Lkotlin/h/z$a;->a:Ljava/util/List;

    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    iget-boolean v7, p0, Lkotlin/h/z$a;->b:Z

    const/4 v0, 0x0

    const/4 v8, 0x0

    if-nez v7, :cond_0

    .line 3987
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3988
    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v6}, Lkotlin/a/n;->d(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x4

    .line 3989
    invoke-static {p1, v1, p2, v0, v2}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p1

    if-ltz p1, :cond_a

    .line 3990
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object p1

    goto/16 :goto_4

    .line 3993
    :cond_0
    invoke-static {p2, v0}, Lkotlin/f/d;->c(II)I

    move-result p2

    new-instance v0, Lkotlin/f/c;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lkotlin/f/c;-><init>(II)V

    check-cast v0, Lkotlin/f/a;

    .line 3995
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 5087
    iget p2, v0, Lkotlin/f/a;->a:I

    .line 5092
    iget v9, v0, Lkotlin/f/a;->b:I

    .line 5097
    iget v10, v0, Lkotlin/f/a;->c:I

    if-ltz v10, :cond_1

    if-gt p2, v9, :cond_a

    goto :goto_0

    :cond_1
    if-lt p2, v9, :cond_a

    .line 3997
    :goto_0
    move-object v0, v6

    check-cast v0, Ljava/lang/Iterable;

    .line 4517
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 3997
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    move v3, p2

    move v5, v7

    invoke-static/range {v0 .. v5}, Lkotlin/h/p;->a(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_3
    move-object v12, v8

    :goto_1
    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 3999
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v12}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object p1

    goto :goto_4

    :cond_4
    if-eq p2, v9, :cond_a

    add-int/2addr p2, v10

    goto :goto_0

    .line 6087
    :cond_5
    iget p2, v0, Lkotlin/f/a;->a:I

    .line 6092
    iget v9, v0, Lkotlin/f/a;->b:I

    .line 6097
    iget v10, v0, Lkotlin/f/a;->c:I

    if-ltz v10, :cond_6

    if-gt p2, v9, :cond_a

    goto :goto_2

    :cond_6
    if-lt p2, v9, :cond_a

    .line 4003
    :goto_2
    move-object v0, v6

    check-cast v0, Ljava/lang/Iterable;

    .line 4519
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    .line 4003
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    move-object v0, v1

    move v1, v2

    move-object v2, p1

    move v3, p2

    move v5, v7

    invoke-static/range {v0 .. v5}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_8
    move-object v12, v8

    :goto_3
    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_9

    .line 4005
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v12}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object p1

    goto :goto_4

    :cond_9
    if-eq p2, v9, :cond_a

    add-int/2addr p2, v10

    goto :goto_2

    :cond_a
    move-object p1, v8

    :goto_4
    if-eqz p1, :cond_b

    .line 7027
    iget-object p2, p1, Lkotlin/n;->a:Ljava/lang/Object;

    .line 7028
    iget-object p1, p1, Lkotlin/n;->b:Ljava/lang/Object;

    .line 2260
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object p1

    return-object p1

    :cond_b
    return-object v8
.end method
