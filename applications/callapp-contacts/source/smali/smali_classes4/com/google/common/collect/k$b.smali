.class abstract Lcom/google/common/collect/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field b:I

.field c:I

.field d:I

.field final synthetic e:Lcom/google/common/collect/k;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/k;)V
    .locals 1

    .line 554
    iput-object p1, p0, Lcom/google/common/collect/k$b;->e:Lcom/google/common/collect/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    invoke-static {p1}, Lcom/google/common/collect/k;->a(Lcom/google/common/collect/k;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/k$b;->b:I

    .line 556
    invoke-virtual {p1}, Lcom/google/common/collect/k;->e()I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/k$b;->c:I

    const/4 p1, -0x1

    .line 557
    iput p1, p0, Lcom/google/common/collect/k$b;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/k;Lcom/google/common/collect/k$1;)V
    .locals 0

    .line 554
    invoke-direct {p0, p1}, Lcom/google/common/collect/k$b;-><init>(Lcom/google/common/collect/k;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 593
    iget-object v0, p0, Lcom/google/common/collect/k$b;->e:Lcom/google/common/collect/k;

    invoke-static {v0}, Lcom/google/common/collect/k;->a(Lcom/google/common/collect/k;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/k$b;->b:I

    if-ne v0, v1, :cond_0

    return-void

    .line 594
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method abstract a(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    .line 561
    iget v0, p0, Lcom/google/common/collect/k$b;->c:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 568
    invoke-direct {p0}, Lcom/google/common/collect/k$b;->a()V

    .line 569
    invoke-virtual {p0}, Lcom/google/common/collect/k$b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iget v0, p0, Lcom/google/common/collect/k$b;->c:I

    iput v0, p0, Lcom/google/common/collect/k$b;->d:I

    .line 573
    invoke-virtual {p0, v0}, Lcom/google/common/collect/k$b;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 574
    iget-object v1, p0, Lcom/google/common/collect/k$b;->e:Lcom/google/common/collect/k;

    iget v2, p0, Lcom/google/common/collect/k$b;->c:I

    invoke-virtual {v1, v2}, Lcom/google/common/collect/k;->b(I)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/k$b;->c:I

    return-object v0

    .line 570
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 580
    invoke-direct {p0}, Lcom/google/common/collect/k$b;->a()V

    .line 581
    iget v0, p0, Lcom/google/common/collect/k$b;->d:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    .line 1063
    invoke-static {v0, v1}, Lcom/google/common/base/m;->b(ZLjava/lang/Object;)V

    .line 1589
    iget v0, p0, Lcom/google/common/collect/k$b;->b:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/collect/k$b;->b:I

    .line 583
    iget-object v0, p0, Lcom/google/common/collect/k$b;->e:Lcom/google/common/collect/k;

    iget-object v1, v0, Lcom/google/common/collect/k;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/k$b;->d:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/common/collect/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    iget v0, p0, Lcom/google/common/collect/k$b;->c:I

    invoke-static {v0}, Lcom/google/common/collect/k;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/k$b;->c:I

    const/4 v0, -0x1

    .line 585
    iput v0, p0, Lcom/google/common/collect/k$b;->d:I

    return-void
.end method
