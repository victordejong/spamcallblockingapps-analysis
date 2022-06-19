.class public Lz00$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Li4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li4<",
            "Li4<",
            "Lf10;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Li4;

    invoke-direct {v0}, Li4;-><init>()V

    iput-object v0, p0, Lz00$d;->a:Li4;

    return-void
.end method


# virtual methods
.method public final a(Lf10;)V
    .locals 5

    iget v0, p1, Lf10;->a:I

    iget v1, p1, Lf10;->b:I

    iget-object v2, p0, Lz00$d;->a:Li4;

    invoke-virtual {v2, v0}, Li4;->g(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li4;

    if-nez v2, :cond_0

    new-instance v2, Li4;

    invoke-direct {v2}, Li4;-><init>()V

    iget-object v3, p0, Lz00$d;->a:Li4;

    invoke-virtual {v3, v0, v2}, Li4;->l(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v2, v1}, Li4;->g(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf10;

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overriding migration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ROOM"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v2, v1, p1}, Li4;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public varargs b([Lf10;)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lz00$d;->a(Lf10;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lf10;",
            ">;"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1, v0, p1, p2}, Lz00$d;->d(Ljava/util/List;ZII)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/util/List;ZII)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf10;",
            ">;ZII)",
            "Ljava/util/List<",
            "Lf10;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    if-ge p3, p4, :cond_9

    goto :goto_1

    :cond_2
    if-le p3, p4, :cond_9

    :goto_1
    iget-object v3, p0, Lz00$d;->a:Li4;

    invoke-virtual {v3, p3}, Li4;->g(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li4;

    const/4 v4, 0x0

    if-nez v3, :cond_3

    return-object v4

    :cond_3
    invoke-virtual {v3}, Li4;->n()I

    move-result v5

    const/4 v6, 0x0

    if-eqz p2, :cond_4

    add-int/lit8 v5, v5, -0x1

    const/4 v7, -0x1

    goto :goto_2

    :cond_4
    move v7, v5

    const/4 v5, 0x0

    :goto_2
    if-eq v5, v7, :cond_8

    invoke-virtual {v3, v5}, Li4;->k(I)I

    move-result v8

    if-eqz p2, :cond_6

    if-gt v8, p4, :cond_5

    if-le v8, p3, :cond_5

    :goto_3
    const/4 v9, 0x1

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    goto :goto_4

    :cond_6
    if-lt v8, p4, :cond_5

    if-ge v8, p3, :cond_5

    goto :goto_3

    :goto_4
    if-eqz v9, :cond_7

    invoke-virtual {v3, v5}, Li4;->o(I)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p3, v8

    const/4 v6, 0x1

    goto :goto_5

    :cond_7
    add-int/2addr v5, v2

    goto :goto_2

    :cond_8
    :goto_5
    if-nez v6, :cond_1

    return-object v4

    :cond_9
    return-object p1
.end method
