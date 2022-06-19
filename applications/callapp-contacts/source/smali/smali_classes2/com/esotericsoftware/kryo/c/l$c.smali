.class Lcom/esotericsoftware/kryo/c/l$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public b:Z

.field final c:Lcom/esotericsoftware/kryo/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/c/l<",
            "TK;>;"
        }
    .end annotation
.end field

.field d:I

.field e:I

.field f:Z


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/c/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c/l<",
            "TK;>;)V"
        }
    .end annotation

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 404
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/c/l$c;->f:Z

    .line 407
    iput-object p1, p0, Lcom/esotericsoftware/kryo/c/l$c;->c:Lcom/esotericsoftware/kryo/c/l;

    .line 408
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c/l$c;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, -0x1

    .line 412
    iput v0, p0, Lcom/esotericsoftware/kryo/c/l$c;->e:I

    .line 413
    iput v0, p0, Lcom/esotericsoftware/kryo/c/l$c;->d:I

    .line 414
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/c/l$c;->b()V

    return-void
.end method

.method final b()V
    .locals 4

    .line 418
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/l$c;->c:Lcom/esotericsoftware/kryo/c/l;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/c/l;->b:[Ljava/lang/Object;

    .line 419
    array-length v1, v0

    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/c/l$c;->d:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/esotericsoftware/kryo/c/l$c;->d:I

    if-ge v2, v1, :cond_1

    .line 420
    aget-object v2, v0, v2

    if-eqz v2, :cond_0

    .line 421
    iput-boolean v3, p0, Lcom/esotericsoftware/kryo/c/l$c;->b:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 425
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/c/l$c;->b:Z

    return-void
.end method

.method public remove()V
    .locals 8

    .line 429
    iget v0, p0, Lcom/esotericsoftware/kryo/c/l$c;->e:I

    if-ltz v0, :cond_3

    .line 431
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/l$c;->c:Lcom/esotericsoftware/kryo/c/l;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/c/l;->b:[Ljava/lang/Object;

    .line 432
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/l$c;->c:Lcom/esotericsoftware/kryo/c/l;

    iget-object v2, v2, Lcom/esotericsoftware/kryo/c/l;->c:[I

    .line 433
    iget-object v3, p0, Lcom/esotericsoftware/kryo/c/l$c;->c:Lcom/esotericsoftware/kryo/c/l;

    iget v3, v3, Lcom/esotericsoftware/kryo/c/l;->g:I

    add-int/lit8 v4, v0, 0x1

    :goto_0
    and-int/2addr v4, v3

    .line 435
    aget-object v5, v1, v4

    if-eqz v5, :cond_1

    .line 436
    iget-object v6, p0, Lcom/esotericsoftware/kryo/c/l$c;->c:Lcom/esotericsoftware/kryo/c/l;

    invoke-virtual {v6, v5}, Lcom/esotericsoftware/kryo/c/l;->a(Ljava/lang/Object;)I

    move-result v6

    sub-int v7, v4, v6

    and-int/2addr v7, v3

    sub-int v6, v0, v6

    and-int/2addr v6, v3

    if-le v7, v6, :cond_0

    .line 438
    aput-object v5, v1, v0

    .line 439
    aget v5, v2, v4

    aput v5, v2, v0

    move v0, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 444
    aput-object v2, v1, v0

    .line 445
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/l$c;->c:Lcom/esotericsoftware/kryo/c/l;

    iget v2, v1, Lcom/esotericsoftware/kryo/c/l;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/esotericsoftware/kryo/c/l;->a:I

    .line 446
    iget v1, p0, Lcom/esotericsoftware/kryo/c/l$c;->e:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/esotericsoftware/kryo/c/l$c;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/c/l$c;->d:I

    :cond_2
    const/4 v0, -0x1

    .line 447
    iput v0, p0, Lcom/esotericsoftware/kryo/c/l$c;->e:I

    return-void

    .line 430
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
