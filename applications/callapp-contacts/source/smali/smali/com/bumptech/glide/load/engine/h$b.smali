.class final Lcom/bumptech/glide/load/engine/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/i$a<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/engine/h;

.field private final b:Lcom/bumptech/glide/load/a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/h;Lcom/bumptech/glide/load/a;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/h$b;->a:Lcom/bumptech/glide/load/engine/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/h$b;->b:Lcom/bumptech/glide/load/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/engine/u;)Lcom/bumptech/glide/load/engine/u;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/u<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/engine/u<",
            "TZ;>;"
        }
    .end annotation

    .line 632
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h$b;->a:Lcom/bumptech/glide/load/engine/h;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h$b;->b:Lcom/bumptech/glide/load/a;

    .line 1563
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/u;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 1566
    sget-object v2, Lcom/bumptech/glide/load/a;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/a;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 1567
    iget-object v2, v0, Lcom/bumptech/glide/load/engine/h;->a:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v2, v10}, Lcom/bumptech/glide/load/engine/g;->c(Ljava/lang/Class;)Lcom/bumptech/glide/load/l;

    move-result-object v2

    .line 1568
    iget-object v4, v0, Lcom/bumptech/glide/load/engine/h;->e:Lcom/bumptech/glide/e;

    iget v5, v0, Lcom/bumptech/glide/load/engine/h;->i:I

    iget v6, v0, Lcom/bumptech/glide/load/engine/h;->j:I

    invoke-interface {v2, v4, p1, v5, v6}, Lcom/bumptech/glide/load/l;->a(Landroid/content/Context;Lcom/bumptech/glide/load/engine/u;II)Lcom/bumptech/glide/load/engine/u;

    move-result-object v4

    move-object v9, v2

    move-object v2, v4

    goto :goto_0

    :cond_0
    move-object v2, p1

    move-object v9, v3

    .line 1571
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1572
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/u;->d()V

    .line 1577
    :cond_1
    iget-object p1, v0, Lcom/bumptech/glide/load/engine/h;->a:Lcom/bumptech/glide/load/engine/g;

    .line 2179
    iget-object p1, p1, Lcom/bumptech/glide/load/engine/g;->a:Lcom/bumptech/glide/e;

    .line 3110
    iget-object p1, p1, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/Registry;

    .line 3558
    iget-object p1, p1, Lcom/bumptech/glide/Registry;->b:Lcom/bumptech/glide/d/f;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/u;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/bumptech/glide/d/f;->a(Ljava/lang/Class;)Lcom/bumptech/glide/load/k;

    move-result-object p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 1578
    iget-object p1, v0, Lcom/bumptech/glide/load/engine/h;->a:Lcom/bumptech/glide/load/engine/g;

    .line 4183
    iget-object p1, p1, Lcom/bumptech/glide/load/engine/g;->a:Lcom/bumptech/glide/e;

    .line 5110
    iget-object p1, p1, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/Registry;

    .line 5564
    iget-object p1, p1, Lcom/bumptech/glide/Registry;->b:Lcom/bumptech/glide/d/f;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/u;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/bumptech/glide/d/f;->a(Ljava/lang/Class;)Lcom/bumptech/glide/load/k;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1579
    iget-object p1, v0, Lcom/bumptech/glide/load/engine/h;->l:Lcom/bumptech/glide/load/h;

    invoke-interface {v3, p1}, Lcom/bumptech/glide/load/k;->a(Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/c;

    move-result-object p1

    goto :goto_2

    .line 5568
    :cond_3
    new-instance p1, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/u;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 1582
    :cond_4
    sget-object p1, Lcom/bumptech/glide/load/c;->NONE:Lcom/bumptech/glide/load/c;

    :goto_2
    move-object v12, v3

    .line 1586
    iget-object v3, v0, Lcom/bumptech/glide/load/engine/h;->a:Lcom/bumptech/glide/load/engine/g;

    iget-object v6, v0, Lcom/bumptech/glide/load/engine/h;->r:Lcom/bumptech/glide/load/f;

    .line 6192
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/g;->c()Ljava/util/List;

    move-result-object v3

    .line 6194
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_6

    .line 6195
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 6196
    iget-object v11, v11, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/bumptech/glide/load/f;

    invoke-interface {v11, v6}, Lcom/bumptech/glide/load/f;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    xor-int/lit8 v3, v4, 0x1

    .line 1587
    iget-object v4, v0, Lcom/bumptech/glide/load/engine/h;->k:Lcom/bumptech/glide/load/engine/j;

    invoke-virtual {v4, v3, v1, p1}, Lcom/bumptech/glide/load/engine/j;->a(ZLcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/c;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v12, :cond_9

    .line 1593
    sget-object v1, Lcom/bumptech/glide/load/engine/h$1;->c:[I

    invoke-virtual {p1}, Lcom/bumptech/glide/load/c;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v5, :cond_8

    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    .line 1598
    new-instance p1, Lcom/bumptech/glide/load/engine/w;

    iget-object v1, v0, Lcom/bumptech/glide/load/engine/h;->a:Lcom/bumptech/glide/load/engine/g;

    .line 7123
    iget-object v1, v1, Lcom/bumptech/glide/load/engine/g;->a:Lcom/bumptech/glide/e;

    .line 8119
    iget-object v4, v1, Lcom/bumptech/glide/e;->b:Lcom/bumptech/glide/load/engine/a/b;

    .line 1600
    iget-object v5, v0, Lcom/bumptech/glide/load/engine/h;->r:Lcom/bumptech/glide/load/f;

    iget-object v6, v0, Lcom/bumptech/glide/load/engine/h;->f:Lcom/bumptech/glide/load/f;

    iget v7, v0, Lcom/bumptech/glide/load/engine/h;->i:I

    iget v8, v0, Lcom/bumptech/glide/load/engine/h;->j:I

    iget-object v11, v0, Lcom/bumptech/glide/load/engine/h;->l:Lcom/bumptech/glide/load/h;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lcom/bumptech/glide/load/engine/w;-><init>(Lcom/bumptech/glide/load/engine/a/b;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/f;IILcom/bumptech/glide/load/l;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)V

    goto :goto_5

    .line 1610
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unknown strategy: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1595
    :cond_8
    new-instance p1, Lcom/bumptech/glide/load/engine/d;

    iget-object v1, v0, Lcom/bumptech/glide/load/engine/h;->r:Lcom/bumptech/glide/load/f;

    iget-object v3, v0, Lcom/bumptech/glide/load/engine/h;->f:Lcom/bumptech/glide/load/f;

    invoke-direct {p1, v1, v3}, Lcom/bumptech/glide/load/engine/d;-><init>(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/f;)V

    .line 1613
    :goto_5
    invoke-static {v2}, Lcom/bumptech/glide/load/engine/t;->a(Lcom/bumptech/glide/load/engine/u;)Lcom/bumptech/glide/load/engine/t;

    move-result-object v2

    .line 1614
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/h;->c:Lcom/bumptech/glide/load/engine/h$c;

    .line 8688
    iput-object p1, v0, Lcom/bumptech/glide/load/engine/h$c;->a:Lcom/bumptech/glide/load/f;

    .line 8689
    iput-object v12, v0, Lcom/bumptech/glide/load/engine/h$c;->b:Lcom/bumptech/glide/load/k;

    .line 8690
    iput-object v2, v0, Lcom/bumptech/glide/load/engine/h$c;->c:Lcom/bumptech/glide/load/engine/t;

    goto :goto_6

    .line 1590
    :cond_9
    new-instance p1, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/u;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw p1

    :cond_a
    :goto_6
    return-object v2
.end method
