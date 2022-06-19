.class Lcom/esotericsoftware/kryo/c/j$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Z

.field final b:Lcom/esotericsoftware/kryo/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/c/j<",
            "TV;>;"
        }
    .end annotation
.end field

.field c:I

.field d:I

.field e:Z


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/c/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c/j<",
            "TV;>;)V"
        }
    .end annotation

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 481
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/c/j$c;->e:Z

    .line 484
    iput-object p1, p0, Lcom/esotericsoftware/kryo/c/j$c;->b:Lcom/esotericsoftware/kryo/c/j;

    .line 485
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c/j$c;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, -0x2

    .line 489
    iput v0, p0, Lcom/esotericsoftware/kryo/c/j$c;->d:I

    const/4 v0, -0x1

    .line 490
    iput v0, p0, Lcom/esotericsoftware/kryo/c/j$c;->c:I

    .line 491
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/j$c;->b:Lcom/esotericsoftware/kryo/c/j;

    iget-boolean v0, v0, Lcom/esotericsoftware/kryo/c/j;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 492
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/c/j$c;->a:Z

    return-void

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c/j$c;->b()V

    return-void
.end method

.method final b()V
    .locals 4

    .line 498
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/j$c;->b:Lcom/esotericsoftware/kryo/c/j;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/c/j;->b:[I

    .line 499
    array-length v1, v0

    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/c/j$c;->c:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/esotericsoftware/kryo/c/j$c;->c:I

    if-ge v2, v1, :cond_1

    .line 500
    aget v2, v0, v2

    if-eqz v2, :cond_0

    .line 501
    iput-boolean v3, p0, Lcom/esotericsoftware/kryo/c/j$c;->a:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 505
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/c/j$c;->a:Z

    return-void
.end method

.method public remove()V
    .locals 9

    .line 509
    iget v0, p0, Lcom/esotericsoftware/kryo/c/j$c;->d:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 510
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/j$c;->b:Lcom/esotericsoftware/kryo/c/j;

    iget-boolean v2, v2, Lcom/esotericsoftware/kryo/c/j;->e:Z

    if-eqz v2, :cond_0

    .line 511
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/j$c;->b:Lcom/esotericsoftware/kryo/c/j;

    iput-boolean v1, v0, Lcom/esotericsoftware/kryo/c/j;->e:Z

    goto :goto_1

    :cond_0
    if-ltz v0, :cond_4

    .line 515
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/j$c;->b:Lcom/esotericsoftware/kryo/c/j;

    iget-object v2, v2, Lcom/esotericsoftware/kryo/c/j;->b:[I

    .line 516
    iget-object v3, p0, Lcom/esotericsoftware/kryo/c/j$c;->b:Lcom/esotericsoftware/kryo/c/j;

    iget-object v3, v3, Lcom/esotericsoftware/kryo/c/j;->c:[Ljava/lang/Object;

    .line 517
    iget-object v4, p0, Lcom/esotericsoftware/kryo/c/j$c;->b:Lcom/esotericsoftware/kryo/c/j;

    iget v4, v4, Lcom/esotericsoftware/kryo/c/j;->g:I

    add-int/lit8 v5, v0, 0x1

    :goto_0
    and-int/2addr v5, v4

    .line 518
    aget v6, v2, v5

    if-eqz v6, :cond_2

    .line 519
    iget-object v7, p0, Lcom/esotericsoftware/kryo/c/j$c;->b:Lcom/esotericsoftware/kryo/c/j;

    invoke-virtual {v7, v6}, Lcom/esotericsoftware/kryo/c/j;->a(I)I

    move-result v7

    sub-int v8, v5, v7

    and-int/2addr v8, v4

    sub-int v7, v0, v7

    and-int/2addr v7, v4

    if-le v8, v7, :cond_1

    .line 521
    aput v6, v2, v0

    .line 522
    aget-object v6, v3, v5

    aput-object v6, v3, v0

    move v0, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 527
    :cond_2
    aput v1, v2, v0

    .line 528
    iget v1, p0, Lcom/esotericsoftware/kryo/c/j$c;->d:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/esotericsoftware/kryo/c/j$c;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/c/j$c;->c:I

    :cond_3
    :goto_1
    const/4 v0, -0x2

    .line 530
    iput v0, p0, Lcom/esotericsoftware/kryo/c/j$c;->d:I

    .line 531
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/j$c;->b:Lcom/esotericsoftware/kryo/c/j;

    iget v1, v0, Lcom/esotericsoftware/kryo/c/j;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/esotericsoftware/kryo/c/j;->a:I

    return-void

    .line 513
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
